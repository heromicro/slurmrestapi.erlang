-module(slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner/0]).

-type slurmrestapi_v0_0_41_openapi_shares_resp_warnings_inner() ::
    #{ 'description' => binary(),
       'source' => binary()
     }.

encode(#{ 'description' := Description,
          'source' := Source
        }) ->
    #{ 'description' => Description,
       'source' => Source
     }.
