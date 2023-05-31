-module(slurmrestapi_v0_0_38_reservations_response).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_38_reservations_response/0]).

-type slurmrestapi_v0_0_38_reservations_response() ::
    #{ 'meta' => slurmrestapi_v0_0_38_meta:slurmrestapi_v0_0_38_meta(),
       'errors' => list(),
       'reservations' => list()
     }.

encode(#{ 'meta' := Meta,
          'errors' := Errors,
          'reservations' := Reservations
        }) ->
    #{ 'meta' => Meta,
       'errors' => Errors,
       'reservations' => Reservations
     }.
