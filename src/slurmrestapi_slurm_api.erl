-module(slurmrestapi_slurm_api).

-export([slurm_v0039_cancel_job/2, slurm_v0039_cancel_job/3,
         slurm_v0039_delete_node/2, slurm_v0039_delete_node/3,
         slurm_v0039_diag/1, slurm_v0039_diag/2,
         slurm_v0039_get_job/2, slurm_v0039_get_job/3,
         slurm_v0039_get_jobs/1, slurm_v0039_get_jobs/2,
         slurm_v0039_get_node/2, slurm_v0039_get_node/3,
         slurm_v0039_get_nodes/1, slurm_v0039_get_nodes/2,
         slurm_v0039_get_partition/2, slurm_v0039_get_partition/3,
         slurm_v0039_get_partitions/1, slurm_v0039_get_partitions/2,
         slurm_v0039_get_reservation/2, slurm_v0039_get_reservation/3,
         slurm_v0039_get_reservations/1, slurm_v0039_get_reservations/2,
         slurm_v0039_ping/1, slurm_v0039_ping/2,
         slurm_v0039_slurmctld_get_licenses/1, slurm_v0039_slurmctld_get_licenses/2,
         slurm_v0039_submit_job/2, slurm_v0039_submit_job/3,
         slurm_v0039_update_job/3, slurm_v0039_update_job/4,
         slurm_v0039_update_node/3, slurm_v0039_update_node/4,
         slurm_v0040_delete_job/2, slurm_v0040_delete_job/3,
         slurm_v0040_delete_jobs/2, slurm_v0040_delete_jobs/3,
         slurm_v0040_delete_node/2, slurm_v0040_delete_node/3,
         slurm_v0040_get_diag/1, slurm_v0040_get_diag/2,
         slurm_v0040_get_job/2, slurm_v0040_get_job/3,
         slurm_v0040_get_jobs/1, slurm_v0040_get_jobs/2,
         slurm_v0040_get_jobs_state/1, slurm_v0040_get_jobs_state/2,
         slurm_v0040_get_licenses/1, slurm_v0040_get_licenses/2,
         slurm_v0040_get_node/2, slurm_v0040_get_node/3,
         slurm_v0040_get_nodes/1, slurm_v0040_get_nodes/2,
         slurm_v0040_get_partition/2, slurm_v0040_get_partition/3,
         slurm_v0040_get_partitions/1, slurm_v0040_get_partitions/2,
         slurm_v0040_get_ping/1, slurm_v0040_get_ping/2,
         slurm_v0040_get_reconfigure/1, slurm_v0040_get_reconfigure/2,
         slurm_v0040_get_reservation/2, slurm_v0040_get_reservation/3,
         slurm_v0040_get_reservations/1, slurm_v0040_get_reservations/2,
         slurm_v0040_get_shares/1, slurm_v0040_get_shares/2,
         slurm_v0040_post_job/3, slurm_v0040_post_job/4,
         slurm_v0040_post_job_submit/2, slurm_v0040_post_job_submit/3,
         slurm_v0040_post_node/3, slurm_v0040_post_node/4,
         slurm_v0041_delete_job/2, slurm_v0041_delete_job/3,
         slurm_v0041_delete_jobs/2, slurm_v0041_delete_jobs/3,
         slurm_v0041_delete_node/2, slurm_v0041_delete_node/3,
         slurm_v0041_get_diag/1, slurm_v0041_get_diag/2,
         slurm_v0041_get_job/2, slurm_v0041_get_job/3,
         slurm_v0041_get_jobs/1, slurm_v0041_get_jobs/2,
         slurm_v0041_get_jobs_state/1, slurm_v0041_get_jobs_state/2,
         slurm_v0041_get_licenses/1, slurm_v0041_get_licenses/2,
         slurm_v0041_get_node/2, slurm_v0041_get_node/3,
         slurm_v0041_get_nodes/1, slurm_v0041_get_nodes/2,
         slurm_v0041_get_partition/2, slurm_v0041_get_partition/3,
         slurm_v0041_get_partitions/1, slurm_v0041_get_partitions/2,
         slurm_v0041_get_ping/1, slurm_v0041_get_ping/2,
         slurm_v0041_get_reconfigure/1, slurm_v0041_get_reconfigure/2,
         slurm_v0041_get_reservation/2, slurm_v0041_get_reservation/3,
         slurm_v0041_get_reservations/1, slurm_v0041_get_reservations/2,
         slurm_v0041_get_shares/1, slurm_v0041_get_shares/2,
         slurm_v0041_post_job/3, slurm_v0041_post_job/4,
         slurm_v0041_post_job_allocate/2, slurm_v0041_post_job_allocate/3,
         slurm_v0041_post_job_submit/2, slurm_v0041_post_job_submit/3,
         slurm_v0041_post_node/3, slurm_v0041_post_node/4,
         slurmdb_v0039_add_clusters/2, slurmdb_v0039_add_clusters/3,
         slurmdb_v0039_add_wckeys/2, slurmdb_v0039_add_wckeys/3,
         slurmdb_v0039_delete_account/2, slurmdb_v0039_delete_account/3,
         slurmdb_v0039_delete_association/1, slurmdb_v0039_delete_association/2,
         slurmdb_v0039_delete_associations/1, slurmdb_v0039_delete_associations/2,
         slurmdb_v0039_delete_cluster/2, slurmdb_v0039_delete_cluster/3,
         slurmdb_v0039_delete_qos/2, slurmdb_v0039_delete_qos/3,
         slurmdb_v0039_delete_user/2, slurmdb_v0039_delete_user/3,
         slurmdb_v0039_delete_wckey/2, slurmdb_v0039_delete_wckey/3,
         slurmdb_v0039_diag/1, slurmdb_v0039_diag/2,
         slurmdb_v0039_get_account/2, slurmdb_v0039_get_account/3,
         slurmdb_v0039_get_accounts/1, slurmdb_v0039_get_accounts/2,
         slurmdb_v0039_get_association/1, slurmdb_v0039_get_association/2,
         slurmdb_v0039_get_associations/1, slurmdb_v0039_get_associations/2,
         slurmdb_v0039_get_cluster/2, slurmdb_v0039_get_cluster/3,
         slurmdb_v0039_get_clusters/1, slurmdb_v0039_get_clusters/2,
         slurmdb_v0039_get_config/1, slurmdb_v0039_get_config/2,
         slurmdb_v0039_get_job/2, slurmdb_v0039_get_job/3,
         slurmdb_v0039_get_jobs/1, slurmdb_v0039_get_jobs/2,
         slurmdb_v0039_get_qos/1, slurmdb_v0039_get_qos/2,
         slurmdb_v0039_get_single_qos/2, slurmdb_v0039_get_single_qos/3,
         slurmdb_v0039_get_tres/1, slurmdb_v0039_get_tres/2,
         slurmdb_v0039_get_user/2, slurmdb_v0039_get_user/3,
         slurmdb_v0039_get_users/1, slurmdb_v0039_get_users/2,
         slurmdb_v0039_get_wckey/2, slurmdb_v0039_get_wckey/3,
         slurmdb_v0039_get_wckeys/1, slurmdb_v0039_get_wckeys/2,
         slurmdb_v0039_set_config/2, slurmdb_v0039_set_config/3,
         slurmdb_v0039_update_accounts/2, slurmdb_v0039_update_accounts/3,
         slurmdb_v0039_update_associations/2, slurmdb_v0039_update_associations/3,
         slurmdb_v0039_update_qos/2, slurmdb_v0039_update_qos/3,
         slurmdb_v0039_update_tres/2, slurmdb_v0039_update_tres/3,
         slurmdb_v0039_update_users/2, slurmdb_v0039_update_users/3]).

