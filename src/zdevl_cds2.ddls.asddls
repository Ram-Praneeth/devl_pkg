@AbapCatalog.sqlViewName: 'ZDEVL_SQL2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'test cds2'
define view zdevl_cds2 as select from /dmo/a_travel_d {
        key travel_uuid    , 
  travel_id   ,          
  agency_id  ,           
  customer_id ,          
  begin_date  ,   
concat(travel_id, customer_id )  as objectID,  
  end_date    ,    
  dats_days_between(begin_date,end_date) as diff_days, 
    @Semantics.amount.currencyCode : 'currency_code'
  booking_fee      ,     
  @Semantics.amount.currencyCode : 'currency_code'
  total_price ,   
  @Semantics.currencyCode: true       
  currency_code  ,       
  description ,          
  overall_status  ,
  case overall_status
  when 'O' then 'Open Vacation'
  when 'A' then 'Active Vacation'
  else overall_status
  end as status_desc
}
