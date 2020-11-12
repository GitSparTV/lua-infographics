io.read(1)

local function fact(n)
	if n == 0 then
		return 1
	else
		return n * fact(n - 1)
	end
end

for i = 1, 1000000 do
	fact(16)
end