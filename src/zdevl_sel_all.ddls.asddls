@AbapCatalog.sqlViewName: 'ZDEVL_SEL_ALLS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'test'
define view zdevl_sel_all as select from /dmo/flight {
    *
}
