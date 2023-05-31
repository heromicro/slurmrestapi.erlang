-module(slurmrestapi_v0_0_38_meta_slurm_version).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_38_meta_slurm_version/0]).

-type slurmrestapi_v0_0_38_meta_slurm_version() ::
    #{ 'major' => binary(),
       'micro' => binary(),
       'minor' => binary()
     }.

encode(#{ 'major' := Major,
          'micro' := Micro,
          'minor' := Minor
        }) ->
    #{ 'major' => Major,
       'micro' => Micro,
       'minor' => Minor
     }.
