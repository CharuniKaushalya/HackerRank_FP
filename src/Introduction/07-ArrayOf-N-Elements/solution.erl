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



createArray(List,N)->
  createArray([1|List],N-1);
createArray(List,0)->
  List.
createArray(N) ->
  createArray([],N);
createArray(0) ->
  [].

main() ->
  {ok, [N]} = io:fread("", "~d"),
  List = createArray(N),
  io:format("~w~n", [List]).


