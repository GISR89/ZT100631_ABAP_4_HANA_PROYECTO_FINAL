@AbapCatalog.sqlViewName: 'ZMAT_TYPETEX_631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Texto Tipo del Material'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC
@ObjectModel: { dataCategory: #TEXT,
                representativeKey: 'MaterialType' }
define view ZMATERIAL_TYPETEXT_0631
  as select from t134t


{
  key mtart as MaterialType,
      @Semantics.language: true
  key spras as Language,
      @Semantics.text: true
      mtbez as MaterialTypeName

}
