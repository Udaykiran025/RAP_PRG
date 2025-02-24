@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vendor Data'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZUD_VENDOR_CDS
  as select from zud_vendor
{
  key vendor_id    as Vendor_ID,
      name         as Name,
      country      as Country,
      city         as City,
      postal_code  as Postal_Code,
      street       as Street,
      phone_number as Phone_Number,
      email        as Email
}
