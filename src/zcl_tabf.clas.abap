CLASS zcl_tabf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES : if_amdp_marker_hdb.
    CLASS-METHODS : get_travel FOR TABLE FUNCTION zdevl_cds_tabf.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_tabf IMPLEMENTATION.
  METHOD get_travel BY DATABASE FUNCTION
   FOR HDB LANGUAGE
  SQLSCRIPT OPTIONS READ-ONLY USING /dmo/airport.

*    declare lv_DATE  "$ABAP.type( sy-datum  )";
*    declare c_date date;
*    c_date = to_date(:lv_date);

      itab =  SELECT name,city, country
                    from "/DMO/AIRPORT" ;

       return  select distinct
*      :itab.name,:itab.city,:itab.country,
                             name,city,country,
                             count(name) as count_nm,
                            CURRENT_DATE as c_date
                              from :itab
                              group by name,city,country;

  ENDMETHOD.

ENDCLASS.
