@EndUserText.label: 'CDS Table function'
@ClientHandling.type: #CLIENT_INDEPENDENT
define table function zdevl_cds_tabf
  //with parameters iv_string : abap.char( 255 )
returns
{
  name     : /dmo/airport_name;
  city     : /dmo/city;
  country  : land1;
  count_nm : abap.numc( 3 );
  c_date   : abap.datn;

}
implemented by method
  zcl_tabf=>get_travel;