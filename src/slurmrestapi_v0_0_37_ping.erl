-module(slurmrestapi_v0_0_37_ping).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_37_ping/0]).

-type slurmrestapi_v0_0_37_ping() ::
    #{ 'hostname' => binary(),
       'ping' => binary(),
       'mode' => binary(),
       'status' => integer()
     }.

encode(#{ 'hostname' := Hostname,
          'ping' := Ping,
          'mode' := Mode,
          'status' := Status
        }) ->
    #{ 'hostname' => Hostname,
       'ping' => Ping,
       'mode' => Mode,
       'status' => Status
     }.
