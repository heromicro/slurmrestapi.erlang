-module(slurmrestapi_v0_0_40_process_exit_code_verbose_signal).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_process_exit_code_verbose_signal/0]).

-type slurmrestapi_v0_0_40_process_exit_code_verbose_signal() ::
    #{ 'id' => slurmrestapi_v0_0_40_uint16_no_val:slurmrestapi_v0_0_40_uint16_no_val(),
       'name' => binary()
     }.

encode(#{ 'id' := Id,
          'name' := Name
        }) ->
    #{ 'id' => Id,
       'name' => Name
     }.
