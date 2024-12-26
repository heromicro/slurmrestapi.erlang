-module(slurmrestapi_v0_0_41_openapi_diag_resp_statistics_job_states_ts).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_41_openapi_diag_resp_statistics_job_states_ts/0]).

-type slurmrestapi_v0_0_41_openapi_diag_resp_statistics_job_states_ts() ::
    #{ 'set' => boolean(),
       'infinite' => boolean(),
       'number' => integer()
     }.

encode(#{ 'set' := Set,
          'infinite' := Infinite,
          'number' := Number
        }) ->
    #{ 'set' => Set,
       'infinite' => Infinite,
       'number' => Number
     }.
