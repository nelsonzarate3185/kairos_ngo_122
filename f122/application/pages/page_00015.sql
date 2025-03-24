prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Anulaci\00F3n De Pedidos')
,p_alias=>unistr('ANULACI\00D3N-DE-PEDIDOS')
,p_step_title=>unistr('Anulaci\00F3n De Pedidos')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#bt_anular{',
'    width: 50%;',
'    margin-left: 25%;',
'    height: 80px;',
'    font-size: 30px;',
'    background: #db4f4f;',
'    margin-top: 55px;',
'}',
'',
'#bt_anular:hover{',
'    background: red;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20231012111824'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6433956537430934)
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
 p_id=>wwv_flow_imp.id(6783026795432029)
,p_plug_name=>'Reporte de Comprobantes'
,p_parent_plug_id=>wwv_flow_imp.id(6433956537430934)
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
'       COD_CLIENTE,',
'       COD_VENDEDOR,',
'       COD_CONDICION_VENTA,',
'       COD_LISTA_PRECIO,',
'       DESCUENTO,',
'       COD_MONEDA,',
'       TIP_CAMBIO,',
'       TOT_COMPROBANTE,',
'       TOT_GRAVADAS,',
'       TOT_EXENTAS,',
'       TOT_IVA,',
'       ESTADO,',
'       FEC_ESTADO,',
'       COD_USUARIO,',
'       FEC_ALTA,',
'       NRO_AUTORIZACION,',
'       CAMBIO_MONEDA_PRECIO,',
'       TIP_CAMBIO_COMPRA,',
'       FEC_VENCIMIENTO,',
'       TOT_DESCUENTO_DET,',
'       TIP_COMPROBANTE_REF,',
'       TEL_CLIENTE,',
'       RUC,',
'       PROCESADO,',
'       NRO_COMPROBANTE_REF,',
'       NOM_CLIENTE,',
'       NOMBRE_CAB,',
'       GRU_COMPROBANTE,',
'       FEC_NACIMIENTO,',
'       DIR_CLIENTE,',
'       DIAS,',
'       DESCUENTO_DET,',
'       COMENTARIO,',
'       COLUMNA,',
'       COD_SECTOR,',
'       CAMBIO_DOLAR,',
'       COD_DIRECCION,',
'       TIP_COMPROBANTE_PET,',
'       SER_COMPROBANTE_PET,',
'       NRO_COMPROBANTE_PET,',
'       NRO_INSCRIPCION_AD,',
'       IND_EXENTO_AD,',
'       COD_USUARIO_AUTORIZACION,',
'       FECHA_AUTORIZACION,',
'       AUTORIZADO,',
'       RECARGO,',
'       CONTROL_FIN,',
'       IND_IMPRESO,',
'       COD_MOTIVO_ANULACION,',
'       COD_USUARIO_ANU,',
'       COD_MOTIVO_ANU,',
'       OBSERVACION,',
'       PRESUPUESTO,',
'       FECHA_APROBADO,',
'       NRO_LLAMADA,',
'       FEC_SEGUIMIENTO,',
'       PESO_TOTAL,',
'       VOLUMEN_TOTAL,',
'       FLETE_TOTAL,',
'       COD_FLETE,',
'       SER_COMPROBANTE_REF,',
'       ENTREGA_INICIAL,',
'       PORC_ENT_INICIAL,',
'       FEC_PAGO,',
'       CONSULTA_INFORMCONF,',
'       DESC_ERROR,',
'       HORA_ALTA,',
'       FEC_APRO_RECHA,',
'       COD_USU_APRO_RECHA,',
'       LUGAR_ENTREGA,',
'       NRO_ORDEN_COMPRA,',
'       COD_SUCURSAL_DIST,',
'       ESTADO_REPARTO,',
'       DEPOSITO_FACT,',
'       TIPO_ENTREGA,',
'       CONTROL_FIN_2,',
'       CONTROL_FIN_3,',
'       RECHAZAR,',
'       PR_FMA,',
'       ORDEN_IMPRESA,',
'       ORDEN_AUTORIZADA,',
'       COD_DEPARTAMENTO,',
'       DERIVADO,',
'       FEC_RECHAZADO,',
'       RECHAZADO_POR,',
'       USR_SA_FMA,',
'       FCH_SA_FMA,',
'       SA_FMA,',
'       FEC_AUTORIZACION,',
'       USR_PR_FMA,',
'       FCH_PR_FMA,',
'       AUTORIZADO_POR,',
'       IND_ENVIAR,',
'       FEC_ENVIO,',
'       COD_USUARIO_ENVIO,',
'       MOTIVO,',
'       IND_OFERTAS,',
'       COD_SUC_OFER,',
'       IND_CANAL_VERDE,',
'       OBSERVACION_CANAL_VERDE,',
'       RESULTADO_CANAL_VERDE,',
'       FECHA_ENTREGA,',
'       IND_GUARDA,',
'       OBSERVACION_ANULA,',
'       IND_TRANSPORTADORA,',
'       NRO_OBRA,',
'       SECCION_PRESTAMO,',
'       ENTREGA_REMISION,',
'       COMENTARIO_ANULACION,',
'       IND_CLIENTE_FINAL,',
'       NRO_PEDIDO_ANTERIOR,',
'       FECHA_ENTREGA_CLIENTE_RETIRA,',
'       HORA_ENTREGA_CLIENTE_RETIRA,',
'       SER_PEDIDO_ANTERIOR,',
'       OBSERVACION_INTERNA,',
'       NRO_PEDIDO_QM,',
'       COD_DEPARTAMENTO_ENTREGA,',
'       COD_CIUDAD_ENTREGA,',
'       LATITUD_ENTREGA,',
'       LONGITUD_ENTREGA,',
'       IND_CONFIRMAR_FACTURA,',
'       IND_TIPO_PEDIDO,',
'       FEC_CONFIRMA_PEDIDO,',
'       NULL VER_DETALLE',
'  from VT_PEDIDOS_CABECERA',
' where cod_empresa = :P_COD_EMPRESA',
'   and ESTADO NOT IN( ''A'',''C'',''F'') ',
'   AND FEC_COMPROBANTE>=sysdate-360',
'   order by fec_comprobante desc'))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(7963873637620301)
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
,p_internal_uid=>7963873637620301
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7963941209620302)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7964022208620303)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tipo Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7964117660620304)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Serie de Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7964225449620305)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro. Comprobante'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7964348690620306)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7964432552620307)
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
 p_id=>wwv_flow_imp.id(7964553064620308)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(6220104513588210)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7964653523620309)
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
 p_id=>wwv_flow_imp.id(7964706686620310)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7964847642620311)
