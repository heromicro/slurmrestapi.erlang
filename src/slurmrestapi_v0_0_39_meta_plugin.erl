-module(slurmrestapi_v0_0_39_meta_plugin).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_meta_plugin/0]).

-type slurmrestapi_v0_0_39_meta_plugin() ::
    #{ 'type' => binary(),
       'name' => binary()
     }.

encode(#{ 'type' := Type,
          'name' := Name
        }) ->
    #{ 'type' => Type,
       'name' => Name
     }.
