-module(slurmrestapi_v0_0_41_openapi_reservation_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_reservation_resp/0]).

-type slurmrestapi_v0_0_41_openapi_reservation_resp() ::
    #{ 'reservations' := list(),
       'last_update' := slurmrestapi_v0_0_41_openapi_reservation_resp_last_update:slurmrestapi_v0_0_41_openapi_reservation_resp_last_update(),
       'meta' => slurmrestapi_v0_0_41_openapi_shares_resp_meta:slurmrestapi_v0_0_41_openapi_shares_resp_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'reservations' := Reservations,
          'last_update' := LastUpdate,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'reservations' => Reservations,
       'last_update' => LastUpdate,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
