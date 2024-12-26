-module(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_cpu_requested_frequency).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_cpu_requested_frequency/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_cpu_requested_frequency() ::
    #{ 'min' => slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_cpu_requested_frequency_min:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_cpu_requested_frequency_min(),
       'max' => slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_cpu_requested_frequency_max:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_cpu_requested_frequency_max()
     }.

encode(#{ 'min' := Min,
          'max' := Max
        }) ->
    #{ 'min' => Min,
       'max' => Max
     }.
