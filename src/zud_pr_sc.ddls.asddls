@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'projection view for the child entity'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZUD_PR_SC
  as projection on ZUD_VIEW_SC

{
  key ScheduleUuid,
      @UI: { lineItem: [{position: 10, label: 'Course Begin'}]}
      CourseBegin,
      CourseUuid,
      @UI: { lineItem: [{position: 20, label: 'Location'}]}
      Location,
      @UI: { lineItem: [{position: 30, label: 'Trainer'}]}
      Trainer,
      @UI: { lineItem: [{position: 40, label: ' Online'}]}
      IsOnline,
      LastChangedAt,
      LocalLastChangedAt,
      /* Associations */
      _Course : redirected to parent ZUD_PR_CO
}
