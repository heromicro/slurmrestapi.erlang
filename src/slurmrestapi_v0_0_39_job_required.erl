-module(slurmrestapi_v0_0_39_job_required).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_job_required/0]).

-type slurmrestapi_v0_0_39_job_required() ::
    #{ 'memory' => integer()
     }.

encode(#{ 'memory' := Memory
        }) ->
    #{ 'memory' => Memory
     }.
