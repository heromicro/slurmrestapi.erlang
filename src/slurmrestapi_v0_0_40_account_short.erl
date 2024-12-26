-module(slurmrestapi_v0_0_40_account_short).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_account_short/0]).

-type slurmrestapi_v0_0_40_account_short() ::
    #{ 'description' => binary(),
       'organization' => binary()
     }.

encode(#{ 'description' := Description,
          'organization' := Organization
        }) ->
    #{ 'description' => Description,
       'organization' => Organization
     }.
