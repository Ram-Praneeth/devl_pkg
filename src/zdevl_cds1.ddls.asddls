@AbapCatalog.sqlViewName: 'ZDEVL_SQL1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'test cds1'
 
define view zdevl_cds1
  as select from /dmo/booking
{
  key travel_id,
  key booking_id,
      booking_date,
      customer_id,
       cast('USD' as abap.cuky) as currency,
       cast('M3' as abap.unit( 3 ) ) as capacity
       

}


