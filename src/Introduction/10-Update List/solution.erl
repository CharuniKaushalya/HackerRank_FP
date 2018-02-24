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

main() ->
  {ok, ListOfNumbers} = readLines(),
  lists:foreach(fun(N) ->  io:format("~p~n", [abs(N)]) end, ListOfNumbers).
  %%List =lists:flatmap(fun(X)-> [abs(X)] end, [1,2,3,-4]),
  %%io:format("~w~n", [List]).

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

