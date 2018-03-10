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
computeGCD(A, 0) ->
  {ok , A};
computeGCD(A, B) ->
  computeGCD(B, A rem B).

main() ->
  {ok, [A, B]} = io:fread("", "~d~d"),
  {ok, GCD} = computeGCD( erlang:max(A,B), erlang:min(A,B)),
  io:format("~p~n",[GCD]).
