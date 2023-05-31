-module(slurmrestapi_dbv0_0_37_coordinator_info).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_coordinator_info/0]).

-type slurmrestapi_dbv0_0_37_coordinator_info() ::
    #{ 'name' => binary(),
       'direct' => integer()
     }.

encode(#{ 'name' := Name,
          'direct' := Direct
        }) ->
    #{ 'name' => Name,
       'direct' => Direct
     }.
