-module(slurmrestapi_v0_0_39_partition_info_tres).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_partition_info_tres/0]).

-type slurmrestapi_v0_0_39_partition_info_tres() ::
    #{ 'configured' => binary()
     }.

encode(#{ 'configured' := Configured
        }) ->
    #{ 'configured' => Configured
     }.
