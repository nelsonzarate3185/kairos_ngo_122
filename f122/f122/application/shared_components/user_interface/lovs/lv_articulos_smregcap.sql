prompt --application/shared_components/user_interface/lovs/lv_articulos_smregcap
begin
--   Manifest
--     LV_ARTICULOS_SMREGCAP
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
 p_id=>wwv_flow_imp.id(64090768865921848)
,p_lov_name=>'LV_ARTICULOS_SMREGCAP'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion,',
'    cod_articulo, ',
'    cod_origen_art,',
'    cod_art_corto ',
' from st_articulos ',
' where cod_empresa = :P_COD_EMPRESA ',
'and ( estado is null or estado in (''A'',''S'') ) ',
'order by descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_ART_CORTO'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(64103514553983596)
,p_query_column_name=>'COD_ART_CORTO'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(64103980212983596)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(64104381334983596)
,p_query_column_name=>'COD_ARTICULO'
,p_heading=>'Cod Articulo'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(64104767057983597)
,p_query_column_name=>'COD_ORIGEN_ART'
,p_heading=>'Cod Origen Art'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp.component_end;
end;
/
