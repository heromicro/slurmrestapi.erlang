-module(slurmrestapi_v0_0_37_error).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_37_error/0]).

-type slurmrestapi_v0_0_37_error() ::
    #{ 'error' => binary(),
       'errno' => integer()
     }.

encode(#{ 'error' := Error,
          'errno' := Errno
        }) ->
    #{ 'error' => Error,
       'errno' => Errno
     }.
