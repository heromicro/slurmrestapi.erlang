-module(slurmrestapi_v0_0_40_kill_jobs_msg).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_kill_jobs_msg/0]).

-type slurmrestapi_v0_0_40_kill_jobs_msg() ::
    #{ 'account' => binary(),
       'flags' => list(),
       'job_name' => binary(),
       'jobs' => list(),
       'partition' => binary(),
       'qos' => binary(),
       'reservation' => binary(),
       'signal' => binary(),
       'job_state' => list(),
       'user_id' => binary(),
       'user_name' => binary(),
       'wckey' => binary(),
       'nodes' => list()
     }.

encode(#{ 'account' := Account,
          'flags' := Flags,
          'job_name' := JobName,
          'jobs' := Jobs,
          'partition' := Partition,
          'qos' := Qos,
          'reservation' := Reservation,
          'signal' := Signal,
          'job_state' := JobState,
          'user_id' := UserId,
          'user_name' := UserName,
          'wckey' := Wckey,
          'nodes' := Nodes
        }) ->
    #{ 'account' => Account,
       'flags' => Flags,
       'job_name' => JobName,
       'jobs' => Jobs,
       'partition' => Partition,
       'qos' => Qos,
       'reservation' => Reservation,
       'signal' => Signal,
       'job_state' => JobState,
       'user_id' => UserId,
       'user_name' => UserName,
       'wckey' => Wckey,
       'nodes' => Nodes
     }.
