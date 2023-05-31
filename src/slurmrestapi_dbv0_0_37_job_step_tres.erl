-module(slurmrestapi_dbv0_0_37_job_step_tres).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_job_step_tres/0]).

-type slurmrestapi_dbv0_0_37_job_step_tres() ::
    #{ 'requested' => slurmrestapi_dbv0_0_37_job_step_tres_requested:slurmrestapi_dbv0_0_37_job_step_tres_requested(),
       'consumed' => slurmrestapi_dbv0_0_37_job_step_tres_requested:slurmrestapi_dbv0_0_37_job_step_tres_requested(),
       'allocated' => list()
     }.

encode(#{ 'requested' := Requested,
          'consumed' := Consumed,
          'allocated' := Allocated
        }) ->
    #{ 'requested' => Requested,
       'consumed' => Consumed,
       'allocated' => Allocated
     }.
