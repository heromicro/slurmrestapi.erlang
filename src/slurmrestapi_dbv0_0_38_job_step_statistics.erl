-module(slurmrestapi_dbv0_0_38_job_step_statistics).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_job_step_statistics/0]).

-type slurmrestapi_dbv0_0_38_job_step_statistics() ::
    #{ 'CPU' => slurmrestapi_dbv0_0_38_job_step_statistics_cpu:slurmrestapi_dbv0_0_38_job_step_statistics_cpu(),
       'energy' => slurmrestapi_dbv0_0_38_job_step_statistics_energy:slurmrestapi_dbv0_0_38_job_step_statistics_energy()
     }.

encode(#{ 'CPU' := CPU,
          'energy' := Energy
        }) ->
    #{ 'CPU' => CPU,
       'energy' => Energy
     }.
