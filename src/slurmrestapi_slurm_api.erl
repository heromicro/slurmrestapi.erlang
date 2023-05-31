-module(slurmrestapi_slurm_api).

-export([slurm_v0038_cancel_job/2, slurm_v0038_cancel_job/3,
         slurm_v0038_diag/1, slurm_v0038_diag/2,
         slurm_v0038_get_job/2, slurm_v0038_get_job/3,
         slurm_v0038_get_jobs/1, slurm_v0038_get_jobs/2,
         slurm_v0038_get_node/2, slurm_v0038_get_node/3,
         slurm_v0038_get_nodes/1, slurm_v0038_get_nodes/2,
         slurm_v0038_get_partition/2, slurm_v0038_get_partition/3,
         slurm_v0038_get_partitions/1, slurm_v0038_get_partitions/2,
         slurm_v0038_get_reservation/2, slurm_v0038_get_reservation/3,
         slurm_v0038_get_reservations/1, slurm_v0038_get_reservations/2,
         slurm_v0038_ping/1, slurm_v0038_ping/2,
         slurm_v0038_slurmctld_get_licenses/1, slurm_v0038_slurmctld_get_licenses/2,
         slurm_v0038_submit_job/2, slurm_v0038_submit_job/3,
         slurm_v0038_update_job/3, slurm_v0038_update_job/4,
         slurmdb_v0038_add_clusters/2, slurmdb_v0038_add_clusters/3,
         slurmdb_v0038_add_wckeys/2, slurmdb_v0038_add_wckeys/3,
         slurmdb_v0038_delete_account/2, slurmdb_v0038_delete_account/3,
         slurmdb_v0038_delete_association/1, slurmdb_v0038_delete_association/2,
         slurmdb_v0038_delete_associations/1, slurmdb_v0038_delete_associations/2,
         slurmdb_v0038_delete_cluster/2, slurmdb_v0038_delete_cluster/3,
         slurmdb_v0038_delete_qos/2, slurmdb_v0038_delete_qos/3,
         slurmdb_v0038_delete_user/2, slurmdb_v0038_delete_user/3,
         slurmdb_v0038_delete_wckey/2, slurmdb_v0038_delete_wckey/3,
         slurmdb_v0038_diag/1, slurmdb_v0038_diag/2,
         slurmdb_v0038_get_account/2, slurmdb_v0038_get_account/3,
         slurmdb_v0038_get_accounts/1, slurmdb_v0038_get_accounts/2,
         slurmdb_v0038_get_association/1, slurmdb_v0038_get_association/2,
         slurmdb_v0038_get_associations/1, slurmdb_v0038_get_associations/2,
         slurmdb_v0038_get_cluster/2, slurmdb_v0038_get_cluster/3,
         slurmdb_v0038_get_clusters/1, slurmdb_v0038_get_clusters/2,
         slurmdb_v0038_get_config/1, slurmdb_v0038_get_config/2,
         slurmdb_v0038_get_job/2, slurmdb_v0038_get_job/3,
         slurmdb_v0038_get_jobs/1, slurmdb_v0038_get_jobs/2,
         slurmdb_v0038_get_qos/1, slurmdb_v0038_get_qos/2,
         slurmdb_v0038_get_single_qos/2, slurmdb_v0038_get_single_qos/3,
         slurmdb_v0038_get_tres/1, slurmdb_v0038_get_tres/2,
         slurmdb_v0038_get_user/2, slurmdb_v0038_get_user/3,
         slurmdb_v0038_get_users/1, slurmdb_v0038_get_users/2,
         slurmdb_v0038_get_wckey/2, slurmdb_v0038_get_wckey/3,
         slurmdb_v0038_get_wckeys/1, slurmdb_v0038_get_wckeys/2,
         slurmdb_v0038_set_config/2, slurmdb_v0038_set_config/3,
         slurmdb_v0038_update_account/2, slurmdb_v0038_update_account/3,
         slurmdb_v0038_update_associations/2, slurmdb_v0038_update_associations/3,
         slurmdb_v0038_update_qos/2, slurmdb_v0038_update_qos/3,
         slurmdb_v0038_update_tres/2, slurmdb_v0038_update_tres/3,
         slurmdb_v0038_update_users/2, slurmdb_v0038_update_users/3]).

