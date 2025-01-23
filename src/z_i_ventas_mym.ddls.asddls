@AbapCatalog.sqlViewName: 'ZDV_VENTAS_MYM'
@AbapCatalog.preserveKey: true
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ventas'
@Metadata.ignorePropagatedAnnotations: true

define root view z_i_ventas_mym
  as select from ztheader_mym
//      association [1..*] to z_i_items_mym as _Items
//        on $projection.id = _Items.Id

{

  key id            , 
     email         ,
     firstname     ,
     lastname      ,
     country       ,
     createon      ,
     delivereddate ,
     orderstatus   ,
     imageurl      
     
     }
