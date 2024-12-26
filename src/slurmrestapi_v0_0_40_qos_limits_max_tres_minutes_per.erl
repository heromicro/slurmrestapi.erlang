-module(slurmrestapi_v0_0_40_qos_limits_max_tres_minutes_per).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_qos_limits_max_tres_minutes_per/0]).

-type slurmrestapi_v0_0_40_qos_limits_max_tres_minutes_per() ::
    #{ 'qos' => list(),
       'job' => list(),
       'account' => list(),
       'user' => list()
     }.

encode(#{ 'qos' := Qos,
          'job' := Job,
          'account' := Account,
          'user' := User
        }) ->
    #{ 'qos' => Qos,
       'job' => Job,
       'account' => Account,
       'user' => User
     }.
