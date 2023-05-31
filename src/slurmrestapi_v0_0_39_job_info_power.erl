-module(slurmrestapi_v0_0_39_job_info_power).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_job_info_power/0]).

-type slurmrestapi_v0_0_39_job_info_power() ::
    #{ 'flags' => list()
     }.

encode(#{ 'flags' := Flags
        }) ->
    #{ 'flags' => Flags
     }.
