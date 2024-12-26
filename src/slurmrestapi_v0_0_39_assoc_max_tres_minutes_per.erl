-module(slurmrestapi_v0_0_39_assoc_max_tres_minutes_per).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_assoc_max_tres_minutes_per/0]).

-type slurmrestapi_v0_0_39_assoc_max_tres_minutes_per() ::
    #{ 'job' => list()
     }.

encode(#{ 'job' := Job
        }) ->
    #{ 'job' => Job
     }.
