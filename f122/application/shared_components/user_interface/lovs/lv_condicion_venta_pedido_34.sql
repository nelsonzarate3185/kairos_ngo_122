prompt --application/shared_components/user_interface/lovs/lv_condicion_venta_pedido_34
begin
--   Manifest
--     LV_CONDICION_VENTA_PEDIDO_34
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
 p_id=>wwv_flow_imp.id(106543022385950280)
,p_lov_name=>'LV_CONDICION_VENTA_PEDIDO_34'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION||'' (''||COD_CONDICION_VENTA||'')'' d, COD_CONDICION_VENTA , DESCRIPCION FROM CC_CONDICIONES_VENTAS',
'WHERE COD_EMPRESA=''1''',
'AND ESTADO=''A''',
'--and :P34_SUCURSAL=''01''',
' /*union all',
' select DESCRIPCION||'' (''||COD_CONDICION_VENTA||'')'' d, COD_CONDICION_VENTA, DESCRIPCION FROM CC_CONDICIONES_VENTAS',
'WHERE COD_EMPRESA=''1''',
'AND ESTADO=''A''',
'and :P34_SUCURSAL in(''105.1'',''105'')',
'and cod_condicion_venta in (''178'')*/',
' ',
'order by 2'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CONDICION_VENTA'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(106543674088960507)
,p_query_column_name=>'COD_CONDICION_VENTA'
,p_heading=>'Codigo'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(106544000049960508)
,p_query_column_name=>'D'
,p_heading=>'Desc_Condicion'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(106544477151960508)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp.component_end;
end;
/
