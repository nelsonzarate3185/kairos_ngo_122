prompt --application/shared_components/user_interface/lovs/lv_articulos_forecast
begin
--   Manifest
--     LV_ARTICULOS_FORECAST
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
 p_id=>wwv_flow_imp.id(509313927362854249)
,p_lov_name=>'LV_ARTICULOS_FORECAST'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo,cod_art_corto, TRIM(descripcion)descripcion  , COD_ORIGEN_ART FROM ST_ARTICULOS ',
'where cod_empresa = :P_COD_EMPRESA',
'and nvl( estado, ''S'' ) <> ''N'' ',
'and cod_rubro=''PR''',
' order ',
'by cod_articulo,descripcion',
'',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_ARTICULO'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(509315051517857681)
,p_query_column_name=>'COD_ART_CORTO'
,p_heading=>'Cod Art Corto'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(509315441254857682)
,p_query_column_name=>'COD_ARTICULO'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(509315809573857682)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(509316285067857682)
,p_query_column_name=>'COD_ORIGEN_ART'
,p_heading=>'Cod Origen Art'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
