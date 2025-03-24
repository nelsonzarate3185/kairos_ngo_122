prompt --application/shared_components/user_interface/lovs/lv_marcas_stcanpun
begin
--   Manifest
--     LV_MARCAS_STCANPUN
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
 p_id=>wwv_flow_imp.id(70402171391151830)
,p_lov_name=>'LV_MARCAS_STCANPUN'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca R, descripcion D',
'  from st_marcas ',
'order by 2'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'R'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(70403704990173728)
,p_query_column_name=>'R'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(70404117756173729)
,p_query_column_name=>'D'
,p_heading=>'Marca'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
