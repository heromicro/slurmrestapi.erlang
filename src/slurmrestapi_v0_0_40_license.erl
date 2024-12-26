-module(slurmrestapi_v0_0_40_license).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_license/0]).

-type slurmrestapi_v0_0_40_license() ::
    #{ 'LicenseName' => binary(),
       'Total' => integer(),
       'Used' => integer(),
       'Free' => integer(),
       'Remote' => boolean(),
       'Reserved' => integer(),
       'LastConsumed' => integer(),
       'LastDeficit' => integer(),
       'LastUpdate' => integer()
     }.

encode(#{ 'LicenseName' := LicenseName,
          'Total' := Total,
          'Used' := Used,
          'Free' := Free,
          'Remote' := Remote,
          'Reserved' := Reserved,
          'LastConsumed' := LastConsumed,
          'LastDeficit' := LastDeficit,
          'LastUpdate' := LastUpdate
        }) ->
    #{ 'LicenseName' => LicenseName,
       'Total' => Total,
       'Used' => Used,
       'Free' => Free,
       'Remote' => Remote,
       'Reserved' => Reserved,
       'LastConsumed' => LastConsumed,
       'LastDeficit' => LastDeficit,
       'LastUpdate' => LastUpdate
     }.
