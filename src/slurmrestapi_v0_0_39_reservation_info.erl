-module(slurmrestapi_v0_0_39_reservation_info).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_reservation_info/0]).

-type slurmrestapi_v0_0_39_reservation_info() ::
    #{ 'accounts' => binary(),
       'burst_buffer' => binary(),
       'core_count' => integer(),
       'core_specializations' => list(),
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
       'purge_completed' => slurmrestapi_v0_0_39_reservation_info_purge_completed:slurmrestapi_v0_0_39_reservation_info_purge_completed(),
       'start_time' => integer(),
       'watts' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val(),
       'tres' => binary(),
       'users' => binary()
     }.

encode(#{ 'accounts' := Accounts,
          'burst_buffer' := BurstBuffer,
          'core_count' := CoreCount,
          'core_specializations' := CoreSpecializations,
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
       'core_specializations' => CoreSpecializations,
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
