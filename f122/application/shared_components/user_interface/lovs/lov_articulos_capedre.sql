prompt --application/shared_components/user_interface/lovs/lov_articulos_capedre
begin
--   Manifest
--     LOV_ARTICULOS_CAPEDRE
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
 p_id=>wwv_flow_imp.id(167433841036020517)
,p_lov_name=>'LOV_ARTICULOS_CAPEDRE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.descripcion,',
'       a.cod_articulo,',
'       nvl(SUM(e.cant_dispon), 0) cantidad,',
'       a.cod_rubro,',
'       a.cod_articulo||''  - ''||a.descripcion descri',
'  FROM st_articulos        a,',
'       st_existencia_art   e,',
'       vt_ordenes_trabajo  v,',
'       st_equivalencia_art s',
' WHERE a.cod_empresa = :P_COD_EMPRESA',
'   AND (a.estado IS NULL OR a.estado <> ''I'')',
'   AND a.cod_empresa = e.cod_empresa(+)',
'   AND a.cod_articulo = e.cod_articulo(+)',
'   AND :P327_COD_SUCURSAL = e.cod_sucursal(+)',
'   AND v.cod_empresa = a.cod_empresa',
'   AND v.tip_comprobante = :P327_TIP_COMPROBANTE_REF',
'   AND v.ser_comprobante = :P327_SER_COMPROBANTE_REF',
'   AND v.nro_comprobante = :P327_NRO_COMPROBANTE_REF',
'   AND v.cod_articulo = s.cod_articulo',
'   AND v.cod_empresa = s.cod_empresa',
'   AND s.cod_articulo_equi = a.cod_articulo',
' GROUP BY a.descripcion, a.cod_articulo, a.cod_rubro',
' ORDER BY 4, 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_ARTICULO'
,p_display_column_name=>'DESCRI'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(167434941938010726)
,p_query_column_name=>'COD_ARTICULO'
,p_heading=>unistr('C\00F3d. Articulo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(167435364684010725)
,p_query_column_name=>'DESCRI'
,p_heading=>'Descri'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(167435703369010725)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(167436171252010725)
,p_query_column_name=>'CANTIDAD'
,p_heading=>'Cantidad'
,p_display_sequence=>40
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(167436565669010724)
,p_query_column_name=>'COD_RUBRO'
,p_heading=>'Cod Rubro'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
