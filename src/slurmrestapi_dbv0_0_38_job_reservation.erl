-module(slurmrestapi_dbv0_0_38_job_reservation).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_job_reservation/0]).

-type slurmrestapi_dbv0_0_38_job_reservation() ::
    #{ 'id' => integer(),
       'name' => integer()
     }.

encode(#{ 'id' := Id,
          'name' := Name
        }) ->
    #{ 'id' => Id,
       'name' => Name
     }.
