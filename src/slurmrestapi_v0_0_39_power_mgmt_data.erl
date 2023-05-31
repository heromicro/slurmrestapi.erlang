-module(slurmrestapi_v0_0_39_power_mgmt_data).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_power_mgmt_data/0]).

-type slurmrestapi_v0_0_39_power_mgmt_data() ::
    #{ 'maximum_watts' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val(),
       'current_watts' => integer(),
       'total_energy' => integer(),
       'new_maximum_watts' => integer(),
       'peak_watts' => integer(),
       'lowest_watts' => integer(),
       'new_job_time' => integer(),
       'state' => integer(),
       'time_start_day' => integer()
     }.

encode(#{ 'maximum_watts' := MaximumWatts,
          'current_watts' := CurrentWatts,
          'total_energy' := TotalEnergy,
          'new_maximum_watts' := NewMaximumWatts,
          'peak_watts' := PeakWatts,
          'lowest_watts' := LowestWatts,
          'new_job_time' := NewJobTime,
          'state' := State,
          'time_start_day' := TimeStartDay
        }) ->
    #{ 'maximum_watts' => MaximumWatts,
       'current_watts' => CurrentWatts,
       'total_energy' => TotalEnergy,
       'new_maximum_watts' => NewMaximumWatts,
       'peak_watts' => PeakWatts,
       'lowest_watts' => LowestWatts,
       'new_job_time' => NewJobTime,
       'state' => State,
       'time_start_day' => TimeStartDay
     }.
