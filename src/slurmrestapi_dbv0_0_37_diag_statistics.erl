-module(slurmrestapi_dbv0_0_37_diag_statistics).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_diag_statistics/0]).

-type slurmrestapi_dbv0_0_37_diag_statistics() ::
    #{ 'time_start' => integer(),
       'rollups' => list(),
       'RPCs' => list(),
       'users' => list()
     }.

encode(#{ 'time_start' := TimeStart,
          'rollups' := Rollups,
          'RPCs' := RPCs,
          'users' := Users
        }) ->
    #{ 'time_start' => TimeStart,
       'rollups' => Rollups,
       'RPCs' => RPCs,
       'users' => Users
     }.
