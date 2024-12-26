-module(slurmrestapi_v0_0_39_job_reservation).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_job_reservation/0]).

-type slurmrestapi_v0_0_39_job_reservation() ::
    #{ 'id' => integer(),
       'name' => binary()
     }.

encode(#{ 'id' := Id,
          'name' := Name
        }) ->
    #{ 'id' => Id,
       'name' => Name
     }.
