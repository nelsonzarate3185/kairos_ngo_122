prompt --application/shared_components/user_interface/lovs/streens_lineas
begin
--   Manifest
--     STREENS_LINEAS
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
 p_id=>wwv_flow_imp.id(124486939381993955)
,p_lov_name=>'STREENS_LINEAS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion d, cod_linea r',
'from st_linea ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(124487319750995952)
,p_query_column_name=>'R'
,p_heading=>unistr('C\00F3digo Linea')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(124487736919995952)
,p_query_column_name=>'D'
,p_heading=>'Linea'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
