@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface or cds View for student marks'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_UD_MARKS
  as select from zud_student_mark
{
  key student_id     as StudentId,
  key assessment_id  as AssessmentId,
  key subject_id     as SubjectId,
      marks_obtained as MarksObtained
}
