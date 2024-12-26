-module(slurmrestapi_v0_0_39_uint64_no_val).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_uint64_no_val/0]).

-type slurmrestapi_v0_0_39_uint64_no_val() ::
    #{ 'set' => boolean(),
       'infinite' => boolean(),
       'number' => integer()
     }.

encode(#{ 'set' := Set,
          'infinite' := Infinite,
          'number' := Number
        }) ->
    #{ 'set' => Set,
       'infinite' => Infinite,
       'number' => Number
     }.
