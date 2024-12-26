-module(slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_association).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_association/0]).

-type slurmrestapi_v0_0_41_openapi_slurmdbd_jobs_resp_jobs_inner_association() ::
    #{ 'account' => binary(),
       'cluster' => binary(),
       'partition' => binary(),
       'user' := binary(),
       'id' => integer()
     }.

encode(#{ 'account' := Account,
          'cluster' := Cluster,
          'partition' := Partition,
          'user' := User,
          'id' := Id
        }) ->
    #{ 'account' => Account,
       'cluster' => Cluster,
       'partition' => Partition,
       'user' => User,
       'id' => Id
     }.
