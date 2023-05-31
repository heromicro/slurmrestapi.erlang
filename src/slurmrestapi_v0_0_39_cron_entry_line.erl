-module(slurmrestapi_v0_0_39_cron_entry_line).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_cron_entry_line/0]).

-type slurmrestapi_v0_0_39_cron_entry_line() ::
    #{ 'End_' => integer()
     }.

encode(#{ 'End_' := End
        }) ->
    #{ 'end' => End
     }.
