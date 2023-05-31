-module(slurmrestapi_dbv0_0_37_qos_limits_max_tres_per).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_qos_limits_max_tres_per/0]).

-type slurmrestapi_dbv0_0_37_qos_limits_max_tres_per() ::
    #{ 'account' => list(),
       'job' => list(),
       'node' => list(),
       'user' => list()
     }.

encode(#{ 'account' := Account,
          'job' := Job,
          'node' := Node,
          'user' := User
        }) ->
    #{ 'account' => Account,
       'job' => Job,
       'node' => Node,
       'user' => User
     }.
