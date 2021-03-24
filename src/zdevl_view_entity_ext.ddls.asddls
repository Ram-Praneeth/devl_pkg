@AbapCatalog.sqlViewName: 'ZDEVL_VIEW'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS View Entity Extension'
define view Zdevl_View_Entity_Ext as select from zprod_hdr {
    key itemid
}
