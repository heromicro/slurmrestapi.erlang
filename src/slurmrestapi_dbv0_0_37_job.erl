-module(slurmrestapi_dbv0_0_37_job).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_job/0]).

-type slurmrestapi_dbv0_0_37_job() ::
    #{ 'account' => binary(),
       'comment' => slurmrestapi_dbv0_0_37_job_comment:slurmrestapi_dbv0_0_37_job_comment(),
       'allocation_nodes' => binary(),
       'array' => slurmrestapi_dbv0_0_37_job_array:slurmrestapi_dbv0_0_37_job_array(),
       'time' => slurmrestapi_dbv0_0_37_job_time:slurmrestapi_dbv0_0_37_job_time(),
       'association' => slurmrestapi_dbv0_0_37_association_short_info:slurmrestapi_dbv0_0_37_association_short_info(),
       'cluster' => binary(),
       'constraints' => binary(),
       'derived_exit_code' => slurmrestapi_dbv0_0_37_job_exit_code:slurmrestapi_dbv0_0_37_job_exit_code(),
       'exit_code' => slurmrestapi_dbv0_0_37_job_exit_code:slurmrestapi_dbv0_0_37_job_exit_code(),
       'flags' => list(),
       'group' => binary(),
       'het' => slurmrestapi_dbv0_0_37_job_het:slurmrestapi_dbv0_0_37_job_het(),
       'job_id' => integer(),
       'name' => binary(),
       'mcs' => slurmrestapi_dbv0_0_37_job_mcs:slurmrestapi_dbv0_0_37_job_mcs(),
       'nodes' => binary(),
       'partition' => binary(),
       'priority' => integer(),
       'qos' => binary(),
       'required' => slurmrestapi_dbv0_0_37_job_required:slurmrestapi_dbv0_0_37_job_required(),
       'kill_request_user' => binary(),
       'reservation' => slurmrestapi_dbv0_0_37_job_reservation:slurmrestapi_dbv0_0_37_job_reservation(),
       'state' => slurmrestapi_dbv0_0_37_job_state:slurmrestapi_dbv0_0_37_job_state(),
       'steps' => list(),
       'tres' => slurmrestapi_dbv0_0_37_job_tres:slurmrestapi_dbv0_0_37_job_tres(),
       'user' => binary(),
       'wckey' => slurmrestapi_dbv0_0_37_job_wckey:slurmrestapi_dbv0_0_37_job_wckey(),
       'working_directory' => binary()
     }.

encode(#{ 'account' := Account,
          'comment' := Comment,
          'allocation_nodes' := AllocationNodes,
          'array' := Array,
          'time' := Time,
          'association' := Association,
          'cluster' := Cluster,
          'constraints' := Constraints,
          'derived_exit_code' := DerivedExitCode,
          'exit_code' := ExitCode,
          'flags' := Flags,
          'group' := Group,
          'het' := Het,
          'job_id' := JobId,
          'name' := Name,
          'mcs' := Mcs,
          'nodes' := Nodes,
          'partition' := Partition,
          'priority' := Priority,
          'qos' := Qos,
          'required' := Required,
          'kill_request_user' := KillRequestUser,
          'reservation' := Reservation,
          'state' := State,
          'steps' := Steps,
          'tres' := Tres,
          'user' := User,
          'wckey' := Wckey,
          'working_directory' := WorkingDirectory
        }) ->
    #{ 'account' => Account,
       'comment' => Comment,
       'allocation_nodes' => AllocationNodes,
       'array' => Array,
       'time' => Time,
       'association' => Association,
       'cluster' => Cluster,
       'constraints' => Constraints,
       'derived_exit_code' => DerivedExitCode,
       'exit_code' => ExitCode,
       'flags' => Flags,
       'group' => Group,
       'het' => Het,
       'job_id' => JobId,
       'name' => Name,
       'mcs' => Mcs,
       'nodes' => Nodes,
       'partition' => Partition,
       'priority' => Priority,
       'qos' => Qos,
       'required' => Required,
       'kill_request_user' => KillRequestUser,
       'reservation' => Reservation,
       'state' => State,
       'steps' => Steps,
       'tres' => Tres,
       'user' => User,
       'wckey' => Wckey,
       'working_directory' => WorkingDirectory
     }.
