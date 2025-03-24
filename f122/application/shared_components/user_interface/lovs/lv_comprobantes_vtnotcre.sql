prompt --application/shared_components/user_interface/lovs/lv_comprobantes_vtnotcre
begin
--   Manifest
--     LV_COMPROBANTES_VTNOTCRE
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
 p_id=>wwv_flow_imp.id(17953371555605644)
,p_lov_name=>'LV_COMPROBANTES_VTNOTCRE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.tip_comprobante, c.ser_comprobante, c.nro_comprobante, c.fec_comprobante, p.nombre, c.cod_cliente ',
'from vt_comprobantes_cabecera c, vt_comprobantes_detalle d, personas p, cc_clientes cc, tipos_comprobantes tc ',
'where c.cod_empresa = :P_COD_EMPRESA',
'and ( c.cod_cliente = :P103_COD_CLIENTE or :P103_COD_CLIENTE is null ) ',
'and ( c.ser_comprobante = :P103_SER_COMPROBANTE or :P103_SER_COMPROBANTE is null ) ',
'and c.cod_empresa = d.cod_empresa ',
'and c.tip_comprobante = d.tip_comprobante ',
'and c.ser_comprobante = d.ser_comprobante ',
'and c.nro_comprobante = d.nro_comprobante ',
'and c.cod_empresa = tc.cod_empresa ',
'and c.tip_comprobante = tc.tip_comprobante /*and tc.tip_talonario = ''FAC'' */ ',
'and ( c.estado is null or c.estado <> ''A'') ',
'and c.cod_empresa = cc.cod_empresa ',
'and c.cod_cliente = cc.cod_cliente ',
'and cc.cod_persona = p.cod_persona ',
'group by c.tip_comprobante, c.ser_comprobante, c.nro_comprobante, c.fec_comprobante, p.nombre, c.cod_cliente ',
'order by 4 desc'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'SER_COMPROBANTE'
,p_display_column_name=>'SER_COMPROBANTE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(17955002088668531)
,p_query_column_name=>'SER_COMPROBANTE'
,p_heading=>'Serie'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(17955495548668531)
,p_query_column_name=>'TIP_COMPROBANTE'
,p_heading=>'Tipo'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(17955874258668531)
,p_query_column_name=>'NRO_COMPROBANTE'
,p_heading=>unistr('N\00FAmero')
,p_display_sequence=>30
,p_data_type=>'NUMBER'
);
wwv_flow_imp.component_end;
end;
/