,p_db_column_name=>'COD_LISTA_PRECIO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Lista Precio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7964908702620312)
,p_db_column_name=>'DESCUENTO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Descuento'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7965021660620313)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7965169325620314)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Tip Cambio'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7965274294620315)
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
 p_id=>wwv_flow_imp.id(7965363222620316)
,p_db_column_name=>'TOT_GRAVADAS'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Tot Gravadas'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7965418201620317)
,p_db_column_name=>'TOT_EXENTAS'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Tot Exentas'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7965502998620318)
,p_db_column_name=>'TOT_IVA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Tot Iva'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7965685369620319)
,p_db_column_name=>'ESTADO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7965725741620320)
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
 p_id=>wwv_flow_imp.id(7965865395620321)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7965986665620322)
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
 p_id=>wwv_flow_imp.id(7966002039620323)
,p_db_column_name=>'NRO_AUTORIZACION'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Nro Autorizacion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7966174896620324)
,p_db_column_name=>'CAMBIO_MONEDA_PRECIO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Cambio Moneda Precio'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7966249418620325)
,p_db_column_name=>'TIP_CAMBIO_COMPRA'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Tip Cambio Compra'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7966357151620326)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Fec Vencimiento'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7966401491620327)
,p_db_column_name=>'TOT_DESCUENTO_DET'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Tot Descuento Det'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7966517118620328)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7966634910620329)
,p_db_column_name=>'TEL_CLIENTE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Tel Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7966742808620330)
,p_db_column_name=>'RUC'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Ruc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7966805683620331)
,p_db_column_name=>'PROCESADO'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Procesado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7966987657620332)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7967096924620333)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Nom Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7967123130620334)
,p_db_column_name=>'NOMBRE_CAB'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Nombre Cab'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7967277917620335)
,p_db_column_name=>'GRU_COMPROBANTE'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Gru Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7967344753620336)
,p_db_column_name=>'FEC_NACIMIENTO'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Fec Nacimiento'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7967444232620337)
,p_db_column_name=>'DIR_CLIENTE'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Dir Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7967523119620338)
,p_db_column_name=>'DIAS'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Dias'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7967676630620339)
,p_db_column_name=>'DESCUENTO_DET'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Descuento Det'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7967798407620340)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7967876030620341)
,p_db_column_name=>'COLUMNA'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Columna'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7967970937620342)
,p_db_column_name=>'COD_SECTOR'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Cod Sector'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7968001468620343)
,p_db_column_name=>'CAMBIO_DOLAR'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Cambio Dolar'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7968150184620344)
,p_db_column_name=>'COD_DIRECCION'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Cod Direccion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7968233217620345)
,p_db_column_name=>'TIP_COMPROBANTE_PET'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Tip Comprobante Pet'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7968387956620346)
,p_db_column_name=>'SER_COMPROBANTE_PET'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Ser Comprobante Pet'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7968458086620347)
,p_db_column_name=>'NRO_COMPROBANTE_PET'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Nro Comprobante Pet'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7968597386620348)
,p_db_column_name=>'NRO_INSCRIPCION_AD'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Nro Inscripcion Ad'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7968650531620349)
,p_db_column_name=>'IND_EXENTO_AD'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Ind Exento Ad'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7968744913620350)
,p_db_column_name=>'COD_USUARIO_AUTORIZACION'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Cod Usuario Autorizacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7968841706620301)
,p_db_column_name=>'FECHA_AUTORIZACION'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Fecha Autorizacion'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7968943747620302)
,p_db_column_name=>'AUTORIZADO'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Autorizado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7969045539620303)
,p_db_column_name=>'RECARGO'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Recargo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7969152059620304)
,p_db_column_name=>'CONTROL_FIN'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Control Fin'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7969277679620305)
,p_db_column_name=>'IND_IMPRESO'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Ind Impreso'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7969375359620306)
,p_db_column_name=>'COD_MOTIVO_ANULACION'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Cod Motivo Anulacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7969478382620307)
,p_db_column_name=>'COD_USUARIO_ANU'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Cod Usuario Anu'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7969542834620308)
,p_db_column_name=>'COD_MOTIVO_ANU'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Cod Motivo Anu'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7969647764620309)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7969783191620310)
,p_db_column_name=>'PRESUPUESTO'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Presupuesto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7969820174620311)
,p_db_column_name=>'FECHA_APROBADO'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Fecha Aprobado'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7969927431620312)
,p_db_column_name=>'NRO_LLAMADA'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Nro Llamada'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7970085132620313)
,p_db_column_name=>'FEC_SEGUIMIENTO'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'Fec Seguimiento'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7970121047620314)
,p_db_column_name=>'PESO_TOTAL'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Peso Total'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7970231328620315)
,p_db_column_name=>'VOLUMEN_TOTAL'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Volumen Total'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7970354946620316)
,p_db_column_name=>'FLETE_TOTAL'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Flete Total'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7970465357620317)
,p_db_column_name=>'COD_FLETE'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'Cod Flete'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7970556988620318)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>670
,p_column_identifier=>'BO'
,p_column_label=>'Ser Comprobante Ref'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7970661755620319)
,p_db_column_name=>'ENTREGA_INICIAL'
,p_display_order=>680
,p_column_identifier=>'BP'
,p_column_label=>'Entrega Inicial'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7970706755620320)
,p_db_column_name=>'PORC_ENT_INICIAL'
,p_display_order=>690
,p_column_identifier=>'BQ'
,p_column_label=>'Porc Ent Inicial'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7970831235620321)
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
 p_id=>wwv_flow_imp.id(7970987087620322)
