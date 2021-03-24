@AbapCatalog.sqlViewName: 'ZDEVL_TABFS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS'
define view zdevl_tabf as select from zdevl_cds_tabf {
    name,
    city,
    country,
    count_nm,
    c_date
}
