@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view to update student details'
@Metadata.ignorePropagatedAnnotations: true


@UI: {headerInfo: { typeName: 'Student',
                  typeNamePlural: 'Students',
                  title: { type: #STANDARD, label: 'Student' } }
                  }
@Search.searchable: true
define root view entity ZP_STUDENT_U
  as projection on ZI_UD_STUDENT
{
      @UI.facet: [{ id: 'Student', purpose: #STANDARD ,type: #IDENTIFICATION_REFERENCE, label: 'Student'  }]
      @UI: { lineItem: [{ position: 10 , label: 'Student Id' }],
            identification: [{ position: 10 , label: 'Student Id' }],
            selectionField: [{ position: 10 }] }
      @Consumption.valueHelpDefinition: [{ entity: {
            name: 'ZI_UD_STUDENT',
            element: 'StudentId'
        } }]
      @Search.defaultSearchElement: true
  key StudentId,
      @UI: { lineItem: [{ position: 20 , label: 'Student Name ' }],
             identification: [{ position: 20 , label: 'Student Name ' }] }
      StudentName,
      @UI: { lineItem: [{ position: 30 , label: 'Age' }],
       identification: [{ position: 30 , label: 'Age' }] }
      Age,
      @UI: { lineItem: [{ position: 40 , label: 'Class' }],
         identification: [{ position: 40 , label: 'Class' }] }
      Class,
      @UI: { lineItem: [{ position: 50 , label: 'Section' }],
        identification: [{ position: 50 , label: 'Section' }],
        selectionField: [{ position: 20 }] }
      @Consumption.valueHelpDefinition: [{ entity: {
             name: 'ZI_UD_STUDENT',
             element: 'ClassSection'
         } }]
      @Search.defaultSearchElement: true
      ClassSection,
      @UI: { lineItem: [{ position: 60 , label: 'Average Marks'  }],
      identification: [{ position: 60 , label: 'Average Marks' }] }
      AvgMarks
}
