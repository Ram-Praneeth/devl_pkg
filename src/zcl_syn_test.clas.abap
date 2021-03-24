CLASS zcl_syn_test DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_syn_test IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA lr_carr TYPE RANGE OF /dmo/carrier_id.

    SELECT FROM /dmo/flight FIELDS
    carrier_id,connection_id,currency_code,flight_date,
    plane_type_id,price INTO TABLE @DATA(gt_fli).

    lr_carr = VALUE #( FOR <fs_carr> IN gt_fli
                          sign = 'I' option = 'EQ'
                       (  low = <fs_carr>-carrier_id ) ).

    DELETE ADJACENT DUPLICATES FROM lr_carr
   COMPARING sign option low.

    SELECT * FROM /dmo/carrier
    WHERE carrier_id IN @lr_carr INTO TABLE @DATA(gt_carr).

    TRY.

        SELECT SINGLE * FROM /dmo/carrier
         WHERE carrier_id = @( gt_carr[ carrier_id = 'AA' ]-carrier_id )
      INTO @DATA(ls_carr).

      CATCH cx_sy_itab_line_not_found.

    ENDTRY.


    APPEND VALUE #(  sign = 'I' option = 'EQ' low = 'RR' high = ''  ) TO  lr_carr.
    INSERT VALUE #(  sign = 'I' option = 'EQ' low = 'LL' high = ''  ) INTO TABLE lr_carr.

    DATA(count) = lines( lr_carr ).

*    out->write( count ).
    out->write( gt_carr ).

  ENDMETHOD.

ENDCLASS.
