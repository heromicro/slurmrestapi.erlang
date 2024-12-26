-module(slurmrestapi_v0_0_40_cron_entry_line).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_cron_entry_line/0]).

-type slurmrestapi_v0_0_40_cron_entry_line() ::
    #{ 'start' => integer(),
       'End_' => integer()
     }.

encode(#{ 'start' := Start,
          'End_' := End
        }) ->
    #{ 'start' => Start,
       'end' => End
     }.
