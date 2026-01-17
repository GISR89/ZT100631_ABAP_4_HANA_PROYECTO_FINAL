@AbapCatalog.sqlViewName: 'ZMAT_TYPE_0631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Tipo del Material'
@Metadata.ignorePropagatedAnnotations: true
@Analytics.dataCategory: #DIMENSION
@VDM.viewType: #BASIC
@ObjectModel.representativeKey: 'MaterialType'
define view ZMATERIAL_TYPE_0631
  as select from t134

  association [0..*] to ZMATERIAL_TYPETEXT_0631 as _Text on $projection.MaterialType = _Text.MaterialType

{
      @ObjectModel.text.association: '_Text'
  key mtart as MaterialType,
      _Text
}
