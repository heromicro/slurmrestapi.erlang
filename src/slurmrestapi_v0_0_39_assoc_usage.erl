-module(slurmrestapi_v0_0_39_assoc_usage).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_assoc_usage/0]).

-type slurmrestapi_v0_0_39_assoc_usage() ::
    #{ 'accrue_job_count' => integer(),
       'group_used_wallclock' => float(),
       'fairshare_factor' => float(),
       'fairshare_shares' => integer(),
       'normalized_priority' => float(),
       'normalized_shares' => float(),
       'effective_normalized_usage' => integer(),
       'normalized_usage' => integer(),
       'raw_usage' => integer(),
       'active_jobs' => integer(),
       'job_count' => integer(),
       'fairshare_level' => integer()
     }.

encode(#{ 'accrue_job_count' := AccrueJobCount,
          'group_used_wallclock' := GroupUsedWallclock,
          'fairshare_factor' := FairshareFactor,
          'fairshare_shares' := FairshareShares,
          'normalized_priority' := NormalizedPriority,
          'normalized_shares' := NormalizedShares,
          'effective_normalized_usage' := EffectiveNormalizedUsage,
          'normalized_usage' := NormalizedUsage,
          'raw_usage' := RawUsage,
          'active_jobs' := ActiveJobs,
          'job_count' := JobCount,
          'fairshare_level' := FairshareLevel
        }) ->
    #{ 'accrue_job_count' => AccrueJobCount,
       'group_used_wallclock' => GroupUsedWallclock,
       'fairshare_factor' => FairshareFactor,
       'fairshare_shares' => FairshareShares,
       'normalized_priority' => NormalizedPriority,
       'normalized_shares' => NormalizedShares,
       'effective_normalized_usage' => EffectiveNormalizedUsage,
       'normalized_usage' => NormalizedUsage,
       'raw_usage' => RawUsage,
       'active_jobs' => ActiveJobs,
       'job_count' => JobCount,
       'fairshare_level' => FairshareLevel
     }.
