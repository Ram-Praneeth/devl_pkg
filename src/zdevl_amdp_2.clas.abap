CLASS zdevl_amdp_2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES : if_amdp_marker_hdb ,
      if_oo_adt_classrun.

    TYPES : BEGIN OF ty_fli,
              carrier_id TYPE /dmo/carrier_id,
              connection_id  TYPE /dmo/connection_id,
*              flight_date    TYPE /dmo/flight_date,
*              price          TYPE /dmo/flight_price,
*              currency_code  TYPE /dmo/currency_code,
*              plane_type_id  TYPE /dmo/plane_type_id,
*              seats_max      TYPE /dmo/plane_seats_max,
*              seats_occupied TYPE /dmo/plane_seats_occupied,
            END OF ty_fli.

    TYPES : tty_flight TYPE TABLE OF ty_fli.

    CLASS-METHODS:
      get_flight EXPORTING VALUE(ex_fli) TYPE tty_flight.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZDEVL_AMDP_2 IMPLEMENTATION.


  METHOD get_flight BY DATABASE PROCEDURE FOR HDB LANGUAGE
    SQLSCRIPT OPTIONS READ-ONLY
      USING /dmo/flight.

 declare fli row(
       mandt "$ABAP.type( MANDT )",
       num "$ABAP.type( f  )" );




declare fli1 table(
       carr "$ABAP.type( /dmo/carrier_id )",
       conn "$ABAP.type( /dmo/connection_id )" );


    itab = select  *  from "/DMO/FLIGHT" WHERE client =
    (SELECT session_context ('CLIENT') FROM dummy);



   ex_fli = SELECT carrier_id,connection_id from :itab;

    :fli1.insert(  :ex_fli);

  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.
    zdevl_amdp_2=>get_flight(
      IMPORTING
        ex_fli = DATA(fli)
    ).

    out->write(
      EXPORTING
        data   = fli
    ).
  ENDMETHOD.
ENDCLASS.
