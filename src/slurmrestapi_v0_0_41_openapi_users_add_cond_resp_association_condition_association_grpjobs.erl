-module(slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_grpjobs).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_grpjobs/0]).

-type slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_grpjobs() ::
    #{ 'set' => boolean(),
       'infinite' => boolean(),
       'number' => integer()
     }.

encode(#{ 'set' := Set,
          'infinite' := Infinite,
          'number' := Number
        }) ->
    #{ 'set' => Set,
       'infinite' => Infinite,
       'number' => Number
     }.
