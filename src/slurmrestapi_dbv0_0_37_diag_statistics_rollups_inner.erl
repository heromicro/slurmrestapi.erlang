-module(slurmrestapi_dbv0_0_37_diag_statistics_rollups_inner).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_diag_statistics_rollups_inner/0]).

-type slurmrestapi_dbv0_0_37_diag_statistics_rollups_inner() ::
    #{ 'type' => binary(),
       'last_run' => integer(),
       'last_cycle' => integer(),
       'max_cycle' => integer(),
       'total_time' => integer(),
       'mean_cycles' => integer()
     }.

encode(#{ 'type' := Type,
          'last_run' := LastRun,
          'last_cycle' := LastCycle,
          'max_cycle' := MaxCycle,
          'total_time' := TotalTime,
          'mean_cycles' := MeanCycles
        }) ->
    #{ 'type' => Type,
       'last_run' => LastRun,
       'last_cycle' => LastCycle,
       'max_cycle' => MaxCycle,
       'total_time' => TotalTime,
       'mean_cycles' => MeanCycles
     }.
