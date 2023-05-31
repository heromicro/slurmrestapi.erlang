-module(slurmrestapi_v0_0_39_meta_slurm_version).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_meta_slurm_version/0]).

-type slurmrestapi_v0_0_39_meta_slurm_version() ::
    #{ 'major' => integer(),
       'micro' => integer(),
       'minor' => integer()
     }.

encode(#{ 'major' := Major,
          'micro' := Micro,
          'minor' := Minor
        }) ->
    #{ 'major' => Major,
       'micro' => Micro,
       'minor' => Minor
     }.
