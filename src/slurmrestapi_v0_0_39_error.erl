-module(slurmrestapi_v0_0_39_error).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_error/0]).

-type slurmrestapi_v0_0_39_error() ::
    #{ 'error_number' => integer(),
       'error' => binary(),
       'source' => binary(),
       'description' => binary()
     }.

encode(#{ 'error_number' := ErrorNumber,
          'error' := Error,
          'source' := Source,
          'description' := Description
        }) ->
    #{ 'error_number' => ErrorNumber,
       'error' => Error,
       'source' => Source,
       'description' => Description
     }.
