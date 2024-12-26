-module(slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_core_specializations_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_core_specializations_inner/0]).

-type slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_core_specializations_inner() ::
    #{ 'node' => binary(),
       'core' => binary()
     }.

encode(#{ 'node' := Node,
          'core' := Core
        }) ->
    #{ 'node' => Node,
       'core' => Core
     }.
