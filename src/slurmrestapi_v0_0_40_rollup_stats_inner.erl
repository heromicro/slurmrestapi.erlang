-module(slurmrestapi_v0_0_40_rollup_stats_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_rollup_stats_inner/0]).

-type slurmrestapi_v0_0_40_rollup_stats_inner() ::
    #{ 'type' => binary(),
       'last_run' => integer(),
       'max_cycle' => integer(),
       'total_time' => integer(),
       'total_cycles' => integer(),
       'mean_cycles' => integer()
     }.

encode(#{ 'type' := Type,
          'last_run' := LastRun,
          'max_cycle' := MaxCycle,
          'total_time' := TotalTime,
          'total_cycles' := TotalCycles,
          'mean_cycles' := MeanCycles
        }) ->
    #{ 'type' => Type,
       'last run' => LastRun,
       'max_cycle' => MaxCycle,
       'total_time' => TotalTime,
       'total_cycles' => TotalCycles,
       'mean_cycles' => MeanCycles
     }.
