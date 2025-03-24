prompt --application/pages/page_00180
begin
--   Manifest
--     PAGE: 00180
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
 p_id=>180
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CCCALIFCLI'
,p_alias=>'CCCALIFCLI'
,p_page_mode=>'MODAL'
,p_step_title=>'CCCALIFCLI'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'EMILIANOP'
,p_last_upd_yyyymmddhh24miss=>'20221116133255'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37464785297000144)
,p_plug_name=>'REPORTE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37464933676000146)
,p_plug_name=>'PERSONA'
,p_parent_plug_id=>wwv_flow_imp.id(37464785297000144)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  a.cod_persona cod_persona_rl, ',
'        pr.nombre nombre_representante_legal, ',
'        pr.cargo,',
'        round((to_number(sysdate-pr.fec_nacimiento))/365) edad ',
'FROM RESPONSABLES_LEGALES a, personas pr',
'WHERE  a.cod_persona_ref = pr.cod_persona'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'PERSONA'
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
 p_id=>wwv_flow_imp.id(37465016874000147)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>37465016874000147
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37465192200000148)
,p_db_column_name=>'COD_PERSONA_RL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Persona Rl'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37465238378000149)
,p_db_column_name=>'NOMBRE_REPRESENTANTE_LEGAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre Representante Legal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37465341322000150)
,p_db_column_name=>'CARGO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cargo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37916237597921601)
,p_db_column_name=>'EDAD'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Edad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(37930265242937348)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'379303'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_PERSONA_RL:NOMBRE_REPRESENTANTE_LEGAL:CARGO:EDAD'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(37967978300179806)
,p_name=>'FACTURA'
,p_parent_plug_id=>wwv_flow_imp.id(37464785297000144)
,p_template=>wwv_flow_imp.id(40123385688263660)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT	c.cod_cliente, ',
'		p.nombre ||  ''   (''||c.cod_cliente||'')'' nombre, ',
'		null comentario,  ',
'		(SELECT d.detalle FROM direc_personas d WHERE d.cod_persona=p.cod_persona AND rownum=1) direccion,',
'		(SELECT ci.descripcion from direc_personas d, ciudades ci WHERE d.cod_persona=p.cod_persona AND d.cod_pais=ci.cod_pais',
'		 AND d.cod_provincia=ci.cod_provincia',
'		 AND d.cod_ciudad=ci.cod_ciudad',
'		 AND rownum=1) ciudad,',
'		null telefono, ',
'		pv.nombre vendedor, ',
'		p.cod_persona,',
'		NVL((SELECT I.NUMERO FROM IDENT_PERSONAS I WHERE I.COD_PERSONA=CC.COD_PERSONA AND cod_ident=''RUC''),',
'		(SELECT I.NUMERO FROM IDENT_PERSONAS I 	WHERE I.COD_PERSONA=CC.COD_PERSONA AND cod_ident=''CI'')) RUC, ',
'		CC.LIMITE_CREDITO,',
'		(nvl((SELECT sum( decode( nvl(sal.cod_moneda,''1''),''1'',nvl(sal.MONTO_VALOR,0),0)/(SELECT M.tipo_cambio_dia FROM monedas m WHERE M.cod_moneda = ''2''))+ sum( decode( nvl(sal.cod_moneda,''1''),''2'',nvl(sal.MONTO_VALOR,0),0))',
'',
'FROM CC_VALORES sal, CC_FORMAS_COBROS CO',
'WHERE SAL.cod_empresa = ''1''',
'',
'AND nvl( SAL.ESTADO_VALOR,''P'' ) NOT IN( ''D'' , ''CR'' , ''CP'')',
'AND (  SAL.FEC_EMISION BETWEEN to_date(''01/01/2009'',''DD/MM/YYYY'') AND TO_DATE(''31/12/2099'',''DD/MM/YYYY''))',
'AND cod_cliente = Cc.cod_cliente',
'AND SAL.COD_EMPRESA = CO.COD_EMPRESA',
'AND SAL.COD_PER_JURIDICA = CO.COD_PER_JURIDICA',
'AND SAL.TIP_DOCUMENTO = CO.TIP_DOCUMENTO',
'AND SAL.NRO_VALOR = CO.NRO_VALOR',
'AND  SAL.FEC_EMISION <> SAL.FEC_VENCIMIENTO',
'AND CO.SUB_TIPO_TRANS=''16''),0)+ nvl((SELECT sum( decode( nvl(sal.cod_moneda,''1''),''1'',nvl(sal.MONTO_VALOR,0),0)/(SELECT M.tipo_cambio_dia',
'                                                                                                                FROM monedas m',
'                                                                                                                WHERE M.cod_moneda = ''2''))+ sum( decode( nvl(sal.cod_moneda,''1''),''2'',nvl(sal.MONTO_VALOR,0),0))',
'FROM CC_VALORES sal',
'WHERE SAL.cod_empresa = ''1''',
'AND (  SAL.FEC_EMISION BETWEEN to_date(''01/01/2009'',''DD/MM/YYYY'') AND TO_DATE(''31/12/2099'',''DD/MM/YYYY'') )',
'AND cod_cliente = Cc.cod_cliente',
'AND sal.tip_documento not in (''RET'',''VAL'',''DP'')',
'AND nvl( sal.estado_valor, ''P'' ) = ''R''),0) + nvl((SELECT sum( decode( nvl(cod_moneda_cuota,''1''),''1'',nvl(saldo_cuota,0),0)/(SELECT tipo_cambio_dia',
'                                                                                                                           FROM monedas m',
'                                                                                                                           WHERE cod_moneda = ''2''))+ sum( decode( nvl(cod_moneda_cuota,''1''),''2'',nvl(saldo_cuota,0),0))',
'FROM cc_saldos S',
'WHERE cod_empresa = ''1''--:p_cod_empresa',
'AND cod_cliente = Cc.cod_cliente',
'AND S.FEC_VENCIMIENTO>TO_DATE(''01/01/2000'',''DD/MM/YYYY'')',
'AND nvl(saldo_cuota,0) <> 0),0))LINEA_EJECUTADA, (SELECT SUM( Cg.MONTO / CASE WHEN cg.cod_moneda=''1'' THEN',
'                                                 (SELECT tipo_cambio_dia',
'                                                  FROM monedas m',
'                                                  WHERE cod_moneda = ''2'') ELSE 1 END)',
'FROM CC_CLIENTES_GARANTIA Cg',
'WHERE Cg.COD_EMPRESA=c.COD_EMPRESA',
'AND Cg.COD_CLIENTE=c.COD_CLIENTE',
'AND estado=''F'')carta_credito, CASE WHEN p.ind_vivienda=''P'' THEN ''PROPIO'' ',
'                                   WHEN P.IND_VIVIENDA=''A'' THEN ''ALQUILADO'' ',
'                                   WHEN P.IND_VIVIENDA=''OTRA'' THEN ''OTRO''',
'                                   ELSE ''DESCONOCIDO''',
'                                   END VIVIENDA,',
'(SELECT SC.COD_SCORING||'' ''||DESCRIPCION_SCORING',
'FROM CC_SCORING SC',
'WHERE COD_EMPRESA=CC.COD_EMPRESA',
'AND COD_SCORING=CC.COD_SCORING)SCORING, (SELECT cc.nro_jerarquia||'' - '' || descripcion',
'                                        FROM cc_jerarquias',
'                                        WHERE cod_empresa   = cc.cod_empresa',
'                                        AND nro_jerarquia = cc.nro_jerarquia)calificacion_cobranza, c.observacion observacion_creditos,        ',
'                                            ACTIVO_TOTALES, PASIVO_TOTALES, PATRIMONIO_NETO, INGRESOS, EGRESOS, SALDOS, COMPRAS_GS,',
'                                            COMPRAS_US, DIAS_CREDITOS_GS, DIAS_CREDITOS_US, ROTACION_GS, ROTACION_US, PROPUESTA_GS,',
'                                            PROPUESTA_US, INGRESO_ESTIMADO_GS, INGRESO_ESTIMADO_US, GARANTIA_GS, GARANTIA_US, CODEUDORIA_GS,',
'                                            CODEUDORIA_US, CATEGORIA_CLIENTE, LINEA_FINANCIERA_GS, LINEA_FINANCIERA_US, LINEA_PATRIMONIO_GS,',
'                                            LINEA_PATRIMONIO_US, NECESIDAD_CREDITO_US, NECESIDAD_CREDITO_GS, c.observacion_refencia, c.observacion,',
'                                            OBSERVACION_ANALISIS, round((to_number(sysdate-((SELECT min(c1.fec_comprobante)',
'                                                                                             FROM VT_COMPROBANTES_CABECERA C1 ',
'                                                                                             WHERE c1.cod_empresa=c.cod_empresa',
'                                                                                             AND c1.cod_cliente=c.cod_cliente',
'                                                                                             AND NVL(C1.ESTADO,''P'')<>''A''',
'                                                                                             AND C1.FEC_COMPROBANTE>nvl(cc.fec_alta,sysdate-60000)))))/365,2)antiguedad ',
'                                                                                             FROM CC_CALIFICACION_CLIENTE c, cc_clientes cc, personas p, fv_vendedores fv, personas pv',
'                                                                                             WHERE c.cod_empresa = :P_COD_EMPRESA',
'                                                                                             AND c.cod_cliente = :P180_COD_CLIENTE',
'                                                                                             AND cc.cod_empresa=c.cod_empresa',
'                                                                                             AND cc.cod_cliente=c.cod_cliente',
'                                                                                             AND cc.cod_persona=p.cod_persona',
'                                                                                             AND fv.cod_empresa(+)=cc.cod_empresa',
'                                                                                             AND fv.cod_vendedor(+)=cc.cod_vendedor',
'                                                                                             AND fv.cod_persona=pv.cod_persona(+)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P180_COD_CLIENTE,P_COD_EMPRESA'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40159146993263670)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38011043545333305)
,p_query_column_id=>1
,p_column_alias=>'COD_CLIENTE'
,p_column_display_sequence=>10
,p_column_heading=>'Cod Cliente'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38011147632333306)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>20
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38011221893333307)
,p_query_column_id=>3
,p_column_alias=>'COMENTARIO'
,p_column_display_sequence=>30
,p_column_heading=>'Comentario'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38011355334333308)
,p_query_column_id=>4
,p_column_alias=>'DIRECCION'
,p_column_display_sequence=>40
,p_column_heading=>'Direccion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38011402582333309)
,p_query_column_id=>5
,p_column_alias=>'CIUDAD'
,p_column_display_sequence=>50
,p_column_heading=>'Ciudad'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38011506335333310)
,p_query_column_id=>6
,p_column_alias=>'TELEFONO'
,p_column_display_sequence=>60
,p_column_heading=>'Telefono'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38011673701333311)
,p_query_column_id=>7
,p_column_alias=>'VENDEDOR'
,p_column_display_sequence=>70
,p_column_heading=>'Vendedor'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38011736226333312)
,p_query_column_id=>8
,p_column_alias=>'COD_PERSONA'
,p_column_display_sequence=>80
,p_column_heading=>'Cod Persona'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38011818012333313)
,p_query_column_id=>9
,p_column_alias=>'RUC'
,p_column_display_sequence=>90
,p_column_heading=>'Ruc'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38011955573333314)
,p_query_column_id=>10
,p_column_alias=>'LIMITE_CREDITO'
,p_column_display_sequence=>100
,p_column_heading=>'Limite Credito'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38012024180333315)
,p_query_column_id=>11
,p_column_alias=>'LINEA_EJECUTADA'
,p_column_display_sequence=>110
,p_column_heading=>'Linea Ejecutada'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38012180413333316)
,p_query_column_id=>12
,p_column_alias=>'CARTA_CREDITO'
,p_column_display_sequence=>120
,p_column_heading=>'Carta Credito'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38012227225333317)
,p_query_column_id=>13
,p_column_alias=>'VIVIENDA'
,p_column_display_sequence=>130
,p_column_heading=>'Vivienda'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38012352162333318)
,p_query_column_id=>14
,p_column_alias=>'SCORING'
,p_column_display_sequence=>140
,p_column_heading=>'Scoring'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38012449505333319)
,p_query_column_id=>15
,p_column_alias=>'CALIFICACION_COBRANZA'
,p_column_display_sequence=>150
,p_column_heading=>'Calificacion Cobranza'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38012560768333320)
,p_query_column_id=>16
,p_column_alias=>'OBSERVACION_CREDITOS'
,p_column_display_sequence=>160
,p_column_heading=>'Observacion Creditos'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38012678625333321)
,p_query_column_id=>17
,p_column_alias=>'ACTIVO_TOTALES'
,p_column_display_sequence=>170
,p_column_heading=>'Activo Totales'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38012750969333322)
,p_query_column_id=>18
,p_column_alias=>'PASIVO_TOTALES'
,p_column_display_sequence=>180
,p_column_heading=>'Pasivo Totales'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38012809022333323)
,p_query_column_id=>19
,p_column_alias=>'PATRIMONIO_NETO'
,p_column_display_sequence=>190
,p_column_heading=>'Patrimonio Neto'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38012919111333324)
,p_query_column_id=>20
,p_column_alias=>'INGRESOS'
,p_column_display_sequence=>200
,p_column_heading=>'Ingresos'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38013005165333325)
,p_query_column_id=>21
,p_column_alias=>'EGRESOS'
,p_column_display_sequence=>210
,p_column_heading=>'Egresos'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38013129106333326)
,p_query_column_id=>22
,p_column_alias=>'SALDOS'
,p_column_display_sequence=>220
,p_column_heading=>'Saldos'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38013208704333327)
,p_query_column_id=>23
,p_column_alias=>'COMPRAS_GS'
,p_column_display_sequence=>230
,p_column_heading=>'Compras Gs'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38013390222333328)
,p_query_column_id=>24
,p_column_alias=>'COMPRAS_US'
,p_column_display_sequence=>240
,p_column_heading=>'Compras Us'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38013448507333329)
,p_query_column_id=>25
,p_column_alias=>'DIAS_CREDITOS_GS'
,p_column_display_sequence=>250
,p_column_heading=>'Dias Creditos Gs'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38013511274333330)
,p_query_column_id=>26
,p_column_alias=>'DIAS_CREDITOS_US'
,p_column_display_sequence=>260
,p_column_heading=>'Dias Creditos Us'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38013655239333331)
,p_query_column_id=>27
,p_column_alias=>'ROTACION_GS'
,p_column_display_sequence=>270
,p_column_heading=>'Rotacion Gs'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38013751986333332)
,p_query_column_id=>28
,p_column_alias=>'ROTACION_US'
,p_column_display_sequence=>280
,p_column_heading=>'Rotacion Us'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38013800353333333)
,p_query_column_id=>29
,p_column_alias=>'PROPUESTA_GS'
,p_column_display_sequence=>290
,p_column_heading=>'Propuesta Gs'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38013924312333334)
,p_query_column_id=>30
,p_column_alias=>'PROPUESTA_US'
,p_column_display_sequence=>300
,p_column_heading=>'Propuesta Us'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38014079266333335)
,p_query_column_id=>31
,p_column_alias=>'INGRESO_ESTIMADO_GS'
,p_column_display_sequence=>310
,p_column_heading=>'Ingreso Estimado Gs'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38014107499333336)
,p_query_column_id=>32
,p_column_alias=>'INGRESO_ESTIMADO_US'
,p_column_display_sequence=>320
,p_column_heading=>'Ingreso Estimado Us'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38014277589333337)
,p_query_column_id=>33
,p_column_alias=>'GARANTIA_GS'
,p_column_display_sequence=>330
,p_column_heading=>'Garantia Gs'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38014346462333338)
,p_query_column_id=>34
,p_column_alias=>'GARANTIA_US'
,p_column_display_sequence=>340
,p_column_heading=>'Garantia Us'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38014446303333339)
,p_query_column_id=>35
,p_column_alias=>'CODEUDORIA_GS'
,p_column_display_sequence=>350
,p_column_heading=>'Codeudoria Gs'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38014573092333340)
,p_query_column_id=>36
,p_column_alias=>'CODEUDORIA_US'
,p_column_display_sequence=>360
,p_column_heading=>'Codeudoria Us'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38014606849333341)
,p_query_column_id=>37
,p_column_alias=>'CATEGORIA_CLIENTE'
,p_column_display_sequence=>370
,p_column_heading=>'Categoria Cliente'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38014767529333342)
,p_query_column_id=>38
,p_column_alias=>'LINEA_FINANCIERA_GS'
,p_column_display_sequence=>380
,p_column_heading=>'Linea Financiera Gs'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38014819396333343)
,p_query_column_id=>39
,p_column_alias=>'LINEA_FINANCIERA_US'
,p_column_display_sequence=>390
,p_column_heading=>'Linea Financiera Us'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38014925898333344)
,p_query_column_id=>40
,p_column_alias=>'LINEA_PATRIMONIO_GS'
,p_column_display_sequence=>400
,p_column_heading=>'Linea Patrimonio Gs'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38015015673333345)
,p_query_column_id=>41
,p_column_alias=>'LINEA_PATRIMONIO_US'
,p_column_display_sequence=>410
,p_column_heading=>'Linea Patrimonio Us'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38015106480333346)
,p_query_column_id=>42
,p_column_alias=>'NECESIDAD_CREDITO_US'
,p_column_display_sequence=>420
,p_column_heading=>'Necesidad Credito Us'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38015214390333347)
,p_query_column_id=>43
,p_column_alias=>'NECESIDAD_CREDITO_GS'
,p_column_display_sequence=>430
,p_column_heading=>'Necesidad Credito Gs'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38015319559333348)
,p_query_column_id=>44
,p_column_alias=>'OBSERVACION_REFENCIA'
,p_column_display_sequence=>440
,p_column_heading=>'Observacion Refencia'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38015462368333349)
,p_query_column_id=>45
,p_column_alias=>'OBSERVACION'
,p_column_display_sequence=>450
,p_column_heading=>'Observacion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38015507891333350)
,p_query_column_id=>46
,p_column_alias=>'OBSERVACION_ANALISIS'
,p_column_display_sequence=>460
,p_column_heading=>'Observacion Analisis'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38033667075336001)
,p_query_column_id=>47
,p_column_alias=>'ANTIGUEDAD'
,p_column_display_sequence=>470
,p_column_heading=>'Antiguedad'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37916557769921604)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37916644342921605)
,p_name=>'P180_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37916557769921604)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/
