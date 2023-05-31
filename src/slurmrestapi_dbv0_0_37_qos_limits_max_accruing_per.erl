-module(slurmrestapi_dbv0_0_37_qos_limits_max_accruing_per).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_qos_limits_max_accruing_per/0]).

-type slurmrestapi_dbv0_0_37_qos_limits_max_accruing_per() ::
    #{ 'account' => integer(),
       'user' => integer()
     }.

encode(#{ 'account' := Account,
          'user' := User
        }) ->
    #{ 'account' => Account,
       'user' => User
     }.
