-module(slurmrestapi_v0_0_41_openapi_wckey_removed_resp).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_wckey_removed_resp/0]).

-type slurmrestapi_v0_0_41_openapi_wckey_removed_resp() ::
    #{ 'deleted_wckeys' := list(),
       'meta' => slurmrestapi_v0_0_41_openapi_shares_resp_meta:slurmrestapi_v0_0_41_openapi_shares_resp_meta(),
       'errors' => list(),
       'warnings' => list()
     }.

encode(#{ 'deleted_wckeys' := DeletedWckeys,
          'meta' := Meta,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'deleted_wckeys' => DeletedWckeys,
       'meta' => Meta,
       'errors' => Errors,
       'warnings' => Warnings
     }.
