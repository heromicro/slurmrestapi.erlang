-module(slurmrestapi_v0_0_40_openapi_slurmdbd_config_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_openapi_slurmdbd_config_resp/0]).

-type slurmrestapi_v0_0_40_openapi_slurmdbd_config_resp() ::
    #{ 'clusters' => list(),
       'tres' => list(),
       'accounts' => list(),
       'users' => list(),
       'qos' => list(),
       'wckeys' => list(),
       'associations' => list(),
       'instances' => list(),
       'meta' => slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'clusters' := Clusters,
          'tres' := Tres,
          'accounts' := Accounts,
          'users' := Users,
          'qos' := Qos,
          'wckeys' := Wckeys,
          'associations' := Associations,
          'instances' := Instances,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'clusters' => Clusters,
       'tres' => Tres,
       'accounts' => Accounts,
       'users' => Users,
       'qos' => Qos,
       'wckeys' => Wckeys,
       'associations' => Associations,
       'instances' => Instances,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
