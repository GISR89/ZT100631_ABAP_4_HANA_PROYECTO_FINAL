@AbapCatalog.sqlViewName: 'ZMATERIAL_0631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Codigo Material'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #COMPOSITE
@Analytics.dataCategory: #CUBE
@ObjectModel.representativeKey: 'Material'
define view ZMATERIAL_T100631
  as select from mara

  association [0..*] to ZMATERIAL_TEXT_0631   as _Text          on $projection.Material = _Text.Material
  association [0..1] to ZMATERIAL_TYPE_0631   as _MaterialType  on $projection.MaterialType = _MaterialType.MaterialType
  association [0..1] to ZMATERIAL_GROUP_0631  as _MaterialGroup on $projection.MaterialGroup = _MaterialGroup.MaterialGroup
  association [0..1] to ZUNIT_OF_MEASURE_0631 as _BaseUnit      on $projection.MaterialBaseUnit = _BaseUnit.UnitOfMeasure
  association [0..1] to ZUNIT_OF_MEASURE_0631 as _WeightUnit    on $projection.MaterialWeightUnit = _WeightUnit.UnitOfMeasure
  association [0..*] to ZMATERIAL_PLANT_0631  as _MaterialPlant on $projection.Material = _MaterialPlant.Material

{
      @ObjectModel.text.association: '_Text'
  key mara.matnr as Material,
      _Text,

      @EndUserText.label: 'Material Type'
      mara.mtart as MaterialType,
      _MaterialType,

      @EndUserText.label: 'Material Group'
      mara.matkl as MaterialGroup,
      _MaterialGroup,

      @EndUserText.label: 'Material Base Unit'
      @Semantics.unitOfMeasure: true
      @ObjectModel.foreignKey.association: '_BaseUnit'
      mara.meins as MaterialBaseUnit,
      _BaseUnit,

      @EndUserText.label: 'Material Gross Weight'
      @Semantics.quantity.unitOfMeasure: 'MaterialWeightUnit'
      mara.brgew as MaterialGrossWeight,
      
      @EndUserText.label: 'Material Net Weight'
      @Semantics.quantity.unitOfMeasure: 'MaterialWeightUnit'
      mara.ntgew as MaterialNetWeight,

      @EndUserText.label: 'Material Weight Unit'
      @Semantics.unitOfMeasure: true
      @ObjectModel.foreignKey.association: '_WeightUnit'
      mara.gewei as MaterialWeightUnit,
      _WeightUnit,

      _MaterialPlant

}
