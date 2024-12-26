-module(slurmrestapi_v0_0_40_shares_float128_tres).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_shares_float128_tres/0]).

-type slurmrestapi_v0_0_40_shares_float128_tres() ::
    #{ 'name' => binary(),
       'value' => integer()
     }.

encode(#{ 'name' := Name,
          'value' := Value
        }) ->
    #{ 'name' => Name,
       'value' => Value
     }.
