read()
local fact

function fact(n)
	if n = 0 then
		return 1
	else
		return n * fact(n - 1)
	end
end

local i
i = 1
repeat
	fact(16)
	i = i + 1
until i > 1000000