-module(kata).
-export([josephus_survivor/2]).

josephus_survivor(1, _K) -> 1;
josephus_survivor(N, K) -> (josephus_survivor(N - 1, K) + K - 1) rem N + 1.
