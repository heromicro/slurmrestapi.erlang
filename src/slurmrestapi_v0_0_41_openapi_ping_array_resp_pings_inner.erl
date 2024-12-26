-module(slurmrestapi_v0_0_41_openapi_ping_array_resp_pings_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_ping_array_resp_pings_inner/0]).

-type slurmrestapi_v0_0_41_openapi_ping_array_resp_pings_inner() ::
    #{ 'hostname' => binary(),
       'pinged' => binary(),
       'latency' => integer(),
       'mode' => binary()
     }.

encode(#{ 'hostname' := Hostname,
          'pinged' := Pinged,
          'latency' := Latency,
          'mode' := Mode
        }) ->
    #{ 'hostname' => Hostname,
       'pinged' => Pinged,
       'latency' => Latency,
       'mode' => Mode
     }.
