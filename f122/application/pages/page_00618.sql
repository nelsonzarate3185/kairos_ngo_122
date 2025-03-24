prompt --application/pages/page_00618
begin
--   Manifest
--     PAGE: 00618
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
 p_id=>618
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Modificacion de datos Clientes'
,p_alias=>'MODIFICACION-DE-DATOS-CLIENTES'
,p_step_title=>'Modificacion de datos Clientes'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240917104056'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(208455828436669302)
,p_plug_name=>'Modificacion de datos Clientes'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(208455918646669303)
,p_plug_name=>'REPORT'
,p_parent_plug_id=>wwv_flow_imp.id(208455828436669302)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       COD_CLIENTE,',
'     (  select ltrim(p.nombre)',
'    from personas p ',
'   where p.cod_persona = v.cod_persona ) nombre_cliente,',
'       COD_PERSONA,',
'       COD_MONEDA_LIMITE,',
'       LIMITE_CREDITO,',
'       COD_COBRADOR,',
'       COD_VENDEDOR,',
'                     (  select nvl( fv.descripcion, ltrim(p.nombre) )',
'    from fv_vendedores fv, personas p ',
'   where fv.cod_empresa = :P_COD_EMPRESA',
'     and fv.cod_persona = p.cod_persona ',
'     and fv.cod_vendedor = v.cod_vendedor',
'     and fv.estado = ''A'' ) nombre_vendedor,',
'       DIAS_COBRO,',
'       PLAZO,',
'       COD_ZONA,',
'       ESTADO,',
'       COD_USUARIO,',
'       FEC_ALTA,',
'       ENCARGADO,',
'       COD_CONDICION_VENTA,',
'       NRO_JERARQUIA,',
'       TIP_DOCUMENTO,',
'       TIP_CLIENTE,',
'       COD_CAUSAL,',
'       FEC_ESTADO,',
'       COMENTARIO,',
'       TIPO_IMPUESTO,',
'       FEC_ULTIMA_COMPRA,',
'       REPRESENTANTE,',
'       COD_CORPORACION,',
'       PUE_REDESCONTARSE,',
'       COD_SUCURSAL,',
'       NRO_ORDEN,',
'       RUTA_FIRMA,',
'       COD_PER_CONTACTO,',
'       FEC_ULT_COBRO,',
'       CARTA_GARANTIA,',
'       IMP_BARRAS,',
'       COD_DIRECCION,',
'       COD_DIRECCION_POR_DEFECTO,',
'       COD_CLIENTE_ANTERIOR,',
'       NRO_INSCRIPCION_AD,',
'       COD_LISTA_PRECIO,',
'       FEC_ULT_MODIFICACION,',
'       IMPRIME_CONDICION,',
'       NRO_LLAMADA,',
'       TIP_OPERACION,',
'       COD_MOTIVO_MOROSIDAD,',
'       COD_AGENTE,',
'       INFORMCONF,',
'       CALIFICACION,',
'       COD_USUARIO_MOD,',
'       IND_FINANCIACION,',
'       COD_CLIENTE_LABORAL,',
'       COD_ZONA_COBRANZA,',
'       SIN_CV,',
'       LATITUD,',
'       LONGITUD,',
'       IND_GEOREFERENCIADO,',
'       COD_ASOCIACION,',
'       IND_REMISION,',
'       UBICACION,',
'       NIVEL_AUTORIZACION,',
'       FEC_DEMANDA,',
'       COD_SCORING,',
'       IND_PREFERENCIAL,',
'       IND_IMPRIMIR_BARRA,',
'       IND_DEVOLUCION_REPUESTO,',
'       IND_SEGUIMIENTOS,',
'       OBS_SEGUIMIENTO,',
'       OBSERVACION_PEDIDO,',
'       IMPRIMIR_DIR_SUCURSAL,',
'       COD_DIVISA,',
'       ESTADO_CRM,',
'       P_FEC_ESTADO,',
'       COD_ZONAS_COBRANZAS,',
'       IND_REGIMEN_TURISMO,',
'       FECHA_PRIMERA_COMPRA,',
'       IND_LLEVA_OC,',
'       IND_MIGRADO_OS,',
'       IND_DELIVERY_REPUESTOS,',
'       CODIGO_INTESINDAD_COBRANZA,',
'       PRIORIZACION_CARTERA,',
'       SEGMENTO_CLIENTE,',
'       IND_EMP_ASOCIADA,',
'       COD_RESP_GEST_COBRO,',
'       PROM_ATRASO,',
'       ZONIFICACION,',
'       PAGARE_POR_FACTURA,',
'       FECHA_VENCIMIENTO_LINEA,',
'       COD_SUB_TIPO_CLIENTE,',
'       IND_CLIENTE_FINAL,',
'       COD_CLIENTE_QM,',
'       IND_CONFIRMA_ENVIO,',
'       IND_FIDELIZADO,',
'       IND_IMPRIMIR_UNICO_PAGARE,',
'       IND_ENVIA_FACTURA,',
'       OBS_COBRANZAS,',
'       FECHA_SEGUIMIENTO_CLIENTE,',
'       FECHA_LIMITE_FACTURACION,',
'       NULL EDITAR,',
'       ROWID',
'  from CC_CLIENTES v',
'   where v.cod_empresa = :P_COD_EMPRESA'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORT'
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
 p_id=>wwv_flow_imp.id(208456053106669304)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'FCARDOZO'
