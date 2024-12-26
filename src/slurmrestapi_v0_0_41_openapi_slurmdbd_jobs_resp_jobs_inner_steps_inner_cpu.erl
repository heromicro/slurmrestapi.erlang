-module(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_cpu).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_cpu/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_cpu() ::
    #{ 'requested_frequency' => slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_cpu_requested_frequency:slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_steps_inner_cpu_requested_frequency(),
       'governor' => binary()
     }.

encode(#{ 'requested_frequency' := RequestedFrequency,
          'governor' := Governor
        }) ->
    #{ 'requested_frequency' => RequestedFrequency,
       'governor' => Governor
     }.
