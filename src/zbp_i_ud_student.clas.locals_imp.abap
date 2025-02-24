CLASS lhc_ZI_UD_STUDENT DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
    IMPORTING keys REQUEST requested_authorizations FOR zi_ud_student RESULT result.

ENDCLASS.

CLASS lhc_ZI_UD_STUDENT IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.


ENDCLASS.
