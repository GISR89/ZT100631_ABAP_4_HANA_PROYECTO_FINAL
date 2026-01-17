@AbapCatalog.sqlViewName: 'ZUNIT_OF_M_631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Unidad de medida'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC
@ObjectModel.representativeKey: 'UnitOfMeasure'
define view ZUNIT_OF_MEASURE_0631
  as select from t006

  association [0..*] to ZUNIT_OF_MEASURETEXT_0631 as _Text on $projection.UnitOfMeasure = _Text.UnitOfMeasure

{
      @Semantics.unitOfMeasure: true
  key msehi   as UnitOfMeasure,
      _Text,
      isocode as UnitOfMeasureISOCode,
      andec   as UnitOfMeasureNumberOfDecimals,
      decan   as UnitOfMeasureDspNmbrOfDcmls
}
