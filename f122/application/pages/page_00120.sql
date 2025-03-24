prompt --application/pages/page_00120
begin
--   Manifest
--     PAGE: 00120
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page(
 p_id=>120
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Datos Reparto'
,p_alias=>'DATOS-REPARTO'
,p_page_mode=>'MODAL'
,p_step_title=>'Datos Reparto'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20221028092158'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(133543845419605278)
,p_name=>'Planilla'
,p_template=>wwv_flow_imp.id(40096829222263653)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   NVL(RC.FECHA_SALIDA,RC.FEC_PLANILLA)FECHA_PLANILLA,        ve.descripcion vehiculo,                ',
'        ltrim( rtrim( nvl( pc.nombre, pc.nomb_fantasia ) ) ) nomBRE_cliente,',
'      CC.tot_comprobante TOTAL_FACTURA,        cc.fec_comprobante FECHA_FACTURA,        ',
'       ',
'        NVL( ( Select upper(nombre ||''  - ''||telefono)',
'    ',
'          ',
'    from rp_repartidores_log r',
'   where r.cod_empresa = rc.cod_empresa',
'     and r.cod_repartidor = rc.cod_repartidor_mm',
'         and rownum=1),ltrim( rtrim( nvl( pr.nombre, pr.nomb_fantasia ) ) ))repartidor_mm,',
'         RC.HORA_ALTA,',
'           ROUND(rd.volumen,3) VOLUMEN',
'     , RC.NRO_PLANILLA',
'     ',
'     ',
'          ',
'   from rp_reparto_cabecera rc, rp_reparto_detalle rd, vt_comprobantes_cabecera cc, personas pr, rp_repartidores re,',
'        personas pc, cc_clientes cl, monedas mo, sucursales su, rp_vehiculos ve, rp_zonas_reparto zo,',
'        tipos_comprobantes tc, zonas_geograficas zg, vt_pedidos_cabecera ped',
'  where ped.cod_empresa=''1''',
'  and PED.TIP_COMPROBANTE=''PED''',
'    and ped.ser_comprobante=:P120_SER_COMPROBANTE',
'    AND PED.NRO_COMPROBANTE=:P120_NRO_COMPROBANTE',
'    ',
'    and cc.cod_empresa=ped.cod_empresa',
'    and cc.tip_comprobante_ref=ped.tip_comprobante',
'    and cc.ser_comprobante_ref=ped.ser_comprobante',
'    and cc.nro_comprobante_ref=ped.nro_comprobante',
'  ',
'    and rc.cod_empresa = rd.cod_empresa',
'    and rc.nro_planilla = rd.nro_planilla',
'    and rd.cod_empresa = cc.cod_empresa',
'    and rd.tip_comprobante = cc.tip_comprobante',
'    and rd.ser_comprobante = cc.ser_comprobante',
'    and rd.nro_comprobante = cc.nro_comprobante',
' ',
'    and cc.cod_empresa = cl.cod_empresa',
'    and cc.cod_cliente = cl.cod_cliente',
'    and pc.cod_persona = cl.cod_persona',
'    and cl.cod_zona = zg.cod_zona (+)',
'    and rc.cod_empresa = re.cod_empresa (+)',
'    and rc.cod_repartidor = re.cod_repartidor (+)',
'    and pr.cod_persona (+) = re.cod_persona',
'    and cc.cod_moneda = mo.cod_moneda',
'    and rc.cod_empresa = su.cod_empresa',
'    and rc.cod_sucursal = su.cod_sucursal',
'    and rc.cod_empresa = ve.cod_empresa (+)',
'    and rc.cod_vehiculo = ve.cod_vehiculo (+)',
'    and rc.cod_zona_reparto = zo.cod_zona_reparto (+)',
'    and rc.cod_empresa = tc.cod_empresa',
'    and rd.tip_comprobante = tc.tip_comprobante'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P120_FACTURA,P120_SER_COMPROBANTE,P120_NRO_COMPROBANTE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27783090502420876)
,p_query_column_id=>1
,p_column_alias=>'FECHA_PLANILLA'
,p_column_display_sequence=>2
,p_column_heading=>'Fecha Planilla'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27783469613420876)
,p_query_column_id=>2
,p_column_alias=>'VEHICULO'
,p_column_display_sequence=>6
,p_column_heading=>'Vehiculo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27783803218420876)
,p_query_column_id=>3
,p_column_alias=>'NOMBRE_CLIENTE'
,p_column_display_sequence=>1
,p_column_heading=>'Nombre Cliente'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27784283256420876)
,p_query_column_id=>4
,p_column_alias=>'TOTAL_FACTURA'
,p_column_display_sequence=>8
,p_column_heading=>'Total Factura'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27784668180420877)
,p_query_column_id=>5
,p_column_alias=>'FECHA_FACTURA'
,p_column_display_sequence=>4
,p_column_heading=>'Fecha Factura'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27785020103420877)
,p_query_column_id=>6
,p_column_alias=>'REPARTIDOR_MM'
,p_column_display_sequence=>5
,p_column_heading=>'Repartidor Mm'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27785448170420877)
,p_query_column_id=>7
,p_column_alias=>'HORA_ALTA'
,p_column_display_sequence=>3
,p_column_heading=>'Hora Alta'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27785813157420877)
,p_query_column_id=>8
,p_column_alias=>'VOLUMEN'
,p_column_display_sequence=>7
,p_column_heading=>'Volumen'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27786219237420877)
,p_query_column_id=>9
,p_column_alias=>'NRO_PLANILLA'
,p_column_display_sequence=>9
,p_column_heading=>'Nro Planilla'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27786694394420878)
,p_name=>'P120_FECHA_PLANILLA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133543845419605278)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27787065095420878)
,p_name=>'P120_NRO_PLANILLA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(133543845419605278)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27787470318420878)
,p_name=>'P120_VEHICULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133543845419605278)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27787828718420879)
,p_name=>'P120_REPARTIDOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(133543845419605278)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27788261326420879)
,p_name=>'P120_CLIENTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(133543845419605278)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27788691671420879)
,p_name=>'P120_FECHA_FACTURA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(133543845419605278)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27789011733420879)
,p_name=>'P120_FACTURA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(133543845419605278)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27789475119420879)
,p_name=>'P120_VOLUMEN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(133543845419605278)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27789811535420880)
,p_name=>'P120_TOTAL_COMPROBANTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(133543845419605278)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27790276938420880)
,p_name=>'P120_SER_COMPROBANTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(133543845419605278)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27790659688420880)
,p_name=>'P120_NRO_COMPROBANTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(133543845419605278)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27791064612420880)
,p_name=>'carga_inicial'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27791568192420881)
,p_event_id=>wwv_flow_imp.id(27791064612420880)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select   rc.fec_planilla,        ve.descripcion desc_vehiculo,                ',
'        ltrim( rtrim( nvl( pc.nombre, pc.nomb_fantasia ) ) ) nom_cliente,',
'         TO_CHAR(cc.tot_comprobante,''999G999G999G990''),        cc.fec_comprobante,        ',
'         ROUND(rd.volumen,3),',
'        NVL( ( Select upper(nombre ||''  - ''||telefono)',
'    ',
'          ',
'    from rp_repartidores_log  r',
'   where r.cod_empresa = rc.cod_empresa',
'     and r.cod_repartidor = rc.cod_repartidor_mm',
'         and rownum=1),ltrim( rtrim( nvl( pr.nombre, pr.nomb_fantasia ) ) ))repartidor_mm',
'     ',
'     ',
'     ',
'          INTO :P120_FECHA_PLANILLA, :P120_VEHICULO,:P120_CLIENTE,',
'          :P120_TOTAL_COMPROBANTE, :P120_FECHA_FACTURA, :P120_VOLUMEN, :P120_REPARTIDOR',
'   from rp_reparto_cabecera  rc, rp_reparto_detalle  rd, vt_comprobantes_cabecera  cc, personas  pr, rp_repartidores  re,',
'        personas  pc, cc_clientes  cl, monedas  mo, sucursales  su, rp_vehiculos  ve, rp_zonas_reparto  zo,',
'        tipos_comprobantes tc, zonas_geograficas zg',
'  where rc.cod_empresa = ''1''',
'   ',
'     and ( rc.nro_planilla = :P120_nro_planilla )',
'   AND (RD.TIP_COMPROBANTE||''-''|| RD.ser_comprobante||''-''|| RD.nro_comprobante)=',
'    (:P120_factura)',
'   ',
'  ',
'    and rc.cod_empresa = rd.cod_empresa',
'    and rc.nro_planilla = rd.nro_planilla',
'    and rd.cod_empresa = cc.cod_empresa',
'    and rd.tip_comprobante = cc.tip_comprobante',
'    and rd.ser_comprobante = cc.ser_comprobante',
'    and rd.nro_comprobante = cc.nro_comprobante',
' ',
'    and cc.cod_empresa = cl.cod_empresa',
'    and cc.cod_cliente = cl.cod_cliente',
'    and pc.cod_persona = cl.cod_persona',
'    and cl.cod_zona = zg.cod_zona (+)',
'    and rc.cod_empresa = re.cod_empresa (+)',
'    and rc.cod_repartidor = re.cod_repartidor (+)',
'    and pr.cod_persona (+) = re.cod_persona',
'    and cc.cod_moneda = mo.cod_moneda',
'    and rc.cod_empresa = su.cod_empresa',
'    and rc.cod_sucursal = su.cod_sucursal',
'    and rc.cod_empresa = ve.cod_empresa (+)',
'    and rc.cod_vehiculo = ve.cod_vehiculo (+)',
'    and rc.cod_zona_reparto = zo.cod_zona_reparto (+)',
'    and rc.cod_empresa = tc.cod_empresa',
'    and rd.tip_comprobante = tc.tip_comprobante;',
'    EXCEPTION WHEN OTHERS THEN NULL;',
'',
'end;'))
,p_attribute_02=>'P120_NRO_PLANILLA,P120_FACTURA'
,p_attribute_03=>'P120_FECHA_PLANILLA,P120_VEHICULO,P120_CLIENTE,P120_FECHA_FACTURA,P120_VOLUMEN,P120_TOTAL_COMPROBANTE,P120_REPARTIDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
