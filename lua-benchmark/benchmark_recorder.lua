local compileT, runT = {}, {}
collectgarbage("stop")
local tick, toms

do
	local ffi = require("ffi")
	ffi.cdef[[
		int  QueryPerformanceFrequency(int64_t*) asm("QueryPerformanceFrequency");
		int  QueryPerformanceCounter(int64_t*) asm("QueryPerformanceCounter");
	]]
	local C = ffi.C
	local counter = ffi.new'uint64_t[1]'

	function tick()
		C.QueryPerformanceCounter(counter)

		return counter[0]
	end

	C.QueryPerformanceFrequency(counter)
	local tonumber = tonumber
	local inv_qpf = tonumber(counter[0])

	function toms(num)
		return tonumber(num * 1000) / inv_qpf
	end
end

local close, write

do
	local FILE = debug.getregistry()["FILE*"]
	close, write = FILE.close, FILE.write
end

for i = 1, 50 do
	local s = tick()
	local f = io.popen("luajit -joff benchmark_5_0-5_4_1.lua", "w")
	write(f, "1")
	local e = tick()
	compileT[i] = e - s
	s = tick()
	close(f)
	e = tick()
	runT[i] = e - s
	collectgarbage()
	io.write(".")
end

io.write("\n")

local function median(t)
	local len = #t
	table.sort(t)
	if len % 2 == 0 then return (t[len / 2] + t[len / 2 + 1]) / 2 end

	return t[math.ceil(len / 2)]
end

local util = require("jit.util")
print("Results for ", util.funck(debug.getinfo(1, "f").func, -21))
local clip = io.popen("clip", "w")
clip:write(toms(median(runT)), "\t", toms(median(compileT)))
clip:close()