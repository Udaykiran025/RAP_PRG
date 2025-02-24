@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS for header table vbak'
@Metadata.ignorePropagatedAnnotations: true

//@UI.headerInfo: {
//    typeName: 'Sales',
//    typeNamePlural: 'Sales Header Details'
//
//    }
//@Search.searchable: true
define root view entity Zud_cd_vbak
  as select from zud_vbak as vbak
  composition [0..*] of ZUD_CD_VBAP as _vbap
{

      //      @EndUserText.label: 'Sales Document'
      //      @UI.lineItem: [{ position: 10 , label: 'Sales Document'}]
      //      @UI.selectionField: [{ position: 10 }]
      //      @Search.defaultSearchElement: true
  key vbak.vbeln         as Vbeln,
      //      @EndUserText.label: 'Sales Document Creation Date'
      //      @UI.lineItem: [{ position: 20, label: 'Sales Document Creation Date' }]
      //      @UI.selectionField: [{ position: 20 }]
      vbak.erdat         as Erdat,
      //      @UI.lineItem: [{ position: 30 , label: 'Created By'}]
      vbak.ernam         as Ernam,
      //      @UI.lineItem: [{ position: 40 , label: 'Document Date'}]
      vbak.audat         as Audat,
      //      @UI.lineItem: [{ position: 50 , label: 'SD Document Category'}]
      vbak.vbtyp         as Vbtyp,
      //      @UI.lineItem: [{ position: 60, label: 'Sales Document Type' }]
      vbak.auart         as Auart,
      //      @UI.lineItem: [{ position: 70, label: 'Sales Organization' }]
      vbak.vkorg         as Vkorg,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      vbak.netwr         as Netwr,
      vbak.currency_code as CurrencyCode,
      _vbap
}
