prompt --application/shared_components/user_interface/lovs/streens_rubros
begin
--   Manifest
--     STREENS_RUBROS
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
 p_id=>wwv_flow_imp.id(124479515685970852)
,p_lov_name=>'STREENS_RUBROS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion d, cod_rubro r',
'from st_rubro ',
'where cod_empresa = :p_cod_empresa ',
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
 p_id=>wwv_flow_imp.id(124480044525972928)
,p_query_column_name=>'R'
,p_heading=>unistr('C\00F3digo de Rubro')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(124480482682972928)
,p_query_column_name=>'D'
,p_heading=>'Rubro'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
