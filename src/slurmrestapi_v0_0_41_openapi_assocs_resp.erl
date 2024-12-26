-module(slurmrestapi_v0_0_41_openapi_assocs_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_assocs_resp/0]).

-type slurmrestapi_v0_0_41_openapi_assocs_resp() ::
    #{ 'associations' := list(),
       'meta' => slurmrestapi_v0_0_41_openapi_shares_resp_meta:slurmrestapi_v0_0_41_openapi_shares_resp_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'associations' := Associations,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'associations' => Associations,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
