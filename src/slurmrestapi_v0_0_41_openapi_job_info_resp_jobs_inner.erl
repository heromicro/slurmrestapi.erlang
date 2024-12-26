-module(slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner/0]).

-type slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner() ::
    #{ 'account' => binary(),
       'accrue_time' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_accrue_time:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_accrue_time(),
       'admin_comment' => binary(),
       'allocating_node' => binary(),
       'array_job_id' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_array_job_id:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_array_job_id(),
       'array_task_id' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_array_task_id:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_array_task_id(),
       'array_max_tasks' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_array_max_tasks:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_array_max_tasks(),
       'array_task_string' => binary(),
       'association_id' => integer(),
       'batch_features' => binary(),
       'batch_flag' => boolean(),
       'batch_host' => binary(),
       'flags' => list(),
       'burst_buffer' => binary(),
       'burst_buffer_state' => binary(),
       'cluster' => binary(),
       'cluster_features' => binary(),
       'command' => binary(),
       'comment' => binary(),
       'container' => binary(),
       'container_id' => binary(),
       'contiguous' => boolean(),
       'core_spec' => integer(),
       'thread_spec' => integer(),
       'cores_per_socket' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cores_per_socket:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cores_per_socket(),
       'billable_tres' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_billable_tres:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_billable_tres(),
       'cpus_per_task' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpus_per_task:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpus_per_task(),
       'cpu_frequency_minimum' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_minimum:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_minimum(),
       'cpu_frequency_maximum' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_maximum:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_maximum(),
       'cpu_frequency_governor' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_governor:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpu_frequency_governor(),
       'cpus_per_tres' => binary(),
       'cron' => binary(),
       'deadline' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_deadline:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_deadline(),
       'delay_boot' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_delay_boot:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_delay_boot(),
       'dependency' => binary(),
       'derived_exit_code' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_derived_exit_code(),
       'eligible_time' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_eligible_time:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_eligible_time(),
       'end_time' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_end_time:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_end_time(),
       'excluded_nodes' => binary(),
       'exit_code' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_exit_code:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_exit_code(),
       'extra' => binary(),
       'failed_node' => binary(),
       'features' => binary(),
       'federation_origin' => binary(),
       'federation_siblings_active' => binary(),
       'federation_siblings_viable' => binary(),
       'gres_detail' => list(),
       'group_id' => integer(),
       'group_name' => binary(),
       'het_job_id' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_het_job_id:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_het_job_id(),
       'het_job_id_set' => binary(),
       'het_job_offset' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_het_job_offset:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_het_job_offset(),
       'job_id' => integer(),
       'job_resources' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_job_resources(),
       'job_size_str' => list(),
       'job_state' => list(),
       'last_sched_evaluation' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_last_sched_evaluation:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_last_sched_evaluation(),
       'licenses' => binary(),
       'mail_type' => list(),
       'mail_user' => binary(),
       'max_cpus' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_max_cpus:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_max_cpus(),
       'max_nodes' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_max_nodes:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_max_nodes(),
       'mcs_label' => binary(),
       'memory_per_tres' => binary(),
       'name' => binary(),
       'network' => binary(),
       'nodes' => binary(),
       'nice' => integer(),
       'tasks_per_core' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_tasks_per_core:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_tasks_per_core(),
       'tasks_per_tres' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_tasks_per_tres:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_tasks_per_tres(),
       'tasks_per_node' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_tasks_per_node:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_tasks_per_node(),
       'tasks_per_socket' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_tasks_per_socket:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_tasks_per_socket(),
       'tasks_per_board' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_tasks_per_board:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_tasks_per_board(),
       'cpus' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpus:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_cpus(),
       'node_count' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_node_count:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_node_count(),
       'tasks' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_tasks:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_tasks(),
       'partition' => binary(),
       'prefer' => binary(),
       'memory_per_cpu' => slurmrestapi_v0_0_41_job_desc_msg_memory_per_cpu:slurmrestapi_v0_0_41_job_desc_msg_memory_per_cpu(),
       'memory_per_node' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_memory_per_node:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_memory_per_node(),
       'minimum_cpus_per_node' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_minimum_cpus_per_node:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_minimum_cpus_per_node(),
       'minimum_tmp_disk_per_node' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_minimum_tmp_disk_per_node:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_minimum_tmp_disk_per_node(),
       'power' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_power:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_power(),
       'preempt_time' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_preempt_time:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_preempt_time(),
       'preemptable_time' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_preemptable_time:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_preemptable_time(),
       'pre_sus_time' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_pre_sus_time:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_pre_sus_time(),
       'hold' => boolean(),
       'priority' => slurmrestapi_v0_0_41_job_desc_msg_priority:slurmrestapi_v0_0_41_job_desc_msg_priority(),
       'profile' => list(),
       'qos' => binary(),
       'reboot' => boolean(),
       'required_nodes' => binary(),
       'minimum_switches' => integer(),
       'requeue' => boolean(),
       'resize_time' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_resize_time:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_resize_time(),
       'restart_cnt' => integer(),
       'resv_name' => binary(),
       'scheduled_nodes' => binary(),
       'selinux_context' => binary(),
       'shared' => list(),
       'exclusive' => list(),
       'oversubscribe' => boolean(),
       'show_flags' => list(),
       'sockets_per_board' => integer(),
       'sockets_per_node' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_sockets_per_node:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_sockets_per_node(),
       'start_time' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_start_time:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_start_time(),
       'state_description' => binary(),
       'state_reason' => binary(),
       'standard_error' => binary(),
       'standard_input' => binary(),
       'standard_output' => binary(),
       'submit_time' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_submit_time:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_submit_time(),
       'suspend_time' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_suspend_time:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_suspend_time(),
       'system_comment' => binary(),
       'time_limit' => slurmrestapi_v0_0_41_job_desc_msg_time_limit:slurmrestapi_v0_0_41_job_desc_msg_time_limit(),
       'time_minimum' => slurmrestapi_v0_0_41_job_desc_msg_time_minimum:slurmrestapi_v0_0_41_job_desc_msg_time_minimum(),
       'threads_per_core' => slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_threads_per_core:slurmrestapi_v0_0_41_openapi_job_info_resp_jobs_inner_threads_per_core(),
       'tres_bind' => binary(),
       'tres_freq' => binary(),
       'tres_per_job' => binary(),
       'tres_per_node' => binary(),
       'tres_per_socket' => binary(),
       'tres_per_task' => binary(),
       'tres_req_str' => binary(),
       'tres_alloc_str' => binary(),
       'user_id' => integer(),
       'user_name' => binary(),
       'maximum_switch_wait_time' => integer(),
       'wckey' => binary(),
       'current_working_directory' => binary()
     }.

