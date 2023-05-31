-module(slurmrestapi_v0_0_38_meta_slurm).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_38_meta_slurm/0]).

-type slurmrestapi_v0_0_38_meta_slurm() ::
    #{ 'version' => slurmrestapi_v0_0_38_meta_slurm_version:slurmrestapi_v0_0_38_meta_slurm_version(),
       'release' => binary()
     }.

encode(#{ 'version' := Version,
          'release' := Release
        }) ->
    #{ 'version' => Version,
       'release' => Release
     }.
