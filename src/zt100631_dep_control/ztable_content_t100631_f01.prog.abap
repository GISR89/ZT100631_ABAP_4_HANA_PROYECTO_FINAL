*&---------------------------------------------------------------------*
*& Include ztable_content_t100631_f01
*&---------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Form init_2000
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*

FORM init_2000 .

  CHECK NOT gv_tabname IS INITIAL.

  gv_previous_tabname = gv_tabname.

  IF go_cust_cont IS NOT BOUND.

    go_cust_cont = NEW #( 'TABLE_CUSTOM' ).
  ENDIF.

  TRY.

      go_alv_display = cl_salv_gui_table_ida=>create(
                         iv_table_name         = gv_tabname
                         io_gui_container      = go_cust_cont ).

    CATCH cx_salv_db_connection INTO DATA(lo_db_connection).
    CATCH cx_salv_db_table_not_supported.
    CATCH cx_salv_ida_contract_violation.

  ENDTRY.


ENDFORM.

FORM free_resources.

  IF go_alv_display IS BOUND.
    go_alv_display->free(  ).
  ENDIF.

ENDFORM.
