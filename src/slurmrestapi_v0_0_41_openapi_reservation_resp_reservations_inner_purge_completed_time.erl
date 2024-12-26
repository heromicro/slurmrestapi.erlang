-module(slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_purge_completed_time).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_purge_completed_time/0]).

-type slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_purge_completed_time() ::
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
