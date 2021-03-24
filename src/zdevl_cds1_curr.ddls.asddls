@AbapCatalog.sqlViewName: 'ZDEVL_SQL1_CURR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Currency conv.'
define view zdevl_cds1_curr as select from zdevl_cds1 {
key travel_id,
key booking_id,
booking_date,
customer_id,
currency,
capacity

}
