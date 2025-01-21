@AbapCatalog.sqlViewName: 'ZDV_VENTAS_MYM'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ventas'
@Metadata.ignorePropagatedAnnotations: true
define root view z_i_ventas_mym
  as select from ztheader_mym
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
