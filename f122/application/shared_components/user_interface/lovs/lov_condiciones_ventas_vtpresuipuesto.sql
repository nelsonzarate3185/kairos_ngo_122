prompt --application/shared_components/user_interface/lovs/lov_condiciones_ventas_vtpresuipuesto
begin
--   Manifest
--     LOV_CONDICIONES_VENTAS_VTPRESUIPUESTO
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
 p_id=>wwv_flow_imp.id(99652753880160327)
,p_lov_name=>'LOV_CONDICIONES_VENTAS_VTPRESUIPUESTO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.descripcion,',
'       c.cod_condicion_venta,',
'       c.cod_lista_precio,',
'       l.descripcion lista_precio,',
'       c.cod_condicion_venta||'' - ''||c.descripcion descrip',
'  from cc_condiciones_ventas c, vt_listas_precios_cab l',
' where c.cod_empresa = ''1''',
'   and l.cod_empresa = c.cod_empresa',
'   and c.cod_lista_precio = l.cod_lista_precio',
'   AND C.COD_CONDICION_VENTA IN (''205'', ''206'', ''42'')'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CONDICION_VENTA'
,p_display_column_name=>'DESCRIP'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(99653426676183293)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>unistr('Descripci\00F3n')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(99653805011183294)
,p_query_column_name=>'COD_CONDICION_VENTA'
,p_heading=>unistr('C\00F3digo Condici\00F3n')
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(99654267520183294)
,p_query_column_name=>'COD_LISTA_PRECIO'
,p_heading=>unistr('C\00F3d. Lista Precio')
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(99654649465183294)
,p_query_column_name=>'LISTA_PRECIO'
,p_heading=>'Lista Precio'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(99655086600183294)
,p_query_column_name=>'DESCRIP'
,p_heading=>'Descrip'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp.component_end;
end;
/
