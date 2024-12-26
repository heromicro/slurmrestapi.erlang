-module(slurmrestapi_v0_0_39_slurm_step_id).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_slurm_step_id/0]).

-type slurmrestapi_v0_0_39_slurm_step_id() ::
    #{ 'job_id' => integer(),
       'step_het_component' => integer(),
       'step_id' => binary()
     }.

encode(#{ 'job_id' := JobId,
          'step_het_component' := StepHetComponent,
          'step_id' := StepId
        }) ->
    #{ 'job_id' => JobId,
       'step_het_component' => StepHetComponent,
       'step_id' => StepId
     }.
