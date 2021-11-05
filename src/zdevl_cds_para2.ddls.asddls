@AbapCatalog.sqlViewName: 'ZDEVL_CDS_PARA2S'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS Optional Parameter'
define view ZDEVL_cds_para2
    with parameters p_carrid : /dmo/carrier_id
as select from /dmo/flight {
@Consumption.filter.mandatory: false
@Consumption.filter.selectionType: #SINGLE
    key carrier_id as CarrierId,
    key connection_id as ConnectionId,
    key flight_date as FlightDate,
    price as Price,
    currency_code as CurrencyCode,
    plane_type_id as PlaneTypeId,
    seats_max as SeatsMax,
    seats_occupied as SeatsOccupied
}where carrier_id = $parameters.p_carrid
