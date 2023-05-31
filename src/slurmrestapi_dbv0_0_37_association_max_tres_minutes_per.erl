-module(slurmrestapi_dbv0_0_37_association_max_tres_minutes_per).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_association_max_tres_minutes_per/0]).

-type slurmrestapi_dbv0_0_37_association_max_tres_minutes_per() ::
    #{ 'job' => list()
     }.

encode(#{ 'job' := Job
        }) ->
    #{ 'job' => Job
     }.
