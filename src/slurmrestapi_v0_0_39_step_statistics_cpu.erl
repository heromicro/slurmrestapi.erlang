-module(slurmrestapi_v0_0_39_step_statistics_cpu).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_step_statistics_cpu/0]).

-type slurmrestapi_v0_0_39_step_statistics_cpu() ::
    #{ 'actual_frequency' => integer()
     }.

encode(#{ 'actual_frequency' := ActualFrequency
        }) ->
    #{ 'actual_frequency' => ActualFrequency
     }.
