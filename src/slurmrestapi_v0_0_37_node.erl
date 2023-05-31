-module(slurmrestapi_v0_0_37_node).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_37_node/0]).

-type slurmrestapi_v0_0_37_node() ::
    #{ 'architecture' => binary(),
       'burstbuffer_network_address' => binary(),
       'boards' => integer(),
       'boot_time' => integer(),
       'cores' => integer(),
       'cpu_binding' => integer(),
       'cpu_load' => integer(),
       'free_memory' => integer(),
       'cpus' => integer(),
       'features' => binary(),
       'active_features' => binary(),
       'gres' => binary(),
       'gres_drained' => binary(),
       'gres_used' => binary(),
       'mcs_label' => binary(),
       'name' => binary(),
       'next_state_after_reboot' => binary(),
       'next_state_after_reboot_flags' => list(),
       'address' => binary(),
       'hostname' => binary(),
       'state' => binary(),
       'state_flags' => list(),
       'operating_system' => binary(),
       'owner' => binary(),
       'partitions' => list(),
       'port' => integer(),
       'real_memory' => integer(),
       'reason' => binary(),
       'reason_changed_at' => integer(),
       'reason_set_by_user' => binary(),
       'slurmd_start_time' => integer(),
       'sockets' => integer(),
       'threads' => integer(),
       'temporary_disk' => integer(),
       'weight' => integer(),
       'tres' => binary(),
       'tres_used' => binary(),
       'tres_weighted' => float(),
       'slurmd_version' => binary(),
       'alloc_cpus' => integer(),
       'idle_cpus' => integer(),
       'alloc_memory' => integer()
     }.

encode(#{ 'architecture' := Architecture,
          'burstbuffer_network_address' := BurstbufferNetworkAddress,
          'boards' := Boards,
          'boot_time' := BootTime,
          'cores' := Cores,
          'cpu_binding' := CpuBinding,
          'cpu_load' := CpuLoad,
          'free_memory' := FreeMemory,
          'cpus' := Cpus,
          'features' := Features,
          'active_features' := ActiveFeatures,
          'gres' := Gres,
          'gres_drained' := GresDrained,
          'gres_used' := GresUsed,
          'mcs_label' := McsLabel,
          'name' := Name,
          'next_state_after_reboot' := NextStateAfterReboot,
          'next_state_after_reboot_flags' := NextStateAfterRebootFlags,
          'address' := Address,
          'hostname' := Hostname,
          'state' := State,
          'state_flags' := StateFlags,
          'operating_system' := OperatingSystem,
          'owner' := Owner,
          'partitions' := Partitions,
          'port' := Port,
          'real_memory' := RealMemory,
          'reason' := Reason,
          'reason_changed_at' := ReasonChangedAt,
          'reason_set_by_user' := ReasonSetByUser,
          'slurmd_start_time' := SlurmdStartTime,
          'sockets' := Sockets,
          'threads' := Threads,
          'temporary_disk' := TemporaryDisk,
          'weight' := Weight,
          'tres' := Tres,
          'tres_used' := TresUsed,
          'tres_weighted' := TresWeighted,
          'slurmd_version' := SlurmdVersion,
          'alloc_cpus' := AllocCpus,
          'idle_cpus' := IdleCpus,
          'alloc_memory' := AllocMemory
        }) ->
    #{ 'architecture' => Architecture,
       'burstbuffer_network_address' => BurstbufferNetworkAddress,
       'boards' => Boards,
       'boot_time' => BootTime,
       'cores' => Cores,
       'cpu_binding' => CpuBinding,
       'cpu_load' => CpuLoad,
       'free_memory' => FreeMemory,
       'cpus' => Cpus,
       'features' => Features,
       'active_features' => ActiveFeatures,
       'gres' => Gres,
       'gres_drained' => GresDrained,
       'gres_used' => GresUsed,
       'mcs_label' => McsLabel,
       'name' => Name,
       'next_state_after_reboot' => NextStateAfterReboot,
       'next_state_after_reboot_flags' => NextStateAfterRebootFlags,
       'address' => Address,
       'hostname' => Hostname,
       'state' => State,
       'state_flags' => StateFlags,
       'operating_system' => OperatingSystem,
       'owner' => Owner,
       'partitions' => Partitions,
       'port' => Port,
       'real_memory' => RealMemory,
       'reason' => Reason,
       'reason_changed_at' => ReasonChangedAt,
       'reason_set_by_user' => ReasonSetByUser,
       'slurmd_start_time' => SlurmdStartTime,
       'sockets' => Sockets,
       'threads' => Threads,
       'temporary_disk' => TemporaryDisk,
       'weight' => Weight,
       'tres' => Tres,
       'tres_used' => TresUsed,
       'tres_weighted' => TresWeighted,
       'slurmd_version' => SlurmdVersion,
       'alloc_cpus' => AllocCpus,
       'idle_cpus' => IdleCpus,
       'alloc_memory' => AllocMemory
     }.
