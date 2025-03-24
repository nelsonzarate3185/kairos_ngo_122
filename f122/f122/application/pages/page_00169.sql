prompt --application/pages/page_00169
begin
--   Manifest
--     PAGE: 00169
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
 p_id=>169
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTRVEVCO'
,p_alias=>'VTRVEVCO'
,p_step_title=>'VTRVEVCO'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JOSEFINAGU'
,p_last_upd_yyyymmddhh24miss=>'20221111151205'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38267772805221629)
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
 p_id=>wwv_flow_imp.id(38267872232221630)
,p_plug_name=>'B_PARAMETRO'
,p_parent_plug_id=>wwv_flow_imp.id(38267772805221629)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38269063967221642)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(38267772805221629)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38564483031233607)
,p_plug_name=>unistr('Informe de Ventas para Comisi\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(38267772805221629)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_VENDEDOR, ',
'	   VENDEDOR, ',
'	   COD_TIPO_GRUPO,',
'	   GRUPO_VND,',
'	   CLIENTE,',
'	   ROUND(SUM(MONTO_TOTAL))TOT_VTA',
'	FROM(                        ',
'	   SELECT LTRIM(RTRIM(NVL(P1.NOMB_FANTASIA, P1.NOMBRE))) VENDEDOR,',
'		      GV.COD_VENDEDOR,',
'		      C1.COD_MONEDA,  ',
'			  NVL(( SELECT DISTINCT PR.PORC_COM ',
'					  FROM FV_PARAMETRO_COMISIONES  PR',
'					 WHERE PR.COD_VENDEDOR = V1.COD_VENDEDOR',
'					   AND PR.COD_EMPRESA = ''1''',
'					   AND ROUND(PR.PORC_DTO_MIN) <= ROUND(D1.PORC_DESCUENTO)',
'					   AND ROUND(PR.PORC_DTO_MAX) >= ROUND(D1.PORC_DESCUENTO)),0)  PORC,  ',
'			  DECODE(AR.COD_RUBRO,''PU'' ,D1.MONTO_TOTAL * -1,                                    ',
'			  CASE ',
'				WHEN COD_LISTA_PRECIO IN (''3'',''10'',''22'',''4'',''9'') THEN',
'					D1.MONTO_TOTAL * 0.97',
'				ELSE ',
'					D1.MONTO_TOTAL',
'				END)*(DECODE(TRIM(REPLACE(GVV.COD_GRUPO_VENTA,''.'','''')),''COMPARTIDA'',0.5,1)) MONTO_TOTAL,',
'			   CG.DESCRIPCION GRUPO_VND ,',
'			   CG.COD_TIPO_GRUPO,',
'			   ''00'' CLIENTE',
'	  FROM VT_COMPROBANTES_CABECERA C1,',
'		   VT_COMPROBANTES_DETALLE  D1,',
'		   ST_ARTICULOS             AR,',
'		   FV_GRUPOS_VENDEDORES     GV,',
'		   FV_GRUPOS_VENDEDORES_VEN GVV,',
'		   FV_VENDEDORES            V1,',
'		   FV_CATEGORIAS_VENDEDORES CG,',
'		   PERSONAS                 P1',
'	 WHERE C1.COD_EMPRESA = ''1''',
'	   AND C1.TIP_COMPROBANTE IN (''FCR'',''FCO'')',
'	   AND C1.FEC_COMPROBANTE BETWEEN  TO_DATE(:P169_FECHA_INI,''DD/MM/YYYY'') AND TO_DATE(:P169_FECHA_FIN,''DD/MM/YYYY'')  ',
'	   AND (C1.ESTADO IS NULL OR C1.ESTADO <> ''A'')',
'	   AND C1.COD_VENDEDOR NOT IN (''73'', ''90'', ''102'',''66'', ''54'', ''91'', ''77'', ''80'', ''98'') ',
'	   AND C1.COD_EMPRESA = D1.COD_EMPRESA',
'	   AND C1.TIP_COMPROBANTE = D1.TIP_COMPROBANTE',
'	   AND C1.SER_COMPROBANTE = D1.SER_COMPROBANTE',
'	   AND C1.NRO_COMPROBANTE = D1.NRO_COMPROBANTE',
'	   AND D1.MONTO_TOTAL > 0 ',
'	   AND D1.COD_EMPRESA = AR.COD_EMPRESA',
'	   AND D1.COD_ARTICULO = AR.COD_ARTICULO ',
'	   AND AR.COD_RUBRO IN (''PR'',''DP'',''IV'',''IR'',''VA'',''MU'',''PU'')    ',
'	   AND GV.COD_EMPRESA = C1.COD_EMPRESA',
'	   AND GV.COD_EMPRESA = GVV.COD_EMPRESA',
'	   AND GV.COD_GRUPO_VEN = GVV.COD_GRUPO_VEN',
'	   AND GVV.COD_VENDEDOR_REL = C1.COD_VENDEDOR',
'	   AND GV.COD_EMPRESA = V1.COD_EMPRESA(+)',
'	   AND GV.COD_VENDEDOR = V1.COD_VENDEDOR(+)',
'	   AND P1.COD_PERSONA(+) = V1.COD_PERSONA',
'	   AND V1.COD_TIPO_GRUPO = CG.COD_TIPO_GRUPO  ',
'	   AND NOT EXISTS (SELECT DISTINCT ''1''                            ',
'						 FROM  FV_GRUPOS_VENDEDORES  GV,',
'							   FV_GRUPOS_VENDEDORES_CLI GVC',
'						  WHERE GV.COD_GRUPO_VEN = GVV.COD_GRUPO_VEN',
'						    AND GV.COD_EMPRESA = GVV.COD_EMPRESA',
'						    AND GV.COD_GRUPO_VEN = GVC.COD_GRUPO_VEN',
'						    AND GV.COD_EMPRESA = GVC.COD_EMPRESA',
'						    AND GVC.COD_CLIENTE = C1.COD_CLIENTE',
'						    AND GV.ESTADO =''A'') ',
'	  -- AND ( PI_COD_VENDEDOR IS NULL OR GVV.COD_VENDEDOR_REL = PI_COD_VENDEDOR )',
'	   AND ( :P169_COD_GRUPO_VEN IS NULL OR GV.COD_GRUPO_VEN = :P169_COD_GRUPO_VEN )                                 ',
'	   AND ( :P169_COD_MARCA IS NULL OR AR.COD_MARCA = :P169_COD_MARCA ) ',
'	   AND ( :P169_COD_MONEDA IS NULL OR C1.COD_MONEDA = :P169_COD_MONEDA ) ',
'	   ',
'	 UNION  ALL',
'	',
'	 SELECT LTRIM(RTRIM(NVL(P1.NOMB_FANTASIA, P1.NOMBRE))) VENDEDOR,',
'		    GV.COD_VENDEDOR,',
'		    C1.COD_MONEDA,  ',
'			0  PORC      ,      ',
'			( CASE WHEN COD_LISTA_PRECIO IN(''3'',''10'',''22'',''4'',''9'') THEN',
'				D1.MONTO_TOTAL * - 0.97',
'			ELSE ',
'				D1.MONTO_TOTAL * - 1',
'			END) *(DECODE(TRIM(REPLACE(GVV.COD_GRUPO_VENTA,''.'','''')),''COMPARTIDA'',0.5,1)) MONTO_TOTAL,                                 ',
'			CG.DESCRIPCION GRUPO_VND ,',
'			CG.COD_TIPO_GRUPO,',
'			''00'' CLIENTE',
'	  FROM VT_COMPROBANTES_CABECERA C1,',
'		   VT_COMPROBANTES_DETALLE  D1,',
'		   ST_ARTICULOS AR,',
'		   FV_GRUPOS_VENDEDORES     GV,',
'		   FV_GRUPOS_VENDEDORES_VEN GVV,',
'		   FV_VENDEDORES            V1,',
'		   FV_CATEGORIAS_VENDEDORES CG,',
'		   PERSONAS                 P1',
'',
'	 WHERE C1.COD_EMPRESA = ''1''',
'	   AND C1.TIP_COMPROBANTE=''NCR''',
'	   AND C1.FEC_COMPROBANTE BETWEEN TO_DATE(:P169_FECHA_INI,''DD/MM/YYYY'') AND TO_DATE(:P169_FECHA_FIN,''DD/MM/YYYY'')  ',
'	   AND (C1.ESTADO IS NULL OR C1.ESTADO <> ''A'')',
'	   AND C1.COD_VENDEDOR NOT IN (''73'', ''90'', ''102'',''66'', ''54'', ''91'', ''77'', ''80'', ''98'') ',
'	   AND C1.COD_EMPRESA = D1.COD_EMPRESA',
'	   AND C1.TIP_COMPROBANTE = D1.TIP_COMPROBANTE',
'	   AND C1.SER_COMPROBANTE = D1.SER_COMPROBANTE',
'	   AND C1.NRO_COMPROBANTE = D1.NRO_COMPROBANTE',
'	   AND D1.MONTO_TOTAL>0 ',
'	   AND D1.COD_EMPRESA = AR.COD_EMPRESA',
'	   AND D1.COD_ARTICULO = AR.COD_ARTICULO ',
'	   AND AR.COD_RUBRO IN (''PR'',''DP'',''IV'',''IR'',''VA'',''MU'',''PU'') ',
'	   AND GV.COD_EMPRESA = C1.COD_EMPRESA',
'	   AND GV.COD_EMPRESA = GVV.COD_EMPRESA',
'	   AND GV.COD_GRUPO_VEN = GVV.COD_GRUPO_VEN',
'	   AND GVV.COD_VENDEDOR_REL = C1.COD_VENDEDOR',
'	   AND GV.COD_EMPRESA = V1.COD_EMPRESA(+)',
'	   AND GV.COD_VENDEDOR = V1.COD_VENDEDOR(+)',
'	   AND P1.COD_PERSONA(+) = V1.COD_PERSONA',
'	   AND V1.COD_TIPO_GRUPO = CG.COD_TIPO_GRUPO  ',
'	   --AND ( PI_COD_VENDEDOR IS NULL OR GVV.COD_VENDEDOR_REL = PI_COD_VENDEDOR )',
'	   AND ( :P169_COD_GRUPO_VEN IS NULL OR GV.COD_GRUPO_VEN = :P169_COD_GRUPO_VEN )                                 ',
'	   AND ( :P169_COD_MARCA IS NULL OR AR.COD_MARCA = :P169_COD_MARCA ) ',
'	   AND ( :P169_COD_MONEDA IS NULL OR C1.COD_MONEDA = :P169_COD_MONEDA )     ',
'',
'UNION ALL    ',
'		   ',
'	 SELECT LTRIM(RTRIM(NVL(P1.NOMB_FANTASIA, P1.NOMBRE))) VENDEDOR,',
'		    GV.COD_VENDEDOR,',
'		    C1.COD_MONEDA,  ',
'		    0  PORC      ,  ',
'		    DECODE(AR.COD_RUBRO,''PU'' ,D1.MONTO_TOTAL * -1,',
'		    CASE ',
'				WHEN COD_LISTA_PRECIO IN(''3'',''10'',''22'',''4'',''9'') THEN',
'					D1.MONTO_TOTAL * 0.97',
'				ELSE ',
'					D1.MONTO_TOTAL',
'			END)*(DECODE(TRIM(REPLACE(GVV.COD_GRUPO_VENTA,''.'','''')),''COMPARTIDA'',0.5,1)) MONTO_TOTAL,',
'			GV.DESCRIPCION GRUPO_VND ,',
'			CG.COD_TIPO_GRUPO,',
'			C1.COD_CLIENTE CLIENTE',
'	  FROM VT_COMPROBANTES_CABECERA C1,',
'		   VT_COMPROBANTES_DETALLE  D1,',
'		   ST_ARTICULOS AR          ,            ',
'		   FV_GRUPOS_VENDEDORES     GV,                              ',
'		   FV_GRUPOS_VENDEDORES_VEN GVV,',
'		   FV_GRUPOS_VENDEDORES_CLI GVC,',
'		   FV_VENDEDORES            V1,',
'		   FV_CATEGORIAS_VENDEDORES CG ,',
'		   PERSONAS                 P1    ',
'	 WHERE C1.COD_EMPRESA = ''1''',
'	   AND C1.TIP_COMPROBANTE IN (''FCR'',''FCO'')',
'	   AND C1.COD_VENDEDOR NOT IN (''73'', ''90'', ''102'',''66'', ''54'', ''91'', ''77'', ''80'', ''98'') ',
'	   AND C1.FEC_COMPROBANTE BETWEEN TO_DATE(:P169_FECHA_INI,''DD/MM/YYYY'') AND TO_DATE(:P169_FECHA_FIN,''DD/MM/YYYY'') ',
'	   AND (C1.ESTADO IS NULL OR C1.ESTADO <> ''A'')',
'	   AND C1.COD_EMPRESA = D1.COD_EMPRESA',
'	   AND C1.TIP_COMPROBANTE = D1.TIP_COMPROBANTE',
'	   AND C1.SER_COMPROBANTE = D1.SER_COMPROBANTE',
'	   AND C1.NRO_COMPROBANTE = D1.NRO_COMPROBANTE ',
'	   AND D1.MONTO_TOTAL>0 ',
'	   AND D1.COD_EMPRESA = AR.COD_EMPRESA',
'	   AND D1.COD_ARTICULO = AR.COD_ARTICULO ',
'	   AND AR.COD_RUBRO IN (''PR'',''DP'',''IV'',''IR'',''VA'',''MU'',''PU'' ) ',
'	   AND GV.COD_EMPRESA = C1.COD_EMPRESA',
'	   AND GV.COD_EMPRESA = GVV.COD_EMPRESA',
'	   AND GV.COD_GRUPO_VEN = GVV.COD_GRUPO_VEN',
'	   AND GVV.COD_VENDEDOR_REL = C1.COD_VENDEDOR  ',
'	   AND GV.COD_EMPRESA = V1.COD_EMPRESA(+)',
'	   AND GV.COD_VENDEDOR = V1.COD_VENDEDOR(+)',
'	   AND V1.COD_TIPO_GRUPO = CG.COD_TIPO_GRUPO  ',
'	   AND P1.COD_PERSONA(+) = V1.COD_PERSONA ',
'	   AND GV.COD_GRUPO_VEN = GVC.COD_GRUPO_VEN',
'	   AND GV.COD_EMPRESA = GVC.COD_EMPRESA',
'	   AND GVC.COD_CLIENTE = C1.COD_CLIENTE',
'	   AND GV.ESTADO = ''A''',
'	  -- AND ( PI_COD_VENDEDOR IS NULL OR GVV.COD_VENDEDOR_REL = PI_COD_VENDEDOR )',
'	   AND ( :P169_COD_GRUPO_VEN IS NULL OR GV.COD_GRUPO_VEN = :P169_COD_GRUPO_VEN )                                 ',
'	   AND ( :P169_COD_MARCA IS NULL OR AR.COD_MARCA = :P169_COD_MARCA ) ',
'	   AND ( :P169_COD_MONEDA IS NULL OR C1.COD_MONEDA = :P169_COD_MONEDA )                                           ',
'	)',
'	GROUP BY COD_VENDEDOR, VENDEDOR, COD_TIPO_GRUPO,GRUPO_VND ,CLIENTE ;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Informe de Ventas para Comisi\00F3n')
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
 p_id=>wwv_flow_imp.id(38564502618233608)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>38564502618233608
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38564816692233611)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38564986858233612)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38565071320233613)
,p_db_column_name=>'COD_TIPO_GRUPO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Tipo Grupo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38565118594233614)
,p_db_column_name=>'GRUPO_VND'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Grupo Vnd'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38565248390233615)
,p_db_column_name=>'CLIENTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38565355616233616)
,p_db_column_name=>'TOT_VTA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(38804281882638956)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'388043'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_VENDEDOR:VENDEDOR:TOT_VTA:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38566291125233625)
,p_plug_name=>'Informe de Ventas Fitness'
,p_parent_plug_id=>wwv_flow_imp.id(38267772805221629)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_VENDEDOR,',
'	   VENDEDOR, ',
'	   MAX(VENTA_ACUMULADA) VENTA_ACUMULADA,',
'	   MAX(META) META',
' FROM (',
'',
'SELECT LTRIM(RTRIM(NVL(P1.NOMB_FANTASIA, P1.NOMBRE))) VENDEDOR,',
'       SUM(CASE',
'             WHEN NVL(V1.IND_COMPARTIDO, ''N'') = ''S'' THEN',
'              0',
'             ELSE',
'              DECODE(C1.TIP_COMPROBANTE, P11.VALOR, NVL(D1.MONTO_TOTAL, 0), 0)',
'           END) + SUM(CASE',
'                        WHEN NVL(V1.IND_COMPARTIDO, ''N'') = ''S'' THEN',
'                         0',
'                        ELSE',
'                         DECODE(C1.TIP_COMPROBANTE,',
'                                P21.VALOR,',
'                                NVL(D1.MONTO_TOTAL, 0),',
'                                P31.VALOR,',
'                                NVL(D1.MONTO_TOTAL, 0) * -1,',
'                                0) - (CASE',
'										WHEN COD_LISTA_PRECIO IN (''3'', ''10'', ''22'', ''4'', ''9'') THEN',
'										 DECODE(C1.TIP_COMPROBANTE,',
'												P21.VALOR,',
'												NVL(D1.MONTO_TOTAL, 0),',
'												P31.VALOR,',
'												NVL(D1.MONTO_TOTAL, 0) * -1,',
'												0) * 3 / 100',
'										ELSE',
'										 0',
'									  END)',
'       ',
'			END) VENTA_ACUMULADA,',
'    ',
'		 AVG((SELECT MT.MONTO',
'			   FROM FV_METAS_VEND_EVO MT',
'			  WHERE MT.COD_EMPRESA = ''1''',
'				AND MT.COD_VENDEDOR = V1.COD_VENDEDOR',
'				AND MT.FEC_INICIO = TO_DATE(:P169_FECHA_INI, ''DD/MM/YYYY'')',
'				AND MT.FEC_FIN = TO_DATE(:P169_FECHA_FIN, ''DD/MM/YYYY''))) META,',
'       C1.COD_VENDEDOR',
'',
'  FROM VT_COMPROBANTES_CABECERA C1,',
'       VT_COMPROBANTES_DETALLE  D1,',
'       FV_VENDEDORES            V1,',
'       PERSONAS                 P1,',
'       TIPOS_COMPROBANTES       TC1,',
'       SUCURSALES               SU1,',
'       MONEDAS                  M1,',
'       ST_COSTOS_ART            CA1,',
'       ST_ARTICULOS             A1,',
'       PARAMETROS_GENERALES     P11,',
'       PARAMETROS_GENERALES     P21,',
'       PARAMETROS_GENERALES     P31,',
'       FV_METAS_VEND_EVO        EV',
' WHERE C1.COD_EMPRESA = ''1''',
'   AND C1.FEC_COMPROBANTE BETWEEN TO_DATE(:P169_FECHA_INI, ''DD/MM/YYYY'') AND TO_DATE(:P169_FECHA_FIN, ''DD/MM/YYYY'')      ',
'   AND C1.COD_EMPRESA = V1.COD_EMPRESA(+)',
'   AND C1.COD_VENDEDOR = V1.COD_VENDEDOR(+)',
'   AND P1.COD_PERSONA(+) = V1.COD_PERSONA',
'   AND C1.COD_EMPRESA = TC1.COD_EMPRESA',
'   AND C1.TIP_COMPROBANTE = TC1.TIP_COMPROBANTE',
'   AND (C1.ESTADO IS NULL OR C1.ESTADO <> ''A'')',
'   AND C1.COD_EMPRESA = D1.COD_EMPRESA',
'   AND C1.TIP_COMPROBANTE = D1.TIP_COMPROBANTE',
'   AND C1.SER_COMPROBANTE = D1.SER_COMPROBANTE',
'   AND C1.NRO_COMPROBANTE = D1.NRO_COMPROBANTE',
'   AND CA1.COD_EMPRESA = D1.COD_EMPRESA',
'   AND CA1.COD_ARTICULO = D1.COD_ARTICULO',
'   AND C1.COD_EMPRESA = SU1.COD_EMPRESA(+)',
'   AND C1.COD_SUCURSAL = SU1.COD_SUCURSAL(+)',
'   AND C1.COD_MONEDA = M1.COD_MONEDA',
'   AND P11.PARAMETRO = ''TIPO_CONTADO''',
'   AND P21.PARAMETRO = ''TIPO_CREDITO''',
'   AND P31.PARAMETRO = ''TIPO_NOTACRE''',
'   AND EV.COD_EMPRESA = C1.COD_EMPRESA',
'   AND EV.COD_VENDEDOR = C1.COD_VENDEDOR',
'   AND EV.FEC_INICIO = TO_DATE(:P169_FECHA_INI, ''DD/MM/YYYY'')',
'   AND EV.FEC_FIN = TO_DATE(:P169_FECHA_FIN, ''DD/MM/YYYY'')',
'      ',
'   AND A1.COD_MARCA = ''EV''',
'   AND P1.DIREC_ELECTRONICA IS NOT NULL',
'   AND A1.COD_EMPRESA = D1.COD_EMPRESA',
'   AND A1.COD_ARTICULO = D1.COD_ARTICULO',
'   AND CA1.FEC_COMPROBANTE <= C1.FEC_COMPROBANTE',
'   AND TO_CHAR(CA1.FEC_COMPROBANTE, ''YYYYMMDD'') || CA1.ROWID =',
'       (SELECT MAX(TO_CHAR(CO1.FEC_COMPROBANTE, ''YYYYMMDD'') || CO1.ROWID)',
'          FROM ST_COSTOS_ART CO1',
'         WHERE CO1.COD_EMPRESA = C1.COD_EMPRESA',
'           AND CO1.COD_ARTICULO = D1.COD_ARTICULO',
'           AND CO1.FEC_COMPROBANTE <= C1.FEC_COMPROBANTE)',
' GROUP BY V1.COD_VENDEDOR,',
'          ',
'          C1.COD_VENDEDOR,',
'          LTRIM(RTRIM(NVL(P1.NOMB_FANTASIA, P1.NOMBRE)))',
'',
'HAVING SUM(DECODE(C1.TIP_COMPROBANTE, P21.VALOR, NVL(D1.MONTO_TOTAL, 0), P31.VALOR, NVL(D1.MONTO_TOTAL, 0) * -1, 0)) > 0',
'',
'UNION ALL',
'',
'SELECT',
'',
' LTRIM(RTRIM(NVL(P1.NOMB_FANTASIA, P1.NOMBRE))) VENDEDOR,',
' ',
' 0 ACO,',
' ',
' AVG((SELECT MT.MONTO',
'       FROM FV_METAS_VEND_EVO MT',
'      WHERE MT.COD_EMPRESA = ''1''',
'        AND MT.COD_VENDEDOR = V1.COD_VENDEDOR',
'        AND MT.FEC_INICIO = TO_DATE(:P169_FECHA_INI, ''DD/MM/YYYY'')',
'        AND MT.FEC_FIN = TO_DATE(:P169_FECHA_FIN, ''DD/MM/YYYY''))) META,',
' C1.COD_VENDEDOR',
'  FROM FV_METAS_VEND_EVO C1, FV_VENDEDORES V1, PERSONAS P1',
' WHERE C1.COD_EMPRESA = ''1''',
'   AND C1.COD_EMPRESA = V1.COD_EMPRESA(+)',
'   AND C1.COD_VENDEDOR = V1.COD_VENDEDOR(+)',
'   AND P1.COD_PERSONA(+) = V1.COD_PERSONA',
'   AND C1.FEC_INICIO = TO_DATE(:P169_FECHA_INI, ''DD/MM/YYYY'')',
'   AND C1.FEC_FIN = TO_DATE(:P169_FECHA_FIN, ''DD/MM/YYYY'')',
' GROUP BY V1.COD_VENDEDOR,',
'          LTRIM(RTRIM(NVL(P1.NOMB_FANTASIA, P1.NOMBRE))),',
'          C1.COD_VENDEDOR',
')',
'GROUP BY COD_VENDEDOR, VENDEDOR',
'ORDER BY TO_NUMBER(COD_VENDEDOR) ASC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Informe de Ventas Fitness'
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
 p_id=>wwv_flow_imp.id(38566385917233626)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>38566385917233626
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38566425767233627)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38566583975233628)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38566651022233629)
,p_db_column_name=>'VENTA_ACUMULADA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Venta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38566735388233630)
,p_db_column_name=>'META'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Meta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(39072977571975437)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'390730'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_VENDEDOR:VENDEDOR:VENTA_ACUMULADA:META'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38567294146233635)
,p_plug_name=>'Resumen de Ventas por Vendedor'
,p_parent_plug_id=>wwv_flow_imp.id(38267772805221629)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C001 NOMBRE_VENDEDOR,',
'	   TO_NUMBER(C002) VENTA_ACUMULADA_MES,',
'	   TO_NUMBER(C003) META_100,',
'	   TO_NUMBER(C004) META_85,',
'	   C005 COD_TIPO_GRUPO,',
'	   C006 COD_GRUPO,',
'	   TO_NUMBER(C007) CF_DIARIO,',
'	   TO_NUMBER(C008) CF_DESVIACION,',
'	   TO_NUMBER(C009) CF_ALCANCE,',
'       C010 CF_GRUPO,',
'       C011 CF_GRUPO_COM',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_VTA_VENDEDOR''',
' ORDER BY C005;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resumen de Ventas por Vendedor'
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
 p_id=>wwv_flow_imp.id(38567314802233636)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>38567314802233636
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38567892768233641)
,p_db_column_name=>'COD_TIPO_GRUPO'
,p_display_order=>10
,p_column_identifier=>'E'
,p_column_label=>'Cod Tipo Grupo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38567977571233642)
,p_db_column_name=>'COD_GRUPO'
,p_display_order=>20
,p_column_identifier=>'F'
,p_column_label=>'Cod Grupo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38567417573233637)
,p_db_column_name=>'NOMBRE_VENDEDOR'
,p_display_order=>30
,p_column_identifier=>'A'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39127751107656708)
,p_db_column_name=>'CF_DIARIO'
,p_display_order=>40
,p_column_identifier=>'J'
,p_column_label=>'Meta Diaria'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39127470103656705)
,p_db_column_name=>'VENTA_ACUMULADA_MES'
,p_display_order=>50
,p_column_identifier=>'G'
,p_column_label=>'Venta Acumulada'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39127533717656706)
,p_db_column_name=>'META_100'
,p_display_order=>60
,p_column_identifier=>'H'
,p_column_label=>'Meta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39127814584656709)
,p_db_column_name=>'CF_DESVIACION'
,p_display_order=>70
,p_column_identifier=>'K'
,p_column_label=>unistr('Desviaci\00F3n')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39127985667656710)
,p_db_column_name=>'CF_ALCANCE'
,p_display_order=>80
,p_column_identifier=>'L'
,p_column_label=>'Alcance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39127616366656707)
,p_db_column_name=>'META_85'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Meta 85'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39128051535656711)
,p_db_column_name=>'CF_GRUPO'
,p_display_order=>100
,p_column_identifier=>'M'
,p_column_label=>'Grupo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39128104837656712)
,p_db_column_name=>'CF_GRUPO_COM'
,p_display_order=>110
,p_column_identifier=>'N'
,p_column_label=>'Grupo Com'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(39144252325780110)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'391443'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_TIPO_GRUPO:COD_GRUPO:NOMBRE_VENDEDOR:CF_DIARIO:VENTA_ACUMULADA_MES:META_100:CF_DESVIACION:CF_ALCANCE:META_85'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39128265070656713)
,p_plug_name=>'Resumen de Ventas por Plazo'
,p_parent_plug_id=>wwv_flow_imp.id(38267772805221629)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'		SELECT  C.COD_EMPRESA,',
'					C.COD_MONEDA,',
'					M.DESCRIPCION DESC_MONEDA, ',
'					M.SIGLAS,',
'					NVL( ZO.COD_GRUPO,''CAPITAL'') ZONA,',
'					TO_CHAR( C.FEC_COMPROBANTE,''YYYY/MM'') PLAZO_MEN_ORD,    ',
'					TO_CHAR( C.FEC_COMPROBANTE,''MM/YYYY'') PLAZO_MEN,    ',
'					''GENERAL'' COD_CLIENTE,',
'					DECODE( NVL(ZO.COD_GRUPO,''DFL''),''INTERIOR'',NVL(:P169_P_PORC_FLETE,0),0) PORC_FLETE,',
'					SUM( DECODE( TC.STOCK, ''R'', NVL( D.MONTO_TOTAL, 0 ),',
'										  NVL( D.MONTO_TOTAL, 0 ) * -1 )  ) MONTO_TOTAL_MEN,',
'										  ',
'					SUM( DECODE( TC.STOCK, ''R'', NVL( D.TOTAL_IVA, 0 ),',
'										  NVL( D.TOTAL_IVA, 0 ) * -1 )  ) TOTAL_IVA_MEN,',
'										  ',
'					SUM( DECODE( TC.STOCK, ''R'', NVL( D.MONTO_TOTAL, 0 ) + NVL( D.TOTAL_IVA, 0 ),',
'										( NVL( D.MONTO_TOTAL, 0 ) + NVL( D.TOTAL_IVA, 0 ) ) * -1 ) ) TOTAL_VENTA_MEN,',
'										',
'					SUM( DECODE( NVL(I.COD_IVA,''0''),0,NVL( D.MONTO_TOTAL, 0),0) * DECODE( TC.STOCK, ''R'', 1,-1) )  MONTO_EXENTAS_MEN,',
'				 ',
'					SUM( DECODE( NVL(I.COD_IVA,''0''),0,0,NVL( D.MONTO_TOTAL, 0)) * DECODE( TC.STOCK, ''R'', 1,-1) )  MONTO_GRAVADAS_MEN',
'				 ',
'			   FROM VT_COMPROBANTES_CABECERA C, MONEDAS M, SUCURSALES S, TIPOS_COMPROBANTES TC, VT_COMPROBANTES_DETALLE D,',
'				    ST_ARTICULOS ART, ST_IVA I, CO_TIPOS_CAMBIOS CA, ST_LOTES LO,  FV_VENDEDORES V, PERSONAS P, FV_PERIODOS_COMISION PC,',
'				    CC_CLIENTES CL, ZONAS_GEOGRAFICAS ZO',
'			  WHERE PC.COD_EMPRESA = :P169_COD_EMPRESA ',
'			    AND PC.NUM_PERIODO = :P169_NUM_PERIODO ',
'			    AND C.COD_EMPRESA = PC.COD_EMPRESA',
'			    AND C.FEC_COMPROBANTE BETWEEN  PC.FEC_INICIAL AND PC.FEC_FINAL',
'			    AND ( :P169_COD_SUCURSAL IS NULL OR C.COD_SUCURSAL = :P169_COD_SUCURSAL )',
'			    AND ( C.ESTADO IS NULL OR C.ESTADO <> ''A'' )',
'			    AND C.COD_EMPRESA = TC.COD_EMPRESA',
'			    AND C.TIP_COMPROBANTE = TC.TIP_COMPROBANTE',
'			    AND C.COD_EMPRESA = S.COD_EMPRESA',
'			    AND C.COD_SUCURSAL = S.COD_SUCURSAL',
'			    AND C.COD_EMPRESA = V.COD_EMPRESA',
'			    AND C.COD_VENDEDOR = V.COD_VENDEDOR',
'			    AND V.COD_PERSONA = P.COD_PERSONA',
'			    AND C.COD_MONEDA = M.COD_MONEDA',
'			    AND C.COD_EMPRESA = D.COD_EMPRESA',
'			    AND C.TIP_COMPROBANTE = D.TIP_COMPROBANTE',
'			    AND C.SER_COMPROBANTE = D.SER_COMPROBANTE',
'			    AND C.NRO_COMPROBANTE = D.NRO_COMPROBANTE',
'			    AND D.COD_EMPRESA = ART.COD_EMPRESA',
'			    AND D.COD_ARTICULO = ART.COD_ARTICULO',
'			    AND ( :P169_COD_MARCA IS NULL OR ART.COD_MARCA = :P169_COD_MARCA )',
'			    AND (ART.COD_RUBRO IN (:P169_COD_RUBRO , :P169_COD_RUBRO1) OR  :P169_COD_RUBRO IS NULL)',
'			    AND CL.COD_EMPRESA = C.COD_EMPRESA',
'			    AND ( :P169_COD_MONEDA IS NULL OR M.COD_MONEDA = :P169_COD_MONEDA )',
'			    AND CL.COD_CLIENTE = C.COD_CLIENTE',
'			    AND ZO.COD_ZONA(+) = CL.COD_ZONA',
'			    AND D.COD_EMPRESA = LO.COD_EMPRESA(+)',
'			    AND D.COD_ARTICULO = LO.COD_ARTICULO(+)',
'			    AND D.NRO_LOTE = LO.NRO_LOTE(+)',
'			    AND LO.COD_IVA = I.COD_IVA(+)',
'			    AND C.COD_EMPRESA = CA.COD_EMPRESA(+)',
'			    AND C.COD_SECTOR <> ''19''',
'			    AND  EXISTS ( SELECT DISTINCT ''1'' FROM FV_PARAMETRO_COMISIONES PPP WHERE PPP.COD_VENDEDOR =V.COD_VENDEDOR )',
'			    AND C.COD_MONEDA = CA.COD_MONEDA(+)',
'			    AND C.FEC_COMPROBANTE > CA.FEC_TIP_CAMBIO(+)',
'			    AND CA.FEC_TIP_CAMBIO = ( SELECT MAX( CA2.FEC_TIP_CAMBIO )',
'										    FROM CO_TIPOS_CAMBIOS CA2',
'										   WHERE C.COD_EMPRESA = CA2.COD_EMPRESA',
'										     AND C.COD_MONEDA = CA2.COD_MONEDA',
'										     AND C.FEC_COMPROBANTE > CA2.FEC_TIP_CAMBIO )',
'			    AND C.NRO_COMPROBANTE NOT IN ( SELECT NRO_COMPROBANTE ',
'												 FROM CC_SALDOS SA ',
'												WHERE COD_EMPRESA = C.COD_EMPRESA ',
'												  AND TIPO_COMPROBANTE = C.TIP_COMPROBANTE ',
'												  AND SER_COMPROBANTE = C.SER_COMPROBANTE ',
'												  AND NRO_COMPROBANTE = C.NRO_COMPROBANTE )',
'			  GROUP BY C.COD_EMPRESA,TO_CHAR( C.FEC_COMPROBANTE,''YYYY/MM''),    ',
'					   TO_CHAR( C.FEC_COMPROBANTE,''MM/YYYY''),C.COD_MONEDA,M.DESCRIPCION , M.SIGLAS, ',
'					   DECODE( NVL(ZO.COD_GRUPO,''DFL''),''INTERIOR'',NVL(:P169_P_PORC_FLETE,0),0), NVL( ZO.COD_GRUPO,''CAPITAL'') ',
'		UNION ALL',
'',
'		SELECT  C.COD_EMPRESA, ',
'			    C.COD_MONEDA,',
'				M.DESCRIPCION, ',
'				M.SIGLAS,',
'				NVL( ZO.COD_GRUPO,''CAPITAL'') ZONA,',
'				TO_CHAR( SA.FEC_VENCIMIENTO,''YYYY/MM'') PLAZO_MEN_ORD,    ',
'				TO_CHAR( SA.FEC_VENCIMIENTO,''MM/YYYY'') PLAZO_MEN,    ',
'				 ''GENERAL'' COD_CLIENTE,',
'				DECODE( NVL(ZO.COD_GRUPO,''DFL''),''INTERIOR'',NVL(:P169_P_PORC_FLETE,0),0) PORC_FLETE,',
'				SUM( ROUND(DECODE( TC.STOCK, ''R'', NVL( D.MONTO_TOTAL, 0 ),',
'										  NVL( D.MONTO_TOTAL, 0 ) * -1 ) ',
'										   * ABS(NVL(SA.MONTO_CUOTA,0)) / NVL(C.TOT_COMPROBANTE,0),5)) MONTO_TOTAL_MEN,',
'				SUM( ROUND( DECODE( TC.STOCK, ''R'', NVL( D.TOTAL_IVA, 0 ),',
'										  NVL( D.TOTAL_IVA, 0 ) * -1 ) *',
'										   ABS(NVL(SA.MONTO_CUOTA,0)) / NVL(C.TOT_COMPROBANTE,0),2)) TOTAL_IVA_MEN,',
'				SUM( ROUND( DECODE( TC.STOCK, ''R'', NVL( D.MONTO_TOTAL, 0 ) + NVL( D.TOTAL_IVA, 0 ),',
'										( NVL( D.MONTO_TOTAL, 0 ) + NVL( D.TOTAL_IVA, 0 ) ) * -1 ) ',
'										   ,2) * ABS(NVL(SA.MONTO_CUOTA,0)) / NVL(C.TOT_COMPROBANTE,0)) TOTAL_VENTA_MEN,',
'				SUM( DECODE( NVL(I.COD_IVA,''0''),0,NVL( D.MONTO_TOTAL, 0),0) * DECODE( TC.STOCK, ''R'', 1,-1) *',
'										  ABS(NVL(SA.MONTO_CUOTA,0)) / NVL(C.TOT_COMPROBANTE,0))  MONTO_EXENTAS_MEN,',
'				SUM( DECODE( NVL(I.COD_IVA,''0''),0,0,NVL( D.MONTO_TOTAL, 0)) * DECODE( TC.STOCK, ''R'', 1,-1) *',
'										   ABS(NVL(SA.MONTO_CUOTA,0)) / NVL(C.TOT_COMPROBANTE,1))  MONTO_GRAVADAS_MEN',
'		 FROM VT_COMPROBANTES_CABECERA C, MONEDAS M, SUCURSALES S, TIPOS_COMPROBANTES TC, VT_COMPROBANTES_DETALLE D,',
'			  ST_ARTICULOS ART, ST_IVA I, CO_TIPOS_CAMBIOS CA, ST_LOTES LO,  FV_VENDEDORES V, PERSONAS P, CC_SALDOS SA,',
'			  FV_PERIODOS_COMISION PC,CC_CLIENTES CL, ZONAS_GEOGRAFICAS ZO',
'		WHERE PC.COD_EMPRESA = :P169_COD_EMPRESA ',
'		  AND PC.NUM_PERIODO = :P169_NUM_PERIODO',
'		  AND C.COD_EMPRESA = PC.COD_EMPRESA',
'		  AND C.FEC_COMPROBANTE BETWEEN  PC.FEC_INICIAL AND PC.FEC_FINAL',
'		  AND ( :P169_COD_SUCURSAL IS NULL OR C.COD_SUCURSAL = :P169_COD_SUCURSAL )',
'		  AND ( C.ESTADO IS NULL OR C.ESTADO <> ''A'' )',
'		  AND C.COD_EMPRESA = TC.COD_EMPRESA',
'		  AND C.TIP_COMPROBANTE = TC.TIP_COMPROBANTE',
'		  AND C.COD_EMPRESA = S.COD_EMPRESA',
'		  AND C.COD_SUCURSAL = S.COD_SUCURSAL',
'		  AND C.COD_EMPRESA = V.COD_EMPRESA',
'		  AND C.COD_VENDEDOR = V.COD_VENDEDOR',
'		  AND CL.COD_EMPRESA = C.COD_EMPRESA',
'		  AND CL.COD_CLIENTE = C.COD_CLIENTE',
'		  AND ZO.COD_ZONA(+) = CL.COD_ZONA',
'		  AND V.COD_PERSONA = P.COD_PERSONA',
'		  AND C.COD_MONEDA = M.COD_MONEDA',
'		  AND C.COD_EMPRESA = D.COD_EMPRESA',
'		  AND C.TIP_COMPROBANTE = D.TIP_COMPROBANTE',
'		  AND C.SER_COMPROBANTE = D.SER_COMPROBANTE',
'		  AND C.NRO_COMPROBANTE = D.NRO_COMPROBANTE',
'		  AND D.COD_EMPRESA = ART.COD_EMPRESA',
'		  AND D.COD_ARTICULO = ART.COD_ARTICULO',
'		  AND ( :P169_COD_MARCA IS NULL OR ART.COD_MARCA = :P169_COD_MARCA )',
'		  AND (ART.COD_RUBRO IN (:P169_COD_RUBRO , :P169_COD_RUBRO1) OR  :P169_COD_RUBRO IS NULL)',
'		  AND D.COD_EMPRESA = LO.COD_EMPRESA(+)',
'		  AND D.COD_ARTICULO = LO.COD_ARTICULO(+)',
'		  AND ( :P169_COD_MONEDA IS NULL OR M.COD_MONEDA = :P169_COD_MONEDA )',
'		  AND D.NRO_LOTE = LO.NRO_LOTE(+)',
'		  AND LO.COD_IVA = I.COD_IVA(+)',
'		  AND C.COD_EMPRESA = CA.COD_EMPRESA(+)',
'		  AND C.COD_SECTOR <> ''19''',
'		  AND C.COD_MONEDA = CA.COD_MONEDA(+)',
'		  AND C.FEC_COMPROBANTE > CA.FEC_TIP_CAMBIO(+)',
'		  AND CA.FEC_TIP_CAMBIO = ( SELECT MAX( CA2.FEC_TIP_CAMBIO )',
'									  FROM CO_TIPOS_CAMBIOS CA2',
'									 WHERE C.COD_EMPRESA = CA2.COD_EMPRESA',
'									   AND C.COD_MONEDA = CA2.COD_MONEDA',
'									   AND C.FEC_COMPROBANTE > CA2.FEC_TIP_CAMBIO )',
'		  AND SA.COD_EMPRESA = C.COD_EMPRESA ',
'		  AND SA.TIPO_COMPROBANTE = C.TIP_COMPROBANTE ',
'		  AND SA.SER_COMPROBANTE = C.SER_COMPROBANTE ',
'		  AND SA.NRO_COMPROBANTE = C.NRO_COMPROBANTE ',
'		  AND NVL(C.TOT_COMPROBANTE,0) <> 0',
'		  AND  EXISTS ( SELECT DISTINCT ''1'' FROM FV_PARAMETRO_COMISIONES PPP WHERE PPP.COD_VENDEDOR = V.COD_VENDEDOR )',
'',
'		GROUP BY  C.COD_EMPRESA, TO_CHAR( SA.FEC_VENCIMIENTO,''YYYY/MM''),    ',
'				  TO_CHAR( SA.FEC_VENCIMIENTO,''MM/YYYY''),C.COD_MONEDA,M.DESCRIPCION , M.SIGLAS,',
'				  DECODE( NVL(ZO.COD_GRUPO,''DFL''),''INTERIOR'',NVL(:P169_P_PORC_FLETE,0),0), NVL( ZO.COD_GRUPO,''CAPITAL'') ',
'		ORDER BY  3, 1, 2, 4, 5'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P169_P_PORC_FLETE,P169_COD_MONEDA ,P169_COD_RUBRO1,P169_COD_RUBRO,P169_COD_MARCA,P169_COD_SUCURSAL,P169_NUM_PERIODO,P169_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resumen de Ventas por Plazo'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(39128339601656714)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>39128339601656714
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39129091018656721)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39129163705656722)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>20
,p_column_identifier=>'C'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39129225035656723)
,p_db_column_name=>'DESC_MONEDA'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39129369298656724)
,p_db_column_name=>'SIGLAS'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Siglas'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39129430579656725)
,p_db_column_name=>'ZONA'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Zona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39129594481656726)
,p_db_column_name=>'PLAZO_MEN_ORD'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Plazo Men Ord'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39129656716656727)
,p_db_column_name=>'PLAZO_MEN'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Plazo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39129788127656728)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39129892938656729)
,p_db_column_name=>'PORC_FLETE'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Porc Flete'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39129955428656730)
,p_db_column_name=>'MONTO_TOTAL_MEN'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Ventas/ Iva'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39130313788656734)
,p_db_column_name=>'MONTO_GRAVADAS_MEN'
,p_display_order=>110
,p_column_identifier=>'O'
,p_column_label=>'Venta Gravada'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39130292502656733)
,p_db_column_name=>'MONTO_EXENTAS_MEN'
,p_display_order=>120
,p_column_identifier=>'N'
,p_column_label=>'Venta Exenta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39130050913656731)
,p_db_column_name=>'TOTAL_IVA_MEN'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Iva'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39130189785656732)
,p_db_column_name=>'TOTAL_VENTA_MEN'
,p_display_order=>140
,p_column_identifier=>'M'
,p_column_label=>'Total Venta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(39321325223754271)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'393214'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_EMPRESA:COD_MONEDA:DESC_MONEDA:SIGLAS:ZONA:PLAZO_MEN_ORD:PLAZO_MEN:COD_CLIENTE:PORC_FLETE:MONTO_TOTAL_MEN:TOTAL_IVA_MEN:TOTAL_VENTA_MEN:MONTO_EXENTAS_MEN:MONTO_GRAVADAS_MEN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39130898080656739)
,p_plug_name=>'REPORTE_ZONA'
,p_parent_plug_id=>wwv_flow_imp.id(39128265070656713)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_column=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ZONA_R, ',
'	   SUM(TOTAL_ZONA) TOTAL_ZONA,',
'	   SUM(TOTAL_VENTA_ZONA)TOTAL_VENTA_ZONA',
'FROM(',
'',
'SELECT NVL(ZO.COD_GRUPO, ''CAPITAL'') ZONA_R,',
'       SUM(DECODE(TC.STOCK,',
'                  ''R'',',
'                  NVL(D.MONTO_TOTAL, 0),',
'                  NVL(D.MONTO_TOTAL, 0) * -1) * NVL(C.TIP_CAMBIO,1)) TOTAL_ZONA, ',
'       ',
'       SUM(DECODE(TC.STOCK,',
'                  ''R'',',
'                  NVL(D.MONTO_TOTAL, 0) + NVL(D.TOTAL_IVA, 0),',
'                  (NVL(D.MONTO_TOTAL, 0) + NVL(D.TOTAL_IVA, 0)) * -1)) TOTAL_VENTA_ZONA ',
'',
'  FROM VT_COMPROBANTES_CABECERA C,',
'       MONEDAS                  M,',
'       SUCURSALES               S,',
'       TIPOS_COMPROBANTES       TC,',
'       VT_COMPROBANTES_DETALLE  D,',
'       ST_ARTICULOS             ART,',
'       ST_IVA                   I,',
'       CO_TIPOS_CAMBIOS         CA,',
'       ST_LOTES                 LO,',
'       FV_VENDEDORES            V,',
'       PERSONAS                 P,',
'       FV_PERIODOS_COMISION     PC,',
'       CC_CLIENTES              CL,',
'       ZONAS_GEOGRAFICAS        ZO',
' WHERE PC.COD_EMPRESA = :P169_COD_EMPRESA',
'   AND PC.NUM_PERIODO = :P169_NUM_PERIODO',
'   AND C.COD_EMPRESA = PC.COD_EMPRESA',
'   AND C.FEC_COMPROBANTE BETWEEN PC.FEC_INICIAL AND PC.FEC_FINAL',
'   AND (:P169_COD_SUCURSAL IS NULL OR C.COD_SUCURSAL = :P169_COD_SUCURSAL)',
'   AND (C.ESTADO IS NULL OR C.ESTADO <> ''A'')',
'   AND C.COD_EMPRESA = TC.COD_EMPRESA',
'   AND C.TIP_COMPROBANTE = TC.TIP_COMPROBANTE',
'   AND C.COD_EMPRESA = S.COD_EMPRESA',
'   AND C.COD_SUCURSAL = S.COD_SUCURSAL',
'   AND C.COD_EMPRESA = V.COD_EMPRESA',
'   AND C.COD_VENDEDOR = V.COD_VENDEDOR',
'   AND V.COD_PERSONA = P.COD_PERSONA',
'   AND C.COD_MONEDA = M.COD_MONEDA',
'   AND C.COD_EMPRESA = D.COD_EMPRESA',
'   AND C.TIP_COMPROBANTE = D.TIP_COMPROBANTE',
'   AND C.SER_COMPROBANTE = D.SER_COMPROBANTE',
'   AND C.NRO_COMPROBANTE = D.NRO_COMPROBANTE',
'   AND D.COD_EMPRESA = ART.COD_EMPRESA',
'   AND D.COD_ARTICULO = ART.COD_ARTICULO',
'   AND (:P169_COD_MARCA IS NULL OR ART.COD_MARCA = :P169_COD_MARCA)',
'   AND (ART.COD_RUBRO IN (:P169_COD_RUBRO, :P169_COD_RUBRO1) OR :P169_COD_RUBRO IS NULL)',
'   AND CL.COD_EMPRESA = C.COD_EMPRESA',
'   AND (:P169_COD_MONEDA IS NULL OR M.COD_MONEDA = :P169_COD_MONEDA)',
'   AND CL.COD_CLIENTE = C.COD_CLIENTE',
'   AND ZO.COD_ZONA(+) = CL.COD_ZONA',
'   AND D.COD_EMPRESA = LO.COD_EMPRESA(+)',
'   AND D.COD_ARTICULO = LO.COD_ARTICULO(+)',
'   AND D.NRO_LOTE = LO.NRO_LOTE(+)',
'   AND LO.COD_IVA = I.COD_IVA(+)',
'   AND C.COD_EMPRESA = CA.COD_EMPRESA(+)',
'   AND C.COD_SECTOR <> ''19''',
'   AND C.COD_MONEDA = CA.COD_MONEDA(+)',
'   AND C.FEC_COMPROBANTE > CA.FEC_TIP_CAMBIO(+)',
'   AND CA.FEC_TIP_CAMBIO =',
'       (SELECT MAX(CA2.FEC_TIP_CAMBIO)',
'          FROM CO_TIPOS_CAMBIOS CA2',
'         WHERE C.COD_EMPRESA = CA2.COD_EMPRESA',
'           AND C.COD_MONEDA = CA2.COD_MONEDA',
'           AND C.FEC_COMPROBANTE > CA2.FEC_TIP_CAMBIO)',
'   AND C.NRO_COMPROBANTE NOT IN',
'       (SELECT NRO_COMPROBANTE',
'          FROM CC_SALDOS SA',
'         WHERE COD_EMPRESA = C.COD_EMPRESA',
'           AND TIPO_COMPROBANTE = C.TIP_COMPROBANTE',
'           AND SER_COMPROBANTE = C.SER_COMPROBANTE',
'           AND NRO_COMPROBANTE = C.NRO_COMPROBANTE)',
'',
' AND  EXISTS ( SELECT DISTINCT ''1'' FROM FV_PARAMETRO_COMISIONES PPP WHERE PPP.COD_VENDEDOR = V.COD_VENDEDOR )',
'',
' GROUP BY NVL(ZO.COD_GRUPO, ''CAPITAL'')',
'UNION ALL',
'SELECT  NVL(ZO.COD_GRUPO, ''CAPITAL'') ZONA, ',
'       SUM(ROUND(DECODE(TC.STOCK,',
'                        ''R'',',
'                        NVL(D.MONTO_TOTAL, 0),',
'                        NVL(D.MONTO_TOTAL, 0) * -1) *',
'                 ABS(NVL(SA.MONTO_CUOTA, 0)) / NVL(C.TOT_COMPROBANTE, 0) ,',
'                 5)* NVL(C.TIP_CAMBIO,1)) TOTAL_ZONA,',
'       SUM(ROUND(DECODE(TC.STOCK,',
'                        ''R'',',
'                        NVL(D.MONTO_TOTAL, 0) + NVL(D.TOTAL_IVA, 0),',
'                        (NVL(D.MONTO_TOTAL, 0) + NVL(D.TOTAL_IVA, 0)) * -1),',
'                 2) * ABS(NVL(SA.MONTO_CUOTA, 0)) /',
'           NVL(C.TOT_COMPROBANTE, 0)) TOTAL_VENTA_ZONA',
'  FROM VT_COMPROBANTES_CABECERA C,',
'       MONEDAS                  M,',
'       SUCURSALES               S,',
'       TIPOS_COMPROBANTES       TC,',
'       VT_COMPROBANTES_DETALLE  D,',
'       ST_ARTICULOS             ART,',
'       ST_IVA                   I,',
'       CO_TIPOS_CAMBIOS         CA,',
'       ST_LOTES                 LO,',
'       FV_VENDEDORES            V,',
'       PERSONAS                 P,',
'       CC_SALDOS                SA,',
'       FV_PERIODOS_COMISION     PC,',
'       CC_CLIENTES              CL,',
'       ZONAS_GEOGRAFICAS        ZO',
' WHERE PC.COD_EMPRESA = :P169_COD_EMPRESA',
'   AND PC.NUM_PERIODO = :P169_NUM_PERIODO',
'   AND C.COD_EMPRESA = PC.COD_EMPRESA',
'   AND C.FEC_COMPROBANTE BETWEEN PC.FEC_INICIAL AND PC.FEC_FINAL',
'   AND (:P169_COD_SUCURSAL IS NULL OR C.COD_SUCURSAL = :P169_COD_SUCURSAL)',
'   AND (C.ESTADO IS NULL OR C.ESTADO <> ''A'')',
'   AND NVL(C.TOT_COMPROBANTE, 0) <> 0',
'   AND C.COD_EMPRESA = TC.COD_EMPRESA',
'   AND C.TIP_COMPROBANTE = TC.TIP_COMPROBANTE',
'   AND C.COD_EMPRESA = S.COD_EMPRESA',
'   AND C.COD_SUCURSAL = S.COD_SUCURSAL',
'   AND C.COD_EMPRESA = V.COD_EMPRESA',
'   AND C.COD_VENDEDOR = V.COD_VENDEDOR',
'   AND CL.COD_EMPRESA = C.COD_EMPRESA',
'   AND CL.COD_CLIENTE = C.COD_CLIENTE',
'   AND ZO.COD_ZONA(+) = CL.COD_ZONA',
'   AND V.COD_PERSONA = P.COD_PERSONA',
'   AND C.COD_MONEDA = M.COD_MONEDA',
'   AND C.COD_EMPRESA = D.COD_EMPRESA',
'   AND C.TIP_COMPROBANTE = D.TIP_COMPROBANTE',
'   AND C.SER_COMPROBANTE = D.SER_COMPROBANTE',
'   AND C.NRO_COMPROBANTE = D.NRO_COMPROBANTE',
'   AND D.COD_EMPRESA = ART.COD_EMPRESA',
'   AND D.COD_ARTICULO = ART.COD_ARTICULO',
'   AND (:P169_COD_MARCA IS NULL OR ART.COD_MARCA = :P169_COD_MARCA)',
'   AND (ART.COD_RUBRO IN (:P169_COD_RUBRO, :P169_COD_RUBRO1) OR :P169_COD_RUBRO IS NULL)',
'   AND D.COD_EMPRESA = LO.COD_EMPRESA(+)',
'   AND D.COD_ARTICULO = LO.COD_ARTICULO(+)',
'   AND (:P169_COD_MONEDA IS NULL OR M.COD_MONEDA = :P169_COD_MONEDA)',
'   AND D.NRO_LOTE = LO.NRO_LOTE(+)',
'   AND LO.COD_IVA = I.COD_IVA(+)',
'   AND C.COD_EMPRESA = CA.COD_EMPRESA(+)',
'   AND C.COD_SECTOR <> ''19''',
'   AND C.COD_MONEDA = CA.COD_MONEDA(+)',
'   AND C.FEC_COMPROBANTE > CA.FEC_TIP_CAMBIO(+)',
'   AND CA.FEC_TIP_CAMBIO =',
'       (SELECT MAX(CA2.FEC_TIP_CAMBIO)',
'          FROM CO_TIPOS_CAMBIOS CA2',
'         WHERE C.COD_EMPRESA = CA2.COD_EMPRESA',
'           AND C.COD_MONEDA = CA2.COD_MONEDA',
'           AND C.FEC_COMPROBANTE > CA2.FEC_TIP_CAMBIO)',
'   AND SA.COD_EMPRESA = C.COD_EMPRESA',
'   AND SA.TIPO_COMPROBANTE = C.TIP_COMPROBANTE',
'   AND SA.SER_COMPROBANTE = C.SER_COMPROBANTE',
'   AND SA.NRO_COMPROBANTE = C.NRO_COMPROBANTE',
'',
' AND  EXISTS ( SELECT DISTINCT ''1'' FROM FV_PARAMETRO_COMISIONES PPP WHERE PPP.COD_VENDEDOR = V.COD_VENDEDOR )',
'',
' GROUP BY   NVL(ZO.COD_GRUPO, ''CAPITAL'')',
'',
')',
'GROUP BY ZONA_R',
' ORDER BY  1'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P169_P_PORC_FLETE,P169_COD_MONEDA ,P169_COD_RUBRO1,P169_COD_RUBRO,P169_COD_MARCA,P169_COD_SUCURSAL,P169_NUM_PERIODO,P169_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_ZONA'
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
 p_id=>wwv_flow_imp.id(39130911545656740)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>39130911545656740
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39131060104656741)
,p_db_column_name=>'ZONA_R'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Zona'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39131151302656742)
,p_db_column_name=>'TOTAL_ZONA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39131204108656743)
,p_db_column_name=>'TOTAL_VENTA_ZONA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Total Venta Zona'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(39489946753428035)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'394900'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ZONA_R:TOTAL_ZONA:TOTAL_VENTA_ZONA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39131323528656744)
,p_plug_name=>'REPORTE_RUBRO'
,p_parent_plug_id=>wwv_flow_imp.id(39128265070656713)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>6
,p_plug_display_column=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    A.COD_RUBRO,',
'          SUM( DECODE( NVL(TC.STOCK,''R''),''S'', NVL(D.MONTO_TOTAL,0) * -1, NVL(D.MONTO_TOTAL,0)) * NVL(C.TIP_CAMBIO,0)) R_VENTAS,',
'          SUM( DECODE( C.COD_MONEDA, ''1'', 0,DECODE( NVL(TC.STOCK,''R''),''S'', NVL(D.MONTO_TOTAL,0) * -1, NVL(D.MONTO_TOTAL,0)))) R_VENTAS_US,',
'          SUM( DECODE( C.COD_MONEDA, ''1'', DECODE( NVL(TC.STOCK,''R''),''S'', NVL(D.MONTO_TOTAL,0) * -1, NVL(D.MONTO_TOTAL,0)),0)) R_VENTAS_GS,',
'          INV.VTRVEVCO.CF_DESC_RUBRO (PI_COD_RUBRO 	 => A.COD_RUBRO,',
'									  PI_COD_EMPRESA => :P169_COD_EMPRESA) CF_DESC_RUBRO',
'',
'',
' FROM FV_PERIODOS_COMISION PC, ',
'         VT_COMPROBANTES_CABECERA C, VT_COMPROBANTES_DETALLE D, FV_VENDEDORES V, PERSONAS P, TIPOS_COMPROBANTES TC,',
'         SUCURSALES SU, MONEDAS M, ST_ARTICULOS A,  CC_CLIENTES CL, ZONAS_GEOGRAFICAS ZO',
' WHERE C.COD_EMPRESA = :P169_COD_EMPRESA     ',
'	AND C.COD_EMPRESA = PC.COD_EMPRESA',
'	AND PC.NUM_PERIODO = :P169_NUM_PERIODO',
'	AND C.FEC_COMPROBANTE BETWEEN PC.FEC_INICIAL AND PC.FEC_FINAL',
'	AND C.COD_EMPRESA = V.COD_EMPRESA (+)',
'	AND C.COD_VENDEDOR = V.COD_VENDEDOR (+)',
'	AND P.COD_PERSONA (+) = V.COD_PERSONA',
'	AND C.COD_EMPRESA = TC.COD_EMPRESA',
'	AND C.TIP_COMPROBANTE = TC.TIP_COMPROBANTE',
'	AND ( C.ESTADO IS NULL OR C.ESTADO <> ''A'' )',
'	AND C.COD_EMPRESA = D.COD_EMPRESA',
'	AND C.TIP_COMPROBANTE = D.TIP_COMPROBANTE',
'	AND C.SER_COMPROBANTE = D.SER_COMPROBANTE',
'	AND C.NRO_COMPROBANTE = D.NRO_COMPROBANTE',
'	AND A.COD_EMPRESA = D.COD_EMPRESA',
'	AND A.COD_ARTICULO = D.COD_ARTICULO',
'	AND C.COD_EMPRESA = SU.COD_EMPRESA (+)',
'	AND C.COD_SUCURSAL = SU.COD_SUCURSAL (+)',
'	AND C.COD_MONEDA = M.COD_MONEDA',
'	AND C.COD_EMPRESA = CL.COD_EMPRESA',
'	AND C.COD_CLIENTE = CL.COD_CLIENTE',
'	AND CL.COD_ZONA = ZO.COD_ZONA(+)',
'	AND (:P169_COD_RUBRO IS NULL OR  A.COD_RUBRO = :P169_COD_RUBRO )',
'	AND  EXISTS ( SELECT DISTINCT ''1'' FROM FV_PARAMETRO_COMISIONES PPP WHERE PPP.COD_VENDEDOR = V.COD_VENDEDOR )      ',
'GROUP BY  A.COD_RUBRO ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P169_COD_RUBRO,P169_COD_EMPRESA,P169_NUM_PERIODO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_RUBRO'
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
 p_id=>wwv_flow_imp.id(39131462902656745)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>39131462902656745
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39131530001656746)
,p_db_column_name=>'COD_RUBRO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Rubro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39131683547656747)
,p_db_column_name=>'R_VENTAS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ventas'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39131751596656748)
,p_db_column_name=>'R_VENTAS_US'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>' Ventas Us'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39131836809656749)
,p_db_column_name=>'R_VENTAS_GS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ventas Gs'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39131977110656750)
,p_db_column_name=>'CF_DESC_RUBRO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Rubro'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(39490509696428608)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'394906'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_RUBRO:R_VENTAS:R_VENTAS_US:R_VENTAS_GS:CF_DESC_RUBRO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38268818112221640)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(38267872232221630)
,p_button_name=>'BT_EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style ="margin-top:9px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38268052099221632)
,p_name=>'P169_NUM_PERIODO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38267872232221630)
,p_prompt=>'Periodo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PERIODO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NUM_PERIODO||'' -  ''|| FEC_INICIAL ||''  al  ''||FEC_FINAL D,',
'	   FEC_INICIAL, FEC_FINAL,',
'	   NUM_PERIODO R',
'  FROM FV_PERIODOS_COMISION ',
' WHERE COD_EMPRESA = :P_COD_EMPRESA ',
' ORDER BY NUM_PERIODO DESC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'FEC_INICIAL:P169_FECHA_INI,FEC_FINAL:P169_FECHA_FIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38268199157221633)
,p_name=>'P169_COD_RUBRO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(38267872232221630)
,p_prompt=>'Rubro'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_RUBROS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_rubro||'' - ''||descripcion D, ',
'         cod_rubro R',
'    FROM st_rubro ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione - '
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38268247020221634)
,p_name=>'P169_COD_TIPO_GRUPO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(38267872232221630)
,p_prompt=>'Tipo de Grupo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_GRUPOS_VTRVEVCO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT G.COD_GRUPO_VEN||'' - ''||NVL(G.DESCRIPCION, P.NOMBRE) D,',
'		G.COD_GRUPO_VEN R',
'   FROM FV_GRUPOS_VENDEDORES G, FV_VENDEDORES V, PERSONAS P ',
'  WHERE G.COD_EMPRESA = :P_COD_EMPRESA  ',
'    AND G.ESTADO = ''A'' ',
'    AND G.COD_EMPRESA = V.COD_EMPRESA ',
'    AND G.COD_VENDEDOR = V.COD_VENDEDOR ',
'    AND V.COD_PERSONA = P.COD_PERSONA ',
'  ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione - '
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38268371851221635)
,p_name=>'P169_COD_MONEDA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(38267872232221630)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MONEDAS1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion as d,',
'       cod_moneda r',
'  from monedas',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38268474774221636)
,p_name=>'P169_COD_GRUPO_VEN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(38267872232221630)
,p_prompt=>'Grupo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_GRUPOS_VTRVEVCO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT G.COD_GRUPO_VEN||'' - ''||NVL(G.DESCRIPCION, P.NOMBRE) D,',
'		G.COD_GRUPO_VEN R',
'   FROM FV_GRUPOS_VENDEDORES G, FV_VENDEDORES V, PERSONAS P ',
'  WHERE G.COD_EMPRESA = :P_COD_EMPRESA  ',
'    AND G.ESTADO = ''A'' ',
'    AND G.COD_EMPRESA = V.COD_EMPRESA ',
'    AND G.COD_VENDEDOR = V.COD_VENDEDOR ',
'    AND V.COD_PERSONA = P.COD_PERSONA ',
'  ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione - '
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38268581766221637)
,p_name=>'P169_COD_MARCA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(38267872232221630)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MARCAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca||'' - ''||descripcion D, cod_marca R',
'from st_marcas',
'order by descripcion;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38268616556221638)
,p_name=>'P169_COD_RUBRO1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(38267872232221630)
,p_prompt=>'Rubro'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_RUBROS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_rubro||'' - ''||descripcion D, ',
'         cod_rubro R',
'    FROM st_rubro ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione - '
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38268760944221639)
,p_name=>'P169_REPORTE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(38267872232221630)
,p_prompt=>'Informe'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:Informe de Ventas;IV,Resumen General;RG,Ventas Fitness;VF,Ejecuci\00F3n de Metas;VM')
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38269152583221643)
,p_name=>'P169_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38269063967221642)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38269209057221644)
,p_name=>'P169_COD_EMPRESA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(38269063967221642)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38269373830221645)
,p_name=>'P169_COD_FORMA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(38269063967221642)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38269459883221646)
,p_name=>'P169_COD_USUARIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(38269063967221642)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38269560815221647)
,p_name=>'P169_NOM_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(38269063967221642)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38269624285221648)
,p_name=>'P169_NOM_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(38269063967221642)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38269730935221649)
,p_name=>'P169_COD_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(38269063967221642)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38563895833233601)
,p_name=>'P169_NOM_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(38269063967221642)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38563962285233602)
,p_name=>'P169_NOM_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(38269063967221642)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38564284231233605)
,p_name=>'P169_IND_ACTUALIZAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(38267872232221630)
,p_prompt=>unistr('Actualizar Comisi\00F3n')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38564345251233606)
,p_name=>'P169_COD_GRUPO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(38267872232221630)
,p_prompt=>'Sub Grupo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_GRP_CM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_GRUPO_COMISION||'' - ''||DESCRIPCION D, ',
'	   COD_GRUPO_COMISION R ',
'  FROM FV_GRUPOS_COMISION ',
' WHERE COD_EMPRESA = :P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione - '
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38564657484233609)
,p_name=>'P169_FECHA_INI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(38267872232221630)
,p_prompt=>'Fecha Inicial'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38564734670233610)
,p_name=>'P169_FECHA_FIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(38267872232221630)
,p_prompt=>'Fecha Final'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38566008499233623)
,p_name=>'P169_ERROR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(38269063967221642)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39128555037656716)
,p_name=>'P169_P_FEC_INICIAL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(38267872232221630)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39128632745656717)
,p_name=>'P169_P_FEC_FINAL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(38267872232221630)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39128718068656718)
,p_name=>'P169_P_PORC_FLETE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(38267872232221630)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38565492771233617)
,p_name=>'DA_OCULTAR_REGION'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38565553457233618)
,p_event_id=>wwv_flow_imp.id(38565492771233617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38564483031233607)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38568346169233646)
,p_event_id=>wwv_flow_imp.id(38565492771233617)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38566291125233625)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38568462322233647)
,p_event_id=>wwv_flow_imp.id(38565492771233617)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38567294146233635)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39130710359656738)
,p_event_id=>wwv_flow_imp.id(38565492771233617)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39128265070656713)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38565650583233619)
,p_name=>'DA_MOSTRAR_REPORTE'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38268818112221640)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38565744244233620)
,p_event_id=>wwv_flow_imp.id(38565650583233619)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P169_ERROR := 0;',
'BEGIN',
'    IF :P169_NUM_PERIODO IS NULL THEN',
'        :P169_ERROR := 1;',
'    END IF;',
'END;'))
,p_attribute_02=>'P169_NUM_PERIODO,P169_FECHA_INI,P169_FECHA_FIN,P169_COD_GRUPO_VEN,P169_COD_TIPO_GRUPO,P169_COD_GRUPO,P169_IND_ACTUALIZAR,P169_COD_MARCA,P169_COD_RUBRO,P169_COD_RUBRO1,P169_COD_MONEDA,P169_REPORTE'
,p_attribute_03=>'P169_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38566148969233624)
,p_event_id=>wwv_flow_imp.id(38565650583233619)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe seleccionar un per\00EDodo.')
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P169_ERROR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38565875825233621)
,p_event_id=>wwv_flow_imp.id(38565650583233619)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38564483031233607)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P169_REPORTE'
,p_client_condition_expression=>'IV'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38565993114233622)
,p_event_id=>wwv_flow_imp.id(38565650583233619)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38564483031233607)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P169_REPORTE'
,p_client_condition_expression=>'IV'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38567005088233633)
,p_event_id=>wwv_flow_imp.id(38565650583233619)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38564483031233607)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P169_REPORTE'
,p_client_condition_expression=>'IV'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38566878514233631)
,p_event_id=>wwv_flow_imp.id(38565650583233619)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38566291125233625)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P169_REPORTE'
,p_client_condition_expression=>'VF'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38566973300233632)
,p_event_id=>wwv_flow_imp.id(38565650583233619)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38566291125233625)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P169_REPORTE'
,p_client_condition_expression=>'VF'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38567178141233634)
,p_event_id=>wwv_flow_imp.id(38565650583233619)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38566291125233625)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P169_REPORTE'
,p_client_condition_expression=>'VF'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38568510453233648)
,p_event_id=>wwv_flow_imp.id(38565650583233619)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_VTA_VENDEDOR'');',
'BEGIN',
'    apex_debug.error(''exec proc'');',
'    INV.VTRVEVCO.INSERTAR_COLECCION_VT_VENDEDOR (PI_FECHA_INI 		=> :P169_FECHA_INI,',
'        										 PI_FECHA_FIN 		=> :P169_FECHA_FIN,',
'        										 PI_COD_TIPO_GRUPO  => :P169_COD_TIPO_GRUPO,',
'        										 PI_COD_GRUPO 		=> :P169_COD_GRUPO,',
'                                                 PI_COD_EMPRESA     => :P169_COD_EMPRESA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_MOSTRAR_REPORTE - VTRVEVCO.INSERTAR_COLECCION_VT_VENDEDOR - ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P169_FECHA_INI,P169_FECHA_FIN,P169_COD_TIPO_GRUPO,P169_COD_GRUPO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P169_REPORTE'
,p_client_condition_expression=>'VM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38568080218233643)
,p_event_id=>wwv_flow_imp.id(38565650583233619)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38567294146233635)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P169_REPORTE'
,p_client_condition_expression=>'VM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38568116412233644)
,p_event_id=>wwv_flow_imp.id(38565650583233619)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38567294146233635)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P169_REPORTE'
,p_client_condition_expression=>'VM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38568225083233645)
,p_event_id=>wwv_flow_imp.id(38565650583233619)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38567294146233635)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P169_REPORTE'
,p_client_condition_expression=>'VM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39128928994656720)
,p_event_id=>wwv_flow_imp.id(38565650583233619)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INV.VTRVEVCO.BEFORE_REPORT (PO_P_FEC_INICIAL => :P169_P_FEC_INICIAL, ',
'        						PO_P_FEC_FINAL	 => :P169_P_FEC_FINAL,',
'        						PO_P_PORC_FLETE  => :P169_P_PORC_FLETE,',
'                                PI_COD_EMPRESA   => :P169_COD_EMPRESA,',
'                                PI_NUM_PERIODO   => :P169_NUM_PERIODO);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_MOSTRAR_REPORTE - VTRVEVCO.BEFORE_REPORT - ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P169_COD_EMPRESA,P169_NUM_PERIODO'
,p_attribute_03=>'P169_P_FEC_INICIAL,P169_P_FEC_FINAL,P169_P_PORC_FLETE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P169_REPORTE'
,p_client_condition_expression=>'RG'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39130439643656735)
,p_event_id=>wwv_flow_imp.id(38565650583233619)
,p_event_result=>'TRUE'
,p_action_sequence=>180
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39128265070656713)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P169_REPORTE'
,p_client_condition_expression=>'RG'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39130549852656736)
,p_event_id=>wwv_flow_imp.id(38565650583233619)
,p_event_result=>'TRUE'
,p_action_sequence=>190
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39128265070656713)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P169_REPORTE'
,p_client_condition_expression=>'RG'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39130681086656737)
,p_event_id=>wwv_flow_imp.id(38565650583233619)
,p_event_result=>'TRUE'
,p_action_sequence=>200
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39128265070656713)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P169_REPORTE'
,p_client_condition_expression=>'RG'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38268913138221641)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P_COD_MODULO := ''VT'';',
':P_COD_USUARIO := ''INV'';',
':P_COD_EMPRESA := ''1'';',
'',
'--INICIALIZA GLOBALES',
':P169_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
':P169_COD_EMPRESA := NVL(:P_COD_EMPRESA, ''1'');',
':P169_NOM_EMPRESA := :P_NOM_EMPRESA;',
':P169_COD_SUCURSAL := :P_COD_SUCURSAL;',
':P169_NOM_SUCURSAL := :P_NOM_SUCURSAL;',
':P169_COD_MODULO := NVL(:P_COD_MODULO, ''VT'');',
'',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_VTA_VENDEDOR'');'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
