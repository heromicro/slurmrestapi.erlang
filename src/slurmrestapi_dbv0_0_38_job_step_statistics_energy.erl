-module(slurmrestapi_dbv0_0_38_job_step_statistics_energy).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_job_step_statistics_energy/0]).

-type slurmrestapi_dbv0_0_38_job_step_statistics_energy() ::
    #{ 'consumed' => integer()
     }.

encode(#{ 'consumed' := Consumed
        }) ->
    #{ 'consumed' => Consumed
     }.
