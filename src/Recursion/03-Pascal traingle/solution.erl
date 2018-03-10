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


printPascalTriangle(N) ->
  io:format("1~n"),
  printPascalTriangle(N, 1, [1]).


printPascalTriangle(N, N, _) -> ok;

printPascalTriangle(N, Step, PreviousRow) ->
  Row = getNextPascalTriangleRow(PreviousRow),
  [ io:format("~b ", [X]) || X <- Row ],
  io:format("~n"),
  printPascalTriangle(N, Step+1, Row).



getNextPascalTriangleRow(PreviousRow) ->
  getNextPascalTriangleRow([0|PreviousRow], []).


getNextPascalTriangleRow([1], Accumulator) -> [1|Accumulator];
getNextPascalTriangleRow([H1, H2|RestOfRow], Accumulator) ->
  getNextPascalTriangleRow([H2|RestOfRow], [H1+H2|Accumulator]).

main() ->
  {ok, [N]} = io:fread("", "~d"),
  printPascalTriangle(N).
