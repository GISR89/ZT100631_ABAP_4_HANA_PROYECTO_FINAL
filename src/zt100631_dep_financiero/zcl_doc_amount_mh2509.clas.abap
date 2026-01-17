CLASS zcl_doc_amount_mh2509 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_amdp_marker_hdb.

    CLASS-METHODS get_doc_amount FOR TABLE FUNCTION ztf_acc_doc_mh2509.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_doc_amount_mh2509 IMPLEMENTATION.

  METHOD get_doc_amount BY DATABASE FUNCTION
                            FOR HDB LANGUAGE SQLSCRIPT
                            OPTIONS READ-ONLY.

    RETURN   SELECT
                     belnr_1 AS doc_number,
                     buzei AS item_number,
                     wrbtr AS doc_amount,
                     waers AS currency
                FROM "_SYS_BIC"."ZABAP_HANA_TRAINING.MH2509/ZACC_DOC_AMOUNT_MH2509"
                order BY doc_number, item_number;


  ENDMETHOD.

ENDCLASS.
