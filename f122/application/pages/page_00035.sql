prompt --application/pages/page_00035
begin
--   Manifest
--     PAGE: 00035
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
 p_id=>35
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTRLIBV1 - Libro de Ventas'
,p_alias=>'VTRLIBV1-LIBRO-DE-VENTAS'
,p_step_title=>'Libro de Ventas'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FAC,#RTC,#RES{',
'    ',
'    font-weight: bold !important;',
'    }',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'ETRINIDAD'
,p_last_upd_yyyymmddhh24miss=>'20221227123651'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13360216365950340)
,p_plug_name=>'Libros de Ventas'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useRegionTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13360369738950341)
,p_plug_name=>'Datos'
,p_region_template_options=>'#DEFAULT#:t-Region--hideShowIconsMath:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13940936520501417)
,p_plug_name=>'Libro de Ventas'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13941096986501418)
,p_plug_name=>'Facturas'
,p_region_name=>'FAC'
,p_parent_plug_id=>wwv_flow_imp.id(13940936520501417)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.c001           TIPO_COMPROBANTE,',
'       A.c002            NRO_COMPROBANTE,',
'       to_date(A.c003)   FEC_COMPROBANTE,',
'       A.c004                    CLIENTE,',
'       A.c005                        RUC,',
'       A.c006                     MONEDA,',
'       to_number(A.c007)           TOTAL,',
'       to_number(A.c008)     GRAVADAS_10,',
'       to_number(A.c009)      GRAVADAS_5,',
'       to_number(A.c010)          IVA_10,',
'       to_number(A.c011)            IVA5,',
'       to_number(A.c012)    TOTAL_EXENTAS,',
'       to_number(A.c013) TOTAL_COMPROBANTE',
'  FROM APEX_COLLECTIONS A',
' WHERE A.collection_name = ''VTRLIBV1_FACTURA''',
' ORDER BY SEQ_ID;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Facturas'
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
 p_id=>wwv_flow_imp.id(13941162466501419)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>13941162466501419
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13941208814501420)
,p_db_column_name=>'TIPO_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tipo Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13941311646501421)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13941575631501423)
,p_db_column_name=>'CLIENTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13941667583501424)
,p_db_column_name=>'RUC'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ruc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13941714449501425)
,p_db_column_name=>'MONEDA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13942869586501436)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>70
,p_column_identifier=>'N'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13942967501501437)
,p_db_column_name=>'TOTAL'
,p_display_order=>80
,p_column_identifier=>'O'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13943052808501438)
,p_db_column_name=>'GRAVADAS_10'
,p_display_order=>90
,p_column_identifier=>'P'
,p_column_label=>'Gravadas 10%'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13943192460501439)
,p_db_column_name=>'GRAVADAS_5'
,p_display_order=>100
,p_column_identifier=>'Q'
,p_column_label=>'Gravadas 5%'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13943227622501440)
,p_db_column_name=>'IVA_10'
,p_display_order=>110
,p_column_identifier=>'R'
,p_column_label=>'Impuestos 10%'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13943381365501441)
,p_db_column_name=>'IVA5'
,p_display_order=>120
,p_column_identifier=>'S'
,p_column_label=>'Impuestos 5%'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13943412553501442)
,p_db_column_name=>'TOTAL_EXENTAS'
,p_display_order=>130
,p_column_identifier=>'T'
,p_column_label=>'Exentas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13943567769501443)
,p_db_column_name=>'TOTAL_COMPROBANTE'
,p_display_order=>140
,p_column_identifier=>'U'
,p_column_label=>'Total Fact.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14051706582770912)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'140518'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'TIPO_COMPROBANTE:NRO_COMPROBANTE:FEC_COMPROBANTE:CLIENTE:RUC:MONEDA:TOTAL:GRAVADAS_10:GRAVADAS_5:IVA_10:IVA5:TOTAL_EXENTAS:TOTAL_COMPROBANTE:'
,p_sum_columns_on_break=>'TOTAL:GRAVADAS_10:GRAVADAS_5:IVA_10:IVA5:TOTAL_EXENTAS:TOTAL_COMPROBANTE'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(17919964256198854)
,p_report_id=>wwv_flow_imp.id(14051706582770912)
,p_name=>'10'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'TIPO_COMPROBANTE'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("TIPO_COMPROBANTE" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#c6e3f7'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13943708525501445)
,p_plug_name=>'Resumen por tipos de Comprobantes'
,p_region_name=>'RTC'
,p_parent_plug_id=>wwv_flow_imp.id(13940936520501417)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INITCAP(A.C001)                   TIPO,',
'       TO_NUMBER(A.C002) GRAVADAS_10,',
'       TO_NUMBER(A.C003)  GRAVADAS_5,',
'       TO_NUMBER(A.C004)      IVA_10,',
'       TO_NUMBER(A.C005)       IVA_5,',
'       TO_NUMBER(A.C006)      EXENTAS',
'  FROM APEX_COLLECTIONS A',
' WHERE A.collection_name = ''VTRLIBV1_RESUMEN_TIPO''',
' ORDER BY SEQ_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resumen por tipos de Comprobantes'
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
 p_id=>wwv_flow_imp.id(13943888985501446)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>13943888985501446
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13943970260501447)
,p_db_column_name=>'TIPO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13944080810501448)
,p_db_column_name=>'GRAVADAS_10'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Gravadas 10%'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13944144245501449)
,p_db_column_name=>'GRAVADAS_5'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Gravadas 5%'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13944204772501450)
,p_db_column_name=>'IVA_10'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Impuestos 10%'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14107634824346901)
,p_db_column_name=>'IVA_5'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Impuestos 5%'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14107711973346902)
,p_db_column_name=>'EXENTAS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Exentas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14115470722355438)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'141155'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIPO:GRAVADAS_10:GRAVADAS_5:IVA_10:IVA_5:EXENTAS'
,p_sum_columns_on_break=>'GRAVADAS_10:GRAVADAS_5:IVA_10:IVA_5:EXENTAS'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(17920633665201345)
,p_report_id=>wwv_flow_imp.id(14115470722355438)
,p_name=>'10'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'TIPO'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("TIPO" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#c6e3f7'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14108183065346906)
,p_plug_name=>'Resumen'
,p_region_name=>'RES'
,p_parent_plug_id=>wwv_flow_imp.id(13940936520501417)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  1 ORDEN , ',
'       ''Total de Ventas'' DESCRIPCION,',
'        NVL(SUM(CASE WHEN NVL(SALDOS,''N'') <> ''R'' THEN ',
'                  GRAVADAS_10',
'             ELSE ',
'                  0',
'        END),0) GRAVADAS_10,',
'        NVL(SUM(CASE WHEN NVL(SALDOS,''N'') <> ''R'' THEN ',
'                  GRAVADAS_5',
'             ELSE ',
'                  0',
'        END),0) GRAVADAS_5,',
'        NVL(SUM(CASE WHEN NVL(SALDOS,''N'') <> ''R'' THEN ',
'                  IVA_10',
'             ELSE ',
'                  0',
'        END),0) IMPUESTOS_10,',
'        NVL(SUM(CASE WHEN NVL(SALDOS,''N'') <> ''R'' THEN ',
'                  IVA5',
'             ELSE ',
'                  0',
'        END),0) IMPUESTOS_5,',
'        NVL(SUM(CASE WHEN NVL(SALDOS,''N'') <> ''R'' THEN ',
'                  TOTAL_EXENTAS',
'             ELSE ',
'                  0',
'        END),0) EXENTAS',
' FROM(SELECT to_number(A.c008)     GRAVADAS_10,',
'             to_number(A.c009)      GRAVADAS_5,',
'             to_number(A.c010)          IVA_10,',
'             to_number(A.c011)            IVA5,',
'             to_number(A.c012)    TOTAL_EXENTAS,',
'             A.C014 SALDOS',
'        FROM APEX_COLLECTIONS A',
'       WHERE A.collection_name = ''VTRLIBV1_FACTURA''',
'       ORDER BY SEQ_ID)',
'UNION',
'SELECT  2 ORDEN,',
unistr('        ''Notas de Cr\00E9dito'' DESCRIPCION,'),
'        NVL(SUM(CASE WHEN NVL(SALDOS,''N'') = ''R'' THEN ',
'                  GRAVADAS_10',
'             ELSE ',
'                  0',
'        END),0) GRAVADAS_10,',
'        NVL(SUM(CASE WHEN NVL(SALDOS,''N'') = ''R'' THEN ',
'                  GRAVADAS_5',
'             ELSE ',
'                  0',
'        END),0) GRAVADAS_5,',
'        NVL(SUM(CASE WHEN NVL(SALDOS,''N'') = ''R'' THEN ',
'                  IVA_10',
'             ELSE ',
'                  0',
'        END),0) IMPUESTOS_10,',
'        NVL(SUM(CASE WHEN NVL(SALDOS,''N'') = ''R'' THEN ',
'                  IVA5',
'             ELSE ',
'                  0',
'        END),0) IMPUESTOS_5,',
'        NVL(SUM(CASE WHEN NVL(SALDOS,''N'') = ''R'' THEN ',
'                  TOTAL_EXENTAS',
'             ELSE ',
'                  0',
'        END),0) EXENTAS',
' FROM(SELECT to_number(A.c008)     GRAVADAS_10,',
'             to_number(A.c009)      GRAVADAS_5,',
'             to_number(A.c010)          IVA_10,',
'             to_number(A.c011)            IVA5,',
'             to_number(A.c012)    TOTAL_EXENTAS,',
'             A.C014 SALDOS',
'        FROM APEX_COLLECTIONS A',
'       WHERE A.collection_name = ''VTRLIBV1_FACTURA''',
'       ORDER BY SEQ_ID)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resumen'
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
 p_id=>wwv_flow_imp.id(14108236274346907)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>14108236274346907
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14108369182346908)
,p_db_column_name=>'ORDEN'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Orden'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14108459122346909)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14108530060346910)
,p_db_column_name=>'GRAVADAS_10'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Gravadas 10%'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14108600980346911)
,p_db_column_name=>'GRAVADAS_5'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Gravadas 5%'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14108720119346912)
,p_db_column_name=>'IMPUESTOS_10'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Impuestos 10%'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14108879182346913)
,p_db_column_name=>'IMPUESTOS_5'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Impuestos 5%'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14108910141346914)
,p_db_column_name=>'EXENTAS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Exentas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14170984051424189)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'141710'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORDEN:DESCRIPCION:GRAVADAS_10:GRAVADAS_5:IMPUESTOS_10:IMPUESTOS_5:EXENTAS'
,p_sum_columns_on_break=>'GRAVADAS_10:GRAVADAS_5:IMPUESTOS_10:IMPUESTOS_5:EXENTAS'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(17921392226204992)
,p_report_id=>wwv_flow_imp.id(14170984051424189)
,p_name=>'10'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DESCRIPCION'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("DESCRIPCION" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#c6e3f7'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35982038330462211)
,p_plug_name=>'Libro de Ventas'
,p_parent_plug_id=>wwv_flow_imp.id(13940936520501417)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.p(''<object data="''||:P35_URL||''" type="application/pdf" width=100% height="1000">'');',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13940701345501415)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13360369738950341)
,p_button_name=>'EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13940832498501416)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13360369738950341)
,p_button_name=>'CANCELAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--simple:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'PREVIOUS'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(62296722508554621)
,p_branch_name=>'print'
,p_branch_action=>'P35_URL'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_URL_IDENT_BY_ITEM'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'IMPRIMIR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13360446079950342)
,p_name=>'P35_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13360369738950341)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_SUCURSAL_COD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_SUCURSAL||''-''||DESCRIPCION d,',
'       COD_SUCURSAL r',
'  FROM SUCURSALES',
'WHERE COD_EMPRESA = :P_COD_EMPRESA'))
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13360587306950343)
,p_name=>'P35_TIPO_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13360369738950341)
,p_prompt=>'Tipo Comprobante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT descripcion, tip_comprobante',
'    FROM tipos_comprobantes ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'     AND tip_comprobante IN (''FCO'',''FCR'',''NCR'',''TKT'',''DEB'',''REM'') ',
'ORDER BY descripcion;'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13360611752950344)
,p_name=>'P35_COD_SECTOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13360369738950341)
,p_prompt=>'Sector'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVSECTORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sector||'' - ''||descripcion D, ',
'         cod_sector R',
'    FROM sectores ',
'   WHERE cod_empresa = :P_COD_EMPRESA ',
'ORDER BY descripcion;'))
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13360793756950345)
,p_name=>'P35_FECHA_INI'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(13360369738950341)
,p_prompt=>'Fecha'
,p_placeholder=>'Inicial'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13360844143950346)
,p_name=>'P35_FECHA_FIN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(13360369738950341)
,p_placeholder=>'Final'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(13360951651950347)
,p_name=>'P35_PORC_IVA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(13360369738950341)
,p_prompt=>'Porc. Iva'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13939729941501405)
,p_name=>'P35_SERIE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(13360369738950341)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(13940001480501408)
,p_name=>'P35_VER_ANULADAS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(13360369738950341)
,p_item_default=>'N'
,p_prompt=>'Listar Anuladas'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Si;S,No;N'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13940182662501409)
,p_name=>'P35_IND_RUBRICADO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(13360369738950341)
,p_item_default=>'N'
,p_prompt=>'Rubricado'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Si;S,No;N'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13940276074501410)
,p_name=>'P35_NUM_DESDE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(13360369738950341)
,p_item_default=>'0'
,p_prompt=>'Num. Desde'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14110267658346927)
,p_name=>'P35_URL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(13360369738950341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35981270461462203)
,p_name=>'P35_FEC_INI_JR'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35981309049462204)
,p_name=>'P35_FEC_FIN_JR'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14107935920346904)
,p_validation_name=>'Valida Fecha Inicial'
,p_validation_sequence=>10
,p_validation=>'P35_FECHA_INI'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe especificar la Fecha Inicial'
,p_associated_item=>wwv_flow_imp.id(13360793756950345)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14108073410346905)
,p_validation_name=>'Valida Fecha Final'
,p_validation_sequence=>20
,p_validation=>'P35_FECHA_FIN'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe especificar la Fecha final'
,p_associated_item=>wwv_flow_imp.id(13360844143950346)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13361050097950348)
,p_name=>'DA_Cambiar_Porc_Iva'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P35_PORC_IVA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13939688294501404)
,p_event_id=>wwv_flow_imp.id(13361050097950348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_PORC_IVA'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P35_PORC_IVA =''1'' then ',
'RETURN ''0,1'';',
'elsif :P35_PORC_IVA =''0'' then ',
' RETURN 0;',
'elsif :P35_PORC_IVA =''5'' then ',
'  RETURN ''0,05'';',
'end if;'))
,p_attribute_07=>'P35_PORC_IVA'
,p_attribute_08=>'N'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13940362120501411)
,p_name=>'DA_Cambiar_Rubricado'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P35_IND_RUBRICADO'
,p_condition_element=>'P35_IND_RUBRICADO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13940401689501412)
,p_event_id=>wwv_flow_imp.id(13940362120501411)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_NUM_DESDE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13940510060501413)
,p_event_id=>wwv_flow_imp.id(13940362120501411)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_NUM_DESDE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13940619823501414)
,p_event_id=>wwv_flow_imp.id(13940362120501411)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_NUM_DESDE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14109005175346915)
,p_name=>'DA_Clic_Ejecutar'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13940701345501415)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35981405362462205)
,p_event_id=>wwv_flow_imp.id(14109005175346915)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P35_FEC_INI_JR := TO_CHAR(TO_DATE(:P35_FECHA_INI),''YYYY-MM-DD"T"HH24:MI:SS'');',
':P35_FEC_FIN_JR := TO_CHAR(TO_DATE(:P35_FECHA_FIN),''YYYY-MM-DD"T"HH24:MI:SS'');'))
,p_attribute_02=>'P35_FECHA_INI,P35_FECHA_FIN'
,p_attribute_03=>'P35_FEC_INI_JR,P35_FEC_FIN_JR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14110177901346926)
,p_event_id=>wwv_flow_imp.id(14109005175346915)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P35_URL :=''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2FVTRLIBV1_RUBRICA&standAlone=true&j_username=jasperadmin&j_password=jasperadmin&output=pdf&P_COD_EM'
||'PRESA=''||:P_COD_EMPRESA||''&P_FEC_INICIAL=''||TO_CHAR(TO_DATE(:P35_FECHA_INI),''YYYY-MM-DD"T"HH24:MI:SS'')||''&P_FEC_FINAL=''||TO_CHAR(TO_DATE(:P35_FECHA_FIN),''YYYY-MM-DD"T"HH24:MI:SS'')||''&P_NUM_DESDE=''||nvl(:P35_NUM_DESDE,0);',
'',
'IF :P35_COD_SECTOR IS NOT NULL THEN ',
'   :P35_URL := :P35_URL||''&P_COD_SECTOR=''||:P35_COD_SECTOR;',
'END IF;',
'IF :P35_COD_SUCURSAL IS NOT NULL THEN ',
':P35_URL := :P35_URL||''&P_COD_SUCURSAL=''||:P35_COD_SUCURSAL;',
'END IF;',
'IF :P35_PORC_IVA IS NOT NULL THEN ',
':P35_URL := :P35_URL||''&P_PORCENTAJE=''||REPLACE(:P35_PORC_IVA,'','',''.'');',
'END IF;',
'IF :P35_SERIE IS NOT NULL THEN ',
':P35_URL := :P35_URL||''&P_SER_COMPROBANTE=''||:P35_SERIE;',
'END IF;',
'IF :P35_TIPO_COMPROBANTE IS NOT NULL THEN ',
':P35_URL := :P35_URL||''&P_TIP_COMPROBANTE=''||:P35_TIPO_COMPROBANTE;',
'END IF;',
'IF :P35_VER_ANULADAS = ''S'' THEN ',
' :P35_URL := :P35_URL||''&P_ANULADO=''||:P35_VER_ANULADAS;',
'END IF;',
'',
'--:P35_URL := :P35_URL||''&j_username=jasperadmin&j_password=jasperadmin'';',
'--RAISE_APPLICATION_ERROR(-20001,:P35_URL);',
'--:P35_URL := ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/VTRLIBV1_RUBRICA.PDF?P_COD_EMPRESA=''||:P_COD_EMPRESA||''&P_COD_SUCURSAL=''||:P35_COD_SUCURSAL||''&P_FEC_FINAL=''||TO_CHAR(TO_DATE(:P35_FECHA_FIN),''YYYY-MM-DD"T"HH24:MI:SS'')||''&P_NUM_'
||'DESDE=''||:P35_NUM_DESDE||''&P_FEC_INICIAL=''||TO_CHAR(TO_DATE(:P35_FECHA_INI),''YYYY-MM-DD"T"HH24:MI:SS'');',
'',
'',
'---null;'))
,p_attribute_02=>'P35_COD_SECTOR,P35_COD_SUCURSAL,P35_TIPO_COMPROBANTE,P35_FECHA_INI,P35_FECHA_FIN,P35_PORC_IVA,P35_SERIE,P35_VER_ANULADAS,P35_NUM_DESDE'
,p_attribute_03=>'P35_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14109171313346916)
,p_event_id=>wwv_flow_imp.id(14109005175346915)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35981525816462206)
,p_name=>'DA_Cambiar_Fecha_ini'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P35_FECHA_INI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35981630715462207)
,p_event_id=>wwv_flow_imp.id(35981525816462206)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_FECHA_INI'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'IF :P35_FECHA_INI IS NOT NULL THEN ',
'RETURN FUNCDB_TRAER_FECHA(:P35_FECHA_INI);',
'END IF;',
'END;'))
,p_attribute_07=>'P35_FECHA_INI'
,p_attribute_08=>'N'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35981772917462208)
,p_name=>'DA_Cambiar_Fec_Fin'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P35_FECHA_FIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35981876021462209)
,p_event_id=>wwv_flow_imp.id(35981772917462208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_FECHA_FIN'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'IF :P35_FECHA_FIN IS NOT NULL THEN ',
'RETURN FUNCDB_TRAER_FECHA(:P35_FECHA_FIN);',
'END IF;',
'END;'))
,p_attribute_07=>'P35_FECHA_FIN'
,p_attribute_08=>'N'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14109266493346917)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'VTRLIBV1.PROCBD_CARGAR_COL_VTRLIBV1(:P_COD_EMPRESA,',
'                                    :P35_FECHA_INI,',
'                                    :P35_FECHA_FIN,',
'                                    :P35_SERIE,',
'                                    :P35_TIPO_COMPROBANTE,',
'                                    :P35_COD_SUCURSAL,',
'                                    :P35_VER_ANULADAS,',
'                                    :P35_PORC_IVA,',
'                                    :P35_COD_SECTOR);'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
