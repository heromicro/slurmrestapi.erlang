-module(slurmrestapi_v0_0_40_process_exit_code_verbose).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_process_exit_code_verbose/0]).

-type slurmrestapi_v0_0_40_process_exit_code_verbose() ::
    #{ 'status' => list(),
       'return_code' => slurmrestapi_v0_0_40_uint32_no_val:slurmrestapi_v0_0_40_uint32_no_val(),
       'signal' => slurmrestapi_v0_0_40_process_exit_code_verbose_signal:slurmrestapi_v0_0_40_process_exit_code_verbose_signal()
     }.

encode(#{ 'status' := Status,
          'return_code' := ReturnCode,
          'signal' := Signal
        }) ->
    #{ 'status' => Status,
       'return_code' => ReturnCode,
       'signal' => Signal
     }.
