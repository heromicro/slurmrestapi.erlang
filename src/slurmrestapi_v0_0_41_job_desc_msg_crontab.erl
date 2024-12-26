-module(slurmrestapi_v0_0_41_job_desc_msg_crontab).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_job_desc_msg_crontab/0]).

-type slurmrestapi_v0_0_41_job_desc_msg_crontab() ::
    #{ 'flags' => list(),
       'minute' => binary(),
       'hour' => binary(),
       'day_of_month' => binary(),
       'month' => binary(),
       'day_of_week' => binary(),
       'specification' => binary(),
       'command' => binary(),
       'line' => slurmrestapi_v0_0_40_cron_entry_line:slurmrestapi_v0_0_40_cron_entry_line()
     }.

encode(#{ 'flags' := Flags,
          'minute' := Minute,
          'hour' := Hour,
          'day_of_month' := DayOfMonth,
          'month' := Month,
          'day_of_week' := DayOfWeek,
          'specification' := Specification,
          'command' := Command,
          'line' := Line
        }) ->
    #{ 'flags' => Flags,
       'minute' => Minute,
       'hour' => Hour,
       'day_of_month' => DayOfMonth,
       'month' => Month,
       'day_of_week' => DayOfWeek,
       'specification' => Specification,
       'command' => Command,
       'line' => Line
     }.
