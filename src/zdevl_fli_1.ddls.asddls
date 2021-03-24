@AbapCatalog.sqlViewName: 'ZDEVL_FLI_1C'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'TRAVEL BOOKING CDS'
define view Zdevl_Fli_1 as select from /dmo/a_booking_d as book
inner join /dmo/a_travel_d as trav
    on book.customer_id = trav.customer_id {
    key booking_uuid as BookingUuid,
        book.parent_uuid as ParentUuid,
        book.booking_id as BookingId,
        book.booking_date as BookingDate,
        book.customer_id as CustomerId,
        book.carrier_id as CarrierId,
        book.connection_id as ConnectionId,
        book.flight_date as FlightDate,
        book.flight_price as FlightPrice,
        book.currency_code as CurrencyCode,
        book.booking_status as BookingStatus,
        trav.travel_id as TravelId,
        trav.agency_id as AgencyId,
        trav.begin_date as BeginDate,
        trav.end_date as EndDate,
        trav.booking_fee as BookingFee,
        trav.total_price as TotalPrice,
        trav.currency_code as travCurrencyCode,
        trav.description as Description,
        trav.overall_status as OverallStatus

}
