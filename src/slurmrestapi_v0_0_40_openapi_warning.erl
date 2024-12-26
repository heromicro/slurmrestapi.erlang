-module(slurmrestapi_v0_0_40_openapi_warning).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_openapi_warning/0]).

-type slurmrestapi_v0_0_40_openapi_warning() ::
    #{ 'description' => binary(),
       'source' => binary()
     }.

encode(#{ 'description' := Description,
          'source' := Source
        }) ->
    #{ 'description' => Description,
       'source' => Source
     }.