encode(#{ 'account' := Account,
          'accrue_time' := AccrueTime,
          'admin_comment' := AdminComment,
          'allocating_node' := AllocatingNode,
          'array_job_id' := ArrayJobId,
          'array_task_id' := ArrayTaskId,
          'array_max_tasks' := ArrayMaxTasks,
          'array_task_string' := ArrayTaskString,
          'association_id' := AssociationId,
          'batch_features' := BatchFeatures,
          'batch_flag' := BatchFlag,
          'batch_host' := BatchHost,
          'flags' := Flags,
          'burst_buffer' := BurstBuffer,
          'burst_buffer_state' := BurstBufferState,
          'cluster' := Cluster,
          'cluster_features' := ClusterFeatures,
          'command' := Command,
          'comment' := Comment,
          'container' := Container,
          'container_id' := ContainerId,
          'contiguous' := Contiguous,
          'core_spec' := CoreSpec,
          'thread_spec' := ThreadSpec,
          'cores_per_socket' := CoresPerSocket,
          'billable_tres' := BillableTres,
          'cpus_per_task' := CpusPerTask,
          'cpu_frequency_minimum' := CpuFrequencyMinimum,
          'cpu_frequency_maximum' := CpuFrequencyMaximum,
          'cpu_frequency_governor' := CpuFrequencyGovernor,
          'cpus_per_tres' := CpusPerTres,
          'cron' := Cron,
          'deadline' := Deadline,
          'delay_boot' := DelayBoot,
          'dependency' := Dependency,
          'derived_exit_code' := DerivedExitCode,
          'eligible_time' := EligibleTime,
          'end_time' := EndTime,
          'excluded_nodes' := ExcludedNodes,
          'exit_code' := ExitCode,
          'extra' := Extra,
          'failed_node' := FailedNode,
          'features' := Features,
          'federation_origin' := FederationOrigin,
          'federation_siblings_active' := FederationSiblingsActive,
          'federation_siblings_viable' := FederationSiblingsViable,
          'gres_detail' := GresDetail,
          'group_id' := GroupId,
          'group_name' := GroupName,
          'het_job_id' := HetJobId,
          'het_job_id_set' := HetJobIdSet,
          'het_job_offset' := HetJobOffset,
          'job_id' := JobId,
          'job_resources' := JobResources,
          'job_size_str' := JobSizeStr,
          'job_state' := JobState,
          'last_sched_evaluation' := LastSchedEvaluation,
          'licenses' := Licenses,
          'mail_type' := MailType,
          'mail_user' := MailUser,
          'max_cpus' := MaxCpus,
          'max_nodes' := MaxNodes,
          'mcs_label' := McsLabel,
          'memory_per_tres' := MemoryPerTres,
          'name' := Name,
          'network' := Network,
          'nodes' := Nodes,
          'nice' := Nice,
          'tasks_per_core' := TasksPerCore,
          'tasks_per_tres' := TasksPerTres,
          'tasks_per_node' := TasksPerNode,
          'tasks_per_socket' := TasksPerSocket,
          'tasks_per_board' := TasksPerBoard,
          'cpus' := Cpus,
          'node_count' := NodeCount,
          'tasks' := Tasks,
          'partition' := Partition,
          'prefer' := Prefer,
          'memory_per_cpu' := MemoryPerCpu,
          'memory_per_node' := MemoryPerNode,
          'minimum_cpus_per_node' := MinimumCpusPerNode,
          'minimum_tmp_disk_per_node' := MinimumTmpDiskPerNode,
          'power' := Power,
          'preempt_time' := PreemptTime,
          'preemptable_time' := PreemptableTime,
          'pre_sus_time' := PreSusTime,
          'hold' := Hold,
          'priority' := Priority,
          'profile' := Profile,
          'qos' := Qos,
          'reboot' := Reboot,
          'required_nodes' := RequiredNodes,
          'minimum_switches' := MinimumSwitches,
          'requeue' := Requeue,
          'resize_time' := ResizeTime,
          'restart_cnt' := RestartCnt,
          'resv_name' := ResvName,
          'scheduled_nodes' := ScheduledNodes,
          'selinux_context' := SelinuxContext,
          'shared' := Shared,
          'exclusive' := Exclusive,
          'oversubscribe' := Oversubscribe,
          'show_flags' := ShowFlags,
          'sockets_per_board' := SocketsPerBoard,
          'sockets_per_node' := SocketsPerNode,
          'start_time' := StartTime,
          'state_description' := StateDescription,
          'state_reason' := StateReason,
          'standard_error' := StandardError,
          'standard_input' := StandardInput,
          'standard_output' := StandardOutput,
          'submit_time' := SubmitTime,
          'suspend_time' := SuspendTime,
          'system_comment' := SystemComment,
          'time_limit' := TimeLimit,
          'time_minimum' := TimeMinimum,
          'threads_per_core' := ThreadsPerCore,
          'tres_bind' := TresBind,
          'tres_freq' := TresFreq,
          'tres_per_job' := TresPerJob,
          'tres_per_node' := TresPerNode,
          'tres_per_socket' := TresPerSocket,
          'tres_per_task' := TresPerTask,
          'tres_req_str' := TresReqStr,
          'tres_alloc_str' := TresAllocStr,
          'user_id' := UserId,
          'user_name' := UserName,
          'maximum_switch_wait_time' := MaximumSwitchWaitTime,
          'wckey' := Wckey,
          'current_working_directory' := CurrentWorkingDirectory
        }) ->
    #{ 'account' => Account,
       'accrue_time' => AccrueTime,
       'admin_comment' => AdminComment,
       'allocating_node' => AllocatingNode,
       'array_job_id' => ArrayJobId,
       'array_task_id' => ArrayTaskId,
       'array_max_tasks' => ArrayMaxTasks,
       'array_task_string' => ArrayTaskString,
       'association_id' => AssociationId,
       'batch_features' => BatchFeatures,
       'batch_flag' => BatchFlag,
       'batch_host' => BatchHost,
       'flags' => Flags,
       'burst_buffer' => BurstBuffer,
       'burst_buffer_state' => BurstBufferState,
       'cluster' => Cluster,
       'cluster_features' => ClusterFeatures,
       'command' => Command,
       'comment' => Comment,
       'container' => Container,
       'container_id' => ContainerId,
       'contiguous' => Contiguous,
       'core_spec' => CoreSpec,
       'thread_spec' => ThreadSpec,
       'cores_per_socket' => CoresPerSocket,
       'billable_tres' => BillableTres,
       'cpus_per_task' => CpusPerTask,
       'cpu_frequency_minimum' => CpuFrequencyMinimum,
       'cpu_frequency_maximum' => CpuFrequencyMaximum,
       'cpu_frequency_governor' => CpuFrequencyGovernor,
       'cpus_per_tres' => CpusPerTres,
       'cron' => Cron,
       'deadline' => Deadline,
       'delay_boot' => DelayBoot,
       'dependency' => Dependency,
       'derived_exit_code' => DerivedExitCode,
       'eligible_time' => EligibleTime,
       'end_time' => EndTime,
       'excluded_nodes' => ExcludedNodes,
       'exit_code' => ExitCode,
       'extra' => Extra,
       'failed_node' => FailedNode,
       'features' => Features,
       'federation_origin' => FederationOrigin,
       'federation_siblings_active' => FederationSiblingsActive,
       'federation_siblings_viable' => FederationSiblingsViable,
       'gres_detail' => GresDetail,
       'group_id' => GroupId,
       'group_name' => GroupName,
       'het_job_id' => HetJobId,
       'het_job_id_set' => HetJobIdSet,
       'het_job_offset' => HetJobOffset,
       'job_id' => JobId,
       'job_resources' => JobResources,
       'job_size_str' => JobSizeStr,
       'job_state' => JobState,
       'last_sched_evaluation' => LastSchedEvaluation,
       'licenses' => Licenses,
       'mail_type' => MailType,
       'mail_user' => MailUser,
       'max_cpus' => MaxCpus,
       'max_nodes' => MaxNodes,
       'mcs_label' => McsLabel,
       'memory_per_tres' => MemoryPerTres,
       'name' => Name,
       'network' => Network,
       'nodes' => Nodes,
       'nice' => Nice,
       'tasks_per_core' => TasksPerCore,
       'tasks_per_tres' => TasksPerTres,
       'tasks_per_node' => TasksPerNode,
       'tasks_per_socket' => TasksPerSocket,
       'tasks_per_board' => TasksPerBoard,
       'cpus' => Cpus,
       'node_count' => NodeCount,
       'tasks' => Tasks,
       'partition' => Partition,
       'prefer' => Prefer,
       'memory_per_cpu' => MemoryPerCpu,
       'memory_per_node' => MemoryPerNode,
       'minimum_cpus_per_node' => MinimumCpusPerNode,
       'minimum_tmp_disk_per_node' => MinimumTmpDiskPerNode,
       'power' => Power,
       'preempt_time' => PreemptTime,
       'preemptable_time' => PreemptableTime,
       'pre_sus_time' => PreSusTime,
       'hold' => Hold,
       'priority' => Priority,
       'profile' => Profile,
       'qos' => Qos,
       'reboot' => Reboot,
       'required_nodes' => RequiredNodes,
       'minimum_switches' => MinimumSwitches,
       'requeue' => Requeue,
       'resize_time' => ResizeTime,
       'restart_cnt' => RestartCnt,
       'resv_name' => ResvName,
       'scheduled_nodes' => ScheduledNodes,
       'selinux_context' => SelinuxContext,
       'shared' => Shared,
       'exclusive' => Exclusive,
       'oversubscribe' => Oversubscribe,
       'show_flags' => ShowFlags,
       'sockets_per_board' => SocketsPerBoard,
       'sockets_per_node' => SocketsPerNode,
       'start_time' => StartTime,
       'state_description' => StateDescription,
       'state_reason' => StateReason,
       'standard_error' => StandardError,
       'standard_input' => StandardInput,
       'standard_output' => StandardOutput,
       'submit_time' => SubmitTime,
       'suspend_time' => SuspendTime,
       'system_comment' => SystemComment,
       'time_limit' => TimeLimit,
       'time_minimum' => TimeMinimum,
       'threads_per_core' => ThreadsPerCore,
       'tres_bind' => TresBind,
       'tres_freq' => TresFreq,
       'tres_per_job' => TresPerJob,
       'tres_per_node' => TresPerNode,
       'tres_per_socket' => TresPerSocket,
       'tres_per_task' => TresPerTask,
       'tres_req_str' => TresReqStr,
       'tres_alloc_str' => TresAllocStr,
       'user_id' => UserId,
       'user_name' => UserName,
       'maximum_switch_wait_time' => MaximumSwitchWaitTime,
       'wckey' => Wckey,
       'current_working_directory' => CurrentWorkingDirectory
     }.