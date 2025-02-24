@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view for the root cds'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZUD_PR_CO
  as projection on ZUD_ROOT_CO

{
  key CourseUuid,
      @Search.defaultSearchElement: true
      CourseId,
      @Search.defaultSearchElement: true
      CourseName,
      CourseLength,
      @Search.defaultSearchElement: true
      Country,
      CurrencyCode,
      LastChangedAt,
      LocalLastChangedAt,
      /* Associations */
      _Country,
      _Currency,
      _Schedule : redirected to composition child ZUD_PR_SC
}
