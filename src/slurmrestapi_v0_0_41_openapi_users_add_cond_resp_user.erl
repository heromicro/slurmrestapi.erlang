-module(slurmrestapi_v0_0_41_openapi_users_add_cond_resp_user).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_users_add_cond_resp_user/0]).

-type slurmrestapi_v0_0_41_openapi_users_add_cond_resp_user() ::
    #{ 'adminlevel' => list(),
       'defaultaccount' => binary(),
       'defaultwckey' => binary()
     }.

encode(#{ 'adminlevel' := Adminlevel,
          'defaultaccount' := Defaultaccount,
          'defaultwckey' := Defaultwckey
        }) ->
    #{ 'adminlevel' => Adminlevel,
       'defaultaccount' => Defaultaccount,
       'defaultwckey' => Defaultwckey
     }.
