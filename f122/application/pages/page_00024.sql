prompt --application/pages/page_00024
begin
--   Manifest
--     PAGE: 00024
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
 p_id=>24
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Anulaci\00F3n de Facturas')
,p_alias=>unistr('ANULACI\00D3N-DE-FACTURAS')
,p_step_title=>unistr('Anulaci\00F3n de Facturas')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#bt_anular{',
'    width: 50%;',
'    margin-left: 25%;',
'    height: 80px;',
'    font-size: 30px;',
'    background: #db4f4f;',
'    margin-top: 40px;',
'    margin-bottom: 40px;',
'}',
'',
'#bt_anular:hover{',
'    background: red;',
'}',
'',
'#bt_envio_pendiente {',
'    margin-left: 25%;',
'    width: 50%;',
'    margin-bottom: 10px;',
'    color: white;',
'    font-weight: 500;',
'    background: #0076df;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240425151351'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7709644571151320)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>unistr('<p style="font-size:20px;font-weight:600;margin-top:10px;margin-bottom:10px">Anulaci\00F3n de Facturas</p>')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15959279390390625)
,p_plug_name=>'Principal'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16308349648391720)
,p_plug_name=>'Reporte de Comprobantes'
,p_region_name=>'FACTURAS'
,p_parent_plug_id=>wwv_flow_imp.id(15959279390390625)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       COD_SUCURSAL,',
'       FEC_COMPROBANTE,',
'       (SELECT COD_CLIENTE||'' - ''||nombre ',
'  FROM cc_clientes cC, personas p ',
' WHERE cC.cod_empresa = C.COD_EMPRESA',
'   AND cC.cod_persona = p.cod_persona ',
'   AND CC.cod_cliente=C.COD_CLIENTE)COD_CLIENTE,',
'       (SELECT COD_VENDEDOR||'' - ''||nombre ',
'  FROM FV_VENDEDORES cC, personas p ',
' WHERE cC.cod_empresa = C.COD_EMPRESA',
'   AND cC.cod_persona = p.cod_persona ',
'   AND CC.COD_VENDEDOR=C.COD_VENDEDOR)   COD_VENDEDOR,',
'       TIP_COMPROBANTE_REF,',
'       SER_COMPROBANTE_REF,',
'       NRO_COMPROBANTE_REF,',
'       COD_CONDICION_VENTA,',
'       COD_LISTA_PRECIO,',
'       DESCUENTO,',
'       COD_MONEDA,',
'       TIP_CAMBIO,',
'       TOT_COMPROBANTE,',
'       TOT_GRAVADAS,',
'       TOT_EXENTAS,',
'       TOT_IVA,',
'       NRO_MOV_CAJ,',
'       ESTADO,',
'       FEC_ESTADO,',
'       COD_USUARIO,',
'       FEC_ALTA,',
'       DESCUENTO_DET,',
'       TOT_DESCUENTO_DET,',
'       CAMBIO_DOLAR,',
'       CAMBIO_MONEDA_PRECIO,',
'       NOM_CLIENTE,',
'       ESTADO_REPARTO,',
'       TOT_IVA_SIN_REDONDEO,',
'       TIP_CAMBIO_COMPRA,',
'       COMENTARIO,',
'       GRU_COMPROBANTE,',
'       COD_PERSONA,',
'       ENTREGA_INICIAL,',
'       COD_SECTOR,',
'       VENCIMIENTO_INICIAL,',
'       TIP_MOV_CAJ,',
'       REFERENCIA,',
'       TEL_CLIENTE,',
'       COLUMNA,',
'       SER_MOV_CAJ,',
'       RUC,',
'       NRO_REMISION,',
'       NOMBRE_CAB,',
'       LIBRO_IVA,',
'       ESTADO_EMPAQUE,',
'       DIR_CLIENTE,',
'       DIAS,',
'       COD_DIRECCION,',
'       COD_ENCARGADO_FAC,',
'       COD_USUARIO_ANU,',
'       COD_MOTIVO_ANU,',
'       AJUSTE_IVA,',
'       TOT_RECARGO_DET,',
'       COD_CUSTODIO,',
'       TOT_EXENTAS_GEN,',
'       COD_TIPO_VENTA,',
'       ASIENTOS,',
'       SENIA,',
'       DESCUENTO_EX,',
'       DESCUENTO_GR,',
'       RECARGO_EX,',
'       RECARGO_GR,',
'       COD_CONDICION_VENTA_FAC,',
'       NRO_INSCRIPCION_AD,',
'       IND_EXENTO_AD,',
'       HORA_ALTA,',
'       RECARGO,',
'       CONTROL_FIN,',
'       FECHA_INICIAL,',
'       FECHA_FINAL,',
'       TIP_OT,',
'       SER_OT,',
'       NRO_OT,',
'       IND_OT,',
'       FEC_PAGO,',
'       IND_IMPRESO,',
'       IND_REPARTO,',
'       COD_SUCURSAL_CLI,',
'       LUGAR_ENTREGA,',
'       NRO_ORDEN_COMPRA,',
'       IND_CAJA,',
'       FEC_PLANILLA_CAJA,',
'       COD_USUARIO_CAJA,',
'       NRO_REGISTRO_DEV,',
'       IND_PLAN_ENTREGA,',
'       IND_ANTICIPO_OT,',
'       IND_IMPRESO_ORDEN,',
'       MONTO_ORDEN_REG,',
'       NRO_PLANILLA_PEDIDO,',
'       IMPORTE_CAPITAL,',
'       IMPORTE_INTERES,',
'       IND_CONFIRMA_ENVIO,',
'       NRO_FACTURA_QM,',
'       MONTO_DEV_NCR,',
'       ASIENTO_DEVOLUCION_VALOR,',
'       ASIENTOS_COSTO,',
'       ASIENTOS_ANULACION,',
'       NULL VER_DETALLE, case when estado=''A'' THEN ''ANULADO'' ELSE ''ACTIVO'' END DESC_ESTADO_FACTURA',
'  from VT_COMPROBANTES_CABECERA C',
'  where cod_empresa = :P_COD_EMPRESA ',
'     and fec_comprobante between (  ',
'    select  fec_inicial        ',
'      from calendarios CC',
'     where CC.cod_empresa = C.cod_empresa',
'       and CC.cod_modulo = ''VT'')',
'    and (  ',
'    select  fec_FINAL     ',
'      from calendarios CC',
'     where CC.cod_empresa = C.cod_empresa',
'       and CC.cod_modulo = ''VT'')',
'       and  round((TO_NUMBER(SYSDATE - nVL(FECHA_ALTA_COMPROBANTE,FEC_ALTA))) * 24, 2) < 47',
' order by tip_comprobante, ser_comprobante, nro_comprobante'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_SUCURSAL,P_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte de Comprobantes'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(17489196490579992)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MILAGROFE'
,p_internal_uid=>17489196490579992
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9529257190959696)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9529622610959696)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tipo Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9530046251959697)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Serie de Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9530461096959697)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro. Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9530882941959697)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9531206226959697)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9531641846959697)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9532052357959697)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(6512217793593966)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9532481733959698)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9532800079959698)
,p_db_column_name=>'COD_LISTA_PRECIO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Lista Precio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9533229538959698)
,p_db_column_name=>'DESCUENTO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Descuento'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9533685903959698)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9534080951959698)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Tip Cambio'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9534467389959698)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9534873078959699)
,p_db_column_name=>'TOT_GRAVADAS'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Tot Gravadas'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9535233744959699)
,p_db_column_name=>'TOT_EXENTAS'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Tot Exentas'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9535680457959699)
,p_db_column_name=>'TOT_IVA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Tot Iva'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9536090584959699)
,p_db_column_name=>'ESTADO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9536476191959699)
,p_db_column_name=>'FEC_ESTADO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Fec Estado'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9536859449959699)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9537214026959700)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Fec Alta'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9538089742959700)
,p_db_column_name=>'CAMBIO_MONEDA_PRECIO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Cambio Moneda Precio'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9538450003959700)
,p_db_column_name=>'TIP_CAMBIO_COMPRA'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Tip Cambio Compra'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9539250702959701)
,p_db_column_name=>'TOT_DESCUENTO_DET'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Tot Descuento Det'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9539666817959701)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9540013171959701)
,p_db_column_name=>'TEL_CLIENTE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Tel Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9540485834959701)
,p_db_column_name=>'RUC'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Ruc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9541293195959702)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9541600645959702)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Nom Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9542095583959702)
,p_db_column_name=>'NOMBRE_CAB'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Nombre Cab'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9542458995959702)
,p_db_column_name=>'GRU_COMPROBANTE'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Gru Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9543257607959702)
,p_db_column_name=>'DIR_CLIENTE'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Dir Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9543609169959703)
,p_db_column_name=>'DIAS'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Dias'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9544046270959703)
,p_db_column_name=>'DESCUENTO_DET'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Descuento Det'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9544479537959703)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9544848739959703)
,p_db_column_name=>'COLUMNA'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Columna'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9545263380959703)
,p_db_column_name=>'COD_SECTOR'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Cod Sector'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9545665196959703)
,p_db_column_name=>'CAMBIO_DOLAR'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Cambio Dolar'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9546034985959704)
,p_db_column_name=>'COD_DIRECCION'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Cod Direccion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9547684185959704)
,p_db_column_name=>'NRO_INSCRIPCION_AD'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Nro Inscripcion Ad'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9548051225959705)
,p_db_column_name=>'IND_EXENTO_AD'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Ind Exento Ad'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9549697021959705)
,p_db_column_name=>'RECARGO'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Recargo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9550012015959706)
,p_db_column_name=>'CONTROL_FIN'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Control Fin'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9550401877959706)
,p_db_column_name=>'IND_IMPRESO'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Ind Impreso'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9551247503959706)
,p_db_column_name=>'COD_USUARIO_ANU'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Cod Usuario Anu'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9551682529959706)
,p_db_column_name=>'COD_MOTIVO_ANU'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Cod Motivo Anu'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9555698645959708)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>670
,p_column_identifier=>'BO'
,p_column_label=>'Ser Comprobante Ref'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9556050494959708)
,p_db_column_name=>'ENTREGA_INICIAL'
,p_display_order=>680
,p_column_identifier=>'BP'
,p_column_label=>'Entrega Inicial'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9556882033959709)
,p_db_column_name=>'FEC_PAGO'
,p_display_order=>700
,p_column_identifier=>'BR'
,p_column_label=>'Fec Pago'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9558011781959709)
,p_db_column_name=>'HORA_ALTA'
,p_display_order=>730
,p_column_identifier=>'BU'
,p_column_label=>'Hora Alta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9559211427959710)
,p_db_column_name=>'LUGAR_ENTREGA'
,p_display_order=>760
,p_column_identifier=>'BX'
,p_column_label=>'Lugar Entrega'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9559627068959710)
,p_db_column_name=>'NRO_ORDEN_COMPRA'
,p_display_order=>770
,p_column_identifier=>'BY'
,p_column_label=>'Nro Orden Compra'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9560413908959710)
,p_db_column_name=>'ESTADO_REPARTO'
,p_display_order=>790
,p_column_identifier=>'CA'
,p_column_label=>'Estado Reparto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8258340499576105)
,p_db_column_name=>'NRO_MOV_CAJ'
,p_display_order=>800
,p_column_identifier=>'EA'
,p_column_label=>'Nro Mov Caj'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8258437998576106)
,p_db_column_name=>'TOT_IVA_SIN_REDONDEO'
,p_display_order=>810
,p_column_identifier=>'EB'
,p_column_label=>'Tot Iva Sin Redondeo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8258592863576107)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>820
,p_column_identifier=>'EC'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8258648181576108)
,p_db_column_name=>'VENCIMIENTO_INICIAL'
,p_display_order=>830
,p_column_identifier=>'ED'
,p_column_label=>'Vencimiento Inicial'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8258720162576109)
,p_db_column_name=>'TIP_MOV_CAJ'
,p_display_order=>840
,p_column_identifier=>'EE'
,p_column_label=>'Tip Mov Caj'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8258848618576110)
,p_db_column_name=>'REFERENCIA'
,p_display_order=>850
,p_column_identifier=>'EF'
,p_column_label=>'Referencia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8258940743576111)
,p_db_column_name=>'SER_MOV_CAJ'
,p_display_order=>860
,p_column_identifier=>'EG'
,p_column_label=>'Ser Mov Caj'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8259016963576112)
,p_db_column_name=>'NRO_REMISION'
,p_display_order=>870
,p_column_identifier=>'EH'
,p_column_label=>'Nro Remision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8259111319576113)
,p_db_column_name=>'LIBRO_IVA'
,p_display_order=>880
,p_column_identifier=>'EI'
,p_column_label=>'Libro Iva'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8259220206576114)
,p_db_column_name=>'ESTADO_EMPAQUE'
,p_display_order=>890
,p_column_identifier=>'EJ'
,p_column_label=>'Estado Empaque'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8259302643576115)
,p_db_column_name=>'COD_ENCARGADO_FAC'
,p_display_order=>900
,p_column_identifier=>'EK'
,p_column_label=>'Cod Encargado Fac'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8259413699576116)
,p_db_column_name=>'AJUSTE_IVA'
,p_display_order=>910
,p_column_identifier=>'EL'
,p_column_label=>'Ajuste Iva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8259542579576117)
,p_db_column_name=>'TOT_RECARGO_DET'
,p_display_order=>920
,p_column_identifier=>'EM'
,p_column_label=>'Tot Recargo Det'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8259656226576118)
,p_db_column_name=>'COD_CUSTODIO'
,p_display_order=>930
,p_column_identifier=>'EN'
,p_column_label=>'Cod Custodio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8259793989576119)
,p_db_column_name=>'TOT_EXENTAS_GEN'
,p_display_order=>940
,p_column_identifier=>'EO'
,p_column_label=>'Tot Exentas Gen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8259864562576120)
,p_db_column_name=>'COD_TIPO_VENTA'
,p_display_order=>950
,p_column_identifier=>'EP'
,p_column_label=>'Cod Tipo Venta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8259984349576121)
,p_db_column_name=>'ASIENTOS'
,p_display_order=>960
,p_column_identifier=>'EQ'
,p_column_label=>'Asientos'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8260006031576122)
,p_db_column_name=>'SENIA'
,p_display_order=>970
,p_column_identifier=>'ER'
,p_column_label=>'Senia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8260189590576123)
,p_db_column_name=>'DESCUENTO_EX'
,p_display_order=>980
,p_column_identifier=>'ES'
,p_column_label=>'Descuento Ex'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8260265604576124)
,p_db_column_name=>'DESCUENTO_GR'
,p_display_order=>990
,p_column_identifier=>'ET'
,p_column_label=>'Descuento Gr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8260349709576125)
,p_db_column_name=>'RECARGO_EX'
,p_display_order=>1000
,p_column_identifier=>'EU'
,p_column_label=>'Recargo Ex'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8260432338576126)
,p_db_column_name=>'RECARGO_GR'
,p_display_order=>1010
,p_column_identifier=>'EV'
,p_column_label=>'Recargo Gr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8260525882576127)
,p_db_column_name=>'COD_CONDICION_VENTA_FAC'
,p_display_order=>1020
,p_column_identifier=>'EW'
,p_column_label=>'Cod Condicion Venta Fac'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8260653200576128)
,p_db_column_name=>'FECHA_INICIAL'
,p_display_order=>1030
,p_column_identifier=>'EX'
,p_column_label=>'Fecha Inicial'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8260789943576129)
,p_db_column_name=>'FECHA_FINAL'
,p_display_order=>1040
,p_column_identifier=>'EY'
,p_column_label=>'Fecha Final'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8260886811576130)
,p_db_column_name=>'TIP_OT'
,p_display_order=>1050
,p_column_identifier=>'EZ'
,p_column_label=>'Tip Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8260901980576131)
,p_db_column_name=>'SER_OT'
,p_display_order=>1060
,p_column_identifier=>'FA'
,p_column_label=>'Ser Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8261043641576132)
,p_db_column_name=>'NRO_OT'
,p_display_order=>1070
,p_column_identifier=>'FB'
,p_column_label=>'Nro Ot'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8261144425576133)
,p_db_column_name=>'IND_OT'
,p_display_order=>1080
,p_column_identifier=>'FC'
,p_column_label=>'Ind Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8261213713576134)
,p_db_column_name=>'IND_REPARTO'
,p_display_order=>1090
,p_column_identifier=>'FD'
,p_column_label=>'Ind Reparto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8261320443576135)
,p_db_column_name=>'COD_SUCURSAL_CLI'
,p_display_order=>1100
,p_column_identifier=>'FE'
,p_column_label=>'Cod Sucursal Cli'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8261426223576136)
,p_db_column_name=>'IND_CAJA'
,p_display_order=>1110
,p_column_identifier=>'FF'
,p_column_label=>'Ind Caja'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8261531982576137)
,p_db_column_name=>'FEC_PLANILLA_CAJA'
,p_display_order=>1120
,p_column_identifier=>'FG'
,p_column_label=>'Fec Planilla Caja'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8261681469576138)
,p_db_column_name=>'COD_USUARIO_CAJA'
,p_display_order=>1130
,p_column_identifier=>'FH'
,p_column_label=>'Cod Usuario Caja'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8261725453576139)
,p_db_column_name=>'NRO_REGISTRO_DEV'
,p_display_order=>1140
,p_column_identifier=>'FI'
,p_column_label=>'Nro Registro Dev'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8261826578576140)
,p_db_column_name=>'IND_PLAN_ENTREGA'
,p_display_order=>1150
,p_column_identifier=>'FJ'
,p_column_label=>'Ind Plan Entrega'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8261942114576141)
,p_db_column_name=>'IND_ANTICIPO_OT'
,p_display_order=>1160
,p_column_identifier=>'FK'
,p_column_label=>'Ind Anticipo Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8262012643576142)
,p_db_column_name=>'IND_IMPRESO_ORDEN'
,p_display_order=>1170
,p_column_identifier=>'FL'
,p_column_label=>'Ind Impreso Orden'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8262131243576143)
,p_db_column_name=>'MONTO_ORDEN_REG'
,p_display_order=>1180
,p_column_identifier=>'FM'
,p_column_label=>'Monto Orden Reg'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8262277452576144)
,p_db_column_name=>'NRO_PLANILLA_PEDIDO'
,p_display_order=>1190
,p_column_identifier=>'FN'
,p_column_label=>'Nro Planilla Pedido'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8262320156576145)
,p_db_column_name=>'IMPORTE_CAPITAL'
,p_display_order=>1200
,p_column_identifier=>'FO'
,p_column_label=>'Importe Capital'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8262471950576146)
,p_db_column_name=>'IMPORTE_INTERES'
,p_display_order=>1210
,p_column_identifier=>'FP'
,p_column_label=>'Importe Interes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8262588753576147)
,p_db_column_name=>'IND_CONFIRMA_ENVIO'
,p_display_order=>1220
,p_column_identifier=>'FQ'
,p_column_label=>'Ind Confirma Envio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8262678815576148)
,p_db_column_name=>'NRO_FACTURA_QM'
,p_display_order=>1230
,p_column_identifier=>'FR'
,p_column_label=>'Nro Factura Qm'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8262735166576149)
,p_db_column_name=>'MONTO_DEV_NCR'
,p_display_order=>1240
,p_column_identifier=>'FS'
,p_column_label=>'Monto Dev Ncr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8262874593576150)
,p_db_column_name=>'ASIENTO_DEVOLUCION_VALOR'
,p_display_order=>1250
,p_column_identifier=>'FT'
,p_column_label=>'Asiento Devolucion Valor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9591523878965801)
,p_db_column_name=>'ASIENTOS_COSTO'
,p_display_order=>1260
,p_column_identifier=>'FU'
,p_column_label=>'Asientos Costo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9591610407965802)
,p_db_column_name=>'ASIENTOS_ANULACION'
,p_display_order=>1270
,p_column_identifier=>'FV'
,p_column_label=>'Asientos Anulacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9591821516965804)
,p_db_column_name=>'VER_DETALLE'
,p_display_order=>1280
,p_column_identifier=>'FW'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P24_SER_COMPROBANTE'',''#SER_COMPROBANTE#''),$s(''P24_TIP_COMPROBANTE'',''#TIP_COMPROBANTE#''),$s(''P24_NRO_COMPROBANTE'',''#NRO_COMPROBANTE#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-eye"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(202413006112397827)
,p_db_column_name=>'DESC_ESTADO_FACTURA'
,p_display_order=>1290
,p_column_identifier=>'FX'
,p_column_label=>'Estado Factura'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(17649308803581079)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'81240'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:FEC_COMPROBANTE:COD_CLIENTE:COD_VENDEDOR:TOT_COMPROBANTE:DESC_ESTADO_FACTURA:VER_DETALLE:'
,p_sort_column_1=>'FEC_COMPROBANTE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16307314120391709)
,p_plug_name=>'Region Izquierda'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>9
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17502295153580023)
,p_plug_name=>'Region Boton Derecha'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17502495249580025)
,p_plug_name=>'Region de Abajo'
,p_region_template_options=>'#DEFAULT#:margin-top-md:margin-bottom-md'
,p_region_attributes=>'style="background: #0080006b;"'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9581869543959722)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17502295153580023)
,p_button_name=>'BT_ANULAR'
,p_button_static_id=>'bt_anular'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Anular'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9594051909965826)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(17502495249580025)
,p_button_name=>'BT_GENERAR_TRASLADO'
,p_button_static_id=>'bt_envio_pendiente'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Envio Pendiente'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9527178974959693)
,p_name=>'P24_MOTIVO_ANULACION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(16307314120391709)
,p_prompt=>unistr('Motivo de Anulaci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select cod_motivo_anu||'' - ''||descripcion D, cod_motivo_anu R',
'    from vt_motivo_anulacion',
'   where cod_empresa = :P_COD_EMPRESA;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'600'
,p_attribute_09=>'600'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9527515029959693)
,p_name=>'P24_NRO_COMPROBANTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(16307314120391709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9527940272959693)
,p_name=>'P24_SER_COMPROBANTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(16307314120391709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9591936763965805)
,p_name=>'P24_ESTADO_REPARTO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(16307314120391709)
,p_prompt=>'Estado Reparto'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Estado Reparto;S'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9592055473965806)
,p_name=>'P24_COD_CUSTODIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(16307314120391709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9592493615965810)
,p_name=>'P24_NOMB_MONEDA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(16307314120391709)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9592522105965811)
,p_name=>'P24_CONDICION_VENTA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(16307314120391709)
,p_prompt=>unistr('Condici\00F3n de Venta')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9592696219965812)
,p_name=>'P24_NOMB_USUARIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(16307314120391709)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9592723802965813)
,p_name=>'P24_NOMB_CUSTODIO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(16307314120391709)
,p_prompt=>'Custodio'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9592827165965814)
,p_name=>'P24_TIP_COMPROBANTE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(16307314120391709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9593709131965823)
,p_name=>'P24_ESTADO_PEDIDO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(17502495249580025)
,p_prompt=>'Estado Pedido'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:NINGUNO;N,ANULAR;A,CERRAR;C'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'READONLY'
,p_colspan=>10
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9593819541965824)
,p_name=>'P24_SER_COMPR_REF'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(17502495249580025)
,p_prompt=>'Serie Comrpobante Ref'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>5
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9593932459965825)
,p_name=>'P24_NRO_COMPR_REF'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(17502495249580025)
,p_prompt=>'Nro. Comprobante Ref'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9594495414965830)
,p_name=>'P24_ENVIO_PENDIENTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(17502495249580025)
,p_prompt=>'Nro. de Comprobante (Envio Pendiente)'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>10
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9583337767959724)
,p_validation_name=>'NOT_NULL_MOTIVO'
,p_validation_sequence=>10
,p_validation=>'P24_MOTIVO_ANULACION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe ingresar un motivo antes de cerrar!'
,p_associated_item=>wwv_flow_imp.id(9527178974959693)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9584437118959724)
,p_name=>'DA_CARGAR_REGION'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_NRO_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9584931398959725)
,p_event_id=>wwv_flow_imp.id(9584437118959724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   VTANUFAC.PR_CARGAR_DATOS   (PI_NRO_COMPROBANTE => :P24_NRO_COMPROBANTE,',
'                               PI_TIP_COMPROBANTE => :P24_TIP_COMPROBANTE,',
'                               PI_SER_COMPROBANTE => :P24_SER_COMPROBANTE,                               ',
'                               PO_MONEDA => :P24_NOMB_MONEDA,',
'                               PO_COND_VENTA  => :P24_CONDICION_VENTA,',
'                               PO_NOMB_USUARIO => :P24_NOMB_USUARIO,',
'                               PO_COD_CUSTODIO => :P24_COD_CUSTODIO,',
'                               PO_IND_REPARTO => :P24_ESTADO_REPARTO,',
'                               V_ESTADO_PEDIDO => :P24_ESTADO_PEDIDO) ;',
'EXCEPTION    ',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P24_COD_CUSTODIO,P24_NRO_COMPROBANTE,P24_TIP_COMPROBANTE,P24_SER_COMPROBANTE'
,p_attribute_03=>'P24_NOMB_MONEDA,P24_CONDICION_VENTA,P24_NOMB_USUARIO,P24_ESTADO_PEDIDO,P24_COD_CUSTODIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9593625894965822)
,p_event_id=>wwv_flow_imp.id(9584437118959724)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9581869543959722)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11643004442537421)
,p_event_id=>wwv_flow_imp.id(9584437118959724)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9594051909965826)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9585323662959725)
,p_name=>'DA_CONFIRM'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9581869543959722)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(202412981365397826)
,p_event_id=>wwv_flow_imp.id(9585323662959725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P24_MOTIVO_ANULACION IS NULL THEN',
' RAISE_APPLICATION_ERROR(-20000, ''Debe seleccionar el motivo de anulacion para anular'');',
' END IF;'))
,p_attribute_02=>'P24_MOTIVO_ANULACION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9585832892959725)
,p_event_id=>wwv_flow_imp.id(9585323662959725)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEst\00E1 seguro que desea anular el comprobante &P24_NRO_COMPROBANTE.? ')
,p_attribute_02=>'Mensaje'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9586387216959725)
,p_event_id=>wwv_flow_imp.id(9585323662959725)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ANULAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9586742239959726)
,p_name=>'DA_DESCRIPCION_MONEDA'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_MONEDA_OCULTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9587256931959726)
,p_event_id=>wwv_flow_imp.id(9586742239959726)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT DESCRIPCION',
'      INTO :P24_MONEDA',
'      FROM  MONEDAS',
'     WHERE  COD_MONEDA = :P24_MONEDA_OCULTO;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P24_MONEDA_OCULTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9587614768959726)
,p_name=>'DA_SER_ASIGNADO'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_SER_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9588199465959726)
,p_event_id=>wwv_flow_imp.id(9587614768959726)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P24_SER_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9592933551965815)
,p_name=>'DA_TIP_ASIGNADO'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_TIP_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9593066182965816)
,p_event_id=>wwv_flow_imp.id(9592933551965815)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P24_TIP_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9593373821965819)
,p_name=>'DA_DESACTIVAR_BOTON'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9593460379965820)
,p_event_id=>wwv_flow_imp.id(9593373821965819)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9581869543959722)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11642917567537420)
,p_event_id=>wwv_flow_imp.id(9593373821965819)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9594051909965826)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9594144321965827)
,p_name=>'DA_ENVIO_PENDIENTE'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9594051909965826)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9594206111965828)
,p_event_id=>wwv_flow_imp.id(9594144321965827)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Est\00E1 seguro que desea realizar el envio?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9594362302965829)
,p_event_id=>wwv_flow_imp.id(9594144321965827)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    declare ',
'    	vexi varchar2(10);    	',
'    begin ',
'    	select ''S''',
'    	  INTO VEXI',
'    	 FROM vt_comprobantes_cabecera',
'    	where cod_empresa = :P_COD_EMPRESA',
'    	  and tip_comprobante = :P24_TIP_COMPROBANTE',
'    	  and ser_comprobante = :P24_SER_COMPROBANTE',
'    	  and nro_comprobante = :P24_NRO_COMPROBANTE',
'    	  and nvl(estado,''P'')=''A'';    	',
'    		',
'    		sp_crea_envio_pend_ncr (:P_COD_EMPRESA,',
'						    		:P24_TIP_COMPROBANTE,',
'						    		:P24_SER_COMPROBANTE,',
'						    		:P24_NRO_COMPROBANTE,',
'						    		:P24_ENVIO_PENDIENTE);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P24_NRO_COMPROBANTE,P24_SER_COMPROBANTE,P24_TIP_COMPROBANTE'
,p_attribute_03=>'P24_ENVIO_PENDIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(202413194985397828)
,p_name=>'DA_NOMBRE_CUSTODIO'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_COD_CUSTODIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(202413248138397829)
,p_event_id=>wwv_flow_imp.id(202413194985397828)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT DESCRIPCION||'' - ''||:P24_COD_CUSTODIO INTO :P24_NOMB_CUSTODIO FROM CC_CUSTODIOS WHERE COD_EMPRESA=:P_COD_EMPRESA AND COD_CUSTODIO = :P24_COD_CUSTODIO;',
'EXCEPTION WHEN OTHERS THEN ',
':P24_NOMB_CUSTODIO:=:P24_COD_CUSTODIO;',
'END;'))
,p_attribute_02=>'P24_COD_CUSTODIO,P_COD_EMPRESA'
,p_attribute_03=>'P24_NOMB_CUSTODIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9583683471959724)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Session State'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9592393155965809)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
':P_COD_EMPRESA := 1;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9584053548959724)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_ANULAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  ',
'     VTANUFAC.PR_ANULAR_FACTURA (PI_NRO_COMPROBANTE => :P24_NRO_COMPROBANTE,',
'                                        PI_SER_COMPROBANTE => :P24_SER_COMPROBANTE,',
'                                        PI_TIP_COMPROBANTE => :P24_TIP_COMPROBANTE,',
'                                        PI_ESTADO_PEDIDO => :P24_ESTADO_PEDIDO,',
'                                        PI_MOTIVO_ANULACION => :P24_MOTIVO_ANULACION,',
'                                        PO_SER_COMPROBANTE_REF => :P24_SER_COMPR_REF,',
'                                        PO_NRO_COMPROBANTE_REF => :P24_NRO_COMPR_REF);',
'     :P24_ESTADO_PEDIDO := ''A'';                                     ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al anular la factura. ''||sqlerrm);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ANULAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
