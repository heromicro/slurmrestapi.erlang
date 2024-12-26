-module(slurmrestapi_dbv0_0_39_meta_slurm).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_39_meta_slurm/0]).

-type slurmrestapi_dbv0_0_39_meta_slurm() ::
    #{ 'version' => slurmrestapi_dbv0_0_39_meta_slurm_version:slurmrestapi_dbv0_0_39_meta_slurm_version(),
       'release' => binary()
     }.

encode(#{ 'version' := Version,
          'release' := Release
        }) ->
    #{ 'version' => Version,
       'release' => Release
     }.
