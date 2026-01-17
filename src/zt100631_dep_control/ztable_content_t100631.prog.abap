*&---------------------------------------------------------------------*
*& Report ZTABLE_CONTENT_T100631
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ztable_content_t100631.

INCLUDE ztable_content_t100631_top              .  " Global Data
INCLUDE ztable_content_t100631_o01              .  " PBO-Modules
INCLUDE ztable_content_t100631_i01              .  " PAI-Modules
INCLUDE ztable_content_t100631_f01              .  " FORM-Routines

START-OF-SELECTION.

  CALL SCREEN 2000.
