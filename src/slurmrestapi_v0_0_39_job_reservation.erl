-module(slurmrestapi_v0_0_39_job_reservation).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_job_reservation/0]).

-type slurmrestapi_v0_0_39_job_reservation() ::
    #{ 'name' => binary()
     }.

encode(#{ 'name' := Name
        }) ->
    #{ 'name' => Name
     }.
