@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection ciew for header table Vbak'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZUD_PR_VBAK
  as projection on Zud_cd_vbak
{
  key Vbeln,
      Erdat,
      Ernam,
      Audat,
      Vbtyp,
      Auart,
      Vkorg,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      Netwr,
      CurrencyCode,
      /* Associations */
      _vbap : redirected to composition child ZUD_PR_VBAP

}
