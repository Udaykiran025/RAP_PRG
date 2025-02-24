@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view for item table vbap'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZUD_PR_VBAP
  as projection on ZUD_CD_VBAP
{

  key Vbeln,
  key Posnr,
      Vkorg,
      Matnr,
      Arktx,

      /* Associations */
      _vbak : redirected to parent ZUD_PR_VBAK
}
