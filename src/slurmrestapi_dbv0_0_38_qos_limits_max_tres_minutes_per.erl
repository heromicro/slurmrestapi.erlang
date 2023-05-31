-module(slurmrestapi_dbv0_0_38_qos_limits_max_tres_minutes_per).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_qos_limits_max_tres_minutes_per/0]).

-type slurmrestapi_dbv0_0_38_qos_limits_max_tres_minutes_per() ::
    #{ 'job' => list(),
       'account' => list(),
       'user' => list(),
       'qos' => list()
     }.

encode(#{ 'job' := Job,
          'account' := Account,
          'user' := User,
          'qos' := Qos
        }) ->
    #{ 'job' => Job,
       'account' => Account,
       'user' => User,
       'qos' => Qos
     }.
