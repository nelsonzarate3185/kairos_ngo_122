prompt --application/shared_components/user_interface/lovs/lv_saldos_3_ccrecibo
begin
--   Manifest
--     LV_SALDOS_3_CCRECIBO
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
 p_id=>wwv_flow_imp.id(136560505730283748)
,p_lov_name=>'LV_SALDOS_3_CCRECIBO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select /*+ rule */',
'     c.tipo_comprobante TIPO_COMPROBANTE,',
'     c.ser_comprobante SER_COMPROBANTE,',
'     c.nro_comprobante,',
'     c.nro_cuota,',
'     c.nro_valor,',
'     c.saldo_cuota - nvl(c.rec_pendientes, 0) as saldo_cuota,',
'     c.monto_cuota,',
'     c.cod_moneda_cuota,',
'     c.fec_vencimiento,',
'     c.fec_acobrar,',
'     c.cod_custodio,',
'     c.rowid ROW_ID',
'  from cc_saldos c',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_cliente = :P394_CLIENTE',
'   AND C.FEC_VENCIMIENTO > ADD_MONTHS(SYSDATE, -900)',
'   and nvl(c.saldo_cuota, 0) - nvl(rec_pendientes, 0) <> 0',
'   and (c.cod_custodio = :P394_CUSTODIO or',
'       c.cod_custodio in',
'       (select cod_custodio',
'           from usuarios_custodios',
'          where cod_empresa = :P_COD_EMPRESA',
'            and cod_usuario = :P_COD_USUARIO))',
' order by fec_vencimiento'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'NRO_COMPROBANTE'
,p_display_column_name=>'NRO_COMPROBANTE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(136560868020283747)
,p_query_column_name=>'ROW_ID'
,p_heading=>'Row Id'
,p_display_sequence=>10
,p_data_type=>'ROWID'
,p_is_visible=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(136561255872283746)
,p_query_column_name=>'TIPO_COMPROBANTE'
,p_heading=>'Tipo Comprobante'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(136561668876283746)
,p_query_column_name=>'SER_COMPROBANTE'
,p_heading=>'Ser Comprobante'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(136562012887283746)
,p_query_column_name=>'NRO_COMPROBANTE'
,p_heading=>'Nro Comprobante'
,p_display_sequence=>30
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(136562489153283746)
,p_query_column_name=>'NRO_CUOTA'
,p_heading=>'Nro Cuota'
,p_display_sequence=>40
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(136562825650283746)
,p_query_column_name=>'NRO_VALOR'
,p_heading=>'Nro Valor'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(136563226546283746)
,p_query_column_name=>'SALDO_CUOTA'
,p_heading=>'Saldo Cuota'
,p_display_sequence=>60
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(136563670655283746)
,p_query_column_name=>'MONTO_CUOTA'
,p_heading=>'Monto Cuota'
,p_display_sequence=>70
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(136564035192283745)
,p_query_column_name=>'COD_MONEDA_CUOTA'
,p_heading=>'Cod Moneda Cuota'
,p_display_sequence=>80
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(136564461056283745)
,p_query_column_name=>'FEC_VENCIMIENTO'
,p_heading=>'Fec Vencimiento'
,p_display_sequence=>90
,p_data_type=>'DATE'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(136564826458283745)
,p_query_column_name=>'FEC_ACOBRAR'
,p_heading=>'Fec Acobrar'
,p_display_sequence=>100
,p_data_type=>'DATE'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(136565268877283745)
,p_query_column_name=>'COD_CUSTODIO'
,p_heading=>'Cod Custodio'
,p_display_sequence=>110
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
