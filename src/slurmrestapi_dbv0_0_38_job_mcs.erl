-module(slurmrestapi_dbv0_0_38_job_mcs).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_job_mcs/0]).

-type slurmrestapi_dbv0_0_38_job_mcs() ::
    #{ 'label' => binary()
     }.

encode(#{ 'label' := Label
        }) ->
    #{ 'label' => Label
     }.
