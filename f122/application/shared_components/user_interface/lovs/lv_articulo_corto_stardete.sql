prompt --application/shared_components/user_interface/lovs/lv_articulo_corto_stardete
begin
--   Manifest
--     LV_ARTICULO_CORTO_STARDETE
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
 p_id=>wwv_flow_imp.id(144064019615098319)
,p_lov_name=>'LV_ARTICULO_CORTO_STARDETE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select /*+rule*/ ',
'       a.descripcion,',
'       a.cod_articulo,',
'       0 cantidad,',
'       a.cod_art_corto',
'  from st_articulos        a,',
'       st_equivalencia_art e,',
'       st_articulos        a1      ',
' where a.cod_empresa = :P_COD_EMPRESA',
'   and (a.estado is null or a.estado <> ''I'')',
'   and (a1.estado is null or a1.estado <> ''I'')',
'   and a.cod_empresa = e.cod_empresa',
'   and a.cod_articulo = e.cod_articulo_equi',
'   and a.cod_rubro = ''PR''',
'   and a1.cod_rubro = ''PR''',
'   and a1.cod_empresa = e.cod_empresa',
'   and a1.cod_articulo = e.cod_articulo',
' group by a.cod_art_corto,',
'          a.descripcion,',
'          a.cod_articulo,',
'          A1.DESCRIPCION,',
'          A1.COD_ARTICULO,',
'          A1.COD_ART_CORTO,',
'          A.COD_ART_CORTO',
' order by a.descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_ART_CORTO'
,p_display_column_name=>'COD_ART_CORTO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(144064508775094054)
,p_query_column_name=>'COD_ART_CORTO'
,p_heading=>'Cod Art Corto'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(144064921723094054)
,p_query_column_name=>'COD_ARTICULO'
,p_heading=>'Cod Articulo'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(144065371636094054)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(144065781127094054)
,p_query_column_name=>'CANTIDAD'
,p_heading=>'Cantidad'
,p_display_sequence=>40
,p_data_type=>'NUMBER'
);
wwv_flow_imp.component_end;
end;
/
