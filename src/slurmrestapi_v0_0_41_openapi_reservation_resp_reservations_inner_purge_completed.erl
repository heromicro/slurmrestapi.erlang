-module(slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_purge_completed).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_purge_completed/0]).

-type slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_purge_completed() ::
    #{ 'time' => slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_purge_completed_time:slurmrestapi_v0_0_41_openapi_reservation_resp_reservations_inner_purge_completed_time()
     }.

encode(#{ 'time' := Time
        }) ->
    #{ 'time' => Time
     }.
