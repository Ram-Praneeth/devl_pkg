CLASS zcl_tabf1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_amdp_marker_hdb.
    CLASS-METHODS : get_flight FOR TABLE FUNCTION Zdevl_Cds_Tabf1.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_tabf1 IMPLEMENTATION.
  METHOD get_flight BY DATABASE FUNCTION
   FOR HDB LANGUAGE
  SQLSCRIPT OPTIONS READ-ONLY USING /dmo/flight.


    itab =  select carrier_id ,
    connection_id,
     flight_date,
     days_between( current_date, flight_date ) as diff_date,
       seats_max,
       seats_occupied,
       ( seats_max - seats_occupied  ) as diff_seats
       from "/DMO/FLIGHT";

     RETURN SELECT carrier_id,
    connection_id,
     flight_date,
     CASE
       WHEN diff_date <= 100 THEN 'Bookings open'
         ELSE 'Bookings closed'
         END AS valid_period,
         seats_max,
         seats_occupied,
       CASE
       WHEN diff_seats <= 10 THEN 'Few seats left!'
              ELSE 'Seats available'
         END AS valid_seats,
         current_user as c_user
      FROM :itab;

  ENDMETHOD.

ENDCLASS.
