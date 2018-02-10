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
solveMeFirst(A, B) ->
  A + B.
main() ->
  {ok, [A, B]} = io:fread("", "~d~d"),
  Res = solveMeFirst(A,B),
  io:format("~p~n",[Res]).
