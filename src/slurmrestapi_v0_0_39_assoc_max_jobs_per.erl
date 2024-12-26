-module(slurmrestapi_v0_0_39_assoc_max_jobs_per).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_assoc_max_jobs_per/0]).

-type slurmrestapi_v0_0_39_assoc_max_jobs_per() ::
    #{ 'count' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val(),
       'accruing' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val(),
       'submitted' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val(),
       'wall_clock' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val()
     }.

encode(#{ 'count' := Count,
          'accruing' := Accruing,
          'submitted' := Submitted,
          'wall_clock' := WallClock
        }) ->
    #{ 'count' => Count,
       'accruing' => Accruing,
       'submitted' => Submitted,
       'wall_clock' => WallClock
     }.
