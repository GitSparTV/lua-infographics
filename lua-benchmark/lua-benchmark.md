# Lua Versions Benchmarks
This infographic measures the speed of Lua's virtual machine with the same script on each Lua version.

The script calls recursive factorial function with number 16 1000000 times.
The benchmark was run on x64 Windows machine with 4 cores. All executables were 64-bit.

Used script:
- [For Lua 1.0 and 1.1](benchmark_1_0-1_1.lua)
- [For Lua 2.1](benchmark_2_1.lua) (changed `=` to `==`)
- [For Lua 2.2](benchmark_2_2.lua) (local declaration merged with assignation)
- [For Lua 2.4 up to Lua 3.1](benchmark_2_4-3_1.lua) (local recursive function are no longer available)
- [For Lua 3.2](benchmark_3_2.lua) (available again)
- [For Lua 3.2.1 up to Lua 3.2.2](benchmark_3_2_1-3_2_2.lua) (removed again)
- [For Lua 4.0 up to Lua 4.0.1](benchmark_4_0-4_0_1.lua) (for statement was introduced)
- [For Lua 5.0 up to Lua 5.4.1](benchmark_5_0-5_4_1.lua) (recursive local/upvalued function available again)

The variety of version is meant to follow nature coding style in Lua. Example: `repeat until` was used in Lua 1.0 until for statement was introduced in 4.0. 

Benchmark uses Windows API for measuring the elapsed time. The result of the benchmark is a median value of 50 runs using [recorder script](benchmark_recorder.lua).

## Runtime
![Lua Versions Benchmarks](luabenchmark_runtime.png?raw=true "Lua Versions Benchmarks")

Conclusion:
 - Lua 5.4 beat the speed record after version 1.1. In comparison, latest LuaJIT runs this script for 85.4ms when JIT-compiled, and for 370.3ms when JIT is off. (Lua 5.4.1 runs for 490.8ms)

## Compile-time

![Lua Versions Benchmarks](luabenchmark_compiletime.png?raw=true "Lua Versions Benchmarks")

Conclusion:
 - Compiling time is pretty much stable for the entire Lua development. 