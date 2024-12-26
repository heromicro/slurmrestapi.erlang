-module(slurmrestapi_v0_0_40_bf_exit_fields).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_bf_exit_fields/0]).

-type slurmrestapi_v0_0_40_bf_exit_fields() ::
    #{ 'end_job_queue' => integer(),
       'bf_max_job_start' => integer(),
       'bf_max_job_test' => integer(),
       'bf_max_time' => integer(),
       'bf_node_space_size' => integer(),
       'state_changed' => integer()
     }.

encode(#{ 'end_job_queue' := EndJobQueue,
          'bf_max_job_start' := BfMaxJobStart,
          'bf_max_job_test' := BfMaxJobTest,
          'bf_max_time' := BfMaxTime,
          'bf_node_space_size' := BfNodeSpaceSize,
          'state_changed' := StateChanged
        }) ->
    #{ 'end_job_queue' => EndJobQueue,
       'bf_max_job_start' => BfMaxJobStart,
       'bf_max_job_test' => BfMaxJobTest,
       'bf_max_time' => BfMaxTime,
       'bf_node_space_size' => BfNodeSpaceSize,
       'state_changed' => StateChanged
     }.
