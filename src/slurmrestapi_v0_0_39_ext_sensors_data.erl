-module(slurmrestapi_v0_0_39_ext_sensors_data).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_ext_sensors_data/0]).

-type slurmrestapi_v0_0_39_ext_sensors_data() ::
    #{ 'consumed_energy' => slurmrestapi_v0_0_39_uint64_no_val:slurmrestapi_v0_0_39_uint64_no_val(),
       'temperature' => slurmrestapi_v0_0_39_uint32_no_val:slurmrestapi_v0_0_39_uint32_no_val(),
       'energy_update_time' => integer(),
       'current_watts' => integer()
     }.

encode(#{ 'consumed_energy' := ConsumedEnergy,
          'temperature' := Temperature,
          'energy_update_time' := EnergyUpdateTime,
          'current_watts' := CurrentWatts
        }) ->
    #{ 'consumed_energy' => ConsumedEnergy,
       'temperature' => Temperature,
       'energy_update_time' => EnergyUpdateTime,
       'current_watts' => CurrentWatts
     }.
