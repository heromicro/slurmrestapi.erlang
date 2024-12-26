-module(slurmrestapi_v0_0_40_job_desc_msg_rlimits).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_job_desc_msg_rlimits/0]).

-type slurmrestapi_v0_0_40_job_desc_msg_rlimits() ::
    #{ 'cpu' => slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val(),
       'fsize' => slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val(),
       'data' => slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val(),
       'stack' => slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val(),
       'core' => slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val(),
       'rss' => slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val(),
       'nproc' => slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val(),
       'nofile' => slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val(),
       'memlock' => slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val(),
       'as' => slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val()
     }.

encode(#{ 'cpu' := Cpu,
          'fsize' := Fsize,
          'data' := Data,
          'stack' := Stack,
          'core' := Core,
          'rss' := Rss,
          'nproc' := Nproc,
          'nofile' := Nofile,
          'memlock' := Memlock,
          'as' := As
        }) ->
    #{ 'cpu' => Cpu,
       'fsize' => Fsize,
       'data' => Data,
       'stack' => Stack,
       'core' => Core,
       'rss' => Rss,
       'nproc' => Nproc,
       'nofile' => Nofile,
       'memlock' => Memlock,
       'as' => As
     }.
