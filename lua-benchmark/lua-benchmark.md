# Lua Versions Benchmarks
This infographic measures the speed of the same script on each Lua version run on Lua's virtual machine.
The script calls recursive Fibonacci function with number 16 100000 times.
Used script:
	- [For Lua 1.0 and 1.1](benchmark_1_0.lua)
	- [For Lua 2.1 and above](benchmark.lua)

Benchmark uses standard library function `os.clock`.
For Lua versions where `os.clock` (or `clock`) wasn't implemented yet, [recorder script](benchmark_recorder.lua) was used.