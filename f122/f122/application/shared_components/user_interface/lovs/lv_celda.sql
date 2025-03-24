prompt --application/shared_components/user_interface/lovs/lv_celda
begin
--   Manifest
--     LV_CELDA
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
 p_id=>wwv_flow_imp.id(41240938332831089)
,p_lov_name=>'LV_CELDA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.cod_posicion , a.cod_nivel ',
'FROM st_posiciones a',
'where a.cod_empresa = 1--:variables.cod_empresa',
'    and a.cod_sucursal=190--:variables.cod_sucursal',
'    and a.ind_celda = ''S'' ',
'    and a.estado = ''S'''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_POSICION'
,p_display_column_name=>'COD_POSICION'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'COD_POSICION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(41241583205835349)
,p_query_column_name=>'COD_POSICION'
,p_heading=>unistr('C\00F3digo R\00E1pido')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(41241924607835350)
,p_query_column_name=>'COD_NIVEL'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
