prompt --application/shared_components/user_interface/lovs/lv_responsables
begin
--   Manifest
--     LV_RESPONSABLES
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
 p_id=>wwv_flow_imp.id(27304538819126385)
,p_lov_name=>'LV_RESPONSABLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_PERSONA||'' - ''||LTRIM( RTRIM( NVL( NOMBRE, NOMB_FANTASIA ) ) ) NOMBRE, ',
'	   COD_PERSONA	 ',
'  FROM PERSONAS ',
' WHERE ES_FISICA = ''S''',
' ORDER BY 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COD_PERSONA'
,p_display_column_name=>'NOMBRE'
);
wwv_flow_imp.component_end;
end;
/
