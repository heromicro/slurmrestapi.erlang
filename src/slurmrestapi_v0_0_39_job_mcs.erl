-module(slurmrestapi_v0_0_39_job_mcs).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_job_mcs/0]).

-type slurmrestapi_v0_0_39_job_mcs() ::
    #{ 'label' => binary()
     }.

encode(#{ 'label' := Label
        }) ->
    #{ 'label' => Label
     }.
