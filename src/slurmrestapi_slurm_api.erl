-module(slurmrestapi_slurm_api).

-export([slurmctld_cancel_job/2, slurmctld_cancel_job/3,
         slurmctld_diag/1, slurmctld_diag/2,
         slurmctld_get_job/2, slurmctld_get_job/3,
         slurmctld_get_jobs/1, slurmctld_get_jobs/2,
         slurmctld_get_node/2, slurmctld_get_node/3,
         slurmctld_get_nodes/1, slurmctld_get_nodes/2,
         slurmctld_get_partition/2, slurmctld_get_partition/3,
         slurmctld_get_partitions/1, slurmctld_get_partitions/2,
         slurmctld_get_reservation/2, slurmctld_get_reservation/3,
         slurmctld_get_reservations/1, slurmctld_get_reservations/2,
         slurmctld_ping/1, slurmctld_ping/2,
         slurmctld_submit_job/2, slurmctld_submit_job/3,
         slurmctld_update_job/3, slurmctld_update_job/4,
         slurmdbd_add_clusters/1, slurmdbd_add_clusters/2,
         slurmdbd_add_wckeys/1, slurmdbd_add_wckeys/2,
         slurmdbd_delete_account/2, slurmdbd_delete_account/3,
         slurmdbd_delete_association/3, slurmdbd_delete_association/4,
         slurmdbd_delete_cluster/2, slurmdbd_delete_cluster/3,
         slurmdbd_delete_qos/2, slurmdbd_delete_qos/3,
         slurmdbd_delete_user/2, slurmdbd_delete_user/3,
         slurmdbd_delete_wckey/2, slurmdbd_delete_wckey/3,
         slurmdbd_diag/1, slurmdbd_diag/2,
         slurmdbd_get_account/2, slurmdbd_get_account/3,
         slurmdbd_get_accounts/1, slurmdbd_get_accounts/2,
         slurmdbd_get_association/1, slurmdbd_get_association/2,
         slurmdbd_get_associations/1, slurmdbd_get_associations/2,
         slurmdbd_get_cluster/2, slurmdbd_get_cluster/3,
         slurmdbd_get_clusters/1, slurmdbd_get_clusters/2,
         slurmdbd_get_db_config/1, slurmdbd_get_db_config/2,
         slurmdbd_get_job/2, slurmdbd_get_job/3,
         slurmdbd_get_jobs/1, slurmdbd_get_jobs/2,
         slurmdbd_get_qos/1, slurmdbd_get_qos/2,
         slurmdbd_get_single_qos/2, slurmdbd_get_single_qos/3,
         slurmdbd_get_tres/1, slurmdbd_get_tres/2,
         slurmdbd_get_user/2, slurmdbd_get_user/3,
         slurmdbd_get_users/1, slurmdbd_get_users/2,
         slurmdbd_get_wckey/2, slurmdbd_get_wckey/3,
         slurmdbd_get_wckeys/1, slurmdbd_get_wckeys/2,
         slurmdbd_set_db_config/1, slurmdbd_set_db_config/2,
         slurmdbd_update_account/1, slurmdbd_update_account/2,
         slurmdbd_update_associations/1, slurmdbd_update_associations/2,
         slurmdbd_update_tres/1, slurmdbd_update_tres/2,
         slurmdbd_update_users/1, slurmdbd_update_users/2]).

-define(BASE_URL, <<"">>).

