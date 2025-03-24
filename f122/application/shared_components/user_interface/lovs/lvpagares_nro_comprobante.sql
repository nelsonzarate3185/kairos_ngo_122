prompt --application/shared_components/user_interface/lovs/lvpagares_nro_comprobante
begin
--   Manifest
--     LVPAGARES_NRO_COMPROBANTE
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
 p_id=>wwv_flow_imp.id(112279368523675056)
,p_lov_name=>'LVPAGARES_NRO_COMPROBANTE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(sal.nro_comprobante) nro_comprobante, sal.nro_valor, sal.nro_cuota, sal.tipo_comprobante, sal.ser_comprobante, nvl(rtrim(p.nombre ), ltrim(p.nomb_fantasia) )nombre, c.cod_cliente, sal.saldo_cuota, null cod_per_juridica ',
'from cc_saldos sal, cc_clientes c, personas p ',
'where sal.cod_empresa = :P_COD_EMPRESA',
'and sal.monto_cuota > 0 ',
'and sal.monto_cuota = sal.saldo_cuota ',
'and nvl( sal.tipo_comprobante,''DFL'' ) = :P375_A_TIP_COMPROBANTE',
'and sal.ser_comprobante = :P375_A_SER_COMPROBANTE ',
'and sal.cod_custodio = :P375_COD_CUSTODIO_SAL ',
'and sal.cod_empresa = c.cod_empresa ',
'and sal.cod_cliente = c.cod_cliente ',
'and c.cod_persona = p.cod_persona ',
'union all ',
'select sal.nro_valor, null, 0, sal.tip_documento, sal.ser_documento, nvl(rtrim(p.nombre ), ltrim( p.nomb_fantasia ) ) nombre, c.cod_cliente, sal.monto_valor, sal.cod_per_juridica ',
'from cc_valores sal, cc_clientes c, personas p ',
'where sal.cod_empresa = :P_COD_EMPRESA',
'and nvl(sal.estado_valor,''P'') in ( ''P'',''R'') ',
'and sal.cod_custodio = :P375_COD_CUSTODIO_SAL',
'and sal.tip_documento = :P375_A_TIP_COMPROBANTE',
'and sal.ser_documento = :P375_A_SER_COMPROBANTE',
'and sal.cod_empresa = c.cod_empresa ',
'and sal.cod_cliente = c.cod_cliente ',
'and c.cod_persona = p.cod_persona ',
'and sal.nro_comprobante is null ',
'order by 1;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'NRO_COMPROBANTE'
,p_display_column_name=>'NRO_COMPROBANTE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(116112967672102585)
,p_query_column_name=>'NRO_COMPROBANTE'
,p_heading=>'Nro Comprobante'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(116113334937102586)
,p_query_column_name=>'NRO_CUOTA'
,p_heading=>'Nro Cuota'
,p_display_sequence=>20
,p_data_type=>'NUMBER'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(116113794908102586)
,p_query_column_name=>'TIPO_COMPROBANTE'
,p_heading=>'Tipo Comprobante'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(116114170900102587)
,p_query_column_name=>'SER_COMPROBANTE'
,p_heading=>'Ser Comprobante'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(116114546004102587)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(116114915023102587)
,p_query_column_name=>'COD_CLIENTE'
,p_heading=>'Cod Cliente'
,p_display_sequence=>60
,p_data_type=>'VARCHAR2'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(116115311449102587)
,p_query_column_name=>'SALDO_CUOTA'
,p_heading=>'Saldo Cuota'
,p_display_sequence=>70
,p_data_type=>'NUMBER'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(116115739159102587)
,p_query_column_name=>'COD_PER_JURIDICA'
,p_heading=>'Cod Per Juridica'
,p_display_sequence=>80
,p_data_type=>'VARCHAR2'
,p_is_searchable=>'N'
);
wwv_flow_imp.component_end;
end;
/