-define(BASE_URL, <<"">>).

%% @doc cancel or signal job
%% 
-spec slurm_v0038_cancel_job(ctx:ctx(), binary()) -> {ok, [], slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_cancel_job(Ctx, JobId) ->
    slurm_v0038_cancel_job(Ctx, JobId, #{}).

-spec slurm_v0038_cancel_job(ctx:ctx(), binary(), maps:map()) -> {ok, [], slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_cancel_job(Ctx, JobId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurm/v0.0.38/job/", JobId, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['signal'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get diagnostics
%% 
-spec slurm_v0038_diag(ctx:ctx()) -> {ok, slurmrestapi_v0_0_38_diag:slurmrestapi_v0_0_38_diag(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_diag(Ctx) ->
    slurm_v0038_diag(Ctx, #{}).

-spec slurm_v0038_diag(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_38_diag:slurmrestapi_v0_0_38_diag(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_diag(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.38/diag"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get job info
%% 
-spec slurm_v0038_get_job(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_38_jobs_response:slurmrestapi_v0_0_38_jobs_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_get_job(Ctx, JobId) ->
    slurm_v0038_get_job(Ctx, JobId, #{}).

-spec slurm_v0038_get_job(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_38_jobs_response:slurmrestapi_v0_0_38_jobs_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_get_job(Ctx, JobId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.38/job/", JobId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get list of jobs
%% 
-spec slurm_v0038_get_jobs(ctx:ctx()) -> {ok, slurmrestapi_v0_0_38_jobs_response:slurmrestapi_v0_0_38_jobs_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_get_jobs(Ctx) ->
    slurm_v0038_get_jobs(Ctx, #{}).

-spec slurm_v0038_get_jobs(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_38_jobs_response:slurmrestapi_v0_0_38_jobs_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_get_jobs(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.38/jobs"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get node info
%% 
-spec slurm_v0038_get_node(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_38_nodes_response:slurmrestapi_v0_0_38_nodes_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_get_node(Ctx, NodeName) ->
    slurm_v0038_get_node(Ctx, NodeName, #{}).

-spec slurm_v0038_get_node(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_38_nodes_response:slurmrestapi_v0_0_38_nodes_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_get_node(Ctx, NodeName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.38/node/", NodeName, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get all node info
%% 
-spec slurm_v0038_get_nodes(ctx:ctx()) -> {ok, slurmrestapi_v0_0_38_nodes_response:slurmrestapi_v0_0_38_nodes_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_get_nodes(Ctx) ->
    slurm_v0038_get_nodes(Ctx, #{}).

-spec slurm_v0038_get_nodes(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_38_nodes_response:slurmrestapi_v0_0_38_nodes_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_get_nodes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.38/nodes"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get partition info
%% 
-spec slurm_v0038_get_partition(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_38_partitions_response:slurmrestapi_v0_0_38_partitions_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_get_partition(Ctx, PartitionName) ->
    slurm_v0038_get_partition(Ctx, PartitionName, #{}).

-spec slurm_v0038_get_partition(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_38_partitions_response:slurmrestapi_v0_0_38_partitions_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_get_partition(Ctx, PartitionName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.38/partition/", PartitionName, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get all partition info
%% 
-spec slurm_v0038_get_partitions(ctx:ctx()) -> {ok, slurmrestapi_v0_0_38_partitions_response:slurmrestapi_v0_0_38_partitions_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_get_partitions(Ctx) ->
    slurm_v0038_get_partitions(Ctx, #{}).

-spec slurm_v0038_get_partitions(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_38_partitions_response:slurmrestapi_v0_0_38_partitions_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_get_partitions(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.38/partitions"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get reservation info
%% 
-spec slurm_v0038_get_reservation(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_38_reservations_response:slurmrestapi_v0_0_38_reservations_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_get_reservation(Ctx, ReservationName) ->
    slurm_v0038_get_reservation(Ctx, ReservationName, #{}).

-spec slurm_v0038_get_reservation(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_38_reservations_response:slurmrestapi_v0_0_38_reservations_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_get_reservation(Ctx, ReservationName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.38/reservation/", ReservationName, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get all reservation info
%% 
-spec slurm_v0038_get_reservations(ctx:ctx()) -> {ok, slurmrestapi_v0_0_38_reservations_response:slurmrestapi_v0_0_38_reservations_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_get_reservations(Ctx) ->
    slurm_v0038_get_reservations(Ctx, #{}).

-spec slurm_v0038_get_reservations(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_38_reservations_response:slurmrestapi_v0_0_38_reservations_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_get_reservations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.38/reservations"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc ping test
%% 
-spec slurm_v0038_ping(ctx:ctx()) -> {ok, slurmrestapi_v0_0_38_pings:slurmrestapi_v0_0_38_pings(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_ping(Ctx) ->
    slurm_v0038_ping(Ctx, #{}).

-spec slurm_v0038_ping(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_38_pings:slurmrestapi_v0_0_38_pings(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_ping(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.38/ping"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get all Slurm tracked license info
%% 
-spec slurm_v0038_slurmctld_get_licenses(ctx:ctx()) -> {ok, slurmrestapi_v0_0_38_licenses:slurmrestapi_v0_0_38_licenses(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_slurmctld_get_licenses(Ctx) ->
    slurm_v0038_slurmctld_get_licenses(Ctx, #{}).

-spec slurm_v0038_slurmctld_get_licenses(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_38_licenses:slurmrestapi_v0_0_38_licenses(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_slurmctld_get_licenses(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.38/licenses"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc submit new job
%% 
-spec slurm_v0038_submit_job(ctx:ctx(), slurmrestapi_v0_0_38_job_submission:slurmrestapi_v0_0_38_job_submission()) -> {ok, slurmrestapi_v0_0_38_job_submission_response:slurmrestapi_v0_0_38_job_submission_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_submit_job(Ctx, SlurmrestapiV0038JobSubmission) ->
    slurm_v0038_submit_job(Ctx, SlurmrestapiV0038JobSubmission, #{}).

-spec slurm_v0038_submit_job(ctx:ctx(), slurmrestapi_v0_0_38_job_submission:slurmrestapi_v0_0_38_job_submission(), maps:map()) -> {ok, slurmrestapi_v0_0_38_job_submission_response:slurmrestapi_v0_0_38_job_submission_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_submit_job(Ctx, SlurmrestapiV0038JobSubmission, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurm/v0.0.38/job/submit"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0038JobSubmission,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc update job
%% 
-spec slurm_v0038_update_job(ctx:ctx(), binary(), slurmrestapi_v0_0_38_job_properties:slurmrestapi_v0_0_38_job_properties()) -> {ok, [], slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_update_job(Ctx, JobId, SlurmrestapiV0038JobProperties) ->
    slurm_v0038_update_job(Ctx, JobId, SlurmrestapiV0038JobProperties, #{}).

-spec slurm_v0038_update_job(ctx:ctx(), binary(), slurmrestapi_v0_0_38_job_properties:slurmrestapi_v0_0_38_job_properties(), maps:map()) -> {ok, [], slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurm_v0038_update_job(Ctx, JobId, SlurmrestapiV0038JobProperties, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurm/v0.0.38/job/", JobId, ""],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0038JobProperties,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add clusters
%% 
-spec slurmdb_v0038_add_clusters(ctx:ctx(), slurmrestapi_dbv0_0_38_clusters_properties:slurmrestapi_dbv0_0_38_clusters_properties()) -> {ok, slurmrestapi_dbv0_0_38_response_cluster_add:slurmrestapi_dbv0_0_38_response_cluster_add(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_add_clusters(Ctx, SlurmrestapiDbv0038ClustersProperties) ->
    slurmdb_v0038_add_clusters(Ctx, SlurmrestapiDbv0038ClustersProperties, #{}).

-spec slurmdb_v0038_add_clusters(ctx:ctx(), slurmrestapi_dbv0_0_38_clusters_properties:slurmrestapi_dbv0_0_38_clusters_properties(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_response_cluster_add:slurmrestapi_dbv0_0_38_response_cluster_add(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_add_clusters(Ctx, SlurmrestapiDbv0038ClustersProperties, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/clusters"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiDbv0038ClustersProperties,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add wckeys
%% 
-spec slurmdb_v0038_add_wckeys(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_38_response_wckey_add:slurmrestapi_dbv0_0_38_response_wckey_add(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_add_wckeys(Ctx) ->
    slurmdb_v0038_add_wckeys(Ctx, #{}).

-spec slurmdb_v0038_add_wckeys(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_response_wckey_add:slurmrestapi_dbv0_0_38_response_wckey_add(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_add_wckeys(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/wckeys"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiDbv0038WckeyInfo,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete account
%% 
-spec slurmdb_v0038_delete_account(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_38_response_account_delete:slurmrestapi_dbv0_0_38_response_account_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_delete_account(Ctx, AccountName) ->
    slurmdb_v0038_delete_account(Ctx, AccountName, #{}).

-spec slurmdb_v0038_delete_account(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_response_account_delete:slurmrestapi_dbv0_0_38_response_account_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_delete_account(Ctx, AccountName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/account/", AccountName, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete association
%% 
-spec slurmdb_v0038_delete_association(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_38_response_associations_delete:slurmrestapi_dbv0_0_38_response_associations_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_delete_association(Ctx) ->
    slurmdb_v0038_delete_association(Ctx, #{}).

-spec slurmdb_v0038_delete_association(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_response_associations_delete:slurmrestapi_dbv0_0_38_response_associations_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_delete_association(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/association"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['cluster', 'account', 'user', 'partition'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete associations
%% 
-spec slurmdb_v0038_delete_associations(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_38_response_associations_delete:slurmrestapi_dbv0_0_38_response_associations_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_delete_associations(Ctx) ->
    slurmdb_v0038_delete_associations(Ctx, #{}).

-spec slurmdb_v0038_delete_associations(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_response_associations_delete:slurmrestapi_dbv0_0_38_response_associations_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_delete_associations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/associations"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['cluster', 'account', 'user', 'partition'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete cluster
%% 
-spec slurmdb_v0038_delete_cluster(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_38_response_cluster_delete:slurmrestapi_dbv0_0_38_response_cluster_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_delete_cluster(Ctx, ClusterName) ->
    slurmdb_v0038_delete_cluster(Ctx, ClusterName, #{}).

-spec slurmdb_v0038_delete_cluster(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_response_cluster_delete:slurmrestapi_dbv0_0_38_response_cluster_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_delete_cluster(Ctx, ClusterName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/cluster/", ClusterName, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete QOS
%% 
-spec slurmdb_v0038_delete_qos(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_38_response_qos_delete:slurmrestapi_dbv0_0_38_response_qos_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_delete_qos(Ctx, QosName) ->
    slurmdb_v0038_delete_qos(Ctx, QosName, #{}).

-spec slurmdb_v0038_delete_qos(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_response_qos_delete:slurmrestapi_dbv0_0_38_response_qos_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_delete_qos(Ctx, QosName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/qos/", QosName, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete user
%% 
-spec slurmdb_v0038_delete_user(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_38_response_user_delete:slurmrestapi_dbv0_0_38_response_user_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_delete_user(Ctx, UserName) ->
    slurmdb_v0038_delete_user(Ctx, UserName, #{}).

-spec slurmdb_v0038_delete_user(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_response_user_delete:slurmrestapi_dbv0_0_38_response_user_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_delete_user(Ctx, UserName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/user/", UserName, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete wckey
%% 
-spec slurmdb_v0038_delete_wckey(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_38_response_wckey_delete:slurmrestapi_dbv0_0_38_response_wckey_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_delete_wckey(Ctx, Wckey) ->
    slurmdb_v0038_delete_wckey(Ctx, Wckey, #{}).

-spec slurmdb_v0038_delete_wckey(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_response_wckey_delete:slurmrestapi_dbv0_0_38_response_wckey_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_delete_wckey(Ctx, Wckey, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/wckey/", Wckey, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get slurmdb diagnostics
%% 
-spec slurmdb_v0038_diag(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_38_diag:slurmrestapi_dbv0_0_38_diag(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_diag(Ctx) ->
    slurmdb_v0038_diag(Ctx, #{}).

-spec slurmdb_v0038_diag(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_diag:slurmrestapi_dbv0_0_38_diag(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_diag(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/diag"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get account info
%% 
-spec slurmdb_v0038_get_account(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_38_account_info:slurmrestapi_dbv0_0_38_account_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_account(Ctx, AccountName) ->
    slurmdb_v0038_get_account(Ctx, AccountName, #{}).

-spec slurmdb_v0038_get_account(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_account_info:slurmrestapi_dbv0_0_38_account_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_account(Ctx, AccountName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/account/", AccountName, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['with_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get account list
%% 
-spec slurmdb_v0038_get_accounts(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_38_account_info:slurmrestapi_dbv0_0_38_account_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_accounts(Ctx) ->
    slurmdb_v0038_get_accounts(Ctx, #{}).

-spec slurmdb_v0038_get_accounts(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_account_info:slurmrestapi_dbv0_0_38_account_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_accounts(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/accounts"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['with_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get association info
%% 
-spec slurmdb_v0038_get_association(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_38_associations_info:slurmrestapi_dbv0_0_38_associations_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_association(Ctx) ->
    slurmdb_v0038_get_association(Ctx, #{}).

-spec slurmdb_v0038_get_association(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_associations_info:slurmrestapi_dbv0_0_38_associations_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_association(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/association"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['cluster', 'account', 'user', 'partition'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get association list
%% 
-spec slurmdb_v0038_get_associations(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_38_associations_info:slurmrestapi_dbv0_0_38_associations_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_associations(Ctx) ->
    slurmdb_v0038_get_associations(Ctx, #{}).

-spec slurmdb_v0038_get_associations(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_associations_info:slurmrestapi_dbv0_0_38_associations_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_associations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/associations"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['cluster', 'account', 'user', 'partition'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get cluster info
%% 
-spec slurmdb_v0038_get_cluster(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_38_cluster_info:slurmrestapi_dbv0_0_38_cluster_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_cluster(Ctx, ClusterName) ->
    slurmdb_v0038_get_cluster(Ctx, ClusterName, #{}).

-spec slurmdb_v0038_get_cluster(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_cluster_info:slurmrestapi_dbv0_0_38_cluster_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_cluster(Ctx, ClusterName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/cluster/", ClusterName, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get cluster list
%% 
-spec slurmdb_v0038_get_clusters(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_38_cluster_info:slurmrestapi_dbv0_0_38_cluster_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_clusters(Ctx) ->
    slurmdb_v0038_get_clusters(Ctx, #{}).

-spec slurmdb_v0038_get_clusters(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_cluster_info:slurmrestapi_dbv0_0_38_cluster_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_clusters(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/clusters"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Dump all configuration information
%% 
-spec slurmdb_v0038_get_config(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_38_config_info:slurmrestapi_dbv0_0_38_config_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_config(Ctx) ->
    slurmdb_v0038_get_config(Ctx, #{}).

-spec slurmdb_v0038_get_config(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_config_info:slurmrestapi_dbv0_0_38_config_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_config(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/config"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get job info
%% This endpoint may return multiple job entries since job_id is not a unique key - only the tuple (cluster, job_id, start_time) is unique. If the requested job_id is a component of a heterogeneous job all components are returned.
-spec slurmdb_v0038_get_job(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_38_job_info:slurmrestapi_dbv0_0_38_job_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_job(Ctx, JobId) ->
    slurmdb_v0038_get_job(Ctx, JobId, #{}).

-spec slurmdb_v0038_get_job(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_job_info:slurmrestapi_dbv0_0_38_job_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_job(Ctx, JobId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/job/", JobId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get job list
%% 
-spec slurmdb_v0038_get_jobs(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_38_job_info:slurmrestapi_dbv0_0_38_job_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_jobs(Ctx) ->
    slurmdb_v0038_get_jobs(Ctx, #{}).

-spec slurmdb_v0038_get_jobs(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_job_info:slurmrestapi_dbv0_0_38_job_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_jobs(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/jobs"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['submit_time', 'start_time', 'end_time', 'account', 'association', 'cluster', 'constraints', 'cpus_max', 'cpus_min', 'skip_steps', 'disable_wait_for_result', 'exit_code', 'format', 'group', 'job_name', 'nodes_max', 'nodes_min', 'partition', 'qos', 'reason', 'reservation', 'state', 'step', 'node', 'wckey'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get QOS list
%% 
-spec slurmdb_v0038_get_qos(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_38_qos_info:slurmrestapi_dbv0_0_38_qos_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_qos(Ctx) ->
    slurmdb_v0038_get_qos(Ctx, #{}).

-spec slurmdb_v0038_get_qos(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_qos_info:slurmrestapi_dbv0_0_38_qos_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_qos(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/qos"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['with_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get QOS info
%% 
-spec slurmdb_v0038_get_single_qos(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_38_qos_info:slurmrestapi_dbv0_0_38_qos_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_single_qos(Ctx, QosName) ->
    slurmdb_v0038_get_single_qos(Ctx, QosName, #{}).

-spec slurmdb_v0038_get_single_qos(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_qos_info:slurmrestapi_dbv0_0_38_qos_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_single_qos(Ctx, QosName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/qos/", QosName, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['with_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get TRES info
%% 
-spec slurmdb_v0038_get_tres(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_38_tres_info:slurmrestapi_dbv0_0_38_tres_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_tres(Ctx) ->
    slurmdb_v0038_get_tres(Ctx, #{}).

-spec slurmdb_v0038_get_tres(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_tres_info:slurmrestapi_dbv0_0_38_tres_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_tres(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/tres"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get user info
%% 
-spec slurmdb_v0038_get_user(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_38_user_info:slurmrestapi_dbv0_0_38_user_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_user(Ctx, UserName) ->
    slurmdb_v0038_get_user(Ctx, UserName, #{}).

-spec slurmdb_v0038_get_user(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_user_info:slurmrestapi_dbv0_0_38_user_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_user(Ctx, UserName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/user/", UserName, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['with_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get user list
%% 
-spec slurmdb_v0038_get_users(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_38_user_info:slurmrestapi_dbv0_0_38_user_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_users(Ctx) ->
    slurmdb_v0038_get_users(Ctx, #{}).

-spec slurmdb_v0038_get_users(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_user_info:slurmrestapi_dbv0_0_38_user_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_users(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/users"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['with_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get wckey info
%% 
-spec slurmdb_v0038_get_wckey(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_38_wckey_info:slurmrestapi_dbv0_0_38_wckey_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_wckey(Ctx, Wckey) ->
    slurmdb_v0038_get_wckey(Ctx, Wckey, #{}).

-spec slurmdb_v0038_get_wckey(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_wckey_info:slurmrestapi_dbv0_0_38_wckey_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_wckey(Ctx, Wckey, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/wckey/", Wckey, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get wckey list
%% 
-spec slurmdb_v0038_get_wckeys(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_38_wckey_info:slurmrestapi_dbv0_0_38_wckey_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_wckeys(Ctx) ->
    slurmdb_v0038_get_wckeys(Ctx, #{}).

-spec slurmdb_v0038_get_wckeys(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_wckey_info:slurmrestapi_dbv0_0_38_wckey_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_get_wckeys(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/wckeys"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Load all configuration information
%% 
-spec slurmdb_v0038_set_config(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_38_config_response:slurmrestapi_dbv0_0_38_config_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_set_config(Ctx) ->
    slurmdb_v0038_set_config(Ctx, #{}).

-spec slurmdb_v0038_set_config(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_config_response:slurmrestapi_dbv0_0_38_config_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_set_config(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/config"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiDbv0038SetConfig,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update accounts
%% 
-spec slurmdb_v0038_update_account(ctx:ctx(), slurmrestapi_dbv0_0_38_update_account:slurmrestapi_dbv0_0_38_update_account()) -> {ok, slurmrestapi_dbv0_0_38_account_response:slurmrestapi_dbv0_0_38_account_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_update_account(Ctx, SlurmrestapiDbv0038UpdateAccount) ->
    slurmdb_v0038_update_account(Ctx, SlurmrestapiDbv0038UpdateAccount, #{}).

-spec slurmdb_v0038_update_account(ctx:ctx(), slurmrestapi_dbv0_0_38_update_account:slurmrestapi_dbv0_0_38_update_account(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_account_response:slurmrestapi_dbv0_0_38_account_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_update_account(Ctx, SlurmrestapiDbv0038UpdateAccount, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/accounts"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiDbv0038UpdateAccount,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Set associations info
%% 
-spec slurmdb_v0038_update_associations(ctx:ctx(), slurmrestapi_dbv0_0_38_associations_info:slurmrestapi_dbv0_0_38_associations_info()) -> {ok, slurmrestapi_dbv0_0_38_response_associations:slurmrestapi_dbv0_0_38_response_associations(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_update_associations(Ctx, SlurmrestapiDbv0038AssociationsInfo) ->
    slurmdb_v0038_update_associations(Ctx, SlurmrestapiDbv0038AssociationsInfo, #{}).

-spec slurmdb_v0038_update_associations(ctx:ctx(), slurmrestapi_dbv0_0_38_associations_info:slurmrestapi_dbv0_0_38_associations_info(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_response_associations:slurmrestapi_dbv0_0_38_response_associations(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_update_associations(Ctx, SlurmrestapiDbv0038AssociationsInfo, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/associations"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiDbv0038AssociationsInfo,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Set QOS info
%% 
-spec slurmdb_v0038_update_qos(ctx:ctx(), slurmrestapi_dbv0_0_38_update_qos:slurmrestapi_dbv0_0_38_update_qos()) -> {ok, slurmrestapi_dbv0_0_38_response_qos:slurmrestapi_dbv0_0_38_response_qos(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_update_qos(Ctx, SlurmrestapiDbv0038UpdateQos) ->
    slurmdb_v0038_update_qos(Ctx, SlurmrestapiDbv0038UpdateQos, #{}).

-spec slurmdb_v0038_update_qos(ctx:ctx(), slurmrestapi_dbv0_0_38_update_qos:slurmrestapi_dbv0_0_38_update_qos(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_response_qos:slurmrestapi_dbv0_0_38_response_qos(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_update_qos(Ctx, SlurmrestapiDbv0038UpdateQos, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/qos"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiDbv0038UpdateQos,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Set TRES info
%% 
-spec slurmdb_v0038_update_tres(ctx:ctx(), slurmrestapi_dbv0_0_38_tres_update:slurmrestapi_dbv0_0_38_tres_update()) -> {ok, slurmrestapi_dbv0_0_38_response_tres:slurmrestapi_dbv0_0_38_response_tres(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_update_tres(Ctx, SlurmrestapiDbv0038TresUpdate) ->
    slurmdb_v0038_update_tres(Ctx, SlurmrestapiDbv0038TresUpdate, #{}).

-spec slurmdb_v0038_update_tres(ctx:ctx(), slurmrestapi_dbv0_0_38_tres_update:slurmrestapi_dbv0_0_38_tres_update(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_response_tres:slurmrestapi_dbv0_0_38_response_tres(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_update_tres(Ctx, SlurmrestapiDbv0038TresUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/tres"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiDbv0038TresUpdate,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update user
%% 
-spec slurmdb_v0038_update_users(ctx:ctx(), slurmrestapi_dbv0_0_38_update_users:slurmrestapi_dbv0_0_38_update_users()) -> {ok, slurmrestapi_dbv0_0_38_response_user_update:slurmrestapi_dbv0_0_38_response_user_update(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_update_users(Ctx, SlurmrestapiDbv0038UpdateUsers) ->
    slurmdb_v0038_update_users(Ctx, SlurmrestapiDbv0038UpdateUsers, #{}).

-spec slurmdb_v0038_update_users(ctx:ctx(), slurmrestapi_dbv0_0_38_update_users:slurmrestapi_dbv0_0_38_update_users(), maps:map()) -> {ok, slurmrestapi_dbv0_0_38_response_user_update:slurmrestapi_dbv0_0_38_response_user_update(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdb_v0038_update_users(Ctx, SlurmrestapiDbv0038UpdateUsers, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.38/users"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiDbv0038UpdateUsers,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


