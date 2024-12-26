-module(slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner/0]).

-type slurmrestapi_v0_0_41_openapi_shares_resp_errors_inner() ::
    #{ 'description' => binary(),
       'error_number' => integer(),
       'error' => binary(),
       'source' => binary()
     }.

encode(#{ 'description' := Description,
          'error_number' := ErrorNumber,
          'error' := Error,
          'source' := Source
        }) ->
    #{ 'description' => Description,
       'error_number' => ErrorNumber,
       'error' => Error,
       'source' => Source
     }.
