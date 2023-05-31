-module(slurmrestapi_dbv0_0_37_association_usage).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_association_usage/0]).

-type slurmrestapi_dbv0_0_37_association_usage() ::
    #{ 'accrue_job_count' => integer(),
       'group_used_wallclock' => integer(),
       'fairshare_factor' => integer(),
       'fairshare_shares' => integer(),
       'normalized_priority' => integer(),
       'normalized_shares' => integer(),
       'effective_normalized_usage' => integer(),
       'raw_usage' => integer(),
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
          'raw_usage' := RawUsage,
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
       'raw_usage' => RawUsage,
       'job_count' => JobCount,
       'fairshare_level' => FairshareLevel
     }.
