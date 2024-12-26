-module(slurmrestapi_slurmdb_api).

-export([slurmdb_v0040_delete_account/2, slurmdb_v0040_delete_account/3,
         slurmdb_v0040_delete_association/1, slurmdb_v0040_delete_association/2,
         slurmdb_v0040_delete_associations/1, slurmdb_v0040_delete_associations/2,
         slurmdb_v0040_delete_cluster/2, slurmdb_v0040_delete_cluster/3,
         slurmdb_v0040_delete_single_qos/2, slurmdb_v0040_delete_single_qos/3,
         slurmdb_v0040_delete_user/2, slurmdb_v0040_delete_user/3,
         slurmdb_v0040_delete_wckey/2, slurmdb_v0040_delete_wckey/3,
         slurmdb_v0040_get_account/2, slurmdb_v0040_get_account/3,
         slurmdb_v0040_get_accounts/1, slurmdb_v0040_get_accounts/2,
         slurmdb_v0040_get_association/1, slurmdb_v0040_get_association/2,
         slurmdb_v0040_get_associations/1, slurmdb_v0040_get_associations/2,
         slurmdb_v0040_get_cluster/2, slurmdb_v0040_get_cluster/3,
         slurmdb_v0040_get_clusters/1, slurmdb_v0040_get_clusters/2,
         slurmdb_v0040_get_config/1, slurmdb_v0040_get_config/2,
         slurmdb_v0040_get_diag/1, slurmdb_v0040_get_diag/2,
         slurmdb_v0040_get_instance/1, slurmdb_v0040_get_instance/2,
         slurmdb_v0040_get_instances/1, slurmdb_v0040_get_instances/2,
         slurmdb_v0040_get_job/2, slurmdb_v0040_get_job/3,
         slurmdb_v0040_get_jobs/1, slurmdb_v0040_get_jobs/2,
         slurmdb_v0040_get_qos/1, slurmdb_v0040_get_qos/2,
         slurmdb_v0040_get_single_qos/2, slurmdb_v0040_get_single_qos/3,
         slurmdb_v0040_get_tres/1, slurmdb_v0040_get_tres/2,
         slurmdb_v0040_get_user/2, slurmdb_v0040_get_user/3,
         slurmdb_v0040_get_users/1, slurmdb_v0040_get_users/2,
         slurmdb_v0040_get_wckey/2, slurmdb_v0040_get_wckey/3,
         slurmdb_v0040_get_wckeys/1, slurmdb_v0040_get_wckeys/2,
         slurmdb_v0040_post_accounts/2, slurmdb_v0040_post_accounts/3,
         slurmdb_v0040_post_accounts_association/2, slurmdb_v0040_post_accounts_association/3,
         slurmdb_v0040_post_associations/2, slurmdb_v0040_post_associations/3,
         slurmdb_v0040_post_clusters/2, slurmdb_v0040_post_clusters/3,
         slurmdb_v0040_post_config/2, slurmdb_v0040_post_config/3,
         slurmdb_v0040_post_qos/2, slurmdb_v0040_post_qos/3,
         slurmdb_v0040_post_tres/2, slurmdb_v0040_post_tres/3,
         slurmdb_v0040_post_users/2, slurmdb_v0040_post_users/3,
         slurmdb_v0040_post_users_association/2, slurmdb_v0040_post_users_association/3,
         slurmdb_v0040_post_wckeys/2, slurmdb_v0040_post_wckeys/3,
         slurmdb_v0041_delete_account/2, slurmdb_v0041_delete_account/3,
         slurmdb_v0041_delete_association/1, slurmdb_v0041_delete_association/2,
         slurmdb_v0041_delete_associations/1, slurmdb_v0041_delete_associations/2,
         slurmdb_v0041_delete_cluster/2, slurmdb_v0041_delete_cluster/3,
         slurmdb_v0041_delete_single_qos/2, slurmdb_v0041_delete_single_qos/3,
         slurmdb_v0041_delete_user/2, slurmdb_v0041_delete_user/3,
         slurmdb_v0041_delete_wckey/2, slurmdb_v0041_delete_wckey/3,
         slurmdb_v0041_get_account/2, slurmdb_v0041_get_account/3,
         slurmdb_v0041_get_accounts/1, slurmdb_v0041_get_accounts/2,
         slurmdb_v0041_get_association/1, slurmdb_v0041_get_association/2,
         slurmdb_v0041_get_associations/1, slurmdb_v0041_get_associations/2,
         slurmdb_v0041_get_cluster/2, slurmdb_v0041_get_cluster/3,
         slurmdb_v0041_get_clusters/1, slurmdb_v0041_get_clusters/2,
         slurmdb_v0041_get_config/1, slurmdb_v0041_get_config/2,
         slurmdb_v0041_get_diag/1, slurmdb_v0041_get_diag/2,
         slurmdb_v0041_get_instance/1, slurmdb_v0041_get_instance/2,
         slurmdb_v0041_get_instances/1, slurmdb_v0041_get_instances/2,
         slurmdb_v0041_get_job/2, slurmdb_v0041_get_job/3,
         slurmdb_v0041_get_jobs/1, slurmdb_v0041_get_jobs/2,
         slurmdb_v0041_get_qos/1, slurmdb_v0041_get_qos/2,
         slurmdb_v0041_get_single_qos/2, slurmdb_v0041_get_single_qos/3,
         slurmdb_v0041_get_tres/1, slurmdb_v0041_get_tres/2,
         slurmdb_v0041_get_user/2, slurmdb_v0041_get_user/3,
         slurmdb_v0041_get_users/1, slurmdb_v0041_get_users/2,
         slurmdb_v0041_get_wckey/2, slurmdb_v0041_get_wckey/3,
         slurmdb_v0041_get_wckeys/1, slurmdb_v0041_get_wckeys/2,
         slurmdb_v0041_post_accounts/2, slurmdb_v0041_post_accounts/3,
         slurmdb_v0041_post_accounts_association/2, slurmdb_v0041_post_accounts_association/3,
         slurmdb_v0041_post_associations/2, slurmdb_v0041_post_associations/3,
         slurmdb_v0041_post_clusters/2, slurmdb_v0041_post_clusters/3,
         slurmdb_v0041_post_config/2, slurmdb_v0041_post_config/3,
         slurmdb_v0041_post_qos/2, slurmdb_v0041_post_qos/3,
         slurmdb_v0041_post_tres/2, slurmdb_v0041_post_tres/3,
         slurmdb_v0041_post_users/2, slurmdb_v0041_post_users/3,
         slurmdb_v0041_post_users_association/2, slurmdb_v0041_post_users_association/3,
         slurmdb_v0041_post_wckeys/2, slurmdb_v0041_post_wckeys/3]).

