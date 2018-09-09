%%%-------------------------------------------------------------------
%% @doc myhello public API
%% @end
%%%-------------------------------------------------------------------

-module(myhello_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_Type, _Args) ->
    Dispatch = cowboy_router:compile([
      {'_', [
        %{"/", toppage_handler,[]}
        {"/", cowboy_static, {priv_file, myhello, "static/index.html"}}
      ]}
    ]),
    {ok, _} = cowboy:start_clear(http, [{port, 8080}], #{
		env => #{dispatch => Dispatch}
	   }),
    myhello_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
