@AbapCatalog.sqlViewName: 'ZPROD_I_ITMS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Product Item Basic View'
define view ZPROD_I_ITM
  as select from zprod_item
{
  key itemid        as Itemid,
  key region        as Region,
      mfdate        as Mfdate,
      werks         as Werks,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      dmbtr         as Dmbtr,
      @Semantics.currencyCode: true
      currency_code as CurrencyCode,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      last_changed_at
}