,p_db_column_name=>'CONSULTA_INFORMCONF'
,p_display_order=>710
,p_column_identifier=>'BS'
,p_column_label=>'Consulta Informconf'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7971019298620323)
,p_db_column_name=>'DESC_ERROR'
,p_display_order=>720
,p_column_identifier=>'BT'
,p_column_label=>'Desc Error'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7971100840620324)
,p_db_column_name=>'HORA_ALTA'
,p_display_order=>730
,p_column_identifier=>'BU'
,p_column_label=>'Hora Alta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7971209259620325)
,p_db_column_name=>'FEC_APRO_RECHA'
,p_display_order=>740
,p_column_identifier=>'BV'
,p_column_label=>'Fec Apro Recha'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7971364646620326)
,p_db_column_name=>'COD_USU_APRO_RECHA'
,p_display_order=>750
,p_column_identifier=>'BW'
,p_column_label=>'Cod Usu Apro Recha'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7971458594620327)
,p_db_column_name=>'LUGAR_ENTREGA'
,p_display_order=>760
,p_column_identifier=>'BX'
,p_column_label=>'Lugar Entrega'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7971521076620328)
,p_db_column_name=>'NRO_ORDEN_COMPRA'
,p_display_order=>770
,p_column_identifier=>'BY'
,p_column_label=>'Nro Orden Compra'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7971611791620329)
,p_db_column_name=>'COD_SUCURSAL_DIST'
,p_display_order=>780
,p_column_identifier=>'BZ'
,p_column_label=>'Cod Sucursal Dist'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7971719661620330)
,p_db_column_name=>'ESTADO_REPARTO'
,p_display_order=>790
,p_column_identifier=>'CA'
,p_column_label=>'Estado Reparto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7971827521620331)
,p_db_column_name=>'DEPOSITO_FACT'
,p_display_order=>800
,p_column_identifier=>'CB'
,p_column_label=>'Deposito Fact'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7971935845620332)
,p_db_column_name=>'TIPO_ENTREGA'
,p_display_order=>810
,p_column_identifier=>'CC'
,p_column_label=>'Tipo Entrega'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7972076739620333)
,p_db_column_name=>'CONTROL_FIN_2'
,p_display_order=>820
,p_column_identifier=>'CD'
,p_column_label=>'Control Fin 2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7972181138620334)
,p_db_column_name=>'CONTROL_FIN_3'
,p_display_order=>830
,p_column_identifier=>'CE'
,p_column_label=>'Control Fin 3'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7972246125620335)
,p_db_column_name=>'RECHAZAR'
,p_display_order=>840
,p_column_identifier=>'CF'
,p_column_label=>'Rechazar'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7972399968620336)
,p_db_column_name=>'PR_FMA'
,p_display_order=>850
,p_column_identifier=>'CG'
,p_column_label=>'Pr Fma'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
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
 p_id=>wwv_flow_imp.id(7972469403620337)
