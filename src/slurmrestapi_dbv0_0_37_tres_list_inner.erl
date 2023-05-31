-module(slurmrestapi_dbv0_0_37_tres_list_inner).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_tres_list_inner/0]).

-type slurmrestapi_dbv0_0_37_tres_list_inner() ::
    #{ 'type' => binary(),
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
