-module(slurmrestapi_v0_0_40_openapi_instances_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_openapi_instances_resp/0]).

-type slurmrestapi_v0_0_40_openapi_instances_resp() ::
    #{ 'instances' := list(),
       'meta' => slurmrestapi_v0_0_40_openapi_meta:slurmrestapi_v0_0_40_openapi_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'instances' := Instances,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'instances' => Instances,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.