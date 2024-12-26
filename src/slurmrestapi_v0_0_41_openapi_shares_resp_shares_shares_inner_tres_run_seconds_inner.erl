-module(slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_run_seconds_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_run_seconds_inner/0]).

-type slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_run_seconds_inner() ::
    #{ 'name' => binary(),
       'value' => slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_run_seconds_inner_value:slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres_run_seconds_inner_value()
     }.

encode(#{ 'name' := Name,
          'value' := Value
        }) ->
    #{ 'name' => Name,
       'value' => Value
     }.
