
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ventas'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity z_c_ventas_mym
  as projection on z_i_ventas_mym
{
  key id            as Id,
      email         as Email,
      firstname     as Firstname,
      lastname      as Lastname,
      country       as Country,
      createon      as Createon,
      delivereddate as Delivereddate,
      orderstatus   as Orderstatus,
      imageurl      as Imageurl
}
