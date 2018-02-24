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

-export([main/0,]).

main() ->
  {ok, ListOfNumbers} = readLines(),
  Total = lists:foldl(fun(X, Count) -> 1 + Count end, 0, ListOfNumbers),
  io:format("~w~n", [Total]).

readLines() ->
  readLines(next, []).

readLines(next, InputList) ->
  case io:fread("", "~d") of
    {ok, [N]} ->
      % Prepend the new element and call the next (tail recursion)
      % The list will be reverted at the end.
      readLines(next, [N|InputList]);
    eof ->
      % Reverse the list and return it
      {ok, lists:reverse(InputList)}
  end.

