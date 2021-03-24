@AbapCatalog.sqlViewName: 'ZDEVL_FLI_AS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Flight Asso.'
define view zdevl_fli_asso as select from /dmo/a_booking_d as _book
association [1..*] to /dmo/a_travel_d as _trav
    on $projection.customer_id = _trav.customer_id {
    key _book.booking_uuid as BookingUuid,
     _book.parent_uuid as ParentUuid,
     _book.booking_id as BookingId,
     _book.booking_date as BookingDate,
     _book.customer_id,
     _book.carrier_id as CarrierId,
     _book.connection_id as ConnectionId,
     _book.flight_date as FlightDate,
     _book.flight_price as FlightPrice,
     _book.currency_code as CurrencyCode,
     _book.booking_status as BookingStatus,

    _trav // Make association public
}
