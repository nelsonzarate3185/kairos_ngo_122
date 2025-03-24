prompt --application/shared_components/user_interface/lovs/lvplanillas
begin
--   Manifest
--     LVPLANILLAS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(112359613305925944)
,p_lov_name=>'LVPLANILLAS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d.nro_comprobante, d.ser_comprobante, ',
'd.tip_comprobante, d.ser_planilla, ',
'd.nro_planilla, to_char( c.fec_planilla, ''DD/MM/YYYY'' ) ',
'fec_planilla, c.cod_custodio_ent, c.cod_custodio_sal ',
'from cc_plan_custodios_det d, cc_plan_custodios_cab c ',
'where d.cod_empresa = :P_COD_EMPRESA ',
'and d.cod_empresa = c.cod_empresa ',
'and d.ser_planilla = c.ser_planilla ',
'and d.nro_planilla = c.nro_planilla ',
'order by d.nro_comprobante, c.nro_planilla desc'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'NRO_COMPROBANTE'
,p_display_column_name=>'NRO_COMPROBANTE'
);
wwv_flow_imp.component_end;
end;
/
