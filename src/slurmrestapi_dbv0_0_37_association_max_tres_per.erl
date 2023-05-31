-module(slurmrestapi_dbv0_0_37_association_max_tres_per).

-export([encode/1]).

-export_type([slurmrestapi_dbv0_0_37_association_max_tres_per/0]).

-type slurmrestapi_dbv0_0_37_association_max_tres_per() ::
    #{ 'job' => list(),
       'node' => list()
     }.

encode(#{ 'job' := Job,
          'node' := Node
        }) ->
    #{ 'job' => Job,
       'node' => Node
     }.
