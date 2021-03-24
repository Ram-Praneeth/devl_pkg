@AbapCatalog.sqlViewName: 'ZDEVL_FLI_AS1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Flight Asso. 2'
define view zdevl_fli_asso1 as select from zdevl_fli_asso {
    key BookingUuid,
    ParentUuid,
    BookingId,
    BookingDate,
    customer_id,
    CarrierId,
    ConnectionId,
    FlightDate,
    FlightPrice,
    CurrencyCode,
    BookingStatus,
    /* Associations */
    _trav
}
