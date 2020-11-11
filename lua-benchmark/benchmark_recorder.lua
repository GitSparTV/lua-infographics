local clock = os.clock
local popen = io.popen
local s = clock()
local close = debug.getregistry()["FILE*"].close
local f = popen("\"\"C:\\Program Files\\Lua\\History\\lua-1.0\\lua.exe\" \"C:\\Program Files\\Lua\\History\\benchmark_old.lua\"\"")
close(f)
local e = clock()
print(string.format("%f", e - s))
