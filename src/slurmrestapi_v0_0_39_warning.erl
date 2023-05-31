-module(slurmrestapi_v0_0_39_warning).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_warning/0]).

-type slurmrestapi_v0_0_39_warning() ::
    #{ 'warning' => binary(),
       'source' => binary(),
       'description' => binary()
     }.

encode(#{ 'warning' := Warning,
          'source' := Source,
          'description' := Description
        }) ->
    #{ 'warning' => Warning,
       'source' => Source,
       'description' => Description
     }.
