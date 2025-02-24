@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'child cds for Schedule'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZUD_VIEW_SC
  as select from ZUD_SC as Schedule
  association to parent ZUD_ROOT_CO as _Course on $projection.CourseUuid = _Course.CourseUuid
{


  key Schedule.schedule_uuid         as ScheduleUuid,
      Schedule.course_begin          as CourseBegin,
      Schedule.course_uuid           as CourseUuid,
      Schedule.location              as Location,
      Schedule.trainer               as Trainer,
      Schedule.is_online             as IsOnline,
      @Semantics.systemDateTime.lastChangedAt: true
      Schedule.last_changed_at       as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      Schedule.local_last_changed_at as LocalLastChangedAt,
      _Course // Make association public
}
