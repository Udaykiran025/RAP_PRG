CLASS zud_sales DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZUD_SALES IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: lt_vbak TYPE STANDARD TABLE OF zud_vbak WITH EMPTY KEY,
          lt_vbap TYPE STANDARD TABLE OF zud_vbap WITH EMPTY KEY.

    TRY.
        " Create test data for ZUD_VBAK (Header Table)
        lt_vbak = VALUE #(
          ( client = 100
            vbeln = '100001'
            erdat = '20250115'
            ernam = 'USER01'
            audat = '20250116'
            vbtyp = 'C'
            auart = 'OR'
            vkorg = 'US10'
            netwr = 1500
            currency_code = 'USD' )

          ( client = 100
            vbeln = '100002'
            erdat = '20250110'
            ernam = 'USER02'
            audat = '20250111'
            vbtyp = 'C'
            auart = 'OR'
            vkorg = 'US10'
            netwr = 3200
            currency_code = 'EUR' )

          ( client = 100
            vbeln = '100003'
            erdat = '20250120'
            ernam = 'USER03'
            audat = '20250121'
            vbtyp = 'B'
            auart = 'OR'
            vkorg = '3000'
            netwr = 7200
            currency_code = 'GBP' )

           ( client = 100
           vbeln = '100004'
           erdat = '20250122'
           ernam = 'USER04'
           audat = '20250123'
           vbtyp = 'C'
           auart = 'OR'
           vkorg = 'US20'
           netwr = 4300
           currency_code = 'USD' )
          ( client = 100
          vbeln = '100005'
          erdat = '20250125'
          ernam = 'USER05'
          audat = '20250126'
          vbtyp = 'B'
          auart = 'OR'
          vkorg = '4000'
          netwr = 5300
          currency_code = 'EUR' ) ).

        " Delete existing entries in ZUD_VBAK and insert new data
        DELETE FROM zud_vbak.
        INSERT zud_vbak FROM TABLE @lt_vbak.
        out->write( |{ sy-dbcnt } entries in ZUD_VBAK modified| ).

        " Create test data for ZUD_VBAP (Item Table)
        lt_vbap = VALUE #(
          ( client = 100
            vbeln = '100001'
            posnr = '000001'
            vkorg = 'US10'
            matnr = 'MAT001'
            arktx = 'Item 1 - Material 001' )

          ( client = 100
            vbeln = '100001'
            posnr = '000002'
            vkorg = 'US10'
            matnr = 'MAT002'
            arktx = 'Item 2 - Material 002' )

          ( client = 100
            vbeln = '100002'
            posnr = '000001'
            vkorg = 'US10'
            matnr = 'MAT003'
            arktx = 'Item 1 - Material 003' )

          ( client = 100
            vbeln = '100002'
            posnr = '000002'
            vkorg = 'US10'
            matnr = 'MAT004'
            arktx = 'Item 2 - Material 004' )

          ( client = 100 vbeln = '100003' posnr = '000001' vkorg = '3000' matnr = 'MAT005' arktx = 'Item 1 - Material 005' )
          ( client = 100 vbeln = '100003' posnr = '000002' vkorg = '3000' matnr = 'MAT006' arktx = 'Item 2 - Material 006' )
          ( client = 100 vbeln = '100003' posnr = '000003' vkorg = '3000' matnr = 'MAT007' arktx = 'Item 3 - Material 007' )
          ( client = 100 vbeln = '100004' posnr = '000001' vkorg = 'US20' matnr = 'MAT008' arktx = 'Item 1 - Material 008' )
          ( client = 100 vbeln = '100004' posnr = '000002' vkorg = 'US20' matnr = 'MAT009' arktx = 'Item 2 - Material 009' )
          ( client = 100 vbeln = '100005' posnr = '000001' vkorg = '4000' matnr = 'MAT010' arktx = 'Item 1 - Material 010' )
          ( client = 100 vbeln = '100005' posnr = '000002' vkorg = '4000' matnr = 'MAT011' arktx = 'Item 2 - Material 011' ) ).

        " Delete existing entries in ZUD_VBAP and insert new data
        DELETE FROM zud_vbap.
        INSERT zud_vbap FROM TABLE @lt_vbap.
        out->write( |{ sy-dbcnt } entries in ZUD_VBAP modified| ).

        COMMIT WORK.
      CATCH cx_uuid_error.

    ENDTRY.

  ENDMETHOD.
ENDCLASS.
