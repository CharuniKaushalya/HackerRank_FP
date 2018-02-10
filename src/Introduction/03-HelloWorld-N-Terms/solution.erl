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

helloWorldRepeat(A) when A > 0 ->
    io:format("~s~n", ["Hello World"]),
    helloWorldRepeat(A-1);
helloWorldRepeat(0) ->
  "".

main() ->
  {ok, [A]} = io:fread("", "~d"),
  helloWorldRepeat(A).

