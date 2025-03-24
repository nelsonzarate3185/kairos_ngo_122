prompt --application/shared_components/user_interface/lovs/lv_sucursal_ent_strpeden
begin
--   Manifest
--     LV_SUCURSAL_ENT_STRPEDEN
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
 p_id=>wwv_flow_imp.id(145872569439621610)
,p_lov_name=>'LV_SUCURSAL_ENT_STRPEDEN'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion D,cod_sucursal R',
'from sucursales ',
'where cod_empresa = :P_cod_empresa',
'and estado=''S''',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'R'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'R'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(146070185403002189)
,p_query_column_name=>'R'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(146070551712002188)
,p_query_column_name=>'D'
,p_heading=>'Sucursal'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
