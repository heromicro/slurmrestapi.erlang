-module(slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres/0]).

-type slurmrestapi_v0_0_41_openapi_shares_resp_shares_shares_inner_tres() ::
    #{ 'run_seconds' => list(),
       'group_minutes' => list(),
       'usage' => list()
     }.

encode(#{ 'run_seconds' := RunSeconds,
          'group_minutes' := GroupMinutes,
          'usage' := Usage
        }) ->
    #{ 'run_seconds' => RunSeconds,
       'group_minutes' => GroupMinutes,
       'usage' => Usage
     }.
