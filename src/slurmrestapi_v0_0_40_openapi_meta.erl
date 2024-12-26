-module(slurmrestapi_v0_0_40_openapi_meta).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_openapi_meta/0]).

-type slurmrestapi_v0_0_40_openapi_meta() ::
    #{ 'plugin' => slurmrestapi_v0_0_40_openapi_meta_plugin:slurmrestapi_v0_0_40_openapi_meta_plugin(),
       'client' => slurmrestapi_v0_0_40_openapi_meta_client:slurmrestapi_v0_0_40_openapi_meta_client(),
       'command' => list(),
       'slurm' => slurmrestapi_v0_0_40_openapi_meta_slurm:slurmrestapi_v0_0_40_openapi_meta_slurm()
     }.

encode(#{ 'plugin' := Plugin,
          'client' := Client,
          'command' := Command,
          'slurm' := Slurm
        }) ->
    #{ 'plugin' => Plugin,
       'client' => Client,
       'command' => Command,
       'slurm' => Slurm
     }.
