-module(slurmrestapi_v0_0_39_meta).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_meta/0]).

-type slurmrestapi_v0_0_39_meta() ::
    #{ 'plugin' => slurmrestapi_dbv0_0_39_meta_plugin:slurmrestapi_dbv0_0_39_meta_plugin(),
       'Slurm' => slurmrestapi_dbv0_0_39_meta_slurm:slurmrestapi_dbv0_0_39_meta_slurm()
     }.

encode(#{ 'plugin' := Plugin,
          'Slurm' := Slurm
        }) ->
    #{ 'plugin' => Plugin,
       'Slurm' => Slurm
     }.
