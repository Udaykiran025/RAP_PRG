@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS view using Parameters'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZUD_SAL_P
  with parameters
    p_vbtyp  : zud_vbak.vbtyp,
    P_lvbeln : zud_vbak.vbeln,
    P_hvbeln : zud_vbak.vbeln
  as select from zud_vbak
{
  key vbeln as Vbeln,
      erdat as Erdat,
      ernam as Ernam,
      audat as Audat,
      vbtyp as Vbtyp,
      auart as Auart,
      vkorg as Vkorg
}
where
      vbtyp = $parameters.p_vbtyp
  and vbeln > $parameters.P_lvbeln
  and vbeln < $parameters.P_hvbeln
