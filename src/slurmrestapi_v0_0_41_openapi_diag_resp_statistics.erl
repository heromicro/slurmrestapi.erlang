-module(slurmrestapi_v0_0_41_openapi_diag_resp_statistics).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_diag_resp_statistics/0]).

-type slurmrestapi_v0_0_41_openapi_diag_resp_statistics() ::
    #{ 'parts_packed' => integer(),
       'req_time' => slurmrestapi_v0_0_41_openapi_diag_resp_statistics_req_time:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_req_time(),
       'req_time_start' => slurmrestapi_v0_0_41_openapi_diag_resp_statistics_req_time_start:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_req_time_start(),
       'server_thread_count' => integer(),
       'agent_queue_size' => integer(),
       'agent_count' => integer(),
       'agent_thread_count' => integer(),
       'dbd_agent_queue_size' => integer(),
       'gettimeofday_latency' => integer(),
       'schedule_cycle_max' => integer(),
       'schedule_cycle_last' => integer(),
       'schedule_cycle_sum' => integer(),
       'schedule_cycle_total' => integer(),
       'schedule_cycle_mean' => integer(),
       'schedule_cycle_mean_depth' => integer(),
       'schedule_cycle_per_minute' => integer(),
       'schedule_cycle_depth' => integer(),
       'schedule_exit' => slurmrestapi_v0_0_41_openapi_diag_resp_statistics_schedule_exit:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_schedule_exit(),
       'schedule_queue_length' => integer(),
       'jobs_submitted' => integer(),
       'jobs_started' => integer(),
       'jobs_completed' => integer(),
       'jobs_canceled' => integer(),
       'jobs_failed' => integer(),
       'jobs_pending' => integer(),
       'jobs_running' => integer(),
       'job_states_ts' => slurmrestapi_v0_0_41_openapi_diag_resp_statistics_job_states_ts:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_job_states_ts(),
       'bf_backfilled_jobs' => integer(),
       'bf_last_backfilled_jobs' => integer(),
       'bf_backfilled_het_jobs' => integer(),
       'bf_cycle_counter' => integer(),
       'bf_cycle_mean' => integer(),
       'bf_depth_mean' => integer(),
       'bf_depth_mean_try' => integer(),
       'bf_cycle_sum' => integer(),
       'bf_cycle_last' => integer(),
       'bf_cycle_max' => integer(),
       'bf_exit' => slurmrestapi_v0_0_41_openapi_diag_resp_statistics_bf_exit:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_bf_exit(),
       'bf_last_depth' => integer(),
       'bf_last_depth_try' => integer(),
       'bf_depth_sum' => integer(),
       'bf_depth_try_sum' => integer(),
       'bf_queue_len' => integer(),
       'bf_queue_len_mean' => integer(),
       'bf_queue_len_sum' => integer(),
       'bf_table_size' => integer(),
       'bf_table_size_sum' => integer(),
       'bf_table_size_mean' => integer(),
       'bf_when_last_cycle' => slurmrestapi_v0_0_41_openapi_diag_resp_statistics_bf_when_last_cycle:slurmrestapi_v0_0_41_openapi_diag_resp_statistics_bf_when_last_cycle(),
       'bf_active' => boolean(),
       'rpcs_by_message_type' => list(),
       'rpcs_by_user' => list(),
       'pending_rpcs' => list(),
       'pending_rpcs_by_hostlist' => list()
     }.

