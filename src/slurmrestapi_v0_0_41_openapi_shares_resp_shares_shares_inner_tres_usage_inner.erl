-module(slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_usage_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_usage_inner/0]).

-type slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_usage_inner() ::
    #{ 'name' => binary(),
       'value' => integer()
     }.

encode(#{ 'name' := Name,
          'value' := Value
        }) ->
    #{ 'name' => Name,
       'value' => Value
     }.
