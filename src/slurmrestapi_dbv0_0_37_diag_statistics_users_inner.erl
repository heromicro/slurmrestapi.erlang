-module(slurmrestapi_dbv0_0_37_diag_statistics_users_inner).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_diag_statistics_users_inner/0]).

-type slurmrestapi_dbv0_0_37_diag_statistics_users_inner() ::
    #{ 'user' => binary(),
       'count' => integer(),
       'time' => slurmrestapi_dbv0_0_37_diag_statistics_users_inner_time:slurmrestapi_dbv0_0_37_diag_statistics_users_inner_time()
     }.

encode(#{ 'user' := User,
          'count' := Count,
          'time' := Time
        }) ->
    #{ 'user' => User,
       'count' => Count,
       'time' => Time
     }.