,p_db_column_name=>'ORDEN_IMPRESA'
,p_display_order=>860
,p_column_identifier=>'CH'
,p_column_label=>'Orden Impresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7972569353620338)
,p_db_column_name=>'ORDEN_AUTORIZADA'
,p_display_order=>870
,p_column_identifier=>'CI'
,p_column_label=>'Orden Autorizada'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7972607008620339)
,p_db_column_name=>'COD_DEPARTAMENTO'
,p_display_order=>880
,p_column_identifier=>'CJ'
,p_column_label=>'Cod Departamento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7972721239620340)
,p_db_column_name=>'DERIVADO'
,p_display_order=>890
,p_column_identifier=>'CK'
,p_column_label=>'Derivado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7972856907620341)
,p_db_column_name=>'FEC_RECHAZADO'
,p_display_order=>900
,p_column_identifier=>'CL'
,p_column_label=>'Fec Rechazado'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7972985373620342)
,p_db_column_name=>'RECHAZADO_POR'
,p_display_order=>910
,p_column_identifier=>'CM'
,p_column_label=>'Rechazado Por'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7973075654620343)
,p_db_column_name=>'USR_SA_FMA'
,p_display_order=>920
,p_column_identifier=>'CN'
,p_column_label=>'Usr Sa Fma'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7973154309620344)
,p_db_column_name=>'FCH_SA_FMA'
,p_display_order=>930
,p_column_identifier=>'CO'
,p_column_label=>'Fch Sa Fma'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7973240220620345)
,p_db_column_name=>'SA_FMA'
,p_display_order=>940
,p_column_identifier=>'CP'
,p_column_label=>'Sa Fma'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7973387913620346)
,p_db_column_name=>'FEC_AUTORIZACION'
,p_display_order=>950
,p_column_identifier=>'CQ'
,p_column_label=>'Fec Autorizacion'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7973421291620347)
,p_db_column_name=>'USR_PR_FMA'
,p_display_order=>960
,p_column_identifier=>'CR'
,p_column_label=>'Usr Pr Fma'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7973529939620348)
,p_db_column_name=>'FCH_PR_FMA'
,p_display_order=>970
,p_column_identifier=>'CS'
,p_column_label=>'Fch Pr Fma'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7973651018620349)
,p_db_column_name=>'AUTORIZADO_POR'
,p_display_order=>980
,p_column_identifier=>'CT'
,p_column_label=>'Autorizado Por'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7973715141620350)
,p_db_column_name=>'IND_ENVIAR'
,p_display_order=>990
,p_column_identifier=>'CU'
,p_column_label=>'Ind Enviar'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7973891363620301)
,p_db_column_name=>'FEC_ENVIO'
,p_display_order=>1000
,p_column_identifier=>'CV'
,p_column_label=>'Fec Envio'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7973919291620302)
,p_db_column_name=>'COD_USUARIO_ENVIO'
,p_display_order=>1010
,p_column_identifier=>'CW'
,p_column_label=>'Cod Usuario Envio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7974031460620303)
,p_db_column_name=>'MOTIVO'
,p_display_order=>1020
,p_column_identifier=>'CX'
,p_column_label=>'Motivo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7974149103620304)
,p_db_column_name=>'IND_OFERTAS'
,p_display_order=>1030
,p_column_identifier=>'CY'
,p_column_label=>'Ind Ofertas'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7974211331620305)
,p_db_column_name=>'COD_SUC_OFER'
,p_display_order=>1040
,p_column_identifier=>'CZ'
,p_column_label=>'Cod Suc Ofer'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7974381105620306)
,p_db_column_name=>'IND_CANAL_VERDE'
,p_display_order=>1050
,p_column_identifier=>'DA'
,p_column_label=>'Ind Canal Verde'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7974497260620307)
,p_db_column_name=>'OBSERVACION_CANAL_VERDE'
,p_display_order=>1060
,p_column_identifier=>'DB'
,p_column_label=>'Observacion Canal Verde'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7974552716620308)
,p_db_column_name=>'RESULTADO_CANAL_VERDE'
,p_display_order=>1070
,p_column_identifier=>'DC'
,p_column_label=>'Resultado Canal Verde'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7974657593620309)
,p_db_column_name=>'FECHA_ENTREGA'
,p_display_order=>1080
,p_column_identifier=>'DD'
,p_column_label=>'Fecha Entrega'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7974762311620310)
,p_db_column_name=>'IND_GUARDA'
,p_display_order=>1090
,p_column_identifier=>'DE'
,p_column_label=>'Ind Guarda'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7974839795620311)
,p_db_column_name=>'OBSERVACION_ANULA'
,p_display_order=>1100
,p_column_identifier=>'DF'
,p_column_label=>'Observacion Anula'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7974900173620312)
,p_db_column_name=>'IND_TRANSPORTADORA'
,p_display_order=>1110
,p_column_identifier=>'DG'
,p_column_label=>'Ind Transportadora'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7975092677620313)
,p_db_column_name=>'NRO_OBRA'
,p_display_order=>1120
,p_column_identifier=>'DH'
,p_column_label=>'Nro Obra'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7975131473620314)
,p_db_column_name=>'SECCION_PRESTAMO'
,p_display_order=>1130
,p_column_identifier=>'DI'
,p_column_label=>'Seccion Prestamo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7975205690620315)
,p_db_column_name=>'ENTREGA_REMISION'
,p_display_order=>1140
,p_column_identifier=>'DJ'
,p_column_label=>'Entrega Remision'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7975320612620316)
,p_db_column_name=>'COMENTARIO_ANULACION'
,p_display_order=>1150
,p_column_identifier=>'DK'
,p_column_label=>'Comentario Anulacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7975446597620317)
,p_db_column_name=>'IND_CLIENTE_FINAL'
,p_display_order=>1160
,p_column_identifier=>'DL'
,p_column_label=>'Ind Cliente Final'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7975503315620318)
,p_db_column_name=>'NRO_PEDIDO_ANTERIOR'
,p_display_order=>1170
,p_column_identifier=>'DM'
,p_column_label=>'Nro Pedido Anterior'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7975699006620319)
,p_db_column_name=>'FECHA_ENTREGA_CLIENTE_RETIRA'
,p_display_order=>1180
,p_column_identifier=>'DN'
,p_column_label=>'Fecha Entrega Cliente Retira'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7975732066620320)
,p_db_column_name=>'HORA_ENTREGA_CLIENTE_RETIRA'
,p_display_order=>1190
,p_column_identifier=>'DO'
,p_column_label=>'Hora Entrega Cliente Retira'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7975828463620321)
,p_db_column_name=>'SER_PEDIDO_ANTERIOR'
,p_display_order=>1200
,p_column_identifier=>'DP'
,p_column_label=>'Ser Pedido Anterior'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7975997370620322)
,p_db_column_name=>'OBSERVACION_INTERNA'
,p_display_order=>1210
,p_column_identifier=>'DQ'
,p_column_label=>'Observacion Interna'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7976099095620323)
,p_db_column_name=>'NRO_PEDIDO_QM'
,p_display_order=>1220
,p_column_identifier=>'DR'
,p_column_label=>'Nro Pedido Qm'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7976168843620324)
,p_db_column_name=>'COD_DEPARTAMENTO_ENTREGA'
,p_display_order=>1230
,p_column_identifier=>'DS'
,p_column_label=>'Cod Departamento Entrega'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7976200598620325)
,p_db_column_name=>'COD_CIUDAD_ENTREGA'
,p_display_order=>1240
,p_column_identifier=>'DT'
,p_column_label=>'Cod Ciudad Entrega'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7976316723620326)
,p_db_column_name=>'LATITUD_ENTREGA'
,p_display_order=>1250
,p_column_identifier=>'DU'
,p_column_label=>'Latitud Entrega'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7976472083620327)
,p_db_column_name=>'LONGITUD_ENTREGA'
,p_display_order=>1260
,p_column_identifier=>'DV'
,p_column_label=>'Longitud Entrega'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7976551058620328)
,p_db_column_name=>'IND_CONFIRMAR_FACTURA'
,p_display_order=>1270
,p_column_identifier=>'DW'
,p_column_label=>'Ind Confirmar Factura'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7976690254620329)
,p_db_column_name=>'IND_TIPO_PEDIDO'
,p_display_order=>1280
,p_column_identifier=>'DX'
,p_column_label=>'Ind Tipo Pedido'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7976712056620330)
,p_db_column_name=>'FEC_CONFIRMA_PEDIDO'
,p_display_order=>1290
,p_column_identifier=>'DY'
,p_column_label=>'Fec Confirma Pedido'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7976804071620331)
,p_db_column_name=>'VER_DETALLE'
,p_display_order=>1300
,p_column_identifier=>'DZ'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P15_SER_COMPROBANTE'',''#SER_COMPROBANTE#''),$s(''P15_NRO_COMPROBANTE'',''#NRO_COMPROBANTE#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-eye"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8123985950621388)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'81240'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'SER_COMPROBANTE:NRO_COMPROBANTE:FEC_COMPROBANTE:COD_CLIENTE:NOM_CLIENTE:COD_VENDEDOR:TOT_COMPROBANTE:VER_DETALLE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6781991267432018)
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
 p_id=>wwv_flow_imp.id(7976972300620332)
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
 p_id=>wwv_flow_imp.id(7977172396620334)
