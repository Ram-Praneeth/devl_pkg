@AbapCatalog.sqlViewName: 'ZDEVL_SQL_3'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS 3'
define view zdevl_cds_3
  as select from /dmo/airport
{
  key airport_id               as AirportId,
      name                     as Name,
      city                     as City,
      country                  as Country,
      $session.client          as client,
     cast( $session.system_date as abap.dats )  as sys_date,
      $session.system_language as sys_lang,
      $session.user            as sys_user,
      $session.user_date       as sys_udate,
      $session.user_timezone   as sys_tz
}
