-module(slurmrestapi_v0_0_40_openapi_meta_client).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_openapi_meta_client/0]).

-type slurmrestapi_v0_0_40_openapi_meta_client() ::
    #{ 'source' => binary(),
       'user' => binary(),
       'group' => binary()
     }.

encode(#{ 'source' := Source,
          'user' := User,
          'group' := Group
        }) ->
    #{ 'source' => Source,
       'user' => User,
       'group' => Group
     }.
