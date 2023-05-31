-module(slurmrestapi_v0_0_39_acct_gather_energy).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_acct_gather_energy/0]).

-type slurmrestapi_v0_0_39_acct_gather_energy() ::
    #{ 'average_watts' => integer(),
       'base_consumed_energy' => integer(),
       'consumed_energy' => integer(),
       'current_watts' => integer(),
       'previous_consumed_energy' => integer(),
       'last_collected' => integer()
     }.

encode(#{ 'average_watts' := AverageWatts,
          'base_consumed_energy' := BaseConsumedEnergy,
          'consumed_energy' := ConsumedEnergy,
          'current_watts' := CurrentWatts,
          'previous_consumed_energy' := PreviousConsumedEnergy,
          'last_collected' := LastCollected
        }) ->
    #{ 'average_watts' => AverageWatts,
       'base_consumed_energy' => BaseConsumedEnergy,
       'consumed_energy' => ConsumedEnergy,
       'current_watts' => CurrentWatts,
       'previous_consumed_energy' => PreviousConsumedEnergy,
       'last_collected' => LastCollected
     }.
