-module(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_wckey).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_wckey/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_wckey() ::
    #{ 'wckey' := binary(),
       'flags' := list()
     }.

encode(#{ 'wckey' := Wckey,
          'flags' := Flags
        }) ->
    #{ 'wckey' => Wckey,
       'flags' => Flags
     }.
