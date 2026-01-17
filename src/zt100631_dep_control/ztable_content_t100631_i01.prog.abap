*&---------------------------------------------------------------------*
*& Include ztable_content_t100631_i01
*&---------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_2000  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_2000 INPUT.

  CASE sy-ucomm.

    WHEN 'BACK'.
      LEAVE TO SCREEN 0.
      PERFORM free_resources.
    WHEN OTHERS.
  ENDCASE.

  IF gv_previous_tabname NE gv_tabname.
    PERFORM free_resources.
  ENDIF.

ENDMODULE.
