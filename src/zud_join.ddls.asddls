@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Join and get data from two tables'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZUD_JOIN  as select from zhdoctor as a join zhappoint as b on a.doctor_id = b.doctor_id
{
    a.doctor_id as DOCTOR_ID,
    a.name as NAME,
    b.appointment_id as APPOINTMENT_ID,
    b.patient_name as PATIENT_NAME,
    b.appointment_date as APPOINTMENT_DATE
}
