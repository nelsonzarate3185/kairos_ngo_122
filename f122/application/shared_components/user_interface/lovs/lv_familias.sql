prompt --application/shared_components/user_interface/lovs/lv_familias
begin
--   Manifest
--     LV_FAMILIAS
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
 p_id=>wwv_flow_imp.id(12986890056405011)
,p_lov_name=>'LV_FAMILIAS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION, COD_FAMILIA FROM ST_FAMILIA',
'WHERE ESTADO=''S''',
'and cod_empresa=:p_cod_empresa',
'ORDER BY 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_imp.component_end;
end;
/
