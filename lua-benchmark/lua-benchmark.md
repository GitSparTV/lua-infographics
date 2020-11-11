# Lua Versions Benchmarks
This infographic measures the speed of Lua's virtual machine with the same script on each Lua version.

The script calls recursive Fibonacci function with number 16 100000 times.
The benchmark was run on x64 Windows machine with 4 cores. All executables were 64-bit.

Used script:
- [For Lua 1.0 and 1.1](benchmark_1_0.lua)
- [For Lua 2.1 and above](benchmark.lua)

Benchmark uses standard library function `os.clock` the result of the benchmark is a median value of multiple runs.

For Lua versions where `os.clock` (or `clock`) wasn't implemented yet, [recorder script](benchmark_recorder.lua) was used.

![Lua Versions Benchmarks](luabenchmark_vmfib.png?raw=true "Lua Versions Benchmarks")

Conclusion:
 - Lua 5.4 beat the speed record after version 2.1. In comparison, latest LuaJIT runs this script for 0.01s when JIT-compiled, and for 0.041s when JIT is off. (Lua 5.4.1 runs for 0.059s)