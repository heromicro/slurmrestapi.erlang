-module(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_het).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_het/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_het() ::
    #{ 'job_id' => integer(),
       'job_offset' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_het_job_offset:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_het_job_offset()
     }.

encode(#{ 'job_id' := JobId,
          'job_offset' := JobOffset
        }) ->
    #{ 'job_id' => JobId,
       'job_offset' => JobOffset
     }.
