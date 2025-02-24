@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view for Student'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZP_UD_STUDENT
  as projection on ZI_UD_STUDENT as Student

{
      @EndUserText.label: 'Student ID'
  key StudentId,
      @EndUserText.label: 'Student Name'
      StudentName,
      @EndUserText.label: 'Age'
      Age,
      @EndUserText.label: 'Class'
      Class,
      @EndUserText.label: 'Section'
      ClassSection,
      @EndUserText.label: 'Average Marks'
      AvgMarks
}
