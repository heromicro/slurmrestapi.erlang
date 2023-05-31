-module(slurmrestapi_dbv0_0_37_job_step_tres_requested).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_job_step_tres_requested/0]).

-type slurmrestapi_dbv0_0_37_job_step_tres_requested() ::
    #{ 'average' => list(),
       'max' => list(),
       'min' => list(),
       'total' => list()
     }.

encode(#{ 'average' := Average,
          'max' := Max,
          'min' := Min,
          'total' := Total
        }) ->
    #{ 'average' => Average,
       'max' => Max,
       'min' => Min,
       'total' => Total
     }.
