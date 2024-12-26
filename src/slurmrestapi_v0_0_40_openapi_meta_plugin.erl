-module(slurmrestapi_v0_0_40_openapi_meta_plugin).

-export([encode/1]).

-export_type([slurmrestapi_v0_0_40_openapi_meta_plugin/0]).

-type slurmrestapi_v0_0_40_openapi_meta_plugin() ::
    #{ 'type' => binary(),
       'name' => binary(),
       'data_parser' => binary(),
       'accounting_storage' => binary()
     }.

encode(#{ 'type' := Type,
          'name' := Name,
          'data_parser' := DataParser,
          'accounting_storage' := AccountingStorage
        }) ->
    #{ 'type' => Type,
       'name' => Name,
       'data_parser' => DataParser,
       'accounting_storage' => AccountingStorage
     }.
