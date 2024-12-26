-module(slurmrestapi_v0_0_40_openapi_meta_slurm).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_openapi_meta_slurm/0]).

-type slurmrestapi_v0_0_40_openapi_meta_slurm() ::
    #{ 'version' => slurmrestapi_v0_0_40_openapi_meta_slurm_version:slurmrestapi_v0_0_40_openapi_meta_slurm_version(),
       'release' => binary(),
       'cluster' => binary()
     }.

encode(#{ 'version' := Version,
          'release' := Release,
          'cluster' := Cluster
        }) ->
    #{ 'version' => Version,
       'release' => Release,
       'cluster' => Cluster
     }.
