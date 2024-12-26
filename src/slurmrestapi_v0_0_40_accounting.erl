-module(slurmrestapi_v0_0_40_accounting).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_accounting/0]).

-type slurmrestapi_v0_0_40_accounting() ::
    #{ 'allocated' => slurmrestapi_v0_0_40_accounting_allocated:slurmrestapi_v0_0_40_accounting_allocated(),
       'id' => integer(),
       'start' => integer(),
       'TRES' => slurmrestapi_v0_0_40_tres:slurmrestapi_v0_0_40_tres()
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
