prompt --application/shared_components/user_interface/lovs/lv_articulo_corto_stsolajs
begin
--   Manifest
--     LV_ARTICULO_CORTO_STSOLAJS
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
 p_id=>wwv_flow_imp.id(161488441802931836)
,p_lov_name=>'LV_ARTICULO_CORTO_STSOLAJS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.descripcion, ',
'       a.cod_articulo, ',
'       nvl( sum( e.cant_dispon ), 0 ) cantidad,',
'       a.cod_art_corto ',
'  from st_articulos a, st_existencia_art e ',
' where a.cod_empresa = :P_COD_EMPRESA',
'   and ( a.estado is null or a.estado <> ''I'' ) ',
'   and a.cod_empresa = e.cod_empresa (+) ',
'   and a.cod_articulo = e.cod_articulo (+)',
'   and :P491_COD_SUCURSAL = e.cod_sucursal (+) ',
' group by a.cod_art_corto,a.descripcion, a.cod_articulo ',
' order by a.descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_ARTICULO'
,p_display_column_name=>'COD_ARTICULO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(161489134310926508)
,p_query_column_name=>'COD_ART_CORTO'
,p_heading=>'Cod Art Corto'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(161489574933926508)
,p_query_column_name=>'COD_ARTICULO'
,p_heading=>'Cod Articulo'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(161489992056926508)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(161490394060926507)
,p_query_column_name=>'CANTIDAD'
,p_heading=>'Cantidad'
,p_display_sequence=>40
,p_data_type=>'NUMBER'
);
wwv_flow_imp.component_end;
end;
/
