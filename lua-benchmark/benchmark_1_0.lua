local s, e
local clock = os and os.clock or clock

function fact(n)
	if n = 0 then
		return 1
	else
		return n * fact(n - 1)
	end
end

i = 1
if clock then
	s = clock()
end

repeat
	fact(16)
	i = i + 1
until i >= 100000

if clock then
	e = clock()
	local fmt = string and string.format or format
	print(fmt and fmt("%f", e - s) or (e - s))
else
	print("Done")
end
