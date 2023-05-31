-module(slurmrestapi_v0_0_37_reservations_response).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_37_reservations_response/0]).

-type slurmrestapi_v0_0_37_reservations_response() ::
    #{ 'errors' => list(),
       'reservations' => list()
     }.

encode(#{ 'errors' := Errors,
          'reservations' := Reservations
        }) ->
    #{ 'errors' => Errors,
       'reservations' => Reservations
     }.
