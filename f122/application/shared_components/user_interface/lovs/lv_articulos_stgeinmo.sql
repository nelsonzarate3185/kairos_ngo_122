prompt --application/shared_components/user_interface/lovs/lv_articulos_stgeinmo
begin
--   Manifest
--     LV_ARTICULOS_STGEINMO
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
 p_id=>wwv_flow_imp.id(178725954478259893)
,p_lov_name=>'LV_ARTICULOS_STGEINMO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_articulo, cod_origen_art, cod_art_corto ',
'from st_articulos where cod_empresa = :P_cod_empresa ',
'and estado = ''A'' ',
'AND :P556_IND_INVENTARIO_CPH=''N''',
'UNION ALL',
'select descripcion, cod_articulo, cod_origen_art, cod_art_corto ',
'from st_articulos@DBLINK_CPH where cod_empresa = :P_cod_empresa ',
'AND :P556_IND_INVENTARIO_CPH=''S''',
'UNION ALL',
'select descripcion, cod_articulo, cod_origen_art, cod_art_corto ',
'from st_articulos@dbLINK_TF',
' where cod_empresa = :P_cod_empresa ',
'AND :P556_IND_INVENTARIO_CPH=''T''',
'UNION ALL',
'select descripcion, cod_articulo, cod_origen_art, cod_art_corto ',
'from st_articulos where cod_empresa = ''18''',
'and estado = ''A'' ',
'AND :P556_IND_INVENTARIO_CPH=''B''',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_ARTICULO'
,p_display_column_name=>'COD_ARTICULO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(178999103175593827)
,p_query_column_name=>'COD_ARTICULO'
,p_heading=>'Cod.'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(178999584983593827)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
