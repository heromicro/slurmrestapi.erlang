-module(slurmrestapi_v0_0_41_job_desc_msg_memory_per_cpu).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_job_desc_msg_memory_per_cpu/0]).

-type slurmrestapi_v0_0_41_job_desc_msg_memory_per_cpu() ::
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
