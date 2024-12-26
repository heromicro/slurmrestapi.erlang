-module(slurmrestapi_v0_0_39_step_step).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_step_step/0]).

-type slurmrestapi_v0_0_39_step_step() ::
    #{ 'id' => slurmrestapi_v0_0_39_slurm_step_id:slurmrestapi_v0_0_39_slurm_step_id(),
       'name' => binary()
     }.

encode(#{ 'id' := Id,
          'name' := Name
        }) ->
    #{ 'id' => Id,
       'name' => Name
     }.
