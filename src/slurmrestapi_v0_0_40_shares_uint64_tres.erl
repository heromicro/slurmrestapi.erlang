-module(slurmrestapi_v0_0_40_shares_uint64_tres).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_shares_uint64_tres/0]).

-type slurmrestapi_v0_0_40_shares_uint64_tres() ::
    #{ 'name' => binary(),
       'value' => slurmrestapi_v0_0_40_uint64_no_val:slurmrestapi_v0_0_40_uint64_no_val()
     }.

encode(#{ 'name' := Name,
          'value' := Value
        }) ->
    #{ 'name' => Name,
       'value' => Value
     }.
