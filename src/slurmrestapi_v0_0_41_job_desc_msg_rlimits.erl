-module(slurmrestapi_v0_0_41_job_desc_msg_rlimits).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_job_desc_msg_rlimits/0]).

-type slurmrestapi_v0_0_41_job_desc_msg_rlimits() ::
    #{ 'cpu' => slurmrestapi_v0_0_41_job_desc_msg_rlimits_cpu:slurmrestapi_v0_0_41_job_desc_msg_rlimits_cpu(),
       'fsize' => slurmrestapi_v0_0_41_job_desc_msg_rlimits_fsize:slurmrestapi_v0_0_41_job_desc_msg_rlimits_fsize(),
       'data' => slurmrestapi_v0_0_41_job_desc_msg_rlimits_data:slurmrestapi_v0_0_41_job_desc_msg_rlimits_data(),
       'stack' => slurmrestapi_v0_0_41_job_desc_msg_rlimits_stack:slurmrestapi_v0_0_41_job_desc_msg_rlimits_stack(),
       'core' => slurmrestapi_v0_0_41_job_desc_msg_rlimits_core:slurmrestapi_v0_0_41_job_desc_msg_rlimits_core(),
       'rss' => slurmrestapi_v0_0_41_job_desc_msg_rlimits_rss:slurmrestapi_v0_0_41_job_desc_msg_rlimits_rss(),
       'nproc' => slurmrestapi_v0_0_41_job_desc_msg_rlimits_nproc:slurmrestapi_v0_0_41_job_desc_msg_rlimits_nproc(),
       'nofile' => slurmrestapi_v0_0_41_job_desc_msg_rlimits_nofile:slurmrestapi_v0_0_41_job_desc_msg_rlimits_nofile(),
       'memlock' => slurmrestapi_v0_0_41_job_desc_msg_rlimits_memlock:slurmrestapi_v0_0_41_job_desc_msg_rlimits_memlock(),
       'as' => slurmrestapi_v0_0_41_job_desc_msg_rlimits_as:slurmrestapi_v0_0_41_job_desc_msg_rlimits_as()
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
