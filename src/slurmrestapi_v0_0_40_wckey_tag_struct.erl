-module(slurmrestapi_v0_0_40_wckey_tag_struct).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_wckey_tag_struct/0]).

-type slurmrestapi_v0_0_40_wckey_tag_struct() ::
    #{ 'wckey' := binary(),
       'flags' := list()
     }.

encode(#{ 'wckey' := Wckey,
          'flags' := Flags
        }) ->
    #{ 'wckey' => Wckey,
       'flags' => Flags
     }.
