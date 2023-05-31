-module(slurmrestapi_dbv0_0_38_job_tres).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_job_tres/0]).

-type slurmrestapi_dbv0_0_38_job_tres() ::
    #{ 'allocated' => list(),
       'requested' => list()
     }.

encode(#{ 'allocated' := Allocated,
          'requested' := Requested
        }) ->
    #{ 'allocated' => Allocated,
       'requested' => Requested
     }.