,p_internal_uid=>208456053106669304
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208456166180669305)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208456205030669306)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208456394078669307)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208456415971669308)
,p_db_column_name=>'COD_MONEDA_LIMITE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Moneda Limite'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208456561913669309)
,p_db_column_name=>'LIMITE_CREDITO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Limite Credito'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208456625731669310)
,p_db_column_name=>'COD_COBRADOR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Cobrador'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208456758707669311)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208456839884669312)
,p_db_column_name=>'DIAS_COBRO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Dias Cobro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208456952764669313)
,p_db_column_name=>'PLAZO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Plazo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208457086314669314)
,p_db_column_name=>'COD_ZONA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Zona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208457184459669315)
,p_db_column_name=>'ESTADO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208457243404669316)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208457389230669317)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Fec Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208457433738669318)
,p_db_column_name=>'ENCARGADO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Encargado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208457582386669319)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208457673492669320)
,p_db_column_name=>'NRO_JERARQUIA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Nro Jerarquia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208457711891669321)
,p_db_column_name=>'TIP_DOCUMENTO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Tip Documento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208457891056669322)
,p_db_column_name=>'TIP_CLIENTE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Tip Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208457913577669323)
,p_db_column_name=>'COD_CAUSAL'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Causal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208458074909669324)
,p_db_column_name=>'FEC_ESTADO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Fec Estado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208458151028669325)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208458285777669326)
,p_db_column_name=>'TIPO_IMPUESTO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Tipo Impuesto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208458311605669327)
,p_db_column_name=>'FEC_ULTIMA_COMPRA'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Fec Ultima Compra'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208458467824669328)
,p_db_column_name=>'REPRESENTANTE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Representante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208458505467669329)
,p_db_column_name=>'COD_CORPORACION'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Cod Corporacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208458694244669330)
,p_db_column_name=>'PUE_REDESCONTARSE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Pue Redescontarse'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208458708150669331)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208458839411669332)
,p_db_column_name=>'NRO_ORDEN'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Nro Orden'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208458926529669333)
,p_db_column_name=>'RUTA_FIRMA'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Ruta Firma'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208459000986669334)
,p_db_column_name=>'COD_PER_CONTACTO'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Cod Per Contacto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208459119499669335)
,p_db_column_name=>'FEC_ULT_COBRO'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Fec Ult Cobro'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208459222472669336)
,p_db_column_name=>'CARTA_GARANTIA'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Carta Garantia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208459384961669337)
,p_db_column_name=>'IMP_BARRAS'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Imp Barras'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208459472383669338)
,p_db_column_name=>'COD_DIRECCION'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Cod Direccion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208459507602669339)
,p_db_column_name=>'COD_DIRECCION_POR_DEFECTO'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Cod Direccion Por Defecto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208459607570669340)
,p_db_column_name=>'COD_CLIENTE_ANTERIOR'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Cod Cliente Anterior'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208459708110669341)
,p_db_column_name=>'NRO_INSCRIPCION_AD'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Nro Inscripcion Ad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208459883067669342)
,p_db_column_name=>'COD_LISTA_PRECIO'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Cod Lista Precio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208459994279669343)
,p_db_column_name=>'FEC_ULT_MODIFICACION'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Fec Ult Modificacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208460018146669344)
,p_db_column_name=>'IMPRIME_CONDICION'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Imprime Condicion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208460111302669345)
,p_db_column_name=>'NRO_LLAMADA'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Nro Llamada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208460242069669346)
,p_db_column_name=>'TIP_OPERACION'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Tip Operacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208460300554669347)
,p_db_column_name=>'COD_MOTIVO_MOROSIDAD'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Cod Motivo Morosidad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208460479508669348)
,p_db_column_name=>'COD_AGENTE'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Cod Agente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208460562379669349)
,p_db_column_name=>'INFORMCONF'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Informconf'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208460696995669350)
,p_db_column_name=>'CALIFICACION'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Calificacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208464986203616701)
,p_db_column_name=>'COD_USUARIO_MOD'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Cod Usuario Mod'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208465065752616702)
,p_db_column_name=>'IND_FINANCIACION'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Ind Financiacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208465135471616703)
,p_db_column_name=>'COD_CLIENTE_LABORAL'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Cod Cliente Laboral'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208465226529616704)
,p_db_column_name=>'COD_ZONA_COBRANZA'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Cod Zona Cobranza'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208465391010616705)
,p_db_column_name=>'SIN_CV'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Sin Cv'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208465433559616706)
,p_db_column_name=>'LATITUD'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Latitud'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208465554109616707)
,p_db_column_name=>'LONGITUD'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Longitud'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208465614772616708)
,p_db_column_name=>'IND_GEOREFERENCIADO'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Ind Georeferenciado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208465784456616709)
,p_db_column_name=>'COD_ASOCIACION'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Cod Asociacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208465871981616710)
,p_db_column_name=>'IND_REMISION'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Ind Remision'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208465962337616711)
,p_db_column_name=>'UBICACION'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Ubicacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208466025054616712)
,p_db_column_name=>'NIVEL_AUTORIZACION'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Nivel Autorizacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208466160550616713)
,p_db_column_name=>'FEC_DEMANDA'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Fec Demanda'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208466282553616714)
,p_db_column_name=>'COD_SCORING'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Cod Scoring'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208466390344616715)
,p_db_column_name=>'IND_PREFERENCIAL'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Ind Preferencial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208466407922616716)
,p_db_column_name=>'IND_IMPRIMIR_BARRA'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'Ind Imprimir Barra'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208466555424616717)
,p_db_column_name=>'IND_DEVOLUCION_REPUESTO'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Ind Devolucion Repuesto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208466606810616718)
,p_db_column_name=>'IND_SEGUIMIENTOS'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Ind Seguimientos'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208466759972616719)
,p_db_column_name=>'OBS_SEGUIMIENTO'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Obs Seguimiento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208466821725616720)
,p_db_column_name=>'OBSERVACION_PEDIDO'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'Observacion Pedido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208466986432616721)
,p_db_column_name=>'IMPRIMIR_DIR_SUCURSAL'
,p_display_order=>670
,p_column_identifier=>'BO'
,p_column_label=>'Imprimir Dir Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208467075225616722)
,p_db_column_name=>'COD_DIVISA'
,p_display_order=>680
,p_column_identifier=>'BP'
,p_column_label=>'Cod Divisa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208467192565616723)
,p_db_column_name=>'ESTADO_CRM'
,p_display_order=>690
,p_column_identifier=>'BQ'
,p_column_label=>'Estado Crm'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208467230060616724)
,p_db_column_name=>'P_FEC_ESTADO'
,p_display_order=>700
,p_column_identifier=>'BR'
,p_column_label=>'P Fec Estado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208467328407616725)
,p_db_column_name=>'COD_ZONAS_COBRANZAS'
,p_display_order=>710
,p_column_identifier=>'BS'
,p_column_label=>'Cod Zonas Cobranzas'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208467425004616726)
,p_db_column_name=>'IND_REGIMEN_TURISMO'
,p_display_order=>720
,p_column_identifier=>'BT'
,p_column_label=>'Ind Regimen Turismo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208467510835616727)
,p_db_column_name=>'FECHA_PRIMERA_COMPRA'
,p_display_order=>730
,p_column_identifier=>'BU'
,p_column_label=>'Fecha Primera Compra'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208467691232616728)
,p_db_column_name=>'IND_LLEVA_OC'
,p_display_order=>740
,p_column_identifier=>'BV'
,p_column_label=>'Ind Lleva Oc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208467756089616729)
,p_db_column_name=>'IND_MIGRADO_OS'
,p_display_order=>750
,p_column_identifier=>'BW'
,p_column_label=>'Ind Migrado Os'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208467850762616730)
,p_db_column_name=>'IND_DELIVERY_REPUESTOS'
,p_display_order=>760
,p_column_identifier=>'BX'
,p_column_label=>'Ind Delivery Repuestos'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208467947840616731)
,p_db_column_name=>'CODIGO_INTESINDAD_COBRANZA'
,p_display_order=>770
,p_column_identifier=>'BY'
,p_column_label=>'Codigo Intesindad Cobranza'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208468095131616732)
,p_db_column_name=>'PRIORIZACION_CARTERA'
,p_display_order=>780
,p_column_identifier=>'BZ'
,p_column_label=>'Priorizacion Cartera'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208468118998616733)
,p_db_column_name=>'SEGMENTO_CLIENTE'
,p_display_order=>790
,p_column_identifier=>'CA'
,p_column_label=>'Segmento Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208468216230616734)
,p_db_column_name=>'IND_EMP_ASOCIADA'
,p_display_order=>800
,p_column_identifier=>'CB'
,p_column_label=>'Ind Emp Asociada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208468326822616735)
,p_db_column_name=>'COD_RESP_GEST_COBRO'
,p_display_order=>810
,p_column_identifier=>'CC'
,p_column_label=>'Cod Resp Gest Cobro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208468442672616736)
,p_db_column_name=>'PROM_ATRASO'
,p_display_order=>820
,p_column_identifier=>'CD'
,p_column_label=>'Prom Atraso'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208468564171616737)
,p_db_column_name=>'ZONIFICACION'
,p_display_order=>830
,p_column_identifier=>'CE'
,p_column_label=>'Zonificacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208468696528616738)
,p_db_column_name=>'PAGARE_POR_FACTURA'
,p_display_order=>840
,p_column_identifier=>'CF'
,p_column_label=>'Pagare Por Factura'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208468751996616739)
,p_db_column_name=>'FECHA_VENCIMIENTO_LINEA'
,p_display_order=>850
,p_column_identifier=>'CG'
,p_column_label=>'Fecha Vencimiento Linea'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208468856054616740)
,p_db_column_name=>'COD_SUB_TIPO_CLIENTE'
,p_display_order=>860
,p_column_identifier=>'CH'
,p_column_label=>'Cod Sub Tipo Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208468914869616741)
,p_db_column_name=>'IND_CLIENTE_FINAL'
,p_display_order=>870
,p_column_identifier=>'CI'
,p_column_label=>'Ind Cliente Final'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208469094000616742)
,p_db_column_name=>'COD_CLIENTE_QM'
,p_display_order=>880
,p_column_identifier=>'CJ'
,p_column_label=>'Cod Cliente Qm'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208469160004616743)
,p_db_column_name=>'IND_CONFIRMA_ENVIO'
,p_display_order=>890
,p_column_identifier=>'CK'
,p_column_label=>'Ind Confirma Envio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208469211395616744)
,p_db_column_name=>'IND_FIDELIZADO'
,p_display_order=>900
,p_column_identifier=>'CL'
,p_column_label=>'Ind Fidelizado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208469353965616745)
,p_db_column_name=>'IND_IMPRIMIR_UNICO_PAGARE'
,p_display_order=>910
,p_column_identifier=>'CM'
,p_column_label=>'Ind Imprimir Unico Pagare'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208469470881616746)
,p_db_column_name=>'IND_ENVIA_FACTURA'
,p_display_order=>920
,p_column_identifier=>'CN'
,p_column_label=>'Ind Envia Factura'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208469565962616747)
,p_db_column_name=>'OBS_COBRANZAS'
,p_display_order=>930
,p_column_identifier=>'CO'
,p_column_label=>'Obs Cobranzas'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208469633639616748)
,p_db_column_name=>'FECHA_SEGUIMIENTO_CLIENTE'
,p_display_order=>940
,p_column_identifier=>'CP'
,p_column_label=>'Fecha Seguimiento Cliente'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208469724772616749)
,p_db_column_name=>'FECHA_LIMITE_FACTURACION'
,p_display_order=>950
,p_column_identifier=>'CQ'
,p_column_label=>'Fecha Limite Facturacion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(208340609725827030)
,p_db_column_name=>'EDITAR'
,p_display_order=>960
,p_column_identifier=>'CR'
,p_column_label=>'Editar'
,p_column_link=>'f?p=&APP_ID.:613:&SESSION.::&DEBUG.:613:P613_COD_CLIENTE,P613_ACCION_CONSULTA,P613_TIP_CLIENTE,P613_COD_PERSONA,P613_ROWID_SELECT:#COD_CLIENTE#,1,#TIP_CLIENTE#,#COD_PERSONA#,#ROWID#'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_display_condition2=>'PLSQL'
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
 p_id=>wwv_flow_imp.id(209217863655462119)
,p_db_column_name=>'ROWID'
,p_display_order=>970
,p_column_identifier=>'CS'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210021714515258542)
,p_db_column_name=>'NOMBRE_VENDEDOR'
,p_display_order=>980
,p_column_identifier=>'CT'
,p_column_label=>'Nombre Vendedor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(210021818617258543)
,p_db_column_name=>'NOMBRE_CLIENTE'
,p_display_order=>990
,p_column_identifier=>'CU'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(208499428184616073)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2084995'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:COD_CLIENTE:NOMBRE_CLIENTE:COD_PERSONA:LIMITE_CREDITO:COD_COBRADOR:COD_VENDEDOR:NOMBRE_VENDEDOR:PLAZO:COD_ZONA:ESTADO:COD_USUARIO:FEC_ALTA:COD_CONDICION_VENTA:FEC_ESTADO:COMENTARIO:'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(708530166799032628)
,p_name=>'New'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(708530256184032629)
,p_event_id=>wwv_flow_imp.id(708530166799032628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(208455828436669302)
);
wwv_flow_imp.component_end;
end;
/
