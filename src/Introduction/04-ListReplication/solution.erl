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

numberRepeat(A,B) when A > 0 ->
    io:format("~p~n", [B]),
  numberRepeat(A-1,B);
numberRepeat(0,_B) ->
  "".

printeach(NoRepeats,ListOfNumbers) ->
  lists:foreach(fun(N) -> numberRepeat(NoRepeats,N) end,ListOfNumbers),
  ok.

main() ->
  {ok, [NoRepeats]} = io:fread("", "~d"),
  {ok, ListOfNumbers} = readLines(),
  printeach(NoRepeats,ListOfNumbers).

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

