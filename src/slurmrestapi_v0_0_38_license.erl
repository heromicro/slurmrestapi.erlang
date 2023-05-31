-module(slurmrestapi_v0_0_38_license).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_38_license/0]).

-type slurmrestapi_v0_0_38_license() ::
    #{ 'LicenseName' => binary(),
       'Total' => integer(),
       'Used' => integer(),
       'Free' => integer(),
       'Reserved' => integer(),
       'Remote' => boolean()
     }.

encode(#{ 'LicenseName' := LicenseName,
          'Total' := Total,
          'Used' := Used,
          'Free' := Free,
          'Reserved' := Reserved,
          'Remote' := Remote
        }) ->
    #{ 'LicenseName' => LicenseName,
       'Total' => Total,
       'Used' => Used,
       'Free' => Free,
       'Reserved' => Reserved,
       'Remote' => Remote
     }.
