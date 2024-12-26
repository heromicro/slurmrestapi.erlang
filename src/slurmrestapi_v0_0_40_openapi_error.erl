-module(slurmrestapi_v0_0_40_openapi_error).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_openapi_error/0]).

-type slurmrestapi_v0_0_40_openapi_error() ::
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
