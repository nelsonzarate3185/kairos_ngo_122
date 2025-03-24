prompt --application/shared_components/user_interface/lovs/lv_conyuge
begin
--   Manifest
--     LV_CONYUGE
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
 p_id=>wwv_flow_imp.id(25572308005948801)
,p_lov_name=>'LV_CONYUGE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_PERSONA||'' - ''||LTRIM( RTRIM( NVL( NOMBRE, NOMB_FANTASIA ) ) ) D, ',
'	   COD_PERSONA  R',
'  FROM PERSONAS ',
' WHERE ES_FISICA = ''S''',
' ORDER BY 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
wwv_flow_imp.component_end;
end;
/
