prompt --application/shared_components/user_interface/lovs/lov_articulos_largo_vtpedido
begin
--   Manifest
--     LOV_ARTICULOS_LARGO_VTPEDIDO
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
 p_id=>wwv_flow_imp.id(99164141012509543)
,p_lov_name=>'LOV_ARTICULOS_LARGO_VTPEDIDO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT descripcion, cod_articulo, cod_origen_art, cod_art_corto',
'  FROM st_articulos',
' WHERE cod_empresa = ''1''',
'   AND (estado IS NULL OR estado IN (''A'', ''S''))',
' ORDER BY descripcion',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_ARTICULO'
,p_display_column_name=>'COD_ARTICULO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(99164664982515672)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>unistr('Descripci\00F3n')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(99164977805515673)
,p_query_column_name=>'COD_ARTICULO'
,p_heading=>unistr('C\00F3digo Art\00EDculo')
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(99165350044515673)
,p_query_column_name=>'COD_ORIGEN_ART'
,p_heading=>unistr('C\00F3d. Origen Art.')
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(99165766044515673)
,p_query_column_name=>'COD_ART_CORTO'
,p_heading=>unistr('C\00F3d. Art. Corto')
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
