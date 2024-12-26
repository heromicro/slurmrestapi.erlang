-module(slurmrestapi_v0_0_40_qos_limits_min_tres_per).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_qos_limits_min_tres_per/0]).

-type slurmrestapi_v0_0_40_qos_limits_min_tres_per() ::
    #{ 'job' => list()
     }.

encode(#{ 'job' := Job
        }) ->
    #{ 'job' => Job
     }.
