-module(slurmrestapi_dbv0_0_37_job_step_nodes).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_job_step_nodes/0]).

-type slurmrestapi_dbv0_0_37_job_step_nodes() ::
    #{ 'count' => integer(),
       'range' => binary()
     }.

encode(#{ 'count' := Count,
          'range' := Range
        }) ->
    #{ 'count' => Count,
       'range' => Range
     }.
