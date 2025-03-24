prompt --application/pages/page_00230
begin
--   Manifest
--     PAGE: 00230
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
 p_id=>230
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTRRANCL'
,p_alias=>'VTRRANCL'
,p_step_title=>'VTRRANCL'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico.js'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#P230_TOTAL_GLOBAL, #P230_TOTAL_GLOBAL_LABEL {',
'    font-weight: bold;',
'}',
'',
'#P230_T0TAL_VTRANCLI_NEW, #P230_T0TAL_VTRANCLI_NEW_LABEL {',
'    font-weight: bold;',
'}',
'',
'',
'#P230_T0TAL_VTRANLINEAL, #P230_T0TAL_VTRANLINEAL_LABEL {',
'    font-weight: bold;',
'}',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'HSEGOVIA'
,p_last_upd_yyyymmddhh24miss=>'20221206100127'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52280632316449101)
,p_plug_name=>'VTRRANCL'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52348015837603232)
,p_plug_name=>'Reporte VTRANCL'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id,',
'       c001 AS COD_CLIENTE, ',
'       c002 AS NOMBRE, ',
'       c003 AS DIRECCION,',
'       N001 AS CANT, ',
'       N002 AS PORCENTAJE, ',
'       N003 AS TOTALES,',
'       N004 AS PORC',
'  FROM apex_collections',
' WHERE collection_name = ''TMP_VTRANCL'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte VTRANCL'
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
 p_id=>wwv_flow_imp.id(52865169364687015)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>500
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'HSEGOVIA'
,p_internal_uid=>52865169364687015
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52865224340687016)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('C\00F3d. Cliente')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52865345250687017)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52865529728687019)
,p_db_column_name=>'TOTALES'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Totales'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52865721692687021)
,p_db_column_name=>'CANT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52866048880687024)
,p_db_column_name=>'DIRECCION'
,p_display_order=>70
,p_column_identifier=>'I'
,p_column_label=>unistr('Direcci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52866187155687025)
,p_db_column_name=>'PORCENTAJE'
,p_display_order=>80
,p_column_identifier=>'J'
,p_column_label=>'% sobre Vta. Global'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52866299071687026)
,p_db_column_name=>'PORC'
,p_display_order=>90
,p_column_identifier=>'K'
,p_column_label=>'% sobre Vta. Tot.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52866550903687029)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>100
,p_column_identifier=>'L'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(52884739585056190)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'528848'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'COD_CLIENTE:NOMBRE:DIRECCION:CANT:PORCENTAJE:TOTALES:PORC:'
,p_sum_columns_on_break=>'PORCENTAJE:TOTALES:PORC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53765117324360707)
,p_plug_name=>'Total Global VTRANCL'
,p_parent_plug_id=>wwv_flow_imp.id(52348015837603232)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53766076298360716)
,p_plug_name=>'Reporte VTRANCLI_NEW'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id,',
'       c001 AS COD_CLIENTE, ',
'       c002 AS NOMBRE, ',
'       c003 AS DIRECCION,',
'       N001 AS CANT, ',
'       N002 AS PORCENTAJE, ',
'       N003 AS TOTALES,',
'       N004 AS PORC,',
'       C004 AS Ciudad',
'  FROM apex_collections',
' WHERE collection_name = ''TMP_VTRANCLI_NEW'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte VTRANCLI_NEW'
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
 p_id=>wwv_flow_imp.id(53766192125360717)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>500
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'HSEGOVIA'
,p_internal_uid=>53766192125360717
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53766225049360718)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('C\00F3d. Cliente')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53766313015360719)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53766403882360720)
,p_db_column_name=>'TOTALES'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Totales'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53766515803360721)
,p_db_column_name=>'CANT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53766685147360722)
,p_db_column_name=>'DIRECCION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Direcci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53766730368360723)
,p_db_column_name=>'PORCENTAJE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'% sobre Vta. Global'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53766806072360724)
,p_db_column_name=>'PORC'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'% sobre Vta. Tot.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53766916941360725)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53839148973297809)
,p_db_column_name=>'CIUDAD'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(53817990588100346)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'538180'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_CLIENTE:NOMBRE:CIUDAD:DIRECCION:CANT:PORCENTAJE:TOTALES:PORC:'
,p_sum_columns_on_break=>'PORCENTAJE:TOTALES:PORC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53840152560297819)
,p_plug_name=>'Total Global VTRANCLI_NEW'
,p_parent_plug_id=>wwv_flow_imp.id(53766076298360716)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53767143295360727)
,p_plug_name=>'Reporte VTRANLINEA'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id,',
'       c001 AS COD_CLIENTE, ',
'       c002 AS NOMBRE, ',
'       c003 AS DIRECCION,',
'       N001 AS CANT, ',
'       N002 AS PORCENTAJE, ',
'       N003 AS TOTALES,',
'       N004 AS PORC,',
'       c004 AS COD_LINEA,',
'       c005 AS DESC_LINEA,',
'       c006 AS CANTIDAD_VENDIDA,',
'       c007 AS TOTALES_LINEA,',
'       c008 AS ORDENAR',
'  FROM apex_collections',
' WHERE collection_name = ''TMP_VTRANLINEA''',
' ORDER BY N003 DESC;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte VTRANLINEA'
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
 p_id=>wwv_flow_imp.id(53767234494360728)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>300
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'HSEGOVIA'
,p_internal_uid=>53767234494360728
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53767369183360729)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('C\00F3d. Cliente')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53767448883360730)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53767526487360731)
,p_db_column_name=>'TOTALES'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Totales'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53767657501360732)
,p_db_column_name=>'CANT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53767743704360733)
,p_db_column_name=>'DIRECCION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Direcci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53767818395360734)
,p_db_column_name=>'PORCENTAJE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'% sobre Vta. Global'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53767960552360735)
,p_db_column_name=>'PORC'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'% sobre Vta. Tot.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53768073931360736)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53840703708297825)
,p_db_column_name=>'COD_LINEA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>unistr('C\00F3d. L\00EDnea')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53840892663297826)
,p_db_column_name=>'DESC_LINEA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53840923488297827)
,p_db_column_name=>'CANTIDAD_VENDIDA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cantidad Vendida'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53841050270297828)
,p_db_column_name=>'TOTALES_LINEA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Totales'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(53841553818297833)
,p_db_column_name=>'ORDENAR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Ordenar'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(53818548656100355)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'538186'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'COD_CLIENTE:CANT:PORC:ORDENAR:NOMBRE:PORCENTAJE:TOTALES:COD_LINEA:DESC_LINEA:CANTIDAD_VENDIDA:TOTALES_LINEA:'
,p_sort_column_1=>'TOTALES'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'ORDENAR:COD_CLIENTE:NOMBRE:CANT:PORCENTAJE:TOTALES:PORC'
,p_break_enabled_on=>'ORDENAR:COD_CLIENTE:NOMBRE:CANT:PORCENTAJE:TOTALES:PORC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53841247168297830)
,p_plug_name=>'Total Global VTRANLINEAL'
,p_parent_plug_id=>wwv_flow_imp.id(53767143295360727)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52282762468449122)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(52280632316449101)
,p_button_name=>'Ejecutar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52280747721449102)
,p_name=>'P230_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(52280632316449101)
,p_item_default=>'1'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52280801483449103)
,p_name=>'P230_COD_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(52280632316449101)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_SUCURSALES_VTRRANCL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal, cod_sucursal||'' - ''||descripcion descripcion',
'  from sucursales',
' where cod_empresa = :P230_COD_EMPRESA',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P230_COD_EMPRESA'
,p_ajax_items_to_submit=>'P230_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
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
,p_attribute_07=>'Sucursales'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52280998258449104)
,p_name=>'P230_COD_MONEDA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(52280632316449101)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MONEDAS_VTRRANCL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_moneda, cod_moneda||'' - ''||descripcion descripcion',
'from monedas'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52281014796449105)
,p_name=>'P230_COD_CLIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(52280632316449101)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_PERSONAS_VTRRANCL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_persona, c.cod_persona||'' - ''||p.nombre nombre',
'  from cc_clientes c, personas p',
' where c.cod_empresa = :P230_COD_EMPRESA',
'   and c.cod_persona = p.cod_persona'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P230_COD_EMPRESA'
,p_ajax_items_to_submit=>'P230_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
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
,p_attribute_07=>'Clientes'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52281150189449106)
,p_name=>'P230_COD_CORPORACION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(52280632316449101)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Corporaci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_CORPORACION_VTRRANCL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_corporacion, cod_corporacion||'' - ''||descripcion descripcion',
'  from cc_corporaciones',
' where cod_empresa = :P230_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P230_COD_EMPRESA'
,p_ajax_items_to_submit=>'P230_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
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
,p_attribute_07=>'Corporaciones'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52281291298449107)
,p_name=>'P230_COD_VENDEDOR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(52280632316449101)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_VENDEDORES_VTRRANCL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.cod_vendedor, v.cod_vendedor||'' - ''||nombre nombre',
'  from fv_vendedores v, personas p',
' where cod_empresa = :P230_COD_EMPRESA',
' and v.cod_persona = p.cod_persona;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P230_COD_EMPRESA'
,p_ajax_items_to_submit=>'P230_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(52281353216449108)
,p_name=>'P230_COD_RUBRO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(52280632316449101)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rubro'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_RUBROS_VTRRANCL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_rubro, cod_rubro||'' - ''||descripcion descripcion',
'  from st_rubro ',
' where cod_empresa = :P230_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P230_COD_EMPRESA'
,p_ajax_items_to_submit=>'P230_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(52281453970449109)
,p_name=>'P230_COD_FAMILIA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(52280632316449101)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Familia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_FAMILIA_VTRRANCL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_familia, cod_familia||'' - ''||descripcion descrippcion',
'  from st_familia '))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(52281518987449110)
,p_name=>'P230_COD_CATEGORIA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(52280632316449101)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Categor\00EDa')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_CATEGORIAS_VTRRANCL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select cod_categoria, cod_categoria||'' - ''||descripcion descripcion',
'  from st_categorias'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(52281656052449111)
,p_name=>'P230_COD_ZONA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(52280632316449101)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Zona'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_ZONA_VTRRANCL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_zona, cod_zona||'' - ''||ltrim(descripcion) descricion',
'from zonas_geograficas'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(52281783865449112)
,p_name=>'P230_COD_LINEA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(52280632316449101)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Linea'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_LINEAS_VTRRANCL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_linea, cod_linea||'' - ''|| descripcion descricion',
'  from st_linea '))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(52281898626449113)
,p_name=>'P230_COD_MARCA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(52280632316449101)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_MARCAS_VTRRANCL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca, cod_marca||'' - ''||descripcion descripcion',
'  from st_marcas '))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(52281938851449114)
,p_name=>'P230_COD_ARTICULO_DES'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(52280632316449101)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Art\00EDculo Desde')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_ARTICULOS_DESDE_VTRRANCL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo, cod_articulo||'' - ''||descripcion descripcion',
'  from st_articulos ',
' where cod_empresa  = :P230_COD_EMPRESA',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P230_COD_EMPRESA'
,p_ajax_items_to_submit=>'P230_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(52282062986449115)
,p_name=>'P230_COD_ARTICULO_HAS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(52280632316449101)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Art\00EDculo Hasta')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_ARTICULOS_HASTA_VTRRANCL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo, cod_articulo||'' - ''||descripcion descripcion',
'  from st_articulos ',
' where cod_empresa  = :P230_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P230_COD_EMPRESA'
,p_ajax_items_to_submit=>'P230_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(52282129625449116)
,p_name=>'P230_FEC_INICIAL'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(52280632316449101)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Periodo Desde'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);" onkeyup = "setDateFormat(this);"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(52282243086449117)
,p_name=>'P230_FEC_FINAL'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(52280632316449101)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Periodo Hasta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);" onkeyup = "setDateFormat(this);"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52282371563449118)
,p_name=>'P230_NRO_CLIENTES'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(52280632316449101)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Los Primeros'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_tag_css_classes=>'allow_only_numbers'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52282469692449119)
,p_name=>'P230_CONSOLIDADO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(52280632316449101)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Consolidado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52282584076449120)
,p_name=>'P230_LINEA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(52280632316449101)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Incluye Lineas'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52282897462449123)
,p_name=>'P230_COD_MODULO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(52280632316449101)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52282983685449124)
,p_name=>'P230_COD_FORMA'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(52280632316449101)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52283005660449125)
,p_name=>'P230_NOM_MODULO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(52280632316449101)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52283139868449126)
,p_name=>'P230_NOM_FORMA'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(52280632316449101)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52864782681687011)
,p_name=>'P230_PARAMETRO_MONEDAS'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(52280632316449101)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53765591477360711)
,p_name=>'P230_REPORTE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(52280632316449101)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53765713957360713)
,p_name=>'P230_TOTAL_GLOBAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(53765117324360707)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Venta Global'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53840267478297820)
,p_name=>'P230_T0TAL_VTRANCLI_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(53840152560297819)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Venta Global'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53841337100297831)
,p_name=>'P230_T0TAL_VTRANLINEAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(53841247168297830)
,p_prompt=>'Venta Global'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(52863725364687001)
,p_validation_name=>'Valida Monedas'
,p_validation_sequence=>10
,p_validation=>'P230_COD_MONEDA'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('\00A1Es necesario ingresar la moneda!.')
,p_associated_item=>wwv_flow_imp.id(52280998258449104)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53839262864297810)
,p_name=>'Obtiene condicionales de reportes'
,p_event_sequence=>5
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(52282762468449122)
,p_condition_element=>'P230_COD_MONEDA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_da_event_comment=>'Obtiene condicionales de reportes'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53765405049360710)
,p_event_id=>wwv_flow_imp.id(53839262864297810)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P230_LINEA,''N'')<>''S'' then',
'    if :P230_CONSOLIDADO=''N'' then',
'        :P230_REPORTE := ''vtrancli'';',
'     else',
'        :P230_REPORTE := ''vtrancli_NEW'';',
'     end if;',
' ELSE',
'    :P230_REPORTE := ''vtranlinea'';',
'END IF;',
''))
,p_attribute_02=>'P230_LINEA,P230_CONSOLIDADO'
,p_attribute_03=>'P230_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53841414544297832)
,p_event_id=>wwv_flow_imp.id(53839262864297810)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.NOTIFICATIONS'
,p_attribute_01=>'warning'
,p_attribute_02=>'static'
,p_attribute_03=>unistr('Atenci\00F3n')
,p_attribute_04=>'Debe seleccionar la moneda'
,p_attribute_07=>'autodismiss:prevent-duplicates:remove-notifications:escape-html:newest-on-top:client-side-substitutions:dismiss-on-click:dismiss-on-button'
,p_attribute_08=>'top-right'
,p_attribute_09=>'Y'
,p_attribute_11=>'3'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52864887013687012)
,p_name=>'Obtiene datos del reporte'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P230_REPORTE'
,p_condition_element=>'P230_REPORTE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'vtrancli'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_da_event_comment=>'Obtiene datos del reporte'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53765991323360715)
,p_event_id=>wwv_flow_imp.id(52864887013687012)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52348015837603232)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53767023614360726)
,p_event_id=>wwv_flow_imp.id(52864887013687012)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53766076298360716)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53768157281360737)
,p_event_id=>wwv_flow_imp.id(52864887013687012)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53767143295360727)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53765267489360708)
,p_event_id=>wwv_flow_imp.id(52864887013687012)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//ejecutar spinner',
'var spinner = apex.util.showSpinner();',
'//remover spinner',
'$("#apex_wait_overlay").remove();',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53764568213360701)
,p_event_id=>wwv_flow_imp.id(52864887013687012)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.vtrrancl.pr_procesar_reporte_vtrrancl(P_PARAMETRO_MONEDAS => :P230_PARAMETRO_MONEDAS,',
'                                       P_COD_CORPORACION   => :P230_COD_CORPORACION,',
'                                       P_COD_CLIENTE       => :P230_COD_CLIENTE,',
'                                       P_FEC_FINAL         => :P230_FEC_FINAL,',
'                                       P_FEC_INICIAL       => :P230_FEC_INICIAL,',
'                                       P_COD_ARTICULO_HAS  => :P230_COD_ARTICULO_HAS,',
'                                       P_COD_ARTICULO_DES  => :P230_COD_ARTICULO_DES,',
'                                       P_COD_MARCA         => :P230_COD_MARCA,',
'                                       P_COD_LINEA         => :P230_COD_LINEA,',
'                                       P_COD_CATEGORIA     => :P230_COD_CATEGORIA,',
'                                       P_COD_FAMILIA       => :P230_COD_FAMILIA,',
'                                       P_COD_RUBRO         => :P230_COD_RUBRO,',
'                                       P_COD_ZONA          => :P230_COD_ZONA,',
'                                       P_COD_MONEDA        => :P230_COD_MONEDA,',
'                                       P_COD_VENDEDOR      => :P230_COD_VENDEDOR,',
'                                       P_COD_SUCURSAL      => :P230_COD_SUCURSAL,',
'                                       P_COD_EMPRESA       => :P230_COD_EMPRESA,',
'                                       P_NRO_CLIENTES      => :P230_NRO_CLIENTES,',
'                                       P_TOTAL_GLOBAL      => :P230_TOTAL_GLOBAL);'))
,p_attribute_02=>'P230_PARAMETRO_MONEDAS,P230_COD_CORPORACION,P230_COD_CLIENTE,P230_FEC_FINAL,P230_FEC_INICIAL,P230_COD_ARTICULO_HAS,P230_COD_ARTICULO_DES,P230_COD_MARCA,P230_COD_LINEA,P230_COD_CATEGORIA,P230_COD_FAMILIA,P230_COD_RUBRO,P230_COD_ZONA,P230_COD_MONEDA,P2'
||'30_COD_VENDEDOR,P230_COD_SUCURSAL,P230_COD_EMPRESA,P230_NRO_CLIENTES'
,p_attribute_03=>'P230_TOTAL_GLOBAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P230_REPORTE'
,p_client_condition_expression=>'vtrancli'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52865098036687014)
,p_event_id=>wwv_flow_imp.id(52864887013687012)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52348015837603232)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53765347852360709)
,p_event_id=>wwv_flow_imp.id(52864887013687012)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".u-Processing").remove();',
'',
'',
'',
'$(document).ready(function(){',
'$(''.t-Button--hideShow'').trigger(''click'');',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53839463603297812)
,p_name=>'Obtiene datos del vtrancli_NEW'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P230_REPORTE'
,p_condition_element=>'P230_REPORTE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'vtrancli_NEW'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_da_event_comment=>'Obtiene datos del vtrancli_NEW'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53768449416360740)
,p_event_id=>wwv_flow_imp.id(53839463603297812)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53766076298360716)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53768317841360739)
,p_event_id=>wwv_flow_imp.id(53839463603297812)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52348015837603232)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53768586300360741)
,p_event_id=>wwv_flow_imp.id(53839463603297812)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53767143295360727)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53839594855297813)
,p_event_id=>wwv_flow_imp.id(53839463603297812)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//ejecutar spinner',
'var spinner = apex.util.showSpinner();',
'//remover spinner',
'$("#apex_wait_overlay").remove();',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53839813456297816)
,p_event_id=>wwv_flow_imp.id(53839463603297812)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.vtrrancl.pr_procesar_vtrrancl_new(P_PARAMETRO_MONEDAS => :P230_PARAMETRO_MONEDAS,',
'                                       P_COD_CORPORACION   => :P230_COD_CORPORACION,',
'                                       P_COD_CLIENTE       => :P230_COD_CLIENTE,',
'                                       P_FEC_FINAL         => :P230_FEC_FINAL,',
'                                       P_FEC_INICIAL       => :P230_FEC_INICIAL,',
'                                       P_COD_ARTICULO_HAS  => :P230_COD_ARTICULO_HAS,',
'                                       P_COD_ARTICULO_DES  => :P230_COD_ARTICULO_DES,',
'                                       P_COD_MARCA         => :P230_COD_MARCA,',
'                                       P_COD_LINEA         => :P230_COD_LINEA,',
'                                       P_COD_CATEGORIA     => :P230_COD_CATEGORIA,',
'                                       P_COD_FAMILIA       => :P230_COD_FAMILIA,',
'                                       P_COD_RUBRO         => :P230_COD_RUBRO,',
'                                       P_COD_ZONA          => :P230_COD_ZONA,',
'                                       P_COD_MONEDA        => :P230_COD_MONEDA,',
'                                       P_COD_VENDEDOR      => :P230_COD_VENDEDOR,',
'                                       P_COD_SUCURSAL      => :P230_COD_SUCURSAL,',
'                                       P_COD_EMPRESA       => :P230_COD_EMPRESA,',
'                                       P_NRO_CLIENTES      => :P230_NRO_CLIENTES,',
'                                       P_TOTAL_GLOBAL      => :P230_T0TAL_VTRANCLI_NEW);'))
,p_attribute_02=>'P230_PARAMETRO_MONEDAS,P230_COD_CORPORACION,P230_COD_CLIENTE,P230_FEC_FINAL,P230_FEC_INICIAL,P230_COD_ARTICULO_HAS,P230_COD_ARTICULO_DES,P230_COD_MARCA,P230_COD_LINEA,P230_COD_CATEGORIA,P230_COD_FAMILIA,P230_COD_RUBRO,P230_COD_ZONA,P230_COD_MONEDA,P2'
||'30_COD_VENDEDOR,P230_COD_SUCURSAL,P230_COD_EMPRESA,P230_NRO_CLIENTES'
,p_attribute_03=>'P230_T0TAL_VTRANCLI_NEW'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P230_REPORTE'
,p_client_condition_expression=>'vtrancli_NEW'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53839937863297817)
,p_event_id=>wwv_flow_imp.id(53839463603297812)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53766076298360716)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53840018448297818)
,p_event_id=>wwv_flow_imp.id(53839463603297812)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".u-Processing").remove();',
'',
'',
'',
'$(document).ready(function(){',
'$(''.t-Button--hideShow'').trigger(''click'');',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52866301991687027)
,p_name=>unistr('Setea descripci\00F3n moneda')
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P230_COD_MONEDA'
,p_condition_element=>'P230_COD_MONEDA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_da_event_comment=>unistr('Setea descripci\00F3n moneda')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52866476056687028)
,p_event_id=>wwv_flow_imp.id(52866301991687027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P230_COD_MONEDA = 1 THEN',
'  	 :P230_PARAMETRO_MONEDAS := ''COD_MONEDA_BASE'';',
'  ELSIF :P230_COD_MONEDA = 2 THEN',
'  	:P230_PARAMETRO_MONEDAS :=  ''COD_MONEDA_PREC'';',
'  END IF;'))
,p_attribute_02=>'P230_COD_MONEDA'
,p_attribute_03=>'P230_PARAMETRO_MONEDAS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53764984381360705)
,p_name=>'Crea colecciones'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_da_event_comment=>'Crea colecciones'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53765016019360706)
,p_event_id=>wwv_flow_imp.id(53764984381360705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''TMP_VTRANCL'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''TMP_VTRANCLI_NEW'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''TMP_VTRANLINEA'');',
'',
'',
'',
'',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53769017424360746)
,p_name=>'Oculta regiones de reportes'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_da_event_comment=>'Oculta regiones de reportes'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53769156095360747)
,p_event_id=>wwv_flow_imp.id(53769017424360746)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52348015837603232)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53769284008360748)
,p_event_id=>wwv_flow_imp.id(53769017424360746)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53766076298360716)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53769344804360749)
,p_event_id=>wwv_flow_imp.id(53769017424360746)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53767143295360727)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53768690585360742)
,p_name=>unistr('Mostrar regi\00F3n vtranlinea')
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P230_REPORTE'
,p_condition_element=>'P230_REPORTE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'vtranlinea'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_da_event_comment=>unistr('Mostrar regi\00F3n vtranlinea')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53768741487360743)
,p_event_id=>wwv_flow_imp.id(53768690585360742)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53766076298360716)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53768810353360744)
,p_event_id=>wwv_flow_imp.id(53768690585360742)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52348015837603232)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53840366114297821)
,p_event_id=>wwv_flow_imp.id(53768690585360742)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//ejecutar spinner',
'var spinner = apex.util.showSpinner();',
'//remover spinner',
'$("#apex_wait_overlay").remove();',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53840467368297822)
,p_event_id=>wwv_flow_imp.id(53768690585360742)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'inv.vtrrancl.pr_procesar_vtranlinea(P_PARAMETRO_MONEDAS => :P230_PARAMETRO_MONEDAS,',
'                                       P_COD_CORPORACION   => :P230_COD_CORPORACION,',
'                                       P_COD_CLIENTE       => :P230_COD_CLIENTE,',
'                                       P_FEC_FINAL         => :P230_FEC_FINAL,',
'                                       P_FEC_INICIAL       => :P230_FEC_INICIAL,',
'                                       P_COD_ARTICULO_HAS  => :P230_COD_ARTICULO_HAS,',
'                                       P_COD_ARTICULO_DES  => :P230_COD_ARTICULO_DES,',
'                                       P_COD_MARCA         => :P230_COD_MARCA,',
'                                       P_COD_LINEA         => :P230_COD_LINEA,',
'                                       P_COD_CATEGORIA     => :P230_COD_CATEGORIA,',
'                                       P_COD_FAMILIA       => :P230_COD_FAMILIA,',
'                                       P_COD_RUBRO         => :P230_COD_RUBRO,',
'                                       P_COD_ZONA          => :P230_COD_ZONA,',
'                                       P_COD_MONEDA        => :P230_COD_MONEDA,',
'                                       P_COD_VENDEDOR      => :P230_COD_VENDEDOR,',
'                                       P_COD_SUCURSAL      => :P230_COD_SUCURSAL,',
'                                       P_COD_EMPRESA       => :P230_COD_EMPRESA,',
'                                       P_NRO_CLIENTES      => :P230_NRO_CLIENTES,',
'                                       P_TOTAL_GLOBAL      => :P230_T0TAL_VTRANLINEAL);',
'',
' EXCEPTION ',
'    WHEN OTHERS THEN ',
'        RAISE_APPLICATION_ERROR(-20001, SQLERRM);',
'  END;'))
,p_attribute_02=>'P230_PARAMETRO_MONEDAS,P230_COD_CORPORACION,P230_COD_CLIENTE,P230_FEC_FINAL,P230_FEC_INICIAL,P230_COD_ARTICULO_HAS,P230_COD_ARTICULO_DES,P230_COD_MARCA,P230_COD_LINEA,P230_COD_CATEGORIA,P230_COD_FAMILIA,P230_COD_RUBRO,P230_COD_ZONA,P230_COD_MONEDA,P2'
||'30_COD_VENDEDOR,P230_COD_SUCURSAL,P230_COD_EMPRESA,P230_NRO_CLIENTES'
,p_attribute_03=>'P230_T0TAL_VTRANLINEAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53768943657360745)
,p_event_id=>wwv_flow_imp.id(53768690585360742)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53767143295360727)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53840544220297823)
,p_event_id=>wwv_flow_imp.id(53768690585360742)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53767143295360727)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53840670663297824)
,p_event_id=>wwv_flow_imp.id(53768690585360742)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".u-Processing").remove();',
'',
'',
'',
'$(document).ready(function(){',
'$(''.t-Button--hideShow'').trigger(''click'');',
'});'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53764874175360704)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Crea colecciones'
,p_process_sql_clob=>'vtrrancl.pr_crear_colecciones(''TMP_VTRANCL'');'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
