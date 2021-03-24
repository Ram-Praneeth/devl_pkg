@AbapCatalog.sqlViewName: 'ZDEVL_SQL3'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'test cds3'
define view zdevl_cds3
  as select from zdevl_cds2
{
  key travel_uuid,
      travel_id,
      agency_id,
      customer_id,
      begin_date,
      end_date,
      diff_days,
      case
      when   diff_days <= 100 then 'Short time'
      when diff_days   > 100  then 'Long time'
      else ''
      end as diff_desc,
      @Semantics.amount.currencyCode : 'currency_code'
      booking_fee,
      @Semantics.amount.currencyCode : 'currency_code'
      total_price,
      currency_code,
      description,
      overall_status,
      status_desc
}
