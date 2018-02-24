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


filterArray(B,ListOfNumbers) ->
  FilterList = lists:filter(fun (K) -> K < B end, ListOfNumbers),
  lists:foreach(fun(N) ->  io:format("~p~n", [N]) end, FilterList).

main() ->
  {ok, [B]} = io:fread("", "~d"),
  {ok, ListOfNumbers} = readLines(),
  filterArray(B,ListOfNumbers).

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

