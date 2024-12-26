-module(slurmrestapi_v0_0_41_job_desc_msg_time_minimum).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_job_desc_msg_time_minimum/0]).

-type slurmrestapi_v0_0_41_job_desc_msg_time_minimum() ::
    #{ 'set' => boolean(),
       'infinite' => boolean(),
       'number' => integer()
     }.

encode(#{ 'set' := Set,
          'infinite' := Infinite,
          'number' := Number
        }) ->
    #{ 'set' => Set,
       'infinite' => Infinite,
       'number' => Number
     }.
