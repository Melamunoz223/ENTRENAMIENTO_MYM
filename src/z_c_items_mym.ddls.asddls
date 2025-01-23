@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'items'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity z_c_items_mym
 as projection on z_i_items_mym
{
key Id,
Name,
Description,
Releasedate,
Discontinueddate,
Price,
 @Semantics.quantity.unitOfMeasure : 'Unitofmeausere'
Height,
 @Semantics.quantity.unitOfMeasure : 'unitofmeausere'
Widht,
Depth,
Quanity,
Unitofmeausere
}
