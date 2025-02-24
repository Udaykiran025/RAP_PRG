CLASS zud_vendor_update DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZUD_VENDOR_UPDATE IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  Data  : it_vendor type STANDARD TABLE OF zud_vendor.

    TRY.
    IT_VENDOR = VALUE #( ( vendor_id = 'VENDOR001'
                           name = 'ABC Supplies Ltd.'
                           country = 'USA'
                           city = 'New York'
                           postal_code = '10001'
                           street = '5th Avenue'
                           phone_number = '+1-212-555-1234'
                           email = 'contact@abc.com' )

                         ( vendor_id = 'VENDOR002'
                           name = 'Global Traders Co.'
                           country = 'IN'
                           city = 'Mumbai'
                           postal_code = '400001'
                           street = 'Marine Drive'
                           phone_number = '+91-22-555-4567'
                           email = 'support@global.com' )

                         ( vendor_id = 'VENDOR003'
                           name = 'Tech Solutions Ltd.'
                           country = 'USA'
                           city = 'San Francisco'
                           postal_code = '94105'
                           street = 'Market Street'
                           phone_number = '+1-415-555-6789'
                           email = 'info@techsolutions.com' )


                         ( vendor_id = 'VENDOR004'
                           name = 'Sunrise Enterprises'
                           country = 'IN'
                           city = 'Delhi'
                           postal_code = '110001'
                           street = 'Connaught Lane'
                           phone_number = '+91-11-555-9876'
                           email = 'sales@sunrise.in' )

                         ( vendor_id = 'VENDOR005'
                           name = 'Tech Solutions India'
                           country = 'IN'
                           city = 'Bangalore'
                           postal_code = '560001'
                           street = 'Brigade Road'
                           phone_number = '+91-80-555-7890'
                           email = 'contact@techsolutions.in' )  ).

                      Insert ZUD_VENDOR from table @it_vendor .

    ENDTRY.

  ENDMETHOD.
ENDCLASS.
