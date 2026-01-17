@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'for ZACC_DOC_AMOUNT_MH2509'
@Metadata.ignorePropagatedAnnotations: true

@OData.publish: true
define view entity ZC_ACC_DOC_MH2509

  with parameters
    p_Company : bukrs,
    p_Year    : gjahr

  as select from ZTF_ACC_DOC_MH2509( p_Company: $parameters.p_Company , p_Year: $parameters.p_Year)

{

  key doc_number  as DocumentId,
  key item_number as DocumentPosId,
      @Semantics.amount.currencyCode: 'Currency'
      doc_amount  as Amount,
      currency    as Currency
}
