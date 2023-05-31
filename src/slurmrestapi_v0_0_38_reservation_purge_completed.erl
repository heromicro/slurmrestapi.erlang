-module(slurmrestapi_v0_0_38_reservation_purge_completed).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_38_reservation_purge_completed/0]).

-type slurmrestapi_v0_0_38_reservation_purge_completed() ::
    #{ 'time' => integer()
     }.

encode(#{ 'time' := Time
        }) ->
    #{ 'time' => Time
     }.
