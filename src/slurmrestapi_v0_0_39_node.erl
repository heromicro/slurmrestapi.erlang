-module(slurmrestapi_v0_0_39_node).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_node/0]).

-type slurmrestapi_v0_0_39_node() ::
    #{ 'architecture' => binary(),
       'burstbuffer_network_address' => binary(),
       'boards' => integer(),
       'boot_time' => integer(),
       'cluster_name' => binary(),
       'cores' => integer(),
       'specialized_cores' => integer(),
       'cpu_binding' => integer(),
       'cpu_load' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val(),
       'free_mem' => slurmrestapi_v0_0_39_uint64_no_val:slurmrestapi_v0_0_39_uint64_no_val(),
       'cpus' => integer(),
       'effective_cpus' => integer(),
       'specialized_cpus' => binary(),
       'energy' => slurmrestapi_v0_0_39_acct_gather_energy:slurmrestapi_v0_0_39_acct_gather_energy(),
       'external_sensors' => maps:map(),
       'extra' => binary(),
       'power' => maps:map(),
       'features' => list(),
       'active_features' => list(),
       'gres' => binary(),
       'gres_drained' => binary(),
       'gres_used' => binary(),
       'last_busy' => integer(),
       'mcs_label' => binary(),
       'specialized_memory' => integer(),
       'name' => binary(),
       'next_state_after_reboot' => list(),
       'address' => binary(),
       'hostname' => binary(),
       'state' => list(),
       'operating_system' => binary(),
       'owner' => binary(),
       'partitions' => list(),
       'port' => integer(),
       'real_memory' => integer(),
       'comment' => binary(),
       'reason' => binary(),
       'reason_changed_at' => integer(),
       'reason_set_by_user' => binary(),
       'resume_after' => slurmrestapi_v0_0_39_uint64_no_val:slurmrestapi_v0_0_39_uint64_no_val(),
       'reservation' => binary(),
       'alloc_memory' => integer(),
       'alloc_cpus' => integer(),
       'alloc_idle_cpus' => integer(),
       'tres_used' => binary(),
       'tres_weighted' => float(),
       'slurmd_start_time' => integer(),
       'sockets' => integer(),
       'threads' => integer(),
       'temporary_disk' => integer(),
       'weight' => integer(),
       'tres' => binary(),
       'version' => binary()
     }.

encode(#{ 'architecture' := Architecture,
          'burstbuffer_network_address' := BurstbufferNetworkAddress,
          'boards' := Boards,
          'boot_time' := BootTime,
          'cluster_name' := ClusterName,
          'cores' := Cores,
          'specialized_cores' := SpecializedCores,
          'cpu_binding' := CpuBinding,
          'cpu_load' := CpuLoad,
          'free_mem' := FreeMem,
          'cpus' := Cpus,
          'effective_cpus' := EffectiveCpus,
          'specialized_cpus' := SpecializedCpus,
          'energy' := Energy,
          'external_sensors' := ExternalSensors,
          'extra' := Extra,
          'power' := Power,
          'features' := Features,
          'active_features' := ActiveFeatures,
          'gres' := Gres,
          'gres_drained' := GresDrained,
          'gres_used' := GresUsed,
          'last_busy' := LastBusy,
          'mcs_label' := McsLabel,
          'specialized_memory' := SpecializedMemory,
          'name' := Name,
          'next_state_after_reboot' := NextStateAfterReboot,
          'address' := Address,
          'hostname' := Hostname,
          'state' := State,
          'operating_system' := OperatingSystem,
          'owner' := Owner,
          'partitions' := Partitions,
          'port' := Port,
          'real_memory' := RealMemory,
          'comment' := Comment,
          'reason' := Reason,
          'reason_changed_at' := ReasonChangedAt,
          'reason_set_by_user' := ReasonSetByUser,
          'resume_after' := ResumeAfter,
          'reservation' := Reservation,
          'alloc_memory' := AllocMemory,
          'alloc_cpus' := AllocCpus,
          'alloc_idle_cpus' := AllocIdleCpus,
          'tres_used' := TresUsed,
          'tres_weighted' := TresWeighted,
          'slurmd_start_time' := SlurmdStartTime,
          'sockets' := Sockets,
          'threads' := Threads,
          'temporary_disk' := TemporaryDisk,
          'weight' := Weight,
          'tres' := Tres,
          'version' := Version
        }) ->
    #{ 'architecture' => Architecture,
       'burstbuffer_network_address' => BurstbufferNetworkAddress,
       'boards' => Boards,
       'boot_time' => BootTime,
       'cluster_name' => ClusterName,
       'cores' => Cores,
       'specialized_cores' => SpecializedCores,
       'cpu_binding' => CpuBinding,
       'cpu_load' => CpuLoad,
       'free_mem' => FreeMem,
       'cpus' => Cpus,
       'effective_cpus' => EffectiveCpus,
       'specialized_cpus' => SpecializedCpus,
       'energy' => Energy,
       'external_sensors' => ExternalSensors,
       'extra' => Extra,
       'power' => Power,
       'features' => Features,
       'active_features' => ActiveFeatures,
       'gres' => Gres,
       'gres_drained' => GresDrained,
       'gres_used' => GresUsed,
       'last_busy' => LastBusy,
       'mcs_label' => McsLabel,
       'specialized_memory' => SpecializedMemory,
       'name' => Name,
       'next_state_after_reboot' => NextStateAfterReboot,
       'address' => Address,
       'hostname' => Hostname,
       'state' => State,
       'operating_system' => OperatingSystem,
       'owner' => Owner,
       'partitions' => Partitions,
       'port' => Port,
       'real_memory' => RealMemory,
       'comment' => Comment,
       'reason' => Reason,
       'reason_changed_at' => ReasonChangedAt,
       'reason_set_by_user' => ReasonSetByUser,
       'resume_after' => ResumeAfter,
       'reservation' => Reservation,
       'alloc_memory' => AllocMemory,
       'alloc_cpus' => AllocCpus,
       'alloc_idle_cpus' => AllocIdleCpus,
       'tres_used' => TresUsed,
       'tres_weighted' => TresWeighted,
       'slurmd_start_time' => SlurmdStartTime,
       'sockets' => Sockets,
       'threads' => Threads,
       'temporary_disk' => TemporaryDisk,
       'weight' => Weight,
       'tres' => Tres,
       'version' => Version
     }.
