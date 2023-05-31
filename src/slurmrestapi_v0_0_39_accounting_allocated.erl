-module(slurmrestapi_v0_0_39_accounting_allocated).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_accounting_allocated/0]).

-type slurmrestapi_v0_0_39_accounting_allocated() ::
    #{ 'seconds' => integer()
     }.

encode(#{ 'seconds' := Seconds
        }) ->
    #{ 'seconds' => Seconds
     }.
