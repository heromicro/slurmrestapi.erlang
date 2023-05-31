-module(slurmrestapi_dbv0_0_37_error).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_error/0]).

-type slurmrestapi_dbv0_0_37_error() ::
    #{ 'errno' => integer(),
       'error' => binary()
     }.

encode(#{ 'errno' := Errno,
          'error' := Error
        }) ->
    #{ 'errno' => Errno,
       'error' => Error
     }.
