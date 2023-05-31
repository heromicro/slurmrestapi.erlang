-module(slurmrestapi_v0_0_39_reservation_core_spec).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_reservation_core_spec/0]).

-type slurmrestapi_v0_0_39_reservation_core_spec() ::
    #{ 'node' => binary(),
       'core' => binary()
     }.

encode(#{ 'node' := Node,
          'core' := Core
        }) ->
    #{ 'node' => Node,
       'core' => Core
     }.
