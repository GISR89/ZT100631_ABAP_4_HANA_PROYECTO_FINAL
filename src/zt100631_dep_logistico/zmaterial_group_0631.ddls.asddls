@AbapCatalog.sqlViewName: 'ZMAT_GROUP_0631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Grupo del Material'
@Metadata.ignorePropagatedAnnotations: true
@Analytics.dataCategory: #DIMENSION
@VDM.viewType: #BASIC
@ObjectModel.representativeKey: 'MaterialGroup'
define view ZMATERIAL_GROUP_0631
  as select from t023
  
   association [0..*] to ZMATERIAL_GROUPTEXT_0631 as _Text on $projection.MaterialGroup = _Text.MaterialGroup
{
      @ObjectModel.text.association: '_Text'
  key matkl as MaterialGroup,
  _Text
}
