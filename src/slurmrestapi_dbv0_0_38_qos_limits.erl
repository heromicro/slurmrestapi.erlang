-module(slurmrestapi_dbv0_0_38_qos_limits).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_qos_limits/0]).

-type slurmrestapi_dbv0_0_38_qos_limits() ::
    #{ 'factor' => integer(),
       'max' => slurmrestapi_dbv0_0_38_qos_limits_max:slurmrestapi_dbv0_0_38_qos_limits_max(),
       'min' => slurmrestapi_dbv0_0_38_qos_limits_min:slurmrestapi_dbv0_0_38_qos_limits_min()
     }.

encode(#{ 'factor' := Factor,
          'max' := Max,
          'min' := Min
        }) ->
    #{ 'factor' => Factor,
       'max' => Max,
       'min' => Min
     }.
