@EndUserText.label: 'for ZACC_DOC_AMOUNT_MH2509'
@ClientHandling.type: #CLIENT_INDEPENDENT
define table function ZTF_ACC_DOC_MH2509
  with parameters
    p_Company : bukrs,
    p_Year    : gjahr
returns
{
  key doc_number  : belnr_d;
  key item_number : buzei;
      doc_amount  : wrbtr;
      currency    : waers;

}
implemented by method
  ZCL_DOC_AMOUNT_MH2509=>get_doc_amount;
