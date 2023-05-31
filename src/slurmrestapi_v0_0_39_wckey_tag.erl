-module(slurmrestapi_v0_0_39_wckey_tag).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_wckey_tag/0]).

-type slurmrestapi_v0_0_39_wckey_tag() ::
    #{ 'wckey' => binary(),
       'flags' => list()
     }.

encode(#{ 'wckey' := Wckey,
          'flags' := Flags
        }) ->
    #{ 'wckey' => Wckey,
       'flags' => Flags
     }.
