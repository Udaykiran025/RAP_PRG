@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds  view for vbap table'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZUD_CD_VBAP
  as select from zud_vbap as vbap
  association to parent Zud_cd_vbak as _vbak on $projection.Vbeln = _vbak.Vbeln
{
      @UI.lineItem: [{ position: 10, label: 'Sales Document' }]
  key vbap.vbeln as Vbeln,
      @UI.lineItem: [{ position: 20 , label: 'Sales Document Item'}]
  key vbap.posnr as Posnr,
      @UI.lineItem: [{ position: 30, label: 'Sales Organisation' }]
      vbap.vkorg as Vkorg,
      @UI.lineItem: [{ position: 40, label: 'Material Number' }]
      vbap.matnr as Matnr,
      @UI.lineItem: [{ position: 50 , label: 'Short text for sales order item'}]
      vbap.arktx as Arktx,

      _vbak // Make association public
}
