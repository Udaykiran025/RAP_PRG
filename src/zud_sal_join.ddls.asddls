@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds view for joining of two tables'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZUD_SAL_JOIN
  as select from zud_vbak as a
    join         zud_vbap as b on a.vbeln = b.vbeln
{
  a.vbeln,
  a.ernam,
  a.erdat,
  a.vbtyp,
  b.posnr,
  case
     when b.posnr = '000001' then 'New York'
     when b.posnr = '000002' then 'Los Angels'
     else 'Dallas'
  end              as Plant,
  upper('india')   as Plant1,
  lower('AMERICA') as Plant2,
  b.matnr


}
