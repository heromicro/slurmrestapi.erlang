-module(slurmrestapi_v0_0_39_reservations_response).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_reservations_response/0]).

-type slurmrestapi_v0_0_39_reservations_response() ::
    #{ 'meta' => slurmrestapi_v0_0_39_meta:slurmrestapi_v0_0_39_meta(),
       'errors' => list(),
       'warnings' => list(),
       'reservations' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings,
          'reservations' := Reservations
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings,
       'reservations' => Reservations
     }.
