@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Parent Root cds for course hearder table'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZUD_ROOT_CO
  as select from zud_co as Course
  composition [0..*] of ZUD_VIEW_SC as _Schedule
  association [0..1] to I_Currency  as _Currency on $projection.CurrencyCode = _Currency.Currency
  association [0..1] to I_Country   as _Country  on $projection.Country = _Country.Country

{

  key Course.course_uuid           as CourseUuid,
      Course.course_id             as CourseId,
      Course.course_name           as CourseName,
      Course.course_length         as CourseLength,
      Course.country               as Country,
      // Course.price as Price,
      Course.currency_code         as CurrencyCode,
      @Semantics.systemDateTime.lastChangedAt: true
      Course.last_changed_at       as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      Course.local_last_changed_at as LocalLastChangedAt,
      _Schedule,
      _Currency,
      _Country

}
