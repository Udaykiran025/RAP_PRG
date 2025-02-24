@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds or Interface view for student'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_UD_STUDENT
  as select from zud_student
{
  key student_id    as StudentId,
      student_name  as StudentName,
      age           as Age,
      class         as Class,
      class_section as ClassSection,
      avg_marks     as AvgMarks
}