-define(BASE_URL, <<"">>).

%% @doc Delete account
%% 
-spec slurmdb_v0040_delete_account(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_40_openapi_accounts_removed_resp:slurmrestapi_v0_0_40_openapi_accounts_removed_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_delete_account(Ctx, AccountName) ->
    slurmdb_v0040_delete_account(Ctx, AccountName, #{}).

-spec slurmdb_v0040_delete_account(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_accounts_removed_resp:slurmrestapi_v0_0_40_openapi_accounts_removed_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_delete_account(Ctx, AccountName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/account/", AccountName, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete association
%% 
-spec slurmdb_v0040_delete_association(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_assocs_removed_resp:slurmrestapi_v0_0_40_openapi_assocs_removed_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_delete_association(Ctx) ->
    slurmdb_v0040_delete_association(Ctx, #{}).

-spec slurmdb_v0040_delete_association(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_assocs_removed_resp:slurmrestapi_v0_0_40_openapi_assocs_removed_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_delete_association(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/association/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['account', 'cluster', 'default_qos', 'format', 'id', 'only_defaults', 'parent_account', 'partition', 'qos', 'usage_end', 'usage_start', 'user', 'with_usage', 'with_deleted', 'with_raw_qos', 'with_sub_accts', 'without_parent_info', 'without_parent_limits'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete associations
%% 
-spec slurmdb_v0040_delete_associations(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_assocs_removed_resp:slurmrestapi_v0_0_40_openapi_assocs_removed_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_delete_associations(Ctx) ->
    slurmdb_v0040_delete_associations(Ctx, #{}).

-spec slurmdb_v0040_delete_associations(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_assocs_removed_resp:slurmrestapi_v0_0_40_openapi_assocs_removed_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_delete_associations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/associations/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['account', 'cluster', 'default_qos', 'format', 'id', 'only_defaults', 'parent_account', 'partition', 'qos', 'usage_end', 'usage_start', 'user', 'with_usage', 'with_deleted', 'with_raw_qos', 'with_sub_accts', 'without_parent_info', 'without_parent_limits'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete cluster
%% 
-spec slurmdb_v0040_delete_cluster(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_40_openapi_clusters_removed_resp:slurmrestapi_v0_0_40_openapi_clusters_removed_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_delete_cluster(Ctx, ClusterName) ->
    slurmdb_v0040_delete_cluster(Ctx, ClusterName, #{}).

-spec slurmdb_v0040_delete_cluster(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_clusters_removed_resp:slurmrestapi_v0_0_40_openapi_clusters_removed_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_delete_cluster(Ctx, ClusterName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/cluster/", ClusterName, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['classification', 'cluster', 'federation', 'flags', 'format', 'rpc_version', 'usage_end', 'usage_start', 'with_deleted', 'with_usage'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete QOS
%% 
-spec slurmdb_v0040_delete_single_qos(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_40_openapi_slurmdbd_qos_removed_resp:slurmrestapi_v0_0_40_openapi_slurmdbd_qos_removed_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_delete_single_qos(Ctx, Qos) ->
    slurmdb_v0040_delete_single_qos(Ctx, Qos, #{}).

-spec slurmdb_v0040_delete_single_qos(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_slurmdbd_qos_removed_resp:slurmrestapi_v0_0_40_openapi_slurmdbd_qos_removed_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_delete_single_qos(Ctx, Qos, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/qos/", Qos, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete user
%% 
-spec slurmdb_v0040_delete_user(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_40_openapi_resp:slurmrestapi_v0_0_40_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_delete_user(Ctx, Name) ->
    slurmdb_v0040_delete_user(Ctx, Name, #{}).

-spec slurmdb_v0040_delete_user(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_resp:slurmrestapi_v0_0_40_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_delete_user(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/user/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete wckey
%% 
-spec slurmdb_v0040_delete_wckey(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_40_openapi_wckey_removed_resp:slurmrestapi_v0_0_40_openapi_wckey_removed_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_delete_wckey(Ctx, Id) ->
    slurmdb_v0040_delete_wckey(Ctx, Id, #{}).

-spec slurmdb_v0040_delete_wckey(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_wckey_removed_resp:slurmrestapi_v0_0_40_openapi_wckey_removed_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_delete_wckey(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/wckey/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get account info
%% 
-spec slurmdb_v0040_get_account(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_40_openapi_accounts_resp:slurmrestapi_v0_0_40_openapi_accounts_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_account(Ctx, AccountName) ->
    slurmdb_v0040_get_account(Ctx, AccountName, #{}).

-spec slurmdb_v0040_get_account(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_accounts_resp:slurmrestapi_v0_0_40_openapi_accounts_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_account(Ctx, AccountName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/account/", AccountName, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['with_assocs', 'with_coords', 'with_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get account list
%% 
-spec slurmdb_v0040_get_accounts(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_accounts_resp:slurmrestapi_v0_0_40_openapi_accounts_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_accounts(Ctx) ->
    slurmdb_v0040_get_accounts(Ctx, #{}).

-spec slurmdb_v0040_get_accounts(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_accounts_resp:slurmrestapi_v0_0_40_openapi_accounts_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_accounts(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/accounts/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['description', 'with_assocs', 'with_coords', 'with_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get association info
%% 
-spec slurmdb_v0040_get_association(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_assocs_resp:slurmrestapi_v0_0_40_openapi_assocs_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_association(Ctx) ->
    slurmdb_v0040_get_association(Ctx, #{}).

-spec slurmdb_v0040_get_association(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_assocs_resp:slurmrestapi_v0_0_40_openapi_assocs_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_association(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/association/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['account', 'cluster', 'default_qos', 'format', 'id', 'only_defaults', 'parent_account', 'partition', 'qos', 'usage_end', 'usage_start', 'user', 'with_usage', 'with_deleted', 'with_raw_qos', 'with_sub_accts', 'without_parent_info', 'without_parent_limits'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get association list
%% 
-spec slurmdb_v0040_get_associations(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_assocs_resp:slurmrestapi_v0_0_40_openapi_assocs_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_associations(Ctx) ->
    slurmdb_v0040_get_associations(Ctx, #{}).

-spec slurmdb_v0040_get_associations(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_assocs_resp:slurmrestapi_v0_0_40_openapi_assocs_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_associations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/associations/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['account', 'cluster', 'default_qos', 'format', 'id', 'only_defaults', 'parent_account', 'partition', 'qos', 'usage_end', 'usage_start', 'user', 'with_usage', 'with_deleted', 'with_raw_qos', 'with_sub_accts', 'without_parent_info', 'without_parent_limits'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get cluster info
%% 
-spec slurmdb_v0040_get_cluster(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_40_openapi_clusters_resp:slurmrestapi_v0_0_40_openapi_clusters_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_cluster(Ctx, ClusterName) ->
    slurmdb_v0040_get_cluster(Ctx, ClusterName, #{}).

-spec slurmdb_v0040_get_cluster(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_clusters_resp:slurmrestapi_v0_0_40_openapi_clusters_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_cluster(Ctx, ClusterName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/cluster/", ClusterName, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['classification', 'cluster', 'federation', 'flags', 'format', 'rpc_version', 'usage_end', 'usage_start', 'with_deleted', 'with_usage'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get cluster list
%% 
-spec slurmdb_v0040_get_clusters(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_clusters_resp:slurmrestapi_v0_0_40_openapi_clusters_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_clusters(Ctx) ->
    slurmdb_v0040_get_clusters(Ctx, #{}).

-spec slurmdb_v0040_get_clusters(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_clusters_resp:slurmrestapi_v0_0_40_openapi_clusters_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_clusters(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/clusters/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Dump all configuration information
%% 
-spec slurmdb_v0040_get_config(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_slurmdbd_config_resp:slurmrestapi_v0_0_40_openapi_slurmdbd_config_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_config(Ctx) ->
    slurmdb_v0040_get_config(Ctx, #{}).

-spec slurmdb_v0040_get_config(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_slurmdbd_config_resp:slurmrestapi_v0_0_40_openapi_slurmdbd_config_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_config(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/config"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get slurmdb diagnostics
%% 
-spec slurmdb_v0040_get_diag(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_slurmdbd_stats_resp:slurmrestapi_v0_0_40_openapi_slurmdbd_stats_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_diag(Ctx) ->
    slurmdb_v0040_get_diag(Ctx, #{}).

-spec slurmdb_v0040_get_diag(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_slurmdbd_stats_resp:slurmrestapi_v0_0_40_openapi_slurmdbd_stats_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_diag(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/diag/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get instance info
%% 
-spec slurmdb_v0040_get_instance(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_instances_resp:slurmrestapi_v0_0_40_openapi_instances_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_instance(Ctx) ->
    slurmdb_v0040_get_instance(Ctx, #{}).

-spec slurmdb_v0040_get_instance(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_instances_resp:slurmrestapi_v0_0_40_openapi_instances_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_instance(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/instance/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['cluster', 'extra', 'format', 'instance_id', 'instance_type', 'node_list', 'time_end', 'time_start'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get instance list
%% 
-spec slurmdb_v0040_get_instances(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_instances_resp:slurmrestapi_v0_0_40_openapi_instances_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_instances(Ctx) ->
    slurmdb_v0040_get_instances(Ctx, #{}).

-spec slurmdb_v0040_get_instances(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_instances_resp:slurmrestapi_v0_0_40_openapi_instances_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_instances(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/instances/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['cluster', 'extra', 'format', 'instance_id', 'instance_type', 'node_list', 'time_end', 'time_start'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get job info
%% This endpoint may return multiple job entries since job_id is not a unique key - only the tuple (cluster, job_id, start_time) is unique. If the requested job_id is a component of a heterogeneous job all components are returned.
-spec slurmdb_v0040_get_job(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_40_openapi_slurmdbd_jobs_resp:slurmrestapi_v0_0_40_openapi_slurmdbd_jobs_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_job(Ctx, JobId) ->
    slurmdb_v0040_get_job(Ctx, JobId, #{}).

-spec slurmdb_v0040_get_job(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_slurmdbd_jobs_resp:slurmrestapi_v0_0_40_openapi_slurmdbd_jobs_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_job(Ctx, JobId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/job/", JobId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get job list
%% 
-spec slurmdb_v0040_get_jobs(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_slurmdbd_jobs_resp:slurmrestapi_v0_0_40_openapi_slurmdbd_jobs_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_jobs(Ctx) ->
    slurmdb_v0040_get_jobs(Ctx, #{}).

-spec slurmdb_v0040_get_jobs(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_slurmdbd_jobs_resp:slurmrestapi_v0_0_40_openapi_slurmdbd_jobs_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_jobs(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/jobs/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['account', 'association', 'cluster', 'constraints', 'cpus_max', 'cpus_min', 'scheduler_unset', 'scheduled_on_submit', 'scheduled_by_main', 'scheduled_by_backfill', 'job_started', 'exit_code', 'show_duplicates', 'skip_steps', 'disable_truncate_usage_time', 'whole_hetjob', 'disable_whole_hetjob', 'disable_wait_for_result', 'usage_time_as_submit_time', 'show_batch_script', 'show_job_environment', 'format', 'groups', 'job_name', 'nodes_max', 'nodes_min', 'partition', 'qos', 'reason', 'reservation', 'reservation_id', 'state', 'step', 'timelimit_max', 'timelimit_min', 'end_time', 'start_time', 'submit_time', 'node', 'users', 'wckey'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get QOS list
%% 
-spec slurmdb_v0040_get_qos(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_slurmdbd_qos_resp:slurmrestapi_v0_0_40_openapi_slurmdbd_qos_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_qos(Ctx) ->
    slurmdb_v0040_get_qos(Ctx, #{}).

-spec slurmdb_v0040_get_qos(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_slurmdbd_qos_resp:slurmrestapi_v0_0_40_openapi_slurmdbd_qos_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_qos(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/qos/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['description', 'id', 'format', 'name', 'preempt_mode', 'with_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get QOS info
%% 
-spec slurmdb_v0040_get_single_qos(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_40_openapi_slurmdbd_qos_resp:slurmrestapi_v0_0_40_openapi_slurmdbd_qos_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_single_qos(Ctx, Qos) ->
    slurmdb_v0040_get_single_qos(Ctx, Qos, #{}).

-spec slurmdb_v0040_get_single_qos(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_slurmdbd_qos_resp:slurmrestapi_v0_0_40_openapi_slurmdbd_qos_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_single_qos(Ctx, Qos, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/qos/", Qos, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['with_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get TRES info
%% 
-spec slurmdb_v0040_get_tres(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_tres_resp:slurmrestapi_v0_0_40_openapi_tres_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_tres(Ctx) ->
    slurmdb_v0040_get_tres(Ctx, #{}).

-spec slurmdb_v0040_get_tres(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_tres_resp:slurmrestapi_v0_0_40_openapi_tres_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_tres(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/tres/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get user info
%% 
-spec slurmdb_v0040_get_user(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_40_openapi_users_resp:slurmrestapi_v0_0_40_openapi_users_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_user(Ctx, Name) ->
    slurmdb_v0040_get_user(Ctx, Name, #{}).

-spec slurmdb_v0040_get_user(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_users_resp:slurmrestapi_v0_0_40_openapi_users_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_user(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/user/", Name, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['with_deleted', 'with_assocs', 'with_coords', 'with_wckeys'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get user list
%% 
-spec slurmdb_v0040_get_users(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_users_resp:slurmrestapi_v0_0_40_openapi_users_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_users(Ctx) ->
    slurmdb_v0040_get_users(Ctx, #{}).

-spec slurmdb_v0040_get_users(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_users_resp:slurmrestapi_v0_0_40_openapi_users_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_users(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/users/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['admin_level', 'default_account', 'default_wckey', 'with_assocs', 'with_coords', 'with_deleted', 'with_wckeys', 'without_defaults'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get wckey info
%% 
-spec slurmdb_v0040_get_wckey(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_40_openapi_wckey_resp:slurmrestapi_v0_0_40_openapi_wckey_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_wckey(Ctx, Id) ->
    slurmdb_v0040_get_wckey(Ctx, Id, #{}).

-spec slurmdb_v0040_get_wckey(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_wckey_resp:slurmrestapi_v0_0_40_openapi_wckey_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_wckey(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/wckey/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get wckey list
%% 
-spec slurmdb_v0040_get_wckeys(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_wckey_resp:slurmrestapi_v0_0_40_openapi_wckey_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_wckeys(Ctx) ->
    slurmdb_v0040_get_wckeys(Ctx, #{}).

-spec slurmdb_v0040_get_wckeys(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_wckey_resp:slurmrestapi_v0_0_40_openapi_wckey_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_get_wckeys(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/wckeys/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['cluster', 'format', 'id', 'name', 'only_defaults', 'usage_end', 'usage_start', 'user', 'with_usage', 'with_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add/update list of accounts
%% 
-spec slurmdb_v0040_post_accounts(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_resp:slurmrestapi_v0_0_40_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_post_accounts(Ctx) ->
    slurmdb_v0040_post_accounts(Ctx, #{}).

-spec slurmdb_v0040_post_accounts(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_resp:slurmrestapi_v0_0_40_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_post_accounts(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/accounts/"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0040OpenapiAccountsResp,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add accounts with conditional association
%% 
-spec slurmdb_v0040_post_accounts_association(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_accounts_add_cond_resp_str:slurmrestapi_v0_0_40_openapi_accounts_add_cond_resp_str(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_post_accounts_association(Ctx) ->
    slurmdb_v0040_post_accounts_association(Ctx, #{}).

-spec slurmdb_v0040_post_accounts_association(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_accounts_add_cond_resp_str:slurmrestapi_v0_0_40_openapi_accounts_add_cond_resp_str(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_post_accounts_association(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/accounts_association/"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0040OpenapiAccountsAddCondResp,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Set associations info
%% 
-spec slurmdb_v0040_post_associations(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_resp:slurmrestapi_v0_0_40_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_post_associations(Ctx) ->
    slurmdb_v0040_post_associations(Ctx, #{}).

-spec slurmdb_v0040_post_associations(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_resp:slurmrestapi_v0_0_40_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_post_associations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/associations/"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0040OpenapiAssocsResp,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get cluster list
%% 
-spec slurmdb_v0040_post_clusters(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_resp:slurmrestapi_v0_0_40_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_post_clusters(Ctx) ->
    slurmdb_v0040_post_clusters(Ctx, #{}).

-spec slurmdb_v0040_post_clusters(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_resp:slurmrestapi_v0_0_40_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_post_clusters(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/clusters/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time'], _OptionalParams),
    Headers = [],
    Body1 = SlurmrestapiV0040OpenapiClustersResp,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Load all configuration information
%% 
-spec slurmdb_v0040_post_config(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_resp:slurmrestapi_v0_0_40_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_post_config(Ctx) ->
    slurmdb_v0040_post_config(Ctx, #{}).

-spec slurmdb_v0040_post_config(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_resp:slurmrestapi_v0_0_40_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_post_config(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/config"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0040OpenapiSlurmdbdConfigResp,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add or update QOSs
%% 
-spec slurmdb_v0040_post_qos(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_resp:slurmrestapi_v0_0_40_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_post_qos(Ctx) ->
    slurmdb_v0040_post_qos(Ctx, #{}).

-spec slurmdb_v0040_post_qos(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_resp:slurmrestapi_v0_0_40_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_post_qos(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/qos/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['description', 'id', 'format', 'name', 'preempt_mode', 'with_deleted'], _OptionalParams),
    Headers = [],
    Body1 = SlurmrestapiV0040OpenapiSlurmdbdQosResp,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add TRES
%% 
-spec slurmdb_v0040_post_tres(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_resp:slurmrestapi_v0_0_40_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_post_tres(Ctx) ->
    slurmdb_v0040_post_tres(Ctx, #{}).

-spec slurmdb_v0040_post_tres(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_resp:slurmrestapi_v0_0_40_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_post_tres(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/tres/"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0040OpenapiTresResp,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update users
%% 
-spec slurmdb_v0040_post_users(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_resp:slurmrestapi_v0_0_40_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_post_users(Ctx) ->
    slurmdb_v0040_post_users(Ctx, #{}).

-spec slurmdb_v0040_post_users(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_resp:slurmrestapi_v0_0_40_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_post_users(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/users/"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0040OpenapiUsersResp,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add users with conditional association
%% 
-spec slurmdb_v0040_post_users_association(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_users_add_cond_resp_str:slurmrestapi_v0_0_40_openapi_users_add_cond_resp_str(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_post_users_association(Ctx) ->
    slurmdb_v0040_post_users_association(Ctx, #{}).

-spec slurmdb_v0040_post_users_association(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_users_add_cond_resp_str:slurmrestapi_v0_0_40_openapi_users_add_cond_resp_str(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_post_users_association(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/users_association/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time', 'flags'], _OptionalParams),
    Headers = [],
    Body1 = SlurmrestapiV0040OpenapiUsersAddCondResp,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add or update wckeys
%% 
-spec slurmdb_v0040_post_wckeys(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_resp:slurmrestapi_v0_0_40_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_post_wckeys(Ctx) ->
    slurmdb_v0040_post_wckeys(Ctx, #{}).

-spec slurmdb_v0040_post_wckeys(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_resp:slurmrestapi_v0_0_40_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0040_post_wckeys(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.40/wckeys/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['cluster', 'format', 'id', 'name', 'only_defaults', 'usage_end', 'usage_start', 'user', 'with_usage', 'with_deleted'], _OptionalParams),
    Headers = [],
    Body1 = SlurmrestapiV0040OpenapiWckeyResp,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete account
%% 
-spec slurmdb_v0041_delete_account(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_41_openapi_accounts_removed_resp:slurmrestapi_v0_0_41_openapi_accounts_removed_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_delete_account(Ctx, AccountName) ->
    slurmdb_v0041_delete_account(Ctx, AccountName, #{}).

-spec slurmdb_v0041_delete_account(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_accounts_removed_resp:slurmrestapi_v0_0_41_openapi_accounts_removed_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_delete_account(Ctx, AccountName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/account/", AccountName, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete association
%% 
-spec slurmdb_v0041_delete_association(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_assocs_removed_resp:slurmrestapi_v0_0_41_openapi_assocs_removed_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_delete_association(Ctx) ->
    slurmdb_v0041_delete_association(Ctx, #{}).

-spec slurmdb_v0041_delete_association(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_assocs_removed_resp:slurmrestapi_v0_0_41_openapi_assocs_removed_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_delete_association(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/association/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['account', 'cluster', 'default_qos', 'format', 'id', 'only_defaults', 'parent_account', 'partition', 'qos', 'usage_end', 'usage_start', 'user', 'with_usage', 'with_deleted', 'with_raw_qos', 'with_sub_accts', 'without_parent_info', 'without_parent_limits'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete associations
%% 
-spec slurmdb_v0041_delete_associations(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_assocs_removed_resp:slurmrestapi_v0_0_41_openapi_assocs_removed_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_delete_associations(Ctx) ->
    slurmdb_v0041_delete_associations(Ctx, #{}).

-spec slurmdb_v0041_delete_associations(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_assocs_removed_resp:slurmrestapi_v0_0_41_openapi_assocs_removed_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_delete_associations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/associations/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['account', 'cluster', 'default_qos', 'format', 'id', 'only_defaults', 'parent_account', 'partition', 'qos', 'usage_end', 'usage_start', 'user', 'with_usage', 'with_deleted', 'with_raw_qos', 'with_sub_accts', 'without_parent_info', 'without_parent_limits'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete cluster
%% 
-spec slurmdb_v0041_delete_cluster(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_41_openapi_clusters_removed_resp:slurmrestapi_v0_0_41_openapi_clusters_removed_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_delete_cluster(Ctx, ClusterName) ->
    slurmdb_v0041_delete_cluster(Ctx, ClusterName, #{}).

-spec slurmdb_v0041_delete_cluster(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_clusters_removed_resp:slurmrestapi_v0_0_41_openapi_clusters_removed_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_delete_cluster(Ctx, ClusterName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/cluster/", ClusterName, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['classification', 'cluster', 'federation', 'flags', 'format', 'rpc_version', 'usage_end', 'usage_start', 'with_deleted', 'with_usage'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete QOS
%% 
-spec slurmdb_v0041_delete_single_qos(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_41_openapi_slurmdbd_qos_removed_resp:slurmrestapi_v0_0_41_openapi_slurmdbd_qos_removed_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_delete_single_qos(Ctx, Qos) ->
    slurmdb_v0041_delete_single_qos(Ctx, Qos, #{}).

-spec slurmdb_v0041_delete_single_qos(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_slurmdbd_qos_removed_resp:slurmrestapi_v0_0_41_openapi_slurmdbd_qos_removed_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_delete_single_qos(Ctx, Qos, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/qos/", Qos, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete user
%% 
-spec slurmdb_v0041_delete_user(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_41_openapi_resp:slurmrestapi_v0_0_41_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_delete_user(Ctx, Name) ->
    slurmdb_v0041_delete_user(Ctx, Name, #{}).

-spec slurmdb_v0041_delete_user(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_resp:slurmrestapi_v0_0_41_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_delete_user(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/user/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete wckey
%% 
-spec slurmdb_v0041_delete_wckey(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_41_openapi_wckey_removed_resp:slurmrestapi_v0_0_41_openapi_wckey_removed_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_delete_wckey(Ctx, Id) ->
    slurmdb_v0041_delete_wckey(Ctx, Id, #{}).

-spec slurmdb_v0041_delete_wckey(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_wckey_removed_resp:slurmrestapi_v0_0_41_openapi_wckey_removed_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_delete_wckey(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/wckey/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get account info
%% 
-spec slurmdb_v0041_get_account(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_41_openapi_accounts_resp:slurmrestapi_v0_0_41_openapi_accounts_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_account(Ctx, AccountName) ->
    slurmdb_v0041_get_account(Ctx, AccountName, #{}).

-spec slurmdb_v0041_get_account(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_accounts_resp:slurmrestapi_v0_0_41_openapi_accounts_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_account(Ctx, AccountName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/account/", AccountName, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['with_assocs', 'with_coords', 'with_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get account list
%% 
-spec slurmdb_v0041_get_accounts(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_accounts_resp:slurmrestapi_v0_0_41_openapi_accounts_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_accounts(Ctx) ->
    slurmdb_v0041_get_accounts(Ctx, #{}).

-spec slurmdb_v0041_get_accounts(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_accounts_resp:slurmrestapi_v0_0_41_openapi_accounts_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_accounts(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/accounts/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['description', 'DELETED', 'WithAssociations', 'WithCoordinators', 'NoUsersAreCoords', 'UsersAreCoords'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get association info
%% 
-spec slurmdb_v0041_get_association(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_assocs_resp:slurmrestapi_v0_0_41_openapi_assocs_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_association(Ctx) ->
    slurmdb_v0041_get_association(Ctx, #{}).

-spec slurmdb_v0041_get_association(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_assocs_resp:slurmrestapi_v0_0_41_openapi_assocs_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_association(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/association/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['account', 'cluster', 'default_qos', 'format', 'id', 'only_defaults', 'parent_account', 'partition', 'qos', 'usage_end', 'usage_start', 'user', 'with_usage', 'with_deleted', 'with_raw_qos', 'with_sub_accts', 'without_parent_info', 'without_parent_limits'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get association list
%% 
-spec slurmdb_v0041_get_associations(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_assocs_resp:slurmrestapi_v0_0_41_openapi_assocs_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_associations(Ctx) ->
    slurmdb_v0041_get_associations(Ctx, #{}).

-spec slurmdb_v0041_get_associations(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_assocs_resp:slurmrestapi_v0_0_41_openapi_assocs_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_associations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/associations/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['account', 'cluster', 'default_qos', 'format', 'id', 'only_defaults', 'parent_account', 'partition', 'qos', 'usage_end', 'usage_start', 'user', 'with_usage', 'with_deleted', 'with_raw_qos', 'with_sub_accts', 'without_parent_info', 'without_parent_limits'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get cluster info
%% 
-spec slurmdb_v0041_get_cluster(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_41_openapi_clusters_resp:slurmrestapi_v0_0_41_openapi_clusters_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_cluster(Ctx, ClusterName) ->
    slurmdb_v0041_get_cluster(Ctx, ClusterName, #{}).

-spec slurmdb_v0041_get_cluster(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_clusters_resp:slurmrestapi_v0_0_41_openapi_clusters_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_cluster(Ctx, ClusterName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/cluster/", ClusterName, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['classification', 'cluster', 'federation', 'flags', 'format', 'rpc_version', 'usage_end', 'usage_start', 'with_deleted', 'with_usage'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get cluster list
%% 
-spec slurmdb_v0041_get_clusters(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_clusters_resp:slurmrestapi_v0_0_41_openapi_clusters_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_clusters(Ctx) ->
    slurmdb_v0041_get_clusters(Ctx, #{}).

-spec slurmdb_v0041_get_clusters(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_clusters_resp:slurmrestapi_v0_0_41_openapi_clusters_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_clusters(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/clusters/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Dump all configuration information
%% 
-spec slurmdb_v0041_get_config(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_config(Ctx) ->
    slurmdb_v0041_get_config(Ctx, #{}).

-spec slurmdb_v0041_get_config(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp:slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_config(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/config"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get slurmdb diagnostics
%% 
-spec slurmdb_v0041_get_diag(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp:slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_diag(Ctx) ->
    slurmdb_v0041_get_diag(Ctx, #{}).

-spec slurmdb_v0041_get_diag(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp:slurmrestapi_v0_0_41_openapi_slurmdbd_stats_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_diag(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/diag/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get instance info
%% 
-spec slurmdb_v0041_get_instance(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_instances_resp:slurmrestapi_v0_0_41_openapi_instances_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_instance(Ctx) ->
    slurmdb_v0041_get_instance(Ctx, #{}).

-spec slurmdb_v0041_get_instance(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_instances_resp:slurmrestapi_v0_0_41_openapi_instances_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_instance(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/instance/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['cluster', 'extra', 'format', 'instance_id', 'instance_type', 'node_list', 'time_end', 'time_start'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get instance list
%% 
-spec slurmdb_v0041_get_instances(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_instances_resp:slurmrestapi_v0_0_41_openapi_instances_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_instances(Ctx) ->
    slurmdb_v0041_get_instances(Ctx, #{}).

-spec slurmdb_v0041_get_instances(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_instances_resp:slurmrestapi_v0_0_41_openapi_instances_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_instances(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/instances/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['cluster', 'extra', 'format', 'instance_id', 'instance_type', 'node_list', 'time_end', 'time_start'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get job info
%% This endpoint may return multiple job entries since job_id is not a unique key - only the tuple (cluster, job_id, start_time) is unique. If the requested job_id is a component of a heterogeneous job all components are returned.
-spec slurmdb_v0041_get_job(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_job(Ctx, JobId) ->
    slurmdb_v0041_get_job(Ctx, JobId, #{}).

-spec slurmdb_v0041_get_job(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_job(Ctx, JobId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/job/", JobId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get job list
%% 
-spec slurmdb_v0041_get_jobs(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_jobs(Ctx) ->
    slurmdb_v0041_get_jobs(Ctx, #{}).

-spec slurmdb_v0041_get_jobs(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_jobs(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/jobs/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['account', 'association', 'cluster', 'constraints', 'scheduler_unset', 'scheduled_on_submit', 'scheduled_by_main', 'scheduled_by_backfill', 'job_started', 'exit_code', 'show_duplicates', 'skip_steps', 'disable_truncate_usage_time', 'whole_hetjob', 'disable_whole_hetjob', 'disable_wait_for_result', 'usage_time_as_submit_time', 'show_batch_script', 'show_job_environment', 'format', 'groups', 'job_name', 'partition', 'qos', 'reason', 'reservation', 'reservation_id', 'state', 'step', 'end_time', 'start_time', 'node', 'users', 'wckey'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get QOS list
%% 
-spec slurmdb_v0041_get_qos(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_slurmdbd_qos_resp:slurmrestapi_v0_0_41_openapi_slurmdbd_qos_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_qos(Ctx) ->
    slurmdb_v0041_get_qos(Ctx, #{}).

-spec slurmdb_v0041_get_qos(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_slurmdbd_qos_resp:slurmrestapi_v0_0_41_openapi_slurmdbd_qos_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_qos(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/qos/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['description', 'id', 'format', 'name', 'preempt_mode', 'with_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get QOS info
%% 
-spec slurmdb_v0041_get_single_qos(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_41_openapi_slurmdbd_qos_resp:slurmrestapi_v0_0_41_openapi_slurmdbd_qos_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_single_qos(Ctx, Qos) ->
    slurmdb_v0041_get_single_qos(Ctx, Qos, #{}).

-spec slurmdb_v0041_get_single_qos(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_slurmdbd_qos_resp:slurmrestapi_v0_0_41_openapi_slurmdbd_qos_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_single_qos(Ctx, Qos, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/qos/", Qos, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['with_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get TRES info
%% 
-spec slurmdb_v0041_get_tres(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_tres_resp:slurmrestapi_v0_0_41_openapi_tres_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_tres(Ctx) ->
    slurmdb_v0041_get_tres(Ctx, #{}).

-spec slurmdb_v0041_get_tres(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_tres_resp:slurmrestapi_v0_0_41_openapi_tres_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_tres(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/tres/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get user info
%% 
-spec slurmdb_v0041_get_user(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_41_openapi_users_resp:slurmrestapi_v0_0_41_openapi_users_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_user(Ctx, Name) ->
    slurmdb_v0041_get_user(Ctx, Name, #{}).

-spec slurmdb_v0041_get_user(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_users_resp:slurmrestapi_v0_0_41_openapi_users_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_user(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/user/", Name, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['with_deleted', 'with_assocs', 'with_coords', 'with_wckeys'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get user list
%% 
-spec slurmdb_v0041_get_users(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_users_resp:slurmrestapi_v0_0_41_openapi_users_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_users(Ctx) ->
    slurmdb_v0041_get_users(Ctx, #{}).

-spec slurmdb_v0041_get_users(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_users_resp:slurmrestapi_v0_0_41_openapi_users_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_users(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/users/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['admin_level', 'default_account', 'default_wckey', 'with_assocs', 'with_coords', 'with_deleted', 'with_wckeys', 'without_defaults'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get wckey info
%% 
-spec slurmdb_v0041_get_wckey(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_41_openapi_wckey_resp:slurmrestapi_v0_0_41_openapi_wckey_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_wckey(Ctx, Id) ->
    slurmdb_v0041_get_wckey(Ctx, Id, #{}).

-spec slurmdb_v0041_get_wckey(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_wckey_resp:slurmrestapi_v0_0_41_openapi_wckey_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_wckey(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/wckey/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get wckey list
%% 
-spec slurmdb_v0041_get_wckeys(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_wckey_resp:slurmrestapi_v0_0_41_openapi_wckey_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_wckeys(Ctx) ->
    slurmdb_v0041_get_wckeys(Ctx, #{}).

-spec slurmdb_v0041_get_wckeys(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_wckey_resp:slurmrestapi_v0_0_41_openapi_wckey_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_get_wckeys(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/wckeys/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['cluster', 'format', 'id', 'name', 'only_defaults', 'usage_end', 'usage_start', 'user', 'with_usage', 'with_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add/update list of accounts
%% 
-spec slurmdb_v0041_post_accounts(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_resp:slurmrestapi_v0_0_41_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_post_accounts(Ctx) ->
    slurmdb_v0041_post_accounts(Ctx, #{}).

-spec slurmdb_v0041_post_accounts(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_resp:slurmrestapi_v0_0_41_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_post_accounts(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/accounts/"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0041OpenapiAccountsResp,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add accounts with conditional association
%% 
-spec slurmdb_v0041_post_accounts_association(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_accounts_add_cond_resp_str:slurmrestapi_v0_0_41_openapi_accounts_add_cond_resp_str(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_post_accounts_association(Ctx) ->
    slurmdb_v0041_post_accounts_association(Ctx, #{}).

-spec slurmdb_v0041_post_accounts_association(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_accounts_add_cond_resp_str:slurmrestapi_v0_0_41_openapi_accounts_add_cond_resp_str(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_post_accounts_association(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/accounts_association/"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0041OpenapiAccountsAddCondResp,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Set associations info
%% 
-spec slurmdb_v0041_post_associations(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_resp:slurmrestapi_v0_0_41_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_post_associations(Ctx) ->
    slurmdb_v0041_post_associations(Ctx, #{}).

-spec slurmdb_v0041_post_associations(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_resp:slurmrestapi_v0_0_41_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_post_associations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/associations/"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0041OpenapiAssocsResp,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get cluster list
%% 
-spec slurmdb_v0041_post_clusters(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_resp:slurmrestapi_v0_0_41_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_post_clusters(Ctx) ->
    slurmdb_v0041_post_clusters(Ctx, #{}).

-spec slurmdb_v0041_post_clusters(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_resp:slurmrestapi_v0_0_41_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_post_clusters(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/clusters/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time'], _OptionalParams),
    Headers = [],
    Body1 = SlurmrestapiV0041OpenapiClustersResp,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Load all configuration information
%% 
-spec slurmdb_v0041_post_config(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_resp:slurmrestapi_v0_0_41_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_post_config(Ctx) ->
    slurmdb_v0041_post_config(Ctx, #{}).

-spec slurmdb_v0041_post_config(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_resp:slurmrestapi_v0_0_41_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_post_config(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/config"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0041OpenapiSlurmdbdConfigResp,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add or update QOSs
%% 
-spec slurmdb_v0041_post_qos(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_resp:slurmrestapi_v0_0_41_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_post_qos(Ctx) ->
    slurmdb_v0041_post_qos(Ctx, #{}).

-spec slurmdb_v0041_post_qos(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_resp:slurmrestapi_v0_0_41_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_post_qos(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/qos/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['description', 'id', 'format', 'name', 'preempt_mode', 'with_deleted'], _OptionalParams),
    Headers = [],
    Body1 = SlurmrestapiV0041OpenapiSlurmdbdQosResp,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add TRES
%% 
-spec slurmdb_v0041_post_tres(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_resp:slurmrestapi_v0_0_41_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_post_tres(Ctx) ->
    slurmdb_v0041_post_tres(Ctx, #{}).

-spec slurmdb_v0041_post_tres(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_resp:slurmrestapi_v0_0_41_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_post_tres(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/tres/"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0041OpenapiTresResp,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update users
%% 
-spec slurmdb_v0041_post_users(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_resp:slurmrestapi_v0_0_41_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_post_users(Ctx) ->
    slurmdb_v0041_post_users(Ctx, #{}).

-spec slurmdb_v0041_post_users(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_resp:slurmrestapi_v0_0_41_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_post_users(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/users/"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0041OpenapiUsersResp,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add users with conditional association
%% 
-spec slurmdb_v0041_post_users_association(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_users_add_cond_resp_str:slurmrestapi_v0_0_41_openapi_users_add_cond_resp_str(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_post_users_association(Ctx) ->
    slurmdb_v0041_post_users_association(Ctx, #{}).

-spec slurmdb_v0041_post_users_association(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_users_add_cond_resp_str:slurmrestapi_v0_0_41_openapi_users_add_cond_resp_str(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_post_users_association(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/users_association/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time', 'flags'], _OptionalParams),
    Headers = [],
    Body1 = SlurmrestapiV0041OpenapiUsersAddCondResp,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add or update wckeys
%% 
-spec slurmdb_v0041_post_wckeys(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_resp:slurmrestapi_v0_0_41_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_post_wckeys(Ctx) ->
    slurmdb_v0041_post_wckeys(Ctx, #{}).

-spec slurmdb_v0041_post_wckeys(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_resp:slurmrestapi_v0_0_41_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0041_post_wckeys(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.41/wckeys/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['cluster', 'format', 'id', 'name', 'only_defaults', 'usage_end', 'usage_start', 'user', 'with_usage', 'with_deleted'], _OptionalParams),
    Headers = [],
    Body1 = SlurmrestapiV0041OpenapiWckeyResp,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


