-module(slurmrestapi_v0_0_39_controller_ping).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_controller_ping/0]).

-type slurmrestapi_v0_0_39_controller_ping() ::
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
