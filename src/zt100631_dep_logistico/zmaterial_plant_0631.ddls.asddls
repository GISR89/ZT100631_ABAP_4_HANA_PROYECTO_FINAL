@AbapCatalog.sqlViewName: 'ZMAT_PLANT_0631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Centros del Material'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.representativeKey: 'Plant'
define view ZMATERIAL_PLANT_0631
  as select from marc
{
      @EndUserText.label: 'Material'
  key matnr as Material,
  key werks as Plant
}
