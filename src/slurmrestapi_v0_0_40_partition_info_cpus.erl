-module(slurmrestapi_v0_0_40_partition_info_cpus).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_partition_info_cpus/0]).

-type slurmrestapi_v0_0_40_partition_info_cpus() ::
    #{ 'task_binding' => integer(),
       'total' => integer()
     }.

encode(#{ 'task_binding' := TaskBinding,
          'total' := Total
        }) ->
    #{ 'task_binding' => TaskBinding,
       'total' => Total
     }.
