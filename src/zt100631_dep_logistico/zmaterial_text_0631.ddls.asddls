@AbapCatalog.sqlViewName: 'ZMAT_TEXT_0631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Texto del Material'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC
@ObjectModel: { dataCategory: #TEXT,
                representativeKey: 'Material' }
define view ZMATERIAL_TEXT_0631
  as select from makt
{
  key matnr as Material,
   @Semantics.language: true
  key spras as Lenguage,
   @Semantics.text: true
      maktx as MaterialName
}
