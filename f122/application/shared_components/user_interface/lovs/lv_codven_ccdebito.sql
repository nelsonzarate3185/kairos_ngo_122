prompt --application/shared_components/user_interface/lovs/lv_codven_ccdebito
begin
--   Manifest
--     LV_CODVEN_CCDEBITO
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
 p_id=>wwv_flow_imp.id(140872256312907589)
,p_lov_name=>'LV_CODVEN_CCDEBITO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, ',
'       cod_condicion_venta, ',
'       nro_cuotas ',
'  from cc_condiciones_ventas ',
' where cod_empresa = :P_COD_EMPRESA',
'  order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CONDICION_VENTA'
,p_display_column_name=>'COD_CONDICION_VENTA'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(140884797530810179)
,p_query_column_name=>'COD_CONDICION_VENTA'
,p_heading=>'Cod Condicion Venta'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(140885172985810179)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(140885539087810178)
,p_query_column_name=>'NRO_CUOTAS'
,p_heading=>'Nro Cuotas'
,p_display_sequence=>30
,p_data_type=>'NUMBER'
);
wwv_flow_imp.component_end;
end;
/