encode(#{ 'parts_packed' := PartsPacked,
          'req_time' := ReqTime,
          'req_time_start' := ReqTimeStart,
          'server_thread_count' := ServerThreadCount,
          'agent_queue_size' := AgentQueueSize,
          'agent_count' := AgentCount,
          'agent_thread_count' := AgentThreadCount,
          'dbd_agent_queue_size' := DbdAgentQueueSize,
          'gettimeofday_latency' := GettimeofdayLatency,
          'schedule_cycle_max' := ScheduleCycleMax,
          'schedule_cycle_last' := ScheduleCycleLast,
          'schedule_cycle_sum' := ScheduleCycleSum,
          'schedule_cycle_total' := ScheduleCycleTotal,
          'schedule_cycle_mean' := ScheduleCycleMean,
          'schedule_cycle_mean_depth' := ScheduleCycleMeanDepth,
          'schedule_cycle_per_minute' := ScheduleCyclePerMinute,
          'schedule_cycle_depth' := ScheduleCycleDepth,
          'schedule_exit' := ScheduleExit,
          'schedule_queue_length' := ScheduleQueueLength,
          'jobs_submitted' := JobsSubmitted,
          'jobs_started' := JobsStarted,
          'jobs_completed' := JobsCompleted,
          'jobs_canceled' := JobsCanceled,
          'jobs_failed' := JobsFailed,
          'jobs_pending' := JobsPending,
          'jobs_running' := JobsRunning,
          'job_states_ts' := JobStatesTs,
          'bf_backfilled_jobs' := BfBackfilledJobs,
          'bf_last_backfilled_jobs' := BfLastBackfilledJobs,
          'bf_backfilled_het_jobs' := BfBackfilledHetJobs,
          'bf_cycle_counter' := BfCycleCounter,
          'bf_cycle_mean' := BfCycleMean,
          'bf_depth_mean' := BfDepthMean,
          'bf_depth_mean_try' := BfDepthMeanTry,
          'bf_cycle_sum' := BfCycleSum,
          'bf_cycle_last' := BfCycleLast,
          'bf_cycle_max' := BfCycleMax,
          'bf_exit' := BfExit,
          'bf_last_depth' := BfLastDepth,
          'bf_last_depth_try' := BfLastDepthTry,
          'bf_depth_sum' := BfDepthSum,
          'bf_depth_try_sum' := BfDepthTrySum,
          'bf_queue_len' := BfQueueLen,
          'bf_queue_len_mean' := BfQueueLenMean,
          'bf_queue_len_sum' := BfQueueLenSum,
          'bf_table_size' := BfTableSize,
          'bf_table_size_sum' := BfTableSizeSum,
          'bf_table_size_mean' := BfTableSizeMean,
          'bf_when_last_cycle' := BfWhenLastCycle,
          'bf_active' := BfActive,
          'rpcs_by_message_type' := RpcsByMessageType,
          'rpcs_by_user' := RpcsByUser,
          'pending_rpcs' := PendingRpcs,
          'pending_rpcs_by_hostlist' := PendingRpcsByHostlist
        }) ->
    #{ 'parts_packed' => PartsPacked,
       'req_time' => ReqTime,
       'req_time_start' => ReqTimeStart,
       'server_thread_count' => ServerThreadCount,
       'agent_queue_size' => AgentQueueSize,
       'agent_count' => AgentCount,
       'agent_thread_count' => AgentThreadCount,
       'dbd_agent_queue_size' => DbdAgentQueueSize,
       'gettimeofday_latency' => GettimeofdayLatency,
       'schedule_cycle_max' => ScheduleCycleMax,
       'schedule_cycle_last' => ScheduleCycleLast,
       'schedule_cycle_sum' => ScheduleCycleSum,
       'schedule_cycle_total' => ScheduleCycleTotal,
       'schedule_cycle_mean' => ScheduleCycleMean,
       'schedule_cycle_mean_depth' => ScheduleCycleMeanDepth,
       'schedule_cycle_per_minute' => ScheduleCyclePerMinute,
       'schedule_cycle_depth' => ScheduleCycleDepth,
       'schedule_exit' => ScheduleExit,
       'schedule_queue_length' => ScheduleQueueLength,
       'jobs_submitted' => JobsSubmitted,
       'jobs_started' => JobsStarted,
       'jobs_completed' => JobsCompleted,
       'jobs_canceled' => JobsCanceled,
       'jobs_failed' => JobsFailed,
       'jobs_pending' => JobsPending,
       'jobs_running' => JobsRunning,
       'job_states_ts' => JobStatesTs,
       'bf_backfilled_jobs' => BfBackfilledJobs,
       'bf_last_backfilled_jobs' => BfLastBackfilledJobs,
       'bf_backfilled_het_jobs' => BfBackfilledHetJobs,
       'bf_cycle_counter' => BfCycleCounter,
       'bf_cycle_mean' => BfCycleMean,
       'bf_depth_mean' => BfDepthMean,
       'bf_depth_mean_try' => BfDepthMeanTry,
       'bf_cycle_sum' => BfCycleSum,
       'bf_cycle_last' => BfCycleLast,
       'bf_cycle_max' => BfCycleMax,
       'bf_exit' => BfExit,
       'bf_last_depth' => BfLastDepth,
       'bf_last_depth_try' => BfLastDepthTry,
       'bf_depth_sum' => BfDepthSum,
       'bf_depth_try_sum' => BfDepthTrySum,
       'bf_queue_len' => BfQueueLen,
       'bf_queue_len_mean' => BfQueueLenMean,
       'bf_queue_len_sum' => BfQueueLenSum,
       'bf_table_size' => BfTableSize,
       'bf_table_size_sum' => BfTableSizeSum,
       'bf_table_size_mean' => BfTableSizeMean,
       'bf_when_last_cycle' => BfWhenLastCycle,
       'bf_active' => BfActive,
       'rpcs_by_message_type' => RpcsByMessageType,
       'rpcs_by_user' => RpcsByUser,
       'pending_rpcs' => PendingRpcs,
       'pending_rpcs_by_hostlist' => PendingRpcsByHostlist
     }.