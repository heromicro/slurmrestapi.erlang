-module(slurmrestapi_dbv0_0_37_qos_preempt).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_qos_preempt/0]).

-type slurmrestapi_dbv0_0_37_qos_preempt() ::
    #{ 'list' => list(),
       'mode' => list(),
       'exempt_time' => integer()
     }.

encode(#{ 'list' := List,
          'mode' := Mode,
          'exempt_time' := ExemptTime
        }) ->
    #{ 'list' => List,
       'mode' => Mode,
       'exempt_time' => ExemptTime
     }.
