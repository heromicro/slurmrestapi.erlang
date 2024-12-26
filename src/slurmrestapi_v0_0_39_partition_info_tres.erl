-module(slurmrestapi_v0_0_39_partition_info_tres).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_39_partition_info_tres/0]).

-type slurmrestapi_v0_0_39_partition_info_tres() ::
    #{ 'billing_weights' => binary(),
       'configured' => binary()
     }.

encode(#{ 'billing_weights' := BillingWeights,
          'configured' := Configured
        }) ->
    #{ 'billing_weights' => BillingWeights,
       'configured' => Configured
     }.
