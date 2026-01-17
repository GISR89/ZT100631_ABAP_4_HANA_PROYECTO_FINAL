@AbapCatalog.sqlViewName: 'ZMAT_GROUPTEX631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Texto grupo del Material'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC
@ObjectModel: {
   representativeKey: 'MaterialGroup',
   dataCategory: #TEXT }
define view ZMATERIAL_GROUPTEXT_0631
  as select from t023t
{

  key matkl   as MaterialGroup,
      @Semantics.language: true
  key spras   as Language,
      @Semantics.text: true
      wgbez   as MaterialGroupName,
      @Semantics.text: true
      wgbez60 as MaterialGroupText
}
