-module(slurmrestapi_dbv0_0_37_response_tres).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_response_tres/0]).

-type slurmrestapi_dbv0_0_37_response_tres() ::
    #{ 'errors' => list()
     }.

encode(#{ 'errors' := Errors
        }) ->
    #{ 'errors' => Errors
     }.
