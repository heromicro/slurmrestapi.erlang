-module(slurmrestapi_v0_0_38_error).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_38_error/0]).

-type slurmrestapi_v0_0_38_error() ::
    #{ 'error' => binary(),
       'error_number' => integer()
     }.

encode(#{ 'error' := Error,
          'error_number' := ErrorNumber
        }) ->
    #{ 'error' => Error,
       'error_number' => ErrorNumber
     }.
