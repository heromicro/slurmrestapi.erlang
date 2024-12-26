-module(slurmrestapi_v0_0_40_tres).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_tres/0]).

-type slurmrestapi_v0_0_40_tres() ::
    #{ 'type' := binary(),
       'name' => binary(),
       'id' => integer(),
       'count' => integer()
     }.

encode(#{ 'type' := Type,
          'name' := Name,
          'id' := Id,
          'count' := Count
        }) ->
    #{ 'type' => Type,
       'name' => Name,
       'id' => Id,
       'count' => Count
     }.
