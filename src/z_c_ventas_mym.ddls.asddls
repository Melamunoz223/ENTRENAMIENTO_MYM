
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ventas'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.representativeKey: 'Id'
define root view entity z_c_ventas_mym
  as projection on z_i_ventas_mym
    association [1..*] to z_c_items_mym as _Items
        on $projection.Id = _Items.Id
{
  key id            as Id,
      email         as Email,
      firstname     as Firstname,
      lastname      as Lastname,
      country       as Country,
      createon      as Createon,
      delivereddate as Delivereddate,
      orderstatus   as Orderstatus,
      imageurl      as Imageurl,
      _Items
}
