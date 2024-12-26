-module(slurmrestapi_v0_0_40_kill_jobs_resp_job_federation).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_kill_jobs_resp_job_federation/0]).

-type slurmrestapi_v0_0_40_kill_jobs_resp_job_federation() ::
    #{ 'sibling' => binary()
     }.

encode(#{ 'sibling' := Sibling
        }) ->
    #{ 'sibling' => Sibling
     }.
