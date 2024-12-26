-module(slurmrestapi_v0_0_41_openapi_licenses_resp_licenses_inner).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_licenses_resp_licenses_inner/0]).

-type slurmrestapi_v0_0_41_openapi_licenses_resp_licenses_inner() ::
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
