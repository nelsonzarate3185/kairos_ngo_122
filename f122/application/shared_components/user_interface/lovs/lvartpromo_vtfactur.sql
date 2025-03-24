prompt --application/shared_components/user_interface/lovs/lvartpromo_vtfactur
begin
--   Manifest
--     LVARTPROMO_VTFACTUR
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
 p_id=>wwv_flow_imp.id(27136537072015387)
,p_lov_name=>'LVARTPROMO_VTFACTUR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select a.descripcion||''(''||p.cod_corto_art||'')'' descripcion,',
'        p.cod_articulo,',
'        p.fec_alta fecha_alta,',
'        p.nro_promo  ',
'   from inv.st_promocion p,st_articulos a',
'  where p.cod_empresa=a.cod_empresa',
'    and p.cod_articulo=a.cod_articulo',
'    and p.cod_art_promo=:P99_COD_ARTICULO_AUX',
'    and p.cod_empresa=:P_COD_EMPRESA;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'NRO_PROMO'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DESCRIPCION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(27137025385020257)
,p_query_column_name=>'NRO_PROMO'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(27137476278020257)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(27137838904020257)
,p_query_column_name=>'COD_ARTICULO'
,p_heading=>'Cod Articulo'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(27138262927020257)
,p_query_column_name=>'FECHA_ALTA'
,p_heading=>'Fecha Alta'
,p_display_sequence=>40
,p_data_type=>'DATE'
);
wwv_flow_imp.component_end;
end;
/
