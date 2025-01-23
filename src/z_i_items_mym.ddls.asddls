@AbapCatalog.sqlViewName: 'ZDV_ITEMS_MYM'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'itmes ventas'
@Metadata.ignorePropagatedAnnotations: true
define root view z_i_items_mym as select from ztitems_mym
{
   key id           as Id,
   name             as Name,
   description      as Description,
   releasedate      as Releasedate,
   discontinueddate as Discontinueddate,
   price            as Price,
   height           as Height,
   widht            as Widht,
   depth            as Depth,
   quanity          as Quanity,
   unitofmeausere   as Unitofmeausere
}
