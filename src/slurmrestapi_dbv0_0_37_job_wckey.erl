-module(slurmrestapi_dbv0_0_37_job_wckey).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_job_wckey/0]).

-type slurmrestapi_dbv0_0_37_job_wckey() ::
    #{ 'wckey' => binary(),
       'flags' => list()
     }.

encode(#{ 'wckey' := Wckey,
          'flags' := Flags
        }) ->
    #{ 'wckey' => Wckey,
       'flags' => Flags
     }.
