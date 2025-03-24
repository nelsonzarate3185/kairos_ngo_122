prompt --application/shared_components/user_interface/lovs/lov_condicion_venta_vtpedido
begin
--   Manifest
--     LOV_CONDICION_VENTA_VTPEDIDO
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
 p_id=>wwv_flow_imp.id(94562971203273556)
,p_lov_name=>'LOV_CONDICION_VENTA_VTPEDIDO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.descripcion,',
'       c.cod_condicion_venta,',
'       c.cod_lista_precio,',
'       l.descripcion lista_precio,',
'       c.cod_condicion_venta||'' - ''||c.descripcion descri',
'  FROM cc_condiciones_ventas c, vt_listas_precios_cab l',
' WHERE c.cod_empresa = ''1''',
'   AND c.estado = ''A''',
'   AND l.cod_empresa = c.cod_empresa',
'   AND c.cod_lista_precio = l.cod_lista_precio'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CONDICION_VENTA'
,p_display_column_name=>'DESCRI'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DESCRIPCION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(94563995641281501)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>unistr('Descripci\00F3n')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(94684510641677648)
,p_query_column_name=>'DESCRI'
,p_heading=>'Descri'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(94563587083281500)
,p_query_column_name=>'COD_CONDICION_VENTA'
,p_heading=>unistr('C\00F3digo Venta')
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(94564396706281501)
,p_query_column_name=>'COD_LISTA_PRECIO'
,p_heading=>unistr('C\00F3digo Lista Precio')
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(94564782222281501)
,p_query_column_name=>'LISTA_PRECIO'
,p_heading=>'Lista Precio'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
