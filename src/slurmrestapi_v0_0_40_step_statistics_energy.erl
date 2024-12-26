-module(slurmrestapi_v0_0_40_step_statistics_energy).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_step_statistics_energy/0]).

-type slurmrestapi_v0_0_40_step_statistics_energy() ::
    #{ 'consumed' => slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val()
     }.

encode(#{ 'consumed' := Consumed
        }) ->
    #{ 'consumed' => Consumed
     }.
