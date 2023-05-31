-module(slurmrestapi_openapi_api).

-export([openapi_get/1, openapi_get/2,
         openapi_json_get/1, openapi_json_get/2,
         openapi_v3_get/1, openapi_v3_get/2,
         openapi_yaml_get/1, openapi_yaml_get/2]).

-define(BASE_URL, <<"">>).

%% @doc Retrieve OpenAPI Specification
%% 
-spec openapi_get(ctx:ctx()) -> {ok, [], slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
openapi_get(Ctx) ->
    openapi_get(Ctx, #{}).

-spec openapi_get(ctx:ctx(), maps:map()) -> {ok, [], slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
openapi_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/openapi"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Retrieve OpenAPI Specification
%% 
-spec openapi_json_get(ctx:ctx()) -> {ok, [], slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
openapi_json_get(Ctx) ->
    openapi_json_get(Ctx, #{}).

-spec openapi_json_get(ctx:ctx(), maps:map()) -> {ok, [], slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
openapi_json_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/openapi.json"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Retrieve OpenAPI Specification
%% 
-spec openapi_v3_get(ctx:ctx()) -> {ok, [], slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
openapi_v3_get(Ctx) ->
    openapi_v3_get(Ctx, #{}).

-spec openapi_v3_get(ctx:ctx(), maps:map()) -> {ok, [], slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
openapi_v3_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/openapi/v3"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Retrieve OpenAPI Specification
%% 
-spec openapi_yaml_get(ctx:ctx()) -> {ok, [], slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
openapi_yaml_get(Ctx) ->
    openapi_yaml_get(Ctx, #{}).

-spec openapi_yaml_get(ctx:ctx(), maps:map()) -> {ok, [], slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
openapi_yaml_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/openapi.yaml"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


