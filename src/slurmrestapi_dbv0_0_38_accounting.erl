-module(slurmrestapi_dbv0_0_38_accounting).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_accounting/0]).

-type slurmrestapi_dbv0_0_38_accounting() ::
    #{ 'allocated' => integer(),
       'id' => integer(),
       'start' => integer(),
       'TRES' => list()
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
