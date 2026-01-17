*&---------------------------------------------------------------------*
*& Include ZTABLE_CONTENT_T100631_TOP               - Report ZTABLE_CONTENT_T100631
*&---------------------------------------------------------------------*


DATA: gv_tabname          TYPE tabname,
      gv_previous_tabname TYPE tabname.

"---- Objetos globales del ALV IDA

DATA: go_alv_display TYPE REF TO if_salv_gui_table_ida,
      go_cust_cont   TYPE REF TO cl_gui_custom_container.
