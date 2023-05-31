-module(slurmrestapi_v0_0_39_step_statistics).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_step_statistics/0]).

-type slurmrestapi_v0_0_39_step_statistics() ::
    #{ 'energy' => slurmrestapi_v0_0_39_step_statistics_energy:slurmrestapi_v0_0_39_step_statistics_energy()
     }.

encode(#{ 'energy' := Energy
        }) ->
    #{ 'energy' => Energy
     }.
