-module(slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_tres_per).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_tres_per/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_config_resp_qos_inner_limits_max_tres_per() ::
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
