prompt --application/shared_components/user_interface/lovs/lv_marcas1
begin
--   Manifest
--     LV_MARCAS1
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
 p_id=>wwv_flow_imp.id(12429613383267151)
,p_lov_name=>'LV_MARCAS1'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION, COD_MARCA FROM ST_MARCAS',
'WHERE ESTADO=''S''',
'ORDER BY 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_imp.component_end;
end;
/
