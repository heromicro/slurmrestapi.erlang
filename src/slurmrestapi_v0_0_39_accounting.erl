-module(slurmrestapi_v0_0_39_accounting).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_accounting/0]).

-type slurmrestapi_v0_0_39_accounting() ::
    #{ 'allocated' => slurmrestapi_v0_0_39_accounting_allocated:slurmrestapi_v0_0_39_accounting_allocated(),
       'id' => integer(),
       'start' => integer(),
       'TRES' => slurmrestapi_v0_0_39_tres:slurmrestapi_v0_0_39_tres()
     }.

encode(#{ 'allocated' := Allocated,
          'id' := Id,
          'start' := Start,
          'TRES' := TRES
        }) ->
    #{ 'allocated' => Allocated,
       'id' => Id,
       'start' => Start,
       'TRES' => TRES
     }.
