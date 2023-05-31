-module(slurmrestapi_dbv0_0_37_user_associations).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_user_associations/0]).

-type slurmrestapi_dbv0_0_37_user_associations() ::
    #{ 'root' => slurmrestapi_dbv0_0_37_association_short_info:slurmrestapi_dbv0_0_37_association_short_info()
     }.

encode(#{ 'root' := Root
        }) ->
    #{ 'root' => Root
     }.
