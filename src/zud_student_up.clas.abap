CLASS zud_student_up DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZUD_STUDENT_UP IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

   DATA: it_students TYPE STANDARD TABLE OF zud_student.

    TRY.
      it_students = VALUE #(
        ( student_id = 'S0001' student_name = 'John Doe'      age = '18' class = '12' class_section = 'A' avg_marks = '85.50' )
        ( student_id = 'S0002' student_name = 'Jane Smith'    age = '17' class = '11' class_section = 'B' avg_marks = '78.25' )
        ( student_id = 'S0003' student_name = 'Alice Brown'   age = '18' class = '12' class_section = 'C' avg_marks = '90.75' )
        ( student_id = 'S0004' student_name = 'Bob White'     age = '16' class = '10' class_section = 'A' avg_marks = '72.40' )
        ( student_id = 'S0005' student_name = 'Charlie Kim'   age = '19' class = '12' class_section = 'B' avg_marks = '88.90' )
        ( student_id = 'S0006' student_name = 'David Lee'     age = '17' class = '11' class_section = 'C' avg_marks = '81.30' )
        ( student_id = 'S0007' student_name = 'Emily Clark'   age = '16' class = '10' class_section = 'B' avg_marks = '74.85' )
        ( student_id = 'S0008' student_name = 'Frank Martin'  age = '18' class = '12' class_section = 'A' avg_marks = '92.60' )
        ( student_id = 'S0009' student_name = 'Grace Hall'    age = '17' class = '11' class_section = 'B' avg_marks = '79.45' )
        ( student_id = 'S0010' student_name = 'Henry Scott'   age = '16' class = '10' class_section = 'C' avg_marks = '76.20' )
      ).

       DELETE FROM zud_student.
      INSERT zud_student FROM TABLE @it_students.


    ENDTRY.



  ENDMETHOD.
ENDCLASS.
