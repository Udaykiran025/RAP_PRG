CLASS zcl_tb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_TB IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

 " Data : it_tab type STANDARD TABLE OF ZHDOCTOR.
 "        it_tab = value #( ( client = '100'
 "                            Doctor_Id = 'DOC001'
  "                           name = 'RAJ'
   "                          specialization = 'CARDIOLOGIST' ) ).
    "              insert ZHDOCTOR FROM table @it_tab.

    Data : it_appoint type STANDARD TABLE OF ZHAPPOINT.
           it_appoint = value #( ( client = '100'
                                   appointment_id = 'APP001'
                                   patient_name = 'SURESH'
                                   doctor_id  = 'DOC001'
                                   appointment_date = '20250117')

                                   ( client = '100'
                                   appointment_id = 'APP002'
                                   patient_name = 'NAVEEN'
                                   doctor_id  = 'DOC002'
                                   appointment_date = '20250117') ).

                      insert ZHAPPOINT From table @it_appoint.
  ENDMETHOD.
ENDCLASS.
