@EndUserText.label: 'CDS Table function 1'
@ClientHandling.type: #CLIENT_INDEPENDENT
define table function Zdevl_Cds_Tabf1
  //with parameters parameter_name : parameter_type
returns
{
      // Table function for /dmo/flight
  key carrier_id     : /dmo/carrier_id;
  key connection_id  : /dmo/connection_id;
  key flight_date    : /dmo/flight_date;
      valid_period   : abap.char( 15 );
      seats_max      : /dmo/plane_seats_max;
      seats_occupied : /dmo/plane_seats_occupied;
      valid_seats    : abap.char( 15 );
      c_user         : abap.char( 20 );

}
implemented by method
  zcl_tabf1=>get_flight;