
#include <benchmark/benchmark.h>
#include "MathFunctions.h"

static void BM_ComputeAverage(benchmark::State& state) {
    std::vector<int> numbers(state.range(0), 1);
    for (auto _ : state) {
        benchmark::DoNotOptimize(computeAverage(numbers));
    }
    state.SetComplexityN(state.range(0));
}

BENCHMARK(BM_ComputeAverage)->Range(8, 8<<10)->Complexity();

BENCHMARK_MAIN();