%% @doc cancel or signal job
%% 
-spec slurmctld_cancel_job(ctx:ctx(), binary()) -> {ok, [], slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmctld_cancel_job(Ctx, JobId) ->
    slurmctld_cancel_job(Ctx, JobId, #{}).

-spec slurmctld_cancel_job(ctx:ctx(), binary(), maps:map()) -> {ok, [], slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmctld_cancel_job(Ctx, JobId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurm/v0.0.37/job/", JobId, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['signal'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get diagnostics
%% 
-spec slurmctld_diag(ctx:ctx()) -> {ok, slurmrestapi_v0_0_37_diag:slurmrestapi_v0_0_37_diag(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmctld_diag(Ctx) ->
    slurmctld_diag(Ctx, #{}).

-spec slurmctld_diag(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_37_diag:slurmrestapi_v0_0_37_diag(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmctld_diag(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.37/diag"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get job info
%% 
-spec slurmctld_get_job(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_37_jobs_response:slurmrestapi_v0_0_37_jobs_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmctld_get_job(Ctx, JobId) ->
    slurmctld_get_job(Ctx, JobId, #{}).

-spec slurmctld_get_job(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_37_jobs_response:slurmrestapi_v0_0_37_jobs_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmctld_get_job(Ctx, JobId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.37/job/", JobId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get list of jobs
%% 
-spec slurmctld_get_jobs(ctx:ctx()) -> {ok, slurmrestapi_v0_0_37_jobs_response:slurmrestapi_v0_0_37_jobs_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmctld_get_jobs(Ctx) ->
    slurmctld_get_jobs(Ctx, #{}).

-spec slurmctld_get_jobs(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_37_jobs_response:slurmrestapi_v0_0_37_jobs_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmctld_get_jobs(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.37/jobs"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get node info
%% 
-spec slurmctld_get_node(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_37_nodes_response:slurmrestapi_v0_0_37_nodes_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmctld_get_node(Ctx, NodeName) ->
    slurmctld_get_node(Ctx, NodeName, #{}).

-spec slurmctld_get_node(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_37_nodes_response:slurmrestapi_v0_0_37_nodes_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmctld_get_node(Ctx, NodeName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.37/node/", NodeName, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get all node info
%% 
-spec slurmctld_get_nodes(ctx:ctx()) -> {ok, slurmrestapi_v0_0_37_nodes_response:slurmrestapi_v0_0_37_nodes_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmctld_get_nodes(Ctx) ->
    slurmctld_get_nodes(Ctx, #{}).

-spec slurmctld_get_nodes(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_37_nodes_response:slurmrestapi_v0_0_37_nodes_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmctld_get_nodes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.37/nodes"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get partition info
%% 
-spec slurmctld_get_partition(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_37_partitions_response:slurmrestapi_v0_0_37_partitions_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmctld_get_partition(Ctx, PartitionName) ->
    slurmctld_get_partition(Ctx, PartitionName, #{}).

-spec slurmctld_get_partition(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_37_partitions_response:slurmrestapi_v0_0_37_partitions_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmctld_get_partition(Ctx, PartitionName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.37/partition/", PartitionName, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get all partition info
%% 
-spec slurmctld_get_partitions(ctx:ctx()) -> {ok, slurmrestapi_v0_0_37_partitions_response:slurmrestapi_v0_0_37_partitions_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmctld_get_partitions(Ctx) ->
    slurmctld_get_partitions(Ctx, #{}).

-spec slurmctld_get_partitions(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_37_partitions_response:slurmrestapi_v0_0_37_partitions_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmctld_get_partitions(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.37/partitions"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get reservation info
%% 
-spec slurmctld_get_reservation(ctx:ctx(), binary()) -> {ok, slurmrestapi_v0_0_37_reservations_response:slurmrestapi_v0_0_37_reservations_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmctld_get_reservation(Ctx, ReservationName) ->
    slurmctld_get_reservation(Ctx, ReservationName, #{}).

-spec slurmctld_get_reservation(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_v0_0_37_reservations_response:slurmrestapi_v0_0_37_reservations_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmctld_get_reservation(Ctx, ReservationName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.37/reservation/", ReservationName, ""],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc get all reservation info
%% 
-spec slurmctld_get_reservations(ctx:ctx()) -> {ok, slurmrestapi_v0_0_37_reservations_response:slurmrestapi_v0_0_37_reservations_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmctld_get_reservations(Ctx) ->
    slurmctld_get_reservations(Ctx, #{}).

-spec slurmctld_get_reservations(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_37_reservations_response:slurmrestapi_v0_0_37_reservations_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmctld_get_reservations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.37/reservations"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['update_time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc ping test
%% 
-spec slurmctld_ping(ctx:ctx()) -> {ok, slurmrestapi_v0_0_37_pings:slurmrestapi_v0_0_37_pings(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmctld_ping(Ctx) ->
    slurmctld_ping(Ctx, #{}).

-spec slurmctld_ping(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_v0_0_37_pings:slurmrestapi_v0_0_37_pings(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmctld_ping(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurm/v0.0.37/ping"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc submit new job
%% 
-spec slurmctld_submit_job(ctx:ctx(), slurmrestapi_v0_0_37_job_submission:slurmrestapi_v0_0_37_job_submission()) -> {ok, slurmrestapi_v0_0_37_job_submission_response:slurmrestapi_v0_0_37_job_submission_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmctld_submit_job(Ctx, SlurmrestapiV0037JobSubmission) ->
    slurmctld_submit_job(Ctx, SlurmrestapiV0037JobSubmission, #{}).

-spec slurmctld_submit_job(ctx:ctx(), slurmrestapi_v0_0_37_job_submission:slurmrestapi_v0_0_37_job_submission(), maps:map()) -> {ok, slurmrestapi_v0_0_37_job_submission_response:slurmrestapi_v0_0_37_job_submission_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmctld_submit_job(Ctx, SlurmrestapiV0037JobSubmission, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurm/v0.0.37/job/submit"],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0037JobSubmission,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc update job
%% 
-spec slurmctld_update_job(ctx:ctx(), binary(), slurmrestapi_v0_0_37_job_properties:slurmrestapi_v0_0_37_job_properties()) -> {ok, [], slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmctld_update_job(Ctx, JobId, SlurmrestapiV0037JobProperties) ->
    slurmctld_update_job(Ctx, JobId, SlurmrestapiV0037JobProperties, #{}).

-spec slurmctld_update_job(ctx:ctx(), binary(), slurmrestapi_v0_0_37_job_properties:slurmrestapi_v0_0_37_job_properties(), maps:map()) -> {ok, [], slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmctld_update_job(Ctx, JobId, SlurmrestapiV0037JobProperties, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurm/v0.0.37/job/", JobId, ""],
    QS = [],
    Headers = [],
    Body1 = SlurmrestapiV0037JobProperties,
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([<<"application/json">>, <<"application/x-yaml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add clusters
%% 
-spec slurmdbd_add_clusters(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_37_response_cluster_add:slurmrestapi_dbv0_0_37_response_cluster_add(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_add_clusters(Ctx) ->
    slurmdbd_add_clusters(Ctx, #{}).

-spec slurmdbd_add_clusters(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_response_cluster_add:slurmrestapi_dbv0_0_37_response_cluster_add(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_add_clusters(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/clusters"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add wckeys
%% 
-spec slurmdbd_add_wckeys(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_37_response_wckey_add:slurmrestapi_dbv0_0_37_response_wckey_add(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_add_wckeys(Ctx) ->
    slurmdbd_add_wckeys(Ctx, #{}).

-spec slurmdbd_add_wckeys(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_response_wckey_add:slurmrestapi_dbv0_0_37_response_wckey_add(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_add_wckeys(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/wckeys"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete account
%% 
-spec slurmdbd_delete_account(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_37_response_account_delete:slurmrestapi_dbv0_0_37_response_account_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_delete_account(Ctx, AccountName) ->
    slurmdbd_delete_account(Ctx, AccountName, #{}).

-spec slurmdbd_delete_account(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_response_account_delete:slurmrestapi_dbv0_0_37_response_account_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_delete_account(Ctx, AccountName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/account/", AccountName, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete association
%% 
-spec slurmdbd_delete_association(ctx:ctx(), binary(), binary()) -> {ok, slurmrestapi_dbv0_0_37_response_association_delete:slurmrestapi_dbv0_0_37_response_association_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_delete_association(Ctx, Account, User) ->
    slurmdbd_delete_association(Ctx, Account, User, #{}).

-spec slurmdbd_delete_association(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_response_association_delete:slurmrestapi_dbv0_0_37_response_association_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_delete_association(Ctx, Account, User, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/association"],
    QS = lists:flatten([{<<"account">>, Account}, {<<"user">>, User}])++slurmrestapi_utils:optional_params(['cluster', 'partition'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete cluster
%% 
-spec slurmdbd_delete_cluster(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_37_response_cluster_delete:slurmrestapi_dbv0_0_37_response_cluster_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_delete_cluster(Ctx, ClusterName) ->
    slurmdbd_delete_cluster(Ctx, ClusterName, #{}).

-spec slurmdbd_delete_cluster(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_response_cluster_delete:slurmrestapi_dbv0_0_37_response_cluster_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_delete_cluster(Ctx, ClusterName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/cluster/", ClusterName, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete QOS
%% 
-spec slurmdbd_delete_qos(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_37_response_qos_delete:slurmrestapi_dbv0_0_37_response_qos_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_delete_qos(Ctx, QosName) ->
    slurmdbd_delete_qos(Ctx, QosName, #{}).

-spec slurmdbd_delete_qos(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_response_qos_delete:slurmrestapi_dbv0_0_37_response_qos_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_delete_qos(Ctx, QosName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/qos/", QosName, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete user
%% 
-spec slurmdbd_delete_user(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_37_response_user_delete:slurmrestapi_dbv0_0_37_response_user_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_delete_user(Ctx, UserName) ->
    slurmdbd_delete_user(Ctx, UserName, #{}).

-spec slurmdbd_delete_user(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_response_user_delete:slurmrestapi_dbv0_0_37_response_user_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_delete_user(Ctx, UserName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/user/", UserName, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete wckey
%% 
-spec slurmdbd_delete_wckey(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_37_response_wckey_delete:slurmrestapi_dbv0_0_37_response_wckey_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_delete_wckey(Ctx, Wckey) ->
    slurmdbd_delete_wckey(Ctx, Wckey, #{}).

-spec slurmdbd_delete_wckey(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_response_wckey_delete:slurmrestapi_dbv0_0_37_response_wckey_delete(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_delete_wckey(Ctx, Wckey, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/wckey/", Wckey, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get slurmdb diagnostics
%% 
-spec slurmdbd_diag(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_37_diag:slurmrestapi_dbv0_0_37_diag(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_diag(Ctx) ->
    slurmdbd_diag(Ctx, #{}).

-spec slurmdbd_diag(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_diag:slurmrestapi_dbv0_0_37_diag(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_diag(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/diag"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get account info
%% 
-spec slurmdbd_get_account(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_37_account_info:slurmrestapi_dbv0_0_37_account_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_account(Ctx, AccountName) ->
    slurmdbd_get_account(Ctx, AccountName, #{}).

-spec slurmdbd_get_account(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_account_info:slurmrestapi_dbv0_0_37_account_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_account(Ctx, AccountName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/account/", AccountName, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get account list
%% 
-spec slurmdbd_get_accounts(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_37_account_info:slurmrestapi_dbv0_0_37_account_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_accounts(Ctx) ->
    slurmdbd_get_accounts(Ctx, #{}).

-spec slurmdbd_get_accounts(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_account_info:slurmrestapi_dbv0_0_37_account_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_accounts(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/accounts"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get association info
%% 
-spec slurmdbd_get_association(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_37_associations_info:slurmrestapi_dbv0_0_37_associations_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_association(Ctx) ->
    slurmdbd_get_association(Ctx, #{}).

-spec slurmdbd_get_association(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_associations_info:slurmrestapi_dbv0_0_37_associations_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_association(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/association"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['cluster', 'account', 'user', 'partition'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get association list
%% 
-spec slurmdbd_get_associations(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_37_associations_info:slurmrestapi_dbv0_0_37_associations_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_associations(Ctx) ->
    slurmdbd_get_associations(Ctx, #{}).

-spec slurmdbd_get_associations(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_associations_info:slurmrestapi_dbv0_0_37_associations_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_associations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/associations"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get cluster info
%% 
-spec slurmdbd_get_cluster(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_37_cluster_info:slurmrestapi_dbv0_0_37_cluster_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_cluster(Ctx, ClusterName) ->
    slurmdbd_get_cluster(Ctx, ClusterName, #{}).

-spec slurmdbd_get_cluster(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_cluster_info:slurmrestapi_dbv0_0_37_cluster_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_cluster(Ctx, ClusterName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/cluster/", ClusterName, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get cluster list
%% 
-spec slurmdbd_get_clusters(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_37_cluster_info:slurmrestapi_dbv0_0_37_cluster_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_clusters(Ctx) ->
    slurmdbd_get_clusters(Ctx, #{}).

-spec slurmdbd_get_clusters(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_cluster_info:slurmrestapi_dbv0_0_37_cluster_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_clusters(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/clusters"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Dump all configuration information
%% 
-spec slurmdbd_get_db_config(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_37_config_info:slurmrestapi_dbv0_0_37_config_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_db_config(Ctx) ->
    slurmdbd_get_db_config(Ctx, #{}).

-spec slurmdbd_get_db_config(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_config_info:slurmrestapi_dbv0_0_37_config_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_db_config(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/config"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get job info
%% This endpoint may return multiple job entries since job_id is not a unique key - only the tuple (cluster, job_id, start_time) is unique. If the requested job_id is a component of a heterogeneous job all components are returned.
-spec slurmdbd_get_job(ctx:ctx(), integer()) -> {ok, slurmrestapi_dbv0_0_37_job_info:slurmrestapi_dbv0_0_37_job_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_job(Ctx, JobId) ->
    slurmdbd_get_job(Ctx, JobId, #{}).

-spec slurmdbd_get_job(ctx:ctx(), integer(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_job_info:slurmrestapi_dbv0_0_37_job_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_job(Ctx, JobId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/job/", JobId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get job list
%% 
-spec slurmdbd_get_jobs(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_37_job_info:slurmrestapi_dbv0_0_37_job_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_jobs(Ctx) ->
    slurmdbd_get_jobs(Ctx, #{}).

-spec slurmdbd_get_jobs(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_job_info:slurmrestapi_dbv0_0_37_job_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_jobs(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/jobs"],
    QS = lists:flatten([])++slurmrestapi_utils:optional_params(['submit_time', 'start_time', 'end_time', 'account', 'association', 'cluster', 'constraints', 'cpus_max', 'cpus_min', 'skip_steps', 'disable_wait_for_result', 'exit_code', 'format', 'group', 'job_name', 'nodes_max', 'nodes_min', 'partition', 'qos', 'reason', 'reservation', 'state', 'step', 'node', 'wckey'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get QOS list
%% 
-spec slurmdbd_get_qos(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_37_qos_info:slurmrestapi_dbv0_0_37_qos_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_qos(Ctx) ->
    slurmdbd_get_qos(Ctx, #{}).

-spec slurmdbd_get_qos(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_qos_info:slurmrestapi_dbv0_0_37_qos_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_qos(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/qos"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get QOS info
%% 
-spec slurmdbd_get_single_qos(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_37_qos_info:slurmrestapi_dbv0_0_37_qos_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_single_qos(Ctx, QosName) ->
    slurmdbd_get_single_qos(Ctx, QosName, #{}).

-spec slurmdbd_get_single_qos(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_qos_info:slurmrestapi_dbv0_0_37_qos_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_single_qos(Ctx, QosName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/qos/", QosName, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get TRES info
%% 
-spec slurmdbd_get_tres(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_37_tres_info:slurmrestapi_dbv0_0_37_tres_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_tres(Ctx) ->
    slurmdbd_get_tres(Ctx, #{}).

-spec slurmdbd_get_tres(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_tres_info:slurmrestapi_dbv0_0_37_tres_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_tres(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/tres"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get user info
%% 
-spec slurmdbd_get_user(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_37_user_info:slurmrestapi_dbv0_0_37_user_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_user(Ctx, UserName) ->
    slurmdbd_get_user(Ctx, UserName, #{}).

-spec slurmdbd_get_user(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_user_info:slurmrestapi_dbv0_0_37_user_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_user(Ctx, UserName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/user/", UserName, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get user list
%% 
-spec slurmdbd_get_users(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_37_user_info:slurmrestapi_dbv0_0_37_user_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_users(Ctx) ->
    slurmdbd_get_users(Ctx, #{}).

-spec slurmdbd_get_users(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_user_info:slurmrestapi_dbv0_0_37_user_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_users(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/users"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get wckey info
%% 
-spec slurmdbd_get_wckey(ctx:ctx(), binary()) -> {ok, slurmrestapi_dbv0_0_37_wckey_info:slurmrestapi_dbv0_0_37_wckey_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_wckey(Ctx, Wckey) ->
    slurmdbd_get_wckey(Ctx, Wckey, #{}).

-spec slurmdbd_get_wckey(ctx:ctx(), binary(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_wckey_info:slurmrestapi_dbv0_0_37_wckey_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_wckey(Ctx, Wckey, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/wckey/", Wckey, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get wckey list
%% 
-spec slurmdbd_get_wckeys(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_37_wckey_info:slurmrestapi_dbv0_0_37_wckey_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_wckeys(Ctx) ->
    slurmdbd_get_wckeys(Ctx, #{}).

-spec slurmdbd_get_wckeys(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_wckey_info:slurmrestapi_dbv0_0_37_wckey_info(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_get_wckeys(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/wckeys"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Load all configuration information
%% 
-spec slurmdbd_set_db_config(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_37_config_response:slurmrestapi_dbv0_0_37_config_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_set_db_config(Ctx) ->
    slurmdbd_set_db_config(Ctx, #{}).

-spec slurmdbd_set_db_config(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_config_response:slurmrestapi_dbv0_0_37_config_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_set_db_config(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/config"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update accounts
%% 
-spec slurmdbd_update_account(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_37_account_response:slurmrestapi_dbv0_0_37_account_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_update_account(Ctx) ->
    slurmdbd_update_account(Ctx, #{}).

-spec slurmdbd_update_account(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_account_response:slurmrestapi_dbv0_0_37_account_response(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_update_account(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/accounts"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Set associations info
%% 
-spec slurmdbd_update_associations(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_37_response_associations:slurmrestapi_dbv0_0_37_response_associations(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_update_associations(Ctx) ->
    slurmdbd_update_associations(Ctx, #{}).

-spec slurmdbd_update_associations(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_response_associations:slurmrestapi_dbv0_0_37_response_associations(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_update_associations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/associations"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Set TRES info
%% 
-spec slurmdbd_update_tres(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_37_response_tres:slurmrestapi_dbv0_0_37_response_tres(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_update_tres(Ctx) ->
    slurmdbd_update_tres(Ctx, #{}).

-spec slurmdbd_update_tres(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_response_tres:slurmrestapi_dbv0_0_37_response_tres(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_update_tres(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/tres"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update user
%% 
-spec slurmdbd_update_users(ctx:ctx()) -> {ok, slurmrestapi_dbv0_0_37_response_user_update:slurmrestapi_dbv0_0_37_response_user_update(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_update_users(Ctx) ->
    slurmdbd_update_users(Ctx, #{}).

-spec slurmdbd_update_users(ctx:ctx(), maps:map()) -> {ok, slurmrestapi_dbv0_0_37_response_user_update:slurmrestapi_dbv0_0_37_response_user_update(), slurmrestapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), slurmrestapi_utils:response_info()}.
slurmdbd_update_users(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(slurmrestapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/slurmdb/v0.0.37/users"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = slurmrestapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    slurmrestapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


