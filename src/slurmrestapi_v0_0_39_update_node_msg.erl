-module(slurmrestapi_v0_0_39_update_node_msg).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_update_node_msg/0]).

-type slurmrestapi_v0_0_39_update_node_msg() ::
    #{ 'comment' => binary(),
       'cpu_bind' => integer(),
       'extra' => binary(),
       'features' => list(),
       'features_act' => list(),
       'gres' => binary(),
       'address' => list(),
       'hostname' => list(),
       'name' => list(),
       'state' => list(),
       'reason' => binary(),
       'reason_uid' => binary(),
       'resume_after' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val(),
       'weight' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val()
     }.

encode(#{ 'comment' := Comment,
          'cpu_bind' := CpuBind,
          'extra' := Extra,
          'features' := Features,
          'features_act' := FeaturesAct,
          'gres' := Gres,
          'address' := Address,
          'hostname' := Hostname,
          'name' := Name,
          'state' := State,
          'reason' := Reason,
          'reason_uid' := ReasonUid,
          'resume_after' := ResumeAfter,
          'weight' := Weight
        }) ->
    #{ 'comment' => Comment,
       'cpu_bind' => CpuBind,
       'extra' => Extra,
       'features' => Features,
       'features_act' => FeaturesAct,
       'gres' => Gres,
       'address' => Address,
       'hostname' => Hostname,
       'name' => Name,
       'state' => State,
       'reason' => Reason,
       'reason_uid' => ReasonUid,
       'resume_after' => ResumeAfter,
       'weight' => Weight
     }.
