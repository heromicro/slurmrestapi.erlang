-module(slurmrestapi_v0_0_37_reservation).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_37_reservation/0]).

-type slurmrestapi_v0_0_37_reservation() ::
    #{ 'accounts' => binary(),
       'burst_buffer' => binary(),
       'core_count' => integer(),
       'core_spec_cnt' => integer(),
       'end_time' => integer(),
       'features' => binary(),
       'flags' => list(),
       'groups' => binary(),
       'licenses' => binary(),
       'max_start_delay' => integer(),
       'name' => binary(),
       'node_count' => integer(),
       'node_list' => binary(),
       'partition' => binary(),
       'purge_completed' => slurmrestapi_v0_0_37_reservation_purge_completed:slurmrestapi_v0_0_37_reservation_purge_completed(),
       'start_time' => integer(),
       'watts' => integer(),
       'tres' => binary(),
       'users' => binary()
     }.

encode(#{ 'accounts' := Accounts,
          'burst_buffer' := BurstBuffer,
          'core_count' := CoreCount,
          'core_spec_cnt' := CoreSpecCnt,
          'end_time' := EndTime,
          'features' := Features,
          'flags' := Flags,
          'groups' := Groups,
          'licenses' := Licenses,
          'max_start_delay' := MaxStartDelay,
          'name' := Name,
          'node_count' := NodeCount,
          'node_list' := NodeList,
          'partition' := Partition,
          'purge_completed' := PurgeCompleted,
          'start_time' := StartTime,
          'watts' := Watts,
          'tres' := Tres,
          'users' := Users
        }) ->
    #{ 'accounts' => Accounts,
       'burst_buffer' => BurstBuffer,
       'core_count' => CoreCount,
       'core_spec_cnt' => CoreSpecCnt,
       'end_time' => EndTime,
       'features' => Features,
       'flags' => Flags,
       'groups' => Groups,
       'licenses' => Licenses,
       'max_start_delay' => MaxStartDelay,
       'name' => Name,
       'node_count' => NodeCount,
       'node_list' => NodeList,
       'partition' => Partition,
       'purge_completed' => PurgeCompleted,
       'start_time' => StartTime,
       'watts' => Watts,
       'tres' => Tres,
       'users' => Users
     }.
