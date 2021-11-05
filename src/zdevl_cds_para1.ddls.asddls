@AbapCatalog.sqlViewName: 'ZDEVL_CDS_PARA1S'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS parameter'
define view Zdevl_Cds_Para1
    with parameters p_carrid : /dmo/carrier_id
as select from /dmo/flight {
    key carrier_id as CarrierId,
    key connection_id as ConnectionId,
    key flight_date as FlightDate,
    price as Price,
    currency_code as CurrencyCode,
    plane_type_id as PlaneTypeId,
    seats_max as SeatsMax,
    seats_occupied as SeatsOccupied
}where carrier_id = $parameters.p_carrid
