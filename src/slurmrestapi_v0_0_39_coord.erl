-module(slurmrestapi_v0_0_39_coord).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_coord/0]).

-type slurmrestapi_v0_0_39_coord() ::
    #{ 'name' := binary(),
       'direct' => boolean()
     }.

encode(#{ 'name' := Name,
          'direct' := Direct
        }) ->
    #{ 'name' => Name,
       'direct' => Direct
     }.
