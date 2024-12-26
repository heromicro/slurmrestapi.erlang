-module(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_statistics).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_statistics/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_statistics() ::
    #{ 'CPU' => slurmrestapi_v0_0_40_step_statistics_cpu:slurmrestapi_v0_0_40_step_statistics_cpu(),
       'energy' => slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_statistics_energy:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_statistics_energy()
     }.

encode(#{ 'CPU' := CPU,
          'energy' := Energy
        }) ->
    #{ 'CPU' => CPU,
       'energy' => Energy
     }.