-define(BASE_URL, <<"">>).

%% @doc cancel or signal job
%% 
-spec slurm_v0039_cancel_job(ctx:ctx(), binary()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_cancel_job(Ctx, JobId) ->
    slurm_v0039_cancel_job(Ctx, JobId, #{}).

-spec slurm_v0039_cancel_job(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_cancel_job(Ctx, JobId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurm/v0.0.39/job/", JobId, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['signal'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc delete node
%% 
-spec slurm_v0039_delete_node(ctx:ctx(), binary()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_delete_node(Ctx, NodeName) ->
    slurm_v0039_delete_node(Ctx, NodeName, #{}).

-spec slurm_v0039_delete_node(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_delete_node(Ctx, NodeName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurm/v0.0.39/node/", NodeName, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get diagnostics
%% 
-spec slurm_v0039_diag(ctx:ctx()) -> {ok, slurmrestapi_v0_0_39_diag:slurmrestapi_v0_0_39_diag(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_diag(Ctx) ->
    slurm_v0039_diag(Ctx, #{}).

-spec slurm_v0039_diag(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_39_diag:slurmrestapi_v0_0_39_diag(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_diag(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.39/diag"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get job info
%% 
-spec slurm_v0039_get_job(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_39_jobs_response:slurmrestapi_v0_0_39_jobs_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_get_job(Ctx, JobId) ->
    slurm_v0039_get_job(Ctx, JobId, #{}).

-spec slurm_v0039_get_job(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_39_jobs_response:slurmrestapi_v0_0_39_jobs_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_get_job(Ctx, JobId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.39/job/", JobId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get list of jobs
%% 
-spec slurm_v0039_get_jobs(ctx:ctx()) -> {ok, slurmrestapi_v0_0_39_jobs_response:slurmrestapi_v0_0_39_jobs_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_get_jobs(Ctx) ->
    slurm_v0039_get_jobs(Ctx, #{}).

-spec slurm_v0039_get_jobs(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_39_jobs_response:slurmrestapi_v0_0_39_jobs_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_get_jobs(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.39/jobs"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get node info
%% 
-spec slurm_v0039_get_node(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_39_nodes_response:slurmrestapi_v0_0_39_nodes_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_get_node(Ctx, NodeName) ->
    slurm_v0039_get_node(Ctx, NodeName, #{}).

-spec slurm_v0039_get_node(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_39_nodes_response:slurmrestapi_v0_0_39_nodes_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_get_node(Ctx, NodeName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.39/node/", NodeName, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get all node info
%% 
-spec slurm_v0039_get_nodes(ctx:ctx()) -> {ok, slurmrestapi_v0_0_39_nodes_response:slurmrestapi_v0_0_39_nodes_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_get_nodes(Ctx) ->
    slurm_v0039_get_nodes(Ctx, #{}).

-spec slurm_v0039_get_nodes(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_39_nodes_response:slurmrestapi_v0_0_39_nodes_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_get_nodes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.39/nodes"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get partition info
%% 
-spec slurm_v0039_get_partition(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_39_partitions_response:slurmrestapi_v0_0_39_partitions_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_get_partition(Ctx, PartitionName) ->
    slurm_v0039_get_partition(Ctx, PartitionName, #{}).

-spec slurm_v0039_get_partition(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_39_partitions_response:slurmrestapi_v0_0_39_partitions_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_get_partition(Ctx, PartitionName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.39/partition/", PartitionName, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get all partition info
%% 
-spec slurm_v0039_get_partitions(ctx:ctx()) -> {ok, slurmrestapi_v0_0_39_partitions_response:slurmrestapi_v0_0_39_partitions_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_get_partitions(Ctx) ->
    slurm_v0039_get_partitions(Ctx, #{}).

-spec slurm_v0039_get_partitions(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_39_partitions_response:slurmrestapi_v0_0_39_partitions_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_get_partitions(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.39/partitions"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get reservation info
%% 
-spec slurm_v0039_get_reservation(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_39_reservations_response:slurmrestapi_v0_0_39_reservations_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_get_reservation(Ctx, ReservationName) ->
    slurm_v0039_get_reservation(Ctx, ReservationName, #{}).

-spec slurm_v0039_get_reservation(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_39_reservations_response:slurmrestapi_v0_0_39_reservations_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_get_reservation(Ctx, ReservationName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.39/reservation/", ReservationName, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get all reservation info
%% 
-spec slurm_v0039_get_reservations(ctx:ctx()) -> {ok, slurmrestapi_v0_0_39_reservations_response:slurmrestapi_v0_0_39_reservations_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_get_reservations(Ctx) ->
    slurm_v0039_get_reservations(Ctx, #{}).

-spec slurm_v0039_get_reservations(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_39_reservations_response:slurmrestapi_v0_0_39_reservations_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_get_reservations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.39/reservations"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc ping test
%% 
-spec slurm_v0039_ping(ctx:ctx()) -> {ok, slurmrestapi_v0_0_39_pings:slurmrestapi_v0_0_39_pings(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_ping(Ctx) ->
    slurm_v0039_ping(Ctx, #{}).

-spec slurm_v0039_ping(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_39_pings:slurmrestapi_v0_0_39_pings(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_ping(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.39/ping"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get all Slurm tracked license info
%% 
-spec slurm_v0039_slurmctld_get_licenses(ctx:ctx()) -> {ok, slurmrestapi_v0_0_39_licenses_info:slurmrestapi_v0_0_39_licenses_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_slurmctld_get_licenses(Ctx) ->
    slurm_v0039_slurmctld_get_licenses(Ctx, #{}).

-spec slurm_v0039_slurmctld_get_licenses(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_39_licenses_info:slurmrestapi_v0_0_39_licenses_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_slurmctld_get_licenses(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.39/licenses"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc submit new job
%% 
-spec slurm_v0039_submit_job(ctx:ctx(), slurmrestapi_v0_0_39_job_submission:slurmrestapi_v0_0_39_job_submission()) -> {ok, slurmrestapi_v0_0_39_job_submission_response:slurmrestapi_v0_0_39_job_submission_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_submit_job(Ctx, SlurmrestapiV0039JobSubmission) ->
    slurm_v0039_submit_job(Ctx, SlurmrestapiV0039JobSubmission, #{}).

-spec slurm_v0039_submit_job(ctx:ctx(), slurmrestapi_v0_0_39_job_submission:slurmrestapi_v0_0_39_job_submission(), maps:map()) -> {ok, slurmrestapi_v0_0_39_job_submission_response:slurmrestapi_v0_0_39_job_submission_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_submit_job(Ctx, SlurmrestapiV0039JobSubmission, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurm/v0.0.39/job/submit"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0039JobSubmission,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc update job
%% 
-spec slurm_v0039_update_job(ctx:ctx(), binary(), slurmrestapi_v0_0_39_job_desc_msg:slurmrestapi_v0_0_39_job_desc_msg()) -> {ok, slurmrestapi_v0_0_39_job_update_response:slurmrestapi_v0_0_39_job_update_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_update_job(Ctx, JobId, SlurmrestapiV0039JobDescMsg) ->
    slurm_v0039_update_job(Ctx, JobId, SlurmrestapiV0039JobDescMsg, #{}).

-spec slurm_v0039_update_job(ctx:ctx(), binary(), slurmrestapi_v0_0_39_job_desc_msg:slurmrestapi_v0_0_39_job_desc_msg(), maps:map()) -> {ok, slurmrestapi_v0_0_39_job_update_response:slurmrestapi_v0_0_39_job_update_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_update_job(Ctx, JobId, SlurmrestapiV0039JobDescMsg, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurm/v0.0.39/job/", JobId, ""],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0039JobDescMsg,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc update node properties
%% 
-spec slurm_v0039_update_node(ctx:ctx(), binary(), slurmrestapi_v0_0_39_update_node_msg:slurmrestapi_v0_0_39_update_node_msg()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_update_node(Ctx, NodeName, SlurmrestapiV0039UpdateNodeMsg) ->
    slurm_v0039_update_node(Ctx, NodeName, SlurmrestapiV0039UpdateNodeMsg, #{}).

-spec slurm_v0039_update_node(ctx:ctx(), binary(), slurmrestapi_v0_0_39_update_node_msg:slurmrestapi_v0_0_39_update_node_msg(), maps:map()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0039_update_node(Ctx, NodeName, SlurmrestapiV0039UpdateNodeMsg, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurm/v0.0.39/node/", NodeName, ""],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0039UpdateNodeMsg,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc cancel or signal job
%% 
-spec slurm_v0040_delete_job(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_40_openapi_resp:slurmrestapi_v0_0_40_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_delete_job(Ctx, JobId) ->
    slurm_v0040_delete_job(Ctx, JobId, #{}).

-spec slurm_v0040_delete_job(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_resp:slurmrestapi_v0_0_40_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_delete_job(Ctx, JobId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurm/v0.0.40/job/", JobId, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['signal', 'flags'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc send signal to list of jobs
%% 
-spec slurm_v0040_delete_jobs(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_kill_jobs_resp:slurmrestapi_v0_0_40_openapi_kill_jobs_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_delete_jobs(Ctx) ->
    slurm_v0040_delete_jobs(Ctx, #{}).

-spec slurm_v0040_delete_jobs(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_kill_jobs_resp:slurmrestapi_v0_0_40_openapi_kill_jobs_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_delete_jobs(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurm/v0.0.40/jobs/"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0040KillJobsMsg,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc delete node
%% 
-spec slurm_v0040_delete_node(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_40_openapi_resp:slurmrestapi_v0_0_40_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_delete_node(Ctx, NodeName) ->
    slurm_v0040_delete_node(Ctx, NodeName, #{}).

-spec slurm_v0040_delete_node(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_resp:slurmrestapi_v0_0_40_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_delete_node(Ctx, NodeName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurm/v0.0.40/node/", NodeName, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get diagnostics
%% 
-spec slurm_v0040_get_diag(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_diag_resp:slurmrestapi_v0_0_40_openapi_diag_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_diag(Ctx) ->
    slurm_v0040_get_diag(Ctx, #{}).

-spec slurm_v0040_get_diag(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_diag_resp:slurmrestapi_v0_0_40_openapi_diag_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_diag(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.40/diag/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get job info
%% 
-spec slurm_v0040_get_job(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_40_openapi_job_info_resp:slurmrestapi_v0_0_40_openapi_job_info_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_job(Ctx, JobId) ->
    slurm_v0040_get_job(Ctx, JobId, #{}).

-spec slurm_v0040_get_job(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_job_info_resp:slurmrestapi_v0_0_40_openapi_job_info_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_job(Ctx, JobId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.40/job/", JobId, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time', 'flags'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get list of jobs
%% 
-spec slurm_v0040_get_jobs(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_job_info_resp:slurmrestapi_v0_0_40_openapi_job_info_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_jobs(Ctx) ->
    slurm_v0040_get_jobs(Ctx, #{}).

-spec slurm_v0040_get_jobs(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_job_info_resp:slurmrestapi_v0_0_40_openapi_job_info_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_jobs(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.40/jobs/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time', 'flags'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get list of job states
%% 
-spec slurm_v0040_get_jobs_state(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_job_info_resp:slurmrestapi_v0_0_40_openapi_job_info_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_jobs_state(Ctx) ->
    slurm_v0040_get_jobs_state(Ctx, #{}).

-spec slurm_v0040_get_jobs_state(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_job_info_resp:slurmrestapi_v0_0_40_openapi_job_info_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_jobs_state(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.40/jobs/state/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time', 'flags'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get all Slurm tracked license info
%% 
-spec slurm_v0040_get_licenses(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_licenses_resp:slurmrestapi_v0_0_40_openapi_licenses_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_licenses(Ctx) ->
    slurm_v0040_get_licenses(Ctx, #{}).

-spec slurm_v0040_get_licenses(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_licenses_resp:slurmrestapi_v0_0_40_openapi_licenses_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_licenses(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.40/licenses/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get node info
%% 
-spec slurm_v0040_get_node(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_40_openapi_nodes_resp:slurmrestapi_v0_0_40_openapi_nodes_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_node(Ctx, NodeName) ->
    slurm_v0040_get_node(Ctx, NodeName, #{}).

-spec slurm_v0040_get_node(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_nodes_resp:slurmrestapi_v0_0_40_openapi_nodes_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_node(Ctx, NodeName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.40/node/", NodeName, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time', 'flags'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get node(s) info
%% 
-spec slurm_v0040_get_nodes(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_nodes_resp:slurmrestapi_v0_0_40_openapi_nodes_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_nodes(Ctx) ->
    slurm_v0040_get_nodes(Ctx, #{}).

-spec slurm_v0040_get_nodes(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_nodes_resp:slurmrestapi_v0_0_40_openapi_nodes_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_nodes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.40/nodes/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time', 'flags'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get partition info
%% 
-spec slurm_v0040_get_partition(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_40_openapi_partition_resp:slurmrestapi_v0_0_40_openapi_partition_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_partition(Ctx, PartitionName) ->
    slurm_v0040_get_partition(Ctx, PartitionName, #{}).

-spec slurm_v0040_get_partition(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_partition_resp:slurmrestapi_v0_0_40_openapi_partition_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_partition(Ctx, PartitionName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.40/partition/", PartitionName, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time', 'flags'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get all partition info
%% 
-spec slurm_v0040_get_partitions(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_partition_resp:slurmrestapi_v0_0_40_openapi_partition_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_partitions(Ctx) ->
    slurm_v0040_get_partitions(Ctx, #{}).

-spec slurm_v0040_get_partitions(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_partition_resp:slurmrestapi_v0_0_40_openapi_partition_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_partitions(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.40/partitions/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time', 'flags'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc ping test
%% 
-spec slurm_v0040_get_ping(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_ping_array_resp:slurmrestapi_v0_0_40_openapi_ping_array_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_ping(Ctx) ->
    slurm_v0040_get_ping(Ctx, #{}).

-spec slurm_v0040_get_ping(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_ping_array_resp:slurmrestapi_v0_0_40_openapi_ping_array_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_ping(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.40/ping/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc request slurmctld reconfigure
%% 
-spec slurm_v0040_get_reconfigure(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_resp:slurmrestapi_v0_0_40_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_reconfigure(Ctx) ->
    slurm_v0040_get_reconfigure(Ctx, #{}).

-spec slurm_v0040_get_reconfigure(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_resp:slurmrestapi_v0_0_40_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_reconfigure(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.40/reconfigure/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get reservation info
%% 
-spec slurm_v0040_get_reservation(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_40_openapi_reservation_resp:slurmrestapi_v0_0_40_openapi_reservation_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_reservation(Ctx, ReservationName) ->
    slurm_v0040_get_reservation(Ctx, ReservationName, #{}).

-spec slurm_v0040_get_reservation(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_reservation_resp:slurmrestapi_v0_0_40_openapi_reservation_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_reservation(Ctx, ReservationName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.40/reservation/", ReservationName, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get all reservation info
%% 
-spec slurm_v0040_get_reservations(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_reservation_resp:slurmrestapi_v0_0_40_openapi_reservation_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_reservations(Ctx) ->
    slurm_v0040_get_reservations(Ctx, #{}).

-spec slurm_v0040_get_reservations(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_reservation_resp:slurmrestapi_v0_0_40_openapi_reservation_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_reservations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.40/reservations/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get fairshare info
%% 
-spec slurm_v0040_get_shares(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_shares_resp:slurmrestapi_v0_0_40_openapi_shares_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_shares(Ctx) ->
    slurm_v0040_get_shares(Ctx, #{}).

-spec slurm_v0040_get_shares(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_shares_resp:slurmrestapi_v0_0_40_openapi_shares_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_get_shares(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.40/shares"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['accounts', 'users'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc update job
%% 
-spec slurm_v0040_post_job(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_40_openapi_job_post_response:slurmrestapi_v0_0_40_openapi_job_post_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_post_job(Ctx, JobId) ->
    slurm_v0040_post_job(Ctx, JobId, #{}).

-spec slurm_v0040_post_job(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_job_post_response:slurmrestapi_v0_0_40_openapi_job_post_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_post_job(Ctx, JobId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurm/v0.0.40/job/", JobId, ""],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0040JobDescMsg,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc submit new job
%% 
-spec slurm_v0040_post_job_submit(ctx:ctx()) -> {ok, slurmrestapi_v0_0_40_openapi_job_submit_response:slurmrestapi_v0_0_40_openapi_job_submit_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_post_job_submit(Ctx) ->
    slurm_v0040_post_job_submit(Ctx, #{}).

-spec slurm_v0040_post_job_submit(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_job_submit_response:slurmrestapi_v0_0_40_openapi_job_submit_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_post_job_submit(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurm/v0.0.40/job/submit"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0040JobSubmitReq,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc update node properties
%% 
-spec slurm_v0040_post_node(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_40_openapi_resp:slurmrestapi_v0_0_40_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_post_node(Ctx, NodeName) ->
    slurm_v0040_post_node(Ctx, NodeName, #{}).

-spec slurm_v0040_post_node(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_40_openapi_resp:slurmrestapi_v0_0_40_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0040_post_node(Ctx, NodeName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurm/v0.0.40/node/", NodeName, ""],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0040UpdateNodeMsg,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc cancel or signal job
%% 
-spec slurm_v0041_delete_job(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_41_openapi_resp:slurmrestapi_v0_0_41_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_delete_job(Ctx, JobId) ->
    slurm_v0041_delete_job(Ctx, JobId, #{}).

-spec slurm_v0041_delete_job(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_resp:slurmrestapi_v0_0_41_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_delete_job(Ctx, JobId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurm/v0.0.41/job/", JobId, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['signal', 'flags'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc send signal to list of jobs
%% 
-spec slurm_v0041_delete_jobs(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_kill_jobs_resp:slurmrestapi_v0_0_41_openapi_kill_jobs_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_delete_jobs(Ctx) ->
    slurm_v0041_delete_jobs(Ctx, #{}).

-spec slurm_v0041_delete_jobs(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_kill_jobs_resp:slurmrestapi_v0_0_41_openapi_kill_jobs_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_delete_jobs(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurm/v0.0.41/jobs/"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0041KillJobsMsg,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc delete node
%% 
-spec slurm_v0041_delete_node(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_41_openapi_resp:slurmrestapi_v0_0_41_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_delete_node(Ctx, NodeName) ->
    slurm_v0041_delete_node(Ctx, NodeName, #{}).

-spec slurm_v0041_delete_node(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_resp:slurmrestapi_v0_0_41_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_delete_node(Ctx, NodeName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurm/v0.0.41/node/", NodeName, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get diagnostics
%% 
-spec slurm_v0041_get_diag(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_diag_resp:slurmrestapi_v0_0_41_openapi_diag_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_diag(Ctx) ->
    slurm_v0041_get_diag(Ctx, #{}).

-spec slurm_v0041_get_diag(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_diag_resp:slurmrestapi_v0_0_41_openapi_diag_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_diag(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.41/diag/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get job info
%% 
-spec slurm_v0041_get_job(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_41_openapi_job_info_resp:slurmrestapi_v0_0_41_openapi_job_info_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_job(Ctx, JobId) ->
    slurm_v0041_get_job(Ctx, JobId, #{}).

-spec slurm_v0041_get_job(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_job_info_resp:slurmrestapi_v0_0_41_openapi_job_info_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_job(Ctx, JobId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.41/job/", JobId, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time', 'flags'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get list of jobs
%% 
-spec slurm_v0041_get_jobs(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_job_info_resp:slurmrestapi_v0_0_41_openapi_job_info_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_jobs(Ctx) ->
    slurm_v0041_get_jobs(Ctx, #{}).

-spec slurm_v0041_get_jobs(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_job_info_resp:slurmrestapi_v0_0_41_openapi_job_info_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_jobs(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.41/jobs/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time', 'flags'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get list of job states
%% 
-spec slurm_v0041_get_jobs_state(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_job_info_resp:slurmrestapi_v0_0_41_openapi_job_info_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_jobs_state(Ctx) ->
    slurm_v0041_get_jobs_state(Ctx, #{}).

-spec slurm_v0041_get_jobs_state(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_job_info_resp:slurmrestapi_v0_0_41_openapi_job_info_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_jobs_state(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.41/jobs/state/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time', 'flags'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get all Slurm tracked license info
%% 
-spec slurm_v0041_get_licenses(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_licenses_resp:slurmrestapi_v0_0_41_openapi_licenses_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_licenses(Ctx) ->
    slurm_v0041_get_licenses(Ctx, #{}).

-spec slurm_v0041_get_licenses(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_licenses_resp:slurmrestapi_v0_0_41_openapi_licenses_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_licenses(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.41/licenses/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get node info
%% 
-spec slurm_v0041_get_node(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_41_openapi_nodes_resp:slurmrestapi_v0_0_41_openapi_nodes_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_node(Ctx, NodeName) ->
    slurm_v0041_get_node(Ctx, NodeName, #{}).

-spec slurm_v0041_get_node(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_nodes_resp:slurmrestapi_v0_0_41_openapi_nodes_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_node(Ctx, NodeName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.41/node/", NodeName, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time', 'flags'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get node(s) info
%% 
-spec slurm_v0041_get_nodes(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_nodes_resp:slurmrestapi_v0_0_41_openapi_nodes_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_nodes(Ctx) ->
    slurm_v0041_get_nodes(Ctx, #{}).

-spec slurm_v0041_get_nodes(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_nodes_resp:slurmrestapi_v0_0_41_openapi_nodes_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_nodes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.41/nodes/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time', 'flags'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get partition info
%% 
-spec slurm_v0041_get_partition(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_41_openapi_partition_resp:slurmrestapi_v0_0_41_openapi_partition_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_partition(Ctx, PartitionName) ->
    slurm_v0041_get_partition(Ctx, PartitionName, #{}).

-spec slurm_v0041_get_partition(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_partition_resp:slurmrestapi_v0_0_41_openapi_partition_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_partition(Ctx, PartitionName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.41/partition/", PartitionName, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time', 'flags'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get all partition info
%% 
-spec slurm_v0041_get_partitions(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_partition_resp:slurmrestapi_v0_0_41_openapi_partition_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_partitions(Ctx) ->
    slurm_v0041_get_partitions(Ctx, #{}).

-spec slurm_v0041_get_partitions(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_partition_resp:slurmrestapi_v0_0_41_openapi_partition_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_partitions(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.41/partitions/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time', 'flags'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc ping test
%% 
-spec slurm_v0041_get_ping(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_ping_array_resp:slurmrestapi_v0_0_41_openapi_ping_array_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_ping(Ctx) ->
    slurm_v0041_get_ping(Ctx, #{}).

-spec slurm_v0041_get_ping(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_ping_array_resp:slurmrestapi_v0_0_41_openapi_ping_array_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_ping(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.41/ping/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc request slurmctld reconfigure
%% 
-spec slurm_v0041_get_reconfigure(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_resp:slurmrestapi_v0_0_41_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_reconfigure(Ctx) ->
    slurm_v0041_get_reconfigure(Ctx, #{}).

-spec slurm_v0041_get_reconfigure(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_resp:slurmrestapi_v0_0_41_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_reconfigure(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.41/reconfigure/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get reservation info
%% 
-spec slurm_v0041_get_reservation(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_41_openapi_reservation_resp:slurmrestapi_v0_0_41_openapi_reservation_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_reservation(Ctx, ReservationName) ->
    slurm_v0041_get_reservation(Ctx, ReservationName, #{}).

-spec slurm_v0041_get_reservation(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_reservation_resp:slurmrestapi_v0_0_41_openapi_reservation_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_reservation(Ctx, ReservationName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.41/reservation/", ReservationName, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get all reservation info
%% 
-spec slurm_v0041_get_reservations(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_reservation_resp:slurmrestapi_v0_0_41_openapi_reservation_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_reservations(Ctx) ->
    slurm_v0041_get_reservations(Ctx, #{}).

-spec slurm_v0041_get_reservations(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_reservation_resp:slurmrestapi_v0_0_41_openapi_reservation_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_reservations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.41/reservations/"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get fairshare info
%% 
-spec slurm_v0041_get_shares(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_shares_resp:slurmrestapi_v0_0_41_openapi_shares_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_shares(Ctx) ->
    slurm_v0041_get_shares(Ctx, #{}).

-spec slurm_v0041_get_shares(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_shares_resp:slurmrestapi_v0_0_41_openapi_shares_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_get_shares(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.41/shares"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['accounts', 'users'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc update job
%% 
-spec slurm_v0041_post_job(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_41_openapi_job_post_response:slurmrestapi_v0_0_41_openapi_job_post_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_post_job(Ctx, JobId) ->
    slurm_v0041_post_job(Ctx, JobId, #{}).

-spec slurm_v0041_post_job(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_job_post_response:slurmrestapi_v0_0_41_openapi_job_post_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_post_job(Ctx, JobId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurm/v0.0.41/job/", JobId, ""],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0041JobDescMsg,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc submit new job allocation without any steps that must be signaled to stop
%% 
-spec slurm_v0041_post_job_allocate(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_job_alloc_resp:slurmrestapi_v0_0_41_openapi_job_alloc_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_post_job_allocate(Ctx) ->
    slurm_v0041_post_job_allocate(Ctx, #{}).

-spec slurm_v0041_post_job_allocate(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_job_alloc_resp:slurmrestapi_v0_0_41_openapi_job_alloc_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_post_job_allocate(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurm/v0.0.41/job/allocate"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0041JobAllocReq,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc submit new job
%% 
-spec slurm_v0041_post_job_submit(ctx:ctx()) -> {ok, slurmrestapi_v0_0_41_openapi_job_submit_response:slurmrestapi_v0_0_41_openapi_job_submit_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_post_job_submit(Ctx) ->
    slurm_v0041_post_job_submit(Ctx, #{}).

-spec slurm_v0041_post_job_submit(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_job_submit_response:slurmrestapi_v0_0_41_openapi_job_submit_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_post_job_submit(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurm/v0.0.41/job/submit"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0041JobSubmitReq,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc update node properties
%% 
-spec slurm_v0041_post_node(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_41_openapi_resp:slurmrestapi_v0_0_41_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_post_node(Ctx, NodeName) ->
    slurm_v0041_post_node(Ctx, NodeName, #{}).

-spec slurm_v0041_post_node(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_41_openapi_resp:slurmrestapi_v0_0_41_openapi_resp(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0041_post_node(Ctx, NodeName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurm/v0.0.41/node/", NodeName, ""],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0041UpdateNodeMsg,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add clusters
%% 
-spec slurmdb_v0039_add_clusters(ctx:ctx(), slurmrestapi_dbv0_0_39_clusters_info:slurmrestapi_dbv0_0_39_clusters_info()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_add_clusters(Ctx, SlurmrestapiDbv0039ClustersInfo) ->
    slurmdb_v0039_add_clusters(Ctx, SlurmrestapiDbv0039ClustersInfo, #{}).

-spec slurmdb_v0039_add_clusters(ctx:ctx(), slurmrestapi_dbv0_0_39_clusters_info:slurmrestapi_dbv0_0_39_clusters_info(), maps:map()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_add_clusters(Ctx, SlurmrestapiDbv0039ClustersInfo, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/clusters"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiDbv0039ClustersInfo,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add wckeys
%% 
-spec slurmdb_v0039_add_wckeys(ctx:ctx()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_add_wckeys(Ctx) ->
    slurmdb_v0039_add_wckeys(Ctx, #{}).

-spec slurmdb_v0039_add_wckeys(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_add_wckeys(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/wckeys"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiDbv0039WckeyInfo,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete account
%% 
-spec slurmdb_v0039_delete_account(ctx:ctx(), binary()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_delete_account(Ctx, AccountName) ->
    slurmdb_v0039_delete_account(Ctx, AccountName, #{}).

-spec slurmdb_v0039_delete_account(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_delete_account(Ctx, AccountName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/account/", AccountName, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete association
%% 
-spec slurmdb_v0039_delete_association(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_39_response_associations_delete:slurmrestapi_dbv0_0_39_response_associations_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_delete_association(Ctx) ->
    slurmdb_v0039_delete_association(Ctx, #{}).

-spec slurmdb_v0039_delete_association(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_39_response_associations_delete:slurmrestapi_dbv0_0_39_response_associations_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_delete_association(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/association"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['cluster', 'account', 'user', 'partition'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete associations
%% 
-spec slurmdb_v0039_delete_associations(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_39_response_associations_delete:slurmrestapi_dbv0_0_39_response_associations_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_delete_associations(Ctx) ->
    slurmdb_v0039_delete_associations(Ctx, #{}).

-spec slurmdb_v0039_delete_associations(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_39_response_associations_delete:slurmrestapi_dbv0_0_39_response_associations_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_delete_associations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/associations"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['cluster', 'account', 'user', 'partition'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete cluster
%% 
-spec slurmdb_v0039_delete_cluster(ctx:ctx(), binary()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_delete_cluster(Ctx, ClusterName) ->
    slurmdb_v0039_delete_cluster(Ctx, ClusterName, #{}).

-spec slurmdb_v0039_delete_cluster(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_delete_cluster(Ctx, ClusterName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/cluster/", ClusterName, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete QOS
%% 
-spec slurmdb_v0039_delete_qos(ctx:ctx(), binary()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_delete_qos(Ctx, QosName) ->
    slurmdb_v0039_delete_qos(Ctx, QosName, #{}).

-spec slurmdb_v0039_delete_qos(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_delete_qos(Ctx, QosName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/qos/", QosName, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete user
%% 
-spec slurmdb_v0039_delete_user(ctx:ctx(), binary()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_delete_user(Ctx, UserName) ->
    slurmdb_v0039_delete_user(Ctx, UserName, #{}).

-spec slurmdb_v0039_delete_user(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_delete_user(Ctx, UserName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/user/", UserName, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete wckey
%% 
-spec slurmdb_v0039_delete_wckey(ctx:ctx(), binary()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_delete_wckey(Ctx, Wckey) ->
    slurmdb_v0039_delete_wckey(Ctx, Wckey, #{}).

-spec slurmdb_v0039_delete_wckey(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_delete_wckey(Ctx, Wckey, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/wckey/", Wckey, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get slurmdb diagnostics
%% 
-spec slurmdb_v0039_diag(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_39_diag:slurmrestapi_dbv0_0_39_diag(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_diag(Ctx) ->
    slurmdb_v0039_diag(Ctx, #{}).

-spec slurmdb_v0039_diag(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_39_diag:slurmrestapi_dbv0_0_39_diag(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_diag(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/diag"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get account info
%% 
-spec slurmdb_v0039_get_account(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_39_account_info:slurmrestapi_dbv0_0_39_account_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_account(Ctx, AccountName) ->
    slurmdb_v0039_get_account(Ctx, AccountName, #{}).

-spec slurmdb_v0039_get_account(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_39_account_info:slurmrestapi_dbv0_0_39_account_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_account(Ctx, AccountName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/account/", AccountName, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['with_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get account list
%% 
-spec slurmdb_v0039_get_accounts(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_39_account_info:slurmrestapi_dbv0_0_39_account_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_accounts(Ctx) ->
    slurmdb_v0039_get_accounts(Ctx, #{}).

-spec slurmdb_v0039_get_accounts(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_39_account_info:slurmrestapi_dbv0_0_39_account_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_accounts(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/accounts"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['with_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get association info
%% 
-spec slurmdb_v0039_get_association(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_39_associations_info:slurmrestapi_dbv0_0_39_associations_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_association(Ctx) ->
    slurmdb_v0039_get_association(Ctx, #{}).

-spec slurmdb_v0039_get_association(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_39_associations_info:slurmrestapi_dbv0_0_39_associations_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_association(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/association"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['cluster', 'account', 'user', 'partition'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get association list
%% 
-spec slurmdb_v0039_get_associations(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_39_associations_info:slurmrestapi_dbv0_0_39_associations_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_associations(Ctx) ->
    slurmdb_v0039_get_associations(Ctx, #{}).

-spec slurmdb_v0039_get_associations(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_39_associations_info:slurmrestapi_dbv0_0_39_associations_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_associations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/associations"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['cluster', 'account', 'user', 'partition'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get cluster info
%% 
-spec slurmdb_v0039_get_cluster(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_39_clusters_info:slurmrestapi_dbv0_0_39_clusters_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_cluster(Ctx, ClusterName) ->
    slurmdb_v0039_get_cluster(Ctx, ClusterName, #{}).

-spec slurmdb_v0039_get_cluster(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_39_clusters_info:slurmrestapi_dbv0_0_39_clusters_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_cluster(Ctx, ClusterName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/cluster/", ClusterName, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get cluster list
%% 
-spec slurmdb_v0039_get_clusters(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_39_clusters_info:slurmrestapi_dbv0_0_39_clusters_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_clusters(Ctx) ->
    slurmdb_v0039_get_clusters(Ctx, #{}).

-spec slurmdb_v0039_get_clusters(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_39_clusters_info:slurmrestapi_dbv0_0_39_clusters_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_clusters(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/clusters"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Dump all configuration information
%% 
-spec slurmdb_v0039_get_config(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_39_config_info:slurmrestapi_dbv0_0_39_config_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_config(Ctx) ->
    slurmdb_v0039_get_config(Ctx, #{}).

-spec slurmdb_v0039_get_config(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_39_config_info:slurmrestapi_dbv0_0_39_config_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_config(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/config"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get job info
%% This endpoint may return multiple job entries since job_id is not a unique key - only the tuple (cluster, job_id, start_time) is unique. If the requested job_id is a component of a heterogeneous job all components are returned.
-spec slurmdb_v0039_get_job(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_39_job_info:slurmrestapi_dbv0_0_39_job_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_job(Ctx, JobId) ->
    slurmdb_v0039_get_job(Ctx, JobId, #{}).

-spec slurmdb_v0039_get_job(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_39_job_info:slurmrestapi_dbv0_0_39_job_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_job(Ctx, JobId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/job/", JobId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get job list
%% 
-spec slurmdb_v0039_get_jobs(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_39_job_info:slurmrestapi_dbv0_0_39_job_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_jobs(Ctx) ->
    slurmdb_v0039_get_jobs(Ctx, #{}).

-spec slurmdb_v0039_get_jobs(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_39_job_info:slurmrestapi_dbv0_0_39_job_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_jobs(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/jobs"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['users', 'submit_time', 'start_time', 'end_time', 'account', 'association', 'cluster', 'constraints', 'cpus_max', 'cpus_min', 'skip_steps', 'disable_wait_for_result', 'exit_code', 'format', 'group', 'job_name', 'nodes_max', 'nodes_min', 'partition', 'qos', 'reason', 'reservation', 'state', 'step', 'node', 'wckey'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get QOS list
%% 
-spec slurmdb_v0039_get_qos(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_39_qos_info:slurmrestapi_dbv0_0_39_qos_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_qos(Ctx) ->
    slurmdb_v0039_get_qos(Ctx, #{}).

-spec slurmdb_v0039_get_qos(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_39_qos_info:slurmrestapi_dbv0_0_39_qos_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_qos(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/qos"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['with_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get QOS info
%% 
-spec slurmdb_v0039_get_single_qos(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_39_qos_info:slurmrestapi_dbv0_0_39_qos_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_single_qos(Ctx, QosName) ->
    slurmdb_v0039_get_single_qos(Ctx, QosName, #{}).

-spec slurmdb_v0039_get_single_qos(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_39_qos_info:slurmrestapi_dbv0_0_39_qos_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_single_qos(Ctx, QosName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/qos/", QosName, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['with_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get TRES info
%% 
-spec slurmdb_v0039_get_tres(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_39_tres_info:slurmrestapi_dbv0_0_39_tres_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_tres(Ctx) ->
    slurmdb_v0039_get_tres(Ctx, #{}).

-spec slurmdb_v0039_get_tres(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_39_tres_info:slurmrestapi_dbv0_0_39_tres_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_tres(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/tres"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get user info
%% 
-spec slurmdb_v0039_get_user(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_39_user_info:slurmrestapi_dbv0_0_39_user_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_user(Ctx, UserName) ->
    slurmdb_v0039_get_user(Ctx, UserName, #{}).

-spec slurmdb_v0039_get_user(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_39_user_info:slurmrestapi_dbv0_0_39_user_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_user(Ctx, UserName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/user/", UserName, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['with_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get user list
%% 
-spec slurmdb_v0039_get_users(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_39_user_info:slurmrestapi_dbv0_0_39_user_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_users(Ctx) ->
    slurmdb_v0039_get_users(Ctx, #{}).

-spec slurmdb_v0039_get_users(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_39_user_info:slurmrestapi_dbv0_0_39_user_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_users(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/users"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['with_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get wckey info
%% 
-spec slurmdb_v0039_get_wckey(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_39_wckey_info:slurmrestapi_dbv0_0_39_wckey_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_wckey(Ctx, Wckey) ->
    slurmdb_v0039_get_wckey(Ctx, Wckey, #{}).

-spec slurmdb_v0039_get_wckey(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_39_wckey_info:slurmrestapi_dbv0_0_39_wckey_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_wckey(Ctx, Wckey, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/wckey/", Wckey, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get wckey list
%% 
-spec slurmdb_v0039_get_wckeys(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_39_wckey_info:slurmrestapi_dbv0_0_39_wckey_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_wckeys(Ctx) ->
    slurmdb_v0039_get_wckeys(Ctx, #{}).

-spec slurmdb_v0039_get_wckeys(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_39_wckey_info:slurmrestapi_dbv0_0_39_wckey_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_get_wckeys(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/wckeys"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Load all configuration information
%% 
-spec slurmdb_v0039_set_config(ctx:ctx()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_set_config(Ctx) ->
    slurmdb_v0039_set_config(Ctx, #{}).

-spec slurmdb_v0039_set_config(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_set_config(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/config"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiDbv0039SetConfig,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update accounts
%% 
-spec slurmdb_v0039_update_accounts(ctx:ctx(), slurmrestapi_dbv0_0_39_account_info:slurmrestapi_dbv0_0_39_account_info()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_update_accounts(Ctx, SlurmrestapiDbv0039AccountInfo) ->
    slurmdb_v0039_update_accounts(Ctx, SlurmrestapiDbv0039AccountInfo, #{}).

-spec slurmdb_v0039_update_accounts(ctx:ctx(), slurmrestapi_dbv0_0_39_account_info:slurmrestapi_dbv0_0_39_account_info(), maps:map()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_update_accounts(Ctx, SlurmrestapiDbv0039AccountInfo, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/accounts"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiDbv0039AccountInfo,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Set associations info
%% 
-spec slurmdb_v0039_update_associations(ctx:ctx(), slurmrestapi_dbv0_0_39_associations_info:slurmrestapi_dbv0_0_39_associations_info()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_update_associations(Ctx, SlurmrestapiDbv0039AssociationsInfo) ->
    slurmdb_v0039_update_associations(Ctx, SlurmrestapiDbv0039AssociationsInfo, #{}).

-spec slurmdb_v0039_update_associations(ctx:ctx(), slurmrestapi_dbv0_0_39_associations_info:slurmrestapi_dbv0_0_39_associations_info(), maps:map()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_update_associations(Ctx, SlurmrestapiDbv0039AssociationsInfo, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/associations"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiDbv0039AssociationsInfo,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Set QOS info
%% 
-spec slurmdb_v0039_update_qos(ctx:ctx(), slurmrestapi_dbv0_0_39_update_qos:slurmrestapi_dbv0_0_39_update_qos()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_update_qos(Ctx, SlurmrestapiDbv0039UpdateQos) ->
    slurmdb_v0039_update_qos(Ctx, SlurmrestapiDbv0039UpdateQos, #{}).

-spec slurmdb_v0039_update_qos(ctx:ctx(), slurmrestapi_dbv0_0_39_update_qos:slurmrestapi_dbv0_0_39_update_qos(), maps:map()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_update_qos(Ctx, SlurmrestapiDbv0039UpdateQos, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/qos"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiDbv0039UpdateQos,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Set TRES info
%% 
-spec slurmdb_v0039_update_tres(ctx:ctx(), slurmrestapi_dbv0_0_39_tres_update:slurmrestapi_dbv0_0_39_tres_update()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_update_tres(Ctx, SlurmrestapiDbv0039TresUpdate) ->
    slurmdb_v0039_update_tres(Ctx, SlurmrestapiDbv0039TresUpdate, #{}).

-spec slurmdb_v0039_update_tres(ctx:ctx(), slurmrestapi_dbv0_0_39_tres_update:slurmrestapi_dbv0_0_39_tres_update(), maps:map()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_update_tres(Ctx, SlurmrestapiDbv0039TresUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/tres"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiDbv0039TresUpdate,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update user
%% 
-spec slurmdb_v0039_update_users(ctx:ctx(), slurmrestapi_dbv0_0_39_update_users:slurmrestapi_dbv0_0_39_update_users()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_update_users(Ctx, SlurmrestapiDbv0039UpdateUsers) ->
    slurmdb_v0039_update_users(Ctx, SlurmrestapiDbv0039UpdateUsers, #{}).

-spec slurmdb_v0039_update_users(ctx:ctx(), slurmrestapi_dbv0_0_39_update_users:slurmrestapi_dbv0_0_39_update_users(), maps:map()) -> {ok, slurmrestapi_status:slurmrestapi_status(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0039_update_users(Ctx, SlurmrestapiDbv0039UpdateUsers, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.39/users"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiDbv0039UpdateUsers,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


