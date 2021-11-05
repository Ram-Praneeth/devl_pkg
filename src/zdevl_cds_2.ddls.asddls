@AbapCatalog.sqlViewName: 'ZDEVL_CDS_2V'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'test2'
define view ZDEVL_CDS_2 as select from zdevl_cds_1 {
key itemid,
 one / zero as inf
}