,p_plug_name=>'Region de Abajo'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14504633806588635)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>5
,p_plug_source=>unistr('<p style="font-size:20px;font-weight:600;margin-top:10px;margin-bottom:10px">Anulaci\00F3n de pedidos</p>')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6782757273432026)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7976972300620332)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6782096626432019)
,p_name=>'P15_MONEDA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6781991267432018)
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
 p_id=>wwv_flow_imp.id(6782209647432021)
,p_name=>'P15_USUARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6781991267432018)
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
 p_id=>wwv_flow_imp.id(6782323699432022)
,p_name=>'P15_COD_CONDICION_VENTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6781991267432018)
,p_prompt=>unistr('Condici\00F3n Venta')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6782471216432023)
,p_name=>'P15_MOTIVO_ANULACION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6781991267432018)
,p_prompt=>unistr('Motivo Anulaci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MOTIVO_ANU'
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
 p_id=>wwv_flow_imp.id(6782569404432024)
,p_name=>'P15_OBSERVACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7977172396620334)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7977598420620338)
,p_name=>'P15_NRO_COMPROBANTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6781991267432018)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9373367599408501)
,p_name=>'P15_SER_COMPROBANTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(6781991267432018)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7978736773620350)
,p_validation_name=>'NOT_NULL_MOTIVO'
,p_validation_sequence=>10
,p_validation=>'P15_MOTIVO_ANULACION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe ingresar un motivo antes de cerrar!'
,p_associated_item=>wwv_flow_imp.id(6782471216432023)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7977683537620339)
,p_name=>'DA_CARGAR_REGION'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P15_NRO_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7977734938620340)
,p_event_id=>wwv_flow_imp.id(7977683537620339)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTANUPED.PR_CARGAR_DATOS( PI_NRO_COMPROBANTE => :P15_NRO_COMPROBANTE  ,',
'                               PI_SER_COMPROBANTE => :P15_SER_COMPROBANTE ,',
'                               PO_MONEDA => :P15_MONEDA ,',
'                               PO_COND_VENTA => :P15_COD_CONDICION_VENTA,',
'                               PO_COD_USUARIO => :P15_USUARIO);',
'EXCEPTION    ',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P15_NRO_COMPROBANTE,P15_SER_COMPROBANTE'
,p_attribute_03=>'P15_COD_CONDICION_VENTA,P15_USUARIO,P15_MOTIVO_ANULACION,P15_MONEDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11642609393537417)
,p_event_id=>wwv_flow_imp.id(7977683537620339)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(6782757273432026)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8257993155576101)
,p_name=>'DA_CONFIRM'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6782757273432026)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8258070075576102)
,p_event_id=>wwv_flow_imp.id(8257993155576101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEst\00E1 seguro que desea anular el comprobante?')
,p_attribute_02=>'Mensaje'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8258179648576103)
,p_event_id=>wwv_flow_imp.id(8257993155576101)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ANULAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9373544520408503)
,p_name=>'DA_DESCRIPCION_MONEDA'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P15_MONEDA_OCULTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9373695819408504)
,p_event_id=>wwv_flow_imp.id(9373544520408503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT DESCRIPCION',
'      INTO :P15_MONEDA',
'      FROM  MONEDAS',
'     WHERE  COD_MONEDA = :P15_MONEDA_OCULTO;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000,SQLERRM);',
'END;'))
,p_attribute_02=>'P15_MONEDA_OCULTO'
,p_attribute_03=>'P15_MONEDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9374058677408508)
,p_name=>'DA_SER_ASIGNADO'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P15_SER_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9374161349408509)
,p_event_id=>wwv_flow_imp.id(9374058677408508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P15_SER_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11642455891537415)
,p_name=>'DA_DESHAB_ANULAR'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11642559820537416)
,p_event_id=>wwv_flow_imp.id(11642455891537415)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(6782757273432026)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7978623741620349)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Session State'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8258232960576104)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_ANULAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTANUPED.PR_ANULAR_COMPROBANTE(PI_NRO_COMPROBANTE => :P15_NRO_COMPROBANTE,',
'                                   PI_SER_COMPROBANTE => :P15_SER_COMPROBANTE,',
'                                   PI_OBSERVACION => :P15_OBSERVACION,',
'                                   PI_MOTIVO_ANULACION => :P15_MOTIVO_ANULACION);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ANULAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
