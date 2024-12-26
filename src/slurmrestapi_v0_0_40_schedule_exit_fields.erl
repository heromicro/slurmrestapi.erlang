-module(slurmrestapi_v0_0_40_schedule_exit_fields).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_schedule_exit_fields/0]).

-type slurmrestapi_v0_0_40_schedule_exit_fields() ::
    #{ 'end_job_queue' => integer(),
       'default_queue_depth' => integer(),
       'max_job_start' => integer(),
       'max_rpc_cnt' => integer(),
       'max_sched_time' => integer(),
       'licenses' => integer()
     }.

encode(#{ 'end_job_queue' := EndJobQueue,
          'default_queue_depth' := DefaultQueueDepth,
          'max_job_start' := MaxJobStart,
          'max_rpc_cnt' := MaxRpcCnt,
          'max_sched_time' := MaxSchedTime,
          'licenses' := Licenses
        }) ->
    #{ 'end_job_queue' => EndJobQueue,
       'default_queue_depth' => DefaultQueueDepth,
       'max_job_start' => MaxJobStart,
       'max_rpc_cnt' => MaxRpcCnt,
       'max_sched_time' => MaxSchedTime,
       'licenses' => Licenses
     }.
