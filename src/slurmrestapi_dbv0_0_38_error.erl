-module(slurmrestapi_dbv0_0_38_error).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_error/0]).

-type slurmrestapi_dbv0_0_38_error() ::
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
