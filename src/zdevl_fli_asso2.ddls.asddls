@AbapCatalog.sqlViewName: 'ZDEVL_FLI_AS2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Flight Asso. 2'
define view Zdevl_Fli_Asso2
  as select from zdevl_fli_asso1     as _asso1
    inner join   /DMO/I_Connection_R as _conn on _asso1.ConnectionId = _conn.ConnectionID
{
  key _conn.AirlineID,
  key _conn.ConnectionID,
  key _asso1.BookingUuid,
      _conn.DepartureAirport,
      _conn.DestinationAirport,
      _conn.DepartureTime,
      _conn.ArrivalTime,
      _conn.Distance,
      _conn.DistanceUnit,
      _asso1.ParentUuid,
      _asso1.BookingId,
      _asso1.BookingDate,
      _asso1.customer_id,
      _asso1.CarrierId,
      _asso1.FlightDate,
      _asso1.FlightPrice,
      _asso1.CurrencyCode,
      _asso1.BookingStatus,
      /* Associations */
      _conn._Airline,
      _conn._Flight,
      _asso1._trav
}
