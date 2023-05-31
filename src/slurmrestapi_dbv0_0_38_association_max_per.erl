-module(slurmrestapi_dbv0_0_38_association_max_per).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_38_association_max_per/0]).

-type slurmrestapi_dbv0_0_38_association_max_per() ::
    #{ 'account' => slurmrestapi_dbv0_0_38_association_max_per_account:slurmrestapi_dbv0_0_38_association_max_per_account()
     }.

encode(#{ 'account' := Account
        }) ->
    #{ 'account' => Account
     }.
