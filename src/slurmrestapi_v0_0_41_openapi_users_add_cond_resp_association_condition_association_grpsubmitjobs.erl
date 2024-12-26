-module(slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_grpsubmitjobs).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_grpsubmitjobs/0]).

-type slurmrestapi_v0_0_41_openapi_users_add_cond_resp_association_condition_association_grpsubmitjobs() ::
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
