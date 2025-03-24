prompt --application/shared_components/user_interface/lovs/lv_salfac_cccancuo
begin
--   Manifest
--     LV_SALFAC_CCCANCUO
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
 p_id=>wwv_flow_imp.id(113988888003289857)
,p_lov_name=>'LV_SALFAC_CCCANCUO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select /*+ RULE */ tipo_comprobante,',
'       substr(ser_comprobante,1,8) ser_comprobante, ',
'       nro_comprobante, ',
'       nro_cuota, ',
'       saldo_cuota - nvl( rec_pendientes,0) as saldo_cuota , ',
'       monto_cuota, ',
'       cod_moneda_cuota, ',
'       fec_vencimiento,',
'       fec_acobrar',
'  from cc_saldos',
' where cod_empresa = :P_COD_EMPRESA',
'   and cod_cliente = :P386_COD_CLIENTE',
'   and ((:P386_CONTROL_ORIGEN = 0 AND ( saldo_cuota ) > 0) OR :P386_CONTROL_ORIGEN = 1)',
'   and ((nro_comprobante = :P386_NRO_REC_GC) or :P386_NRO_REC_GC is null)',
'order by fec_vencimiento'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'NRO_COMPROBANTE'
,p_display_column_name=>'TIPO_COMPROBANTE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(114030472522295844)
,p_query_column_name=>'TIPO_COMPROBANTE'
,p_heading=>'Tipo Comprobante'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(114030827950295844)
,p_query_column_name=>'SER_COMPROBANTE'
,p_heading=>'Ser Comprobante'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(114031246758295845)
,p_query_column_name=>'NRO_COMPROBANTE'
,p_heading=>'Nro Comprobante'
,p_display_sequence=>30
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(114031611974295845)
,p_query_column_name=>'NRO_CUOTA'
,p_heading=>'Nro Cuota'
,p_display_sequence=>40
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(114032076004295845)
,p_query_column_name=>'SALDO_CUOTA'
,p_heading=>'Saldo Cuota'
,p_display_sequence=>50
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(114032484452295845)
,p_query_column_name=>'MONTO_CUOTA'
,p_heading=>'Monto Cuota'
,p_display_sequence=>60
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(114032894677295845)
,p_query_column_name=>'COD_MONEDA_CUOTA'
,p_heading=>'Cod Moneda Cuota'
,p_display_sequence=>70
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(114033268222295846)
,p_query_column_name=>'FEC_VENCIMIENTO'
,p_heading=>'Fec Vencimiento'
,p_display_sequence=>80
,p_data_type=>'DATE'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(114033632563295846)
,p_query_column_name=>'FEC_ACOBRAR'
,p_heading=>'Fec Acobrar'
,p_display_sequence=>90
,p_data_type=>'DATE'
);
wwv_flow_imp.component_end;
end;
/
