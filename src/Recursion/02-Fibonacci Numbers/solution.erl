%%%-------------------------------------------------------------------
%%% @author charuni
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. Feb 2018 11:18 AM
%%%-------------------------------------------------------------------
-module('solution').
-author("charuni").

-export([main/0]).

fibonacci(1) -> 0;
fibonacci(2) -> 1;

fibonacci(N) ->
  fibonacci(N, 3, 0, 1).

fibonacci(N3, N3, N1, N2) ->
  N1+N2;

fibonacci(N3, Step, N1, N2) ->
  fibonacci(N3, Step+1, N2, N1+N2).

main() ->
  {ok, [N]} = io:fread("", "~d"),
  io:format("~p", [fibonacci(N)]).
