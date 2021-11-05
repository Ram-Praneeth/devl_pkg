@AbapCatalog.sqlViewName: 'ZDEVL_CDS_1_V'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS test'
define view zdevl_cds_1 as select from zprod_hdr {
  key itemid,
    cast( 1 as abap.fltp ) as one, 
    cast( 0 as abap.fltp) as zero
}
