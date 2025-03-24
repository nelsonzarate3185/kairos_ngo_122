prompt --application/pages/page_00240
begin
--   Manifest
--     PAGE: 00240
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
 p_id=>240
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTCANVER - Autorizacion Canal Verde'
,p_alias=>'VTCANVER-AUTORIZACION-CANAL-VERDE'
,p_step_title=>'VTCANVER - Autorizacion Canal Verde'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var gSpinner;'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#dcv{',
'    background-image:url("#APP_FILES#canver.jpg");',
'}',
'#cv{',
'    font-weight: bold;',
'}',
'',
'#var{',
'    /*background-image:url("#APP_FILES#canver.jpg");*/',
'    background-color: rgba(240, 248, 255, 0);',
'}',
'',
'#B_ORDEN_worksheet_region.a-IRR {',
'  /* font-size: 11px;*/',
'    height: auto !important;',
'    padding: 0%;',
'    font-weight: bold;',
'    ',
'  ',
'}',
'',
'',
'#B_ORDEN_worksheet_region .t-fht-thead{',
'    overflow: auto !important;',
'}',
'',
'#DATOS_AUTORIZACION{',
'background-color: rgba(240, 248, 255, 0.229);',
'}',
'.t-Form-label{',
'    font-weight: bold;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250107112450'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52980457428988147)
,p_plug_name=>'Autorizacion Canal Verde'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useRegionTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59089197185406719)
,p_plug_name=>'Datos Canal Verde'
,p_region_name=>'dcv'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52980507093988148)
,p_plug_name=>'Variables'
,p_region_name=>'var'
,p_parent_plug_id=>wwv_flow_imp.id(59089197185406719)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent4:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59089356492406721)
,p_plug_name=>'B_CANAL_VERDE'
,p_region_name=>'cv'
,p_parent_plug_id=>wwv_flow_imp.id(52980507093988148)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C001 ORDEN,',
'       C002 TIPO_ANALISIS,',
'       C003 RESULTADO,',
'       C004 COMENTARIO,',
'       C005 PINTA',
'  FROM APEX_COLLECTIONS A',
' WHERE A.COLLECTION_NAME = ''B_CANAL_VERDE'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'B_CANAL_VERDE'
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
 p_id=>wwv_flow_imp.id(59089430344406722)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>10
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>59089430344406722
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59089579250406723)
,p_db_column_name=>'RESULTADO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Resultado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59089624841406724)
,p_db_column_name=>'TIPO_ANALISIS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tipo Analisis'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59089759035406725)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61167430611524402)
,p_db_column_name=>'ORDEN'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Orden'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61167568570524403)
,p_db_column_name=>'PINTA'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Pinta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(59849253036779591)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'598493'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COMENTARIO:ORDEN:'
,p_break_on=>'ORDEN'
,p_break_enabled_on=>'ORDEN'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(75776873536917716)
,p_report_id=>wwv_flow_imp.id(59849253036779591)
,p_name=>'10'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PINTA'
,p_operator=>'='
,p_expr=>'S'
,p_condition_sql=>' (case when ("PINTA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''S''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#e8e8e8'
,p_row_font_color=>'#f44336'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(75776484570917716)
,p_report_id=>wwv_flow_imp.id(59849253036779591)
,p_name=>'20'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'PINTA'
,p_operator=>'='
,p_expr=>'N'
,p_condition_sql=>' (case when ("PINTA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''N''  '
,p_enabled=>'Y'
,p_highlight_sequence=>20
,p_row_bg_color=>'#e8e8e8'
,p_row_font_color=>'#3baa2c'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59090056323406728)
,p_plug_name=>'B_ORDEN'
,p_region_name=>'B_ORDEN'
,p_parent_plug_id=>wwv_flow_imp.id(52980507093988148)
,p_region_template_options=>'margin-top-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_NUMBER(seq_id) ITEM,',
'       C001 SER_COMPROBANTE,',
'       to_number(C002) NRO_COMPROBANTE,',
'       C003 FEC_COMPROBANTE,',
'       C004 COD_CLIENTE,',
'       C005 DESC_CLIENTE,',
'       C006 TIPO_CLIENTE,',
'       C007 DESC_MONEDA,',
'       C008 VENDEDOR,',
'       to_number(C009) TOT_COMPROBANTE,',
'        (C010) TOTAL,',
'       C011 ESTADO_CLIENTE,',
'       C012 VATRIBUTO,',
'       c013 ULT_SEG,',
'       C014 AUTORIZADO_POR,',
'       C015 FEC_AUTORIZACION,',
'       C016 USR_PR_FMA,',
'       C017 FCH_PR_FMA,',
'       C018 USR_SA_FMA,',
'       C019 FCH_SA_FMA,',
'       C020 OBSERVACION,',
'       C021 RESULTADO,',
'       ''x'' MENU,',
'       ''x'' SELECCIONAR,',
'       CASE WHEN :P240_NRO_ORDEN = C002 THEN ',
'                  ''S''',
'             ELSE ',
'                  ''N''',
'       END  ORD_SEL',
'',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''B_ORDEN''',
' ORDER BY SEQ_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P240_NRO_ORDEN,P240_SER_ORDEN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'B_ORDEN'
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
 p_id=>wwv_flow_imp.id(59090140656406729)
,p_max_row_count=>'1000000'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>450
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>59090140656406729
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59090204935406730)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59090479913406732)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59090582440406733)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59090615768406734)
,p_db_column_name=>'DESC_CLIENTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59090768329406735)
,p_db_column_name=>'TIPO_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Tipo Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59090889072406736)
,p_db_column_name=>'DESC_MONEDA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59090948363406737)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59091575456406743)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Total Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59091689714406744)
,p_db_column_name=>'MENU'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Menu'
,p_column_link=>'javascript:$s(''P240_SEQ_ID'',#ITEM#);javascript:openModal(''MENU'');'
,p_column_linktext=>'<span aria-label="Editar"  width="25" height="25"><span class="fa fa-bars" aria-hidden="true" title="Editar"></span></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59091731451406745)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Seleccionar'
,p_column_link=>'javascript:$s(''P240_SEQ_ID'',#ITEM#);'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'SELEC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61167735968524405)
,p_db_column_name=>'ORD_SEL'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>'Ord Sel'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61168321229524411)
,p_db_column_name=>'ESTADO_CLIENTE'
,p_display_order=>140
,p_column_identifier=>'O'
,p_column_label=>'Estado Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61168448209524412)
,p_db_column_name=>'VATRIBUTO'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>'Vatributo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61168533939524413)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61168856767524416)
,p_db_column_name=>'ULT_SEG'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Ult Seg'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61170676415524434)
,p_db_column_name=>'USR_PR_FMA'
,p_display_order=>180
,p_column_identifier=>'S'
,p_column_label=>'Usr Pr Fma'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61170761381524435)
,p_db_column_name=>'FCH_PR_FMA'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>'Fch Pr Fma'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61170824601524436)
,p_db_column_name=>'USR_SA_FMA'
,p_display_order=>200
,p_column_identifier=>'U'
,p_column_label=>'Usr Sa Fma'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61170961916524437)
,p_db_column_name=>'FCH_SA_FMA'
,p_display_order=>210
,p_column_identifier=>'V'
,p_column_label=>'Fch Sa Fma'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61171083202524438)
,p_db_column_name=>'AUTORIZADO_POR'
,p_display_order=>220
,p_column_identifier=>'W'
,p_column_label=>'Autorizado Por'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61171174998524439)
,p_db_column_name=>'FEC_AUTORIZACION'
,p_display_order=>230
,p_column_identifier=>'X'
,p_column_label=>'Fec Autorizacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61171402063524442)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>240
,p_column_identifier=>'Y'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61171548890524443)
,p_db_column_name=>'RESULTADO'
,p_display_order=>250
,p_column_identifier=>'Z'
,p_column_label=>'Resultado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(62295776954554611)
,p_db_column_name=>'ITEM'
,p_display_order=>260
,p_column_identifier=>'AA'
,p_column_label=>'Item'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ITEM'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258027319136182538)
,p_db_column_name=>'TOTAL'
,p_display_order=>270
,p_column_identifier=>'AB'
,p_column_label=>'Total'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(60176918051752531)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'601770'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'MENU:ITEM:SER_COMPROBANTE:NRO_COMPROBANTE:FEC_COMPROBANTE:COD_CLIENTE:DESC_CLIENTE:TIPO_CLIENTE:DESC_MONEDA:VENDEDOR:TOT_COMPROBANTE:SELECCIONAR'
,p_sort_column_1=>'0'
,p_sort_direction_1=>'ASC'
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
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(63204892398510591)
,p_report_id=>wwv_flow_imp.id(60176918051752531)
,p_name=>'Confirmado'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'RESULTADO'
,p_operator=>'='
,p_expr=>'1'
,p_condition_sql=>' (case when ("RESULTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''1''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#1aa202'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(63205269454510591)
,p_report_id=>wwv_flow_imp.id(60176918051752531)
,p_name=>'Bloqueado'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'VATRIBUTO'
,p_operator=>'='
,p_expr=>'BLOQUEADO'
,p_condition_sql=>' (case when ("VATRIBUTO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''BLOQUEADO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_font_color=>'#ed2819'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(63205668460510591)
,p_report_id=>wwv_flow_imp.id(60176918051752531)
,p_name=>'eCommerce'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'VATRIBUTO'
,p_operator=>'='
,p_expr=>'ECOMMERCE'
,p_condition_sql=>' (case when ("VATRIBUTO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''ECOMMERCE''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#dacc04'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(63206072657510592)
,p_report_id=>wwv_flow_imp.id(60176918051752531)
,p_name=>'Feria'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'VATRIBUTO'
,p_operator=>'='
,p_expr=>'FERIA'
,p_condition_sql=>' (case when ("VATRIBUTO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''FERIA''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#f96916'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(63206438196510592)
,p_report_id=>wwv_flow_imp.id(60176918051752531)
,p_name=>'Ofertas'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'VATRIBUTO'
,p_operator=>'='
,p_expr=>'OFERTAS'
,p_condition_sql=>' (case when ("VATRIBUTO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''OFERTAS''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#eabd67'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(63206851912510592)
,p_report_id=>wwv_flow_imp.id(60176918051752531)
,p_name=>'Repuestos'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'VATRIBUTO'
,p_operator=>'='
,p_expr=>'REPUESTOS'
,p_condition_sql=>' (case when ("VATRIBUTO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''REPUESTOS''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#000000'
,p_row_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(63204458030510590)
,p_report_id=>wwv_flow_imp.id(60176918051752531)
,p_name=>'Seleccionado'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ORD_SEL'
,p_operator=>'='
,p_expr=>'S'
,p_condition_sql=>' (case when ("ORD_SEL" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''S''  '
,p_enabled=>'Y'
,p_highlight_sequence=>50
,p_row_bg_color=>'#cce5ff'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61168729219524415)
,p_plug_name=>'Ultimo Seguimiento'
,p_parent_plug_id=>wwv_flow_imp.id(59090056323406728)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61169582834524423)
,p_plug_name=>'Datos Autorizacion'
,p_region_name=>'DATOS_AUTORIZACION'
,p_parent_plug_id=>wwv_flow_imp.id(59090056323406728)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(62296230547554616)
,p_name=>'TOTAL_B_ORDEN'
,p_parent_plug_id=>wwv_flow_imp.id(52980507093988148)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody'
,p_component_template_options=>'t-BadgeList--xlarge:t-BadgeList--dash:t-BadgeList--flex:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'      DISTINCT C010 TOTAL',
'',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''B_ORDEN''',
''))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40137194923263664)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(62296353917554617)
,p_query_column_id=>1
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>10
,p_column_heading=>'Total'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(62296934302554623)
,p_plug_name=>unistr('Men\00FA')
,p_region_name=>'MENU'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(71120243445147505)
,p_plug_name=>'Seguimiento'
,p_region_name=>'SEG'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(71121599318147518)
,p_plug_name=>'Seguimiento'
,p_region_name=>'DERIV'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(71122885840147531)
,p_plug_name=>'Confirmar Pago'
,p_region_name=>'CF'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72500854873711008)
,p_plug_name=>'Comentarios'
,p_region_name=>'COMENTARIOS'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72500904110711009)
,p_plug_name=>'Comentarios_Rep'
,p_parent_plug_id=>wwv_flow_imp.id(72500854873711008)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C001 FECHA,',
'       C002 HORA,',
'       C003 USUARIO,',
'       C004 PEDIDO,',
'       C005 COMENTARIO ',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''B_OBSERVACIONES'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Comentarios_Rep'
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
 p_id=>wwv_flow_imp.id(72501069712711010)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>unistr('El cliente no posee comentarios en los \00FAltimos 60 d\00EDas')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>72501069712711010
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72501106535711011)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72501662403711016)
,p_db_column_name=>'FECHA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72501735660711017)
,p_db_column_name=>'HORA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Hora'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72501891312711018)
,p_db_column_name=>'USUARIO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72501953227711019)
,p_db_column_name=>'PEDIDO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Pedido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(72750354338104033)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'727504'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COMENTARIO:FECHA:HORA:PEDIDO:USUARIO:'
,p_break_on=>'FECHA:HORA:USUARIO:PEDIDO'
,p_break_enabled_on=>'FECHA:HORA:USUARIO:PEDIDO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72504905199711049)
,p_plug_name=>'Mensaje'
,p_region_name=>'MSG'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72505055188711050)
,p_plug_name=>unistr('Esta funci\00F3n a\00FAn no se encuentra disponible')
,p_parent_plug_id=>wwv_flow_imp.id(72504905199711049)
,p_icon_css_classes=>'fa-404 fa-anim-horizontal-shake'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_plug_template=>wwv_flow_imp.id(40093179053263652)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62297133219554625)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(62296934302554623)
,p_button_name=>'REPORTE_CTA_CTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reporte Cta. Corriente'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62297299169554626)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(62296934302554623)
,p_button_name=>'REPORT_HCLI'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reporte Historial del Cliente'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62297318060554627)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(62296934302554623)
,p_button_name=>'VER_DATOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ver Datos'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62297026134554624)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(62296934302554623)
,p_button_name=>'ACV'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Analizar Canal Verde'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62297419676554628)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(62296934302554623)
,p_button_name=>'VER_PEDIDO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ver Pedido'
,p_button_redirect_url=>'f?p=&APP_ID.:234:&SESSION.::&DEBUG.:234:P234_NRO_COMPROBANTE,P234_SER_COMPROBANTE,P234_OPERACION:&P240_NRO_ORDEN.,&P240_SER_ORDEN.,'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61170493928524432)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(61169582834524423)
,p_button_name=>'FIRMA_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Firma 1'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62297668805554630)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(62296934302554623)
,p_button_name=>'VER_DATOS_PERS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ver Datos Persona'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61170266356524430)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(61169582834524423)
,p_button_name=>'FIRMA_2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Firma 2'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59089225658406720)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(52980507093988148)
,p_button_name=>'RESTAURAR'
,p_button_static_id=>'reset'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Valores Por Defecto'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62297862505554632)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(62296934302554623)
,p_button_name=>'APRM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Autorizados para Recibir Mercaderias'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62297982354554633)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(62296934302554623)
,p_button_name=>'OBSERVACIONES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Observaciones'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62298040837554634)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(62296934302554623)
,p_button_name=>'ANULAR_PEDIDO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Anular Pedido'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62298105684554635)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(62296934302554623)
,p_button_name=>'AGREGAR_SEG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Seguimiento'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62298200596554636)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(62296934302554623)
,p_button_name=>'DERIVAR_PEDIDO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Derivar Pedido'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59089064874406718)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(52980507093988148)
,p_button_name=>'REFRESCAR'
,p_button_static_id=>'refresh'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refrescar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62298371611554637)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(62296934302554623)
,p_button_name=>'CONFIRMAR_PAGO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar Pago'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62298467081554638)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_imp.id(62296934302554623)
,p_button_name=>'VER_COMENTARIOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ver Comentarios Clientes'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62298573514554639)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_imp.id(62296934302554623)
,p_button_name=>'IMPRIMIR_PEDIDO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir Pedido'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62298680243554640)
,p_button_sequence=>220
,p_button_plug_id=>wwv_flow_imp.id(62296934302554623)
,p_button_name=>'DESAUTORIZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Desautorizar'
,p_warn_on_unsaved_changes=>null
,p_confirm_message=>'Estas seguro(a) de que deseas Desautorizar el pedido?'
,p_confirm_style=>'information'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62298751817554641)
,p_button_sequence=>230
,p_button_plug_id=>wwv_flow_imp.id(62296934302554623)
,p_button_name=>'AUTORIZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Autorizar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71122490652147527)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(71121599318147518)
,p_button_name=>'DERIVAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Derivar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71120989495147512)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(71120243445147505)
,p_button_name=>'CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71122311213147526)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(71121599318147518)
,p_button_name=>'CANCELAR_DER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71124386587147546)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(71122885840147531)
,p_button_name=>'CANCELAR_CF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar '
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71120884074147511)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(71120243445147505)
,p_button_name=>'ACEPTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71124203764147545)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(71122885840147531)
,p_button_name=>'CONFIRMAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52980613324988149)
,p_name=>'P240_DERIVADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(52980507093988148)
,p_prompt=>'Derivado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:FACTURACION;F,COBRANZAS;CO,CREDITOS;CR,DIRECTORIO;DI,RRHH;RH,CANJE;CA,MARKETING;MA,ANULACION;AN,AUTORIZADO A FACTURA;AF,VENTAS;VE,AUTORIZACION DE CREDITOS;AC,SUPERVISION DE VALORES;SV,CANJE PUBLICIDAD;CP,ARREGLOS ADMINISTRATIVOS;AA,TESORERIA;'
||'TE,DISTRIBUCION;RP,GENTE CPH;GC,PENDIENTE DE RIESGOS;PR,GERENCIA DE VENTAS;GV'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52980705521988150)
,p_name=>'P240_COD_CLIENTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(52980507093988148)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.COD_CLIENTE||''-''||P.NOMBRE D,',
'       C.COD_CLIENTE R',
'  FROM CC_CLIENTES C,',
'       PERSONAS P',
' WHERE C.COD_EMPRESA = :P_COD_EMPRESA',
'   AND C.COD_PERSONA = P.COD_PERSONA',
'   ',
'   ORDER BY TO_NUMBER(C.COD_CLIENTE)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59087330356406701)
,p_name=>'P240_VENDEDOR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(52980507093988148)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.COD_VENDEDOR CODIGO,',
'       FV.DESCRIPCION || ''('' || C.COD_VENDEDOR || '')'' NOMBRE',
'  FROM VT_PEDIDOS_CABECERA C, FV_VENDEDORES FV',
' WHERE C.COD_EMPRESA = :P_COD_EMPRESA',
'   AND (TIP_COMPROBANTE = ''PED'')',
'      ',
'   AND (COD_FLETE =:P240_FLETE OR :P240_FLETE IS NULL)',
'      ',
'   AND EXISTS',
' (SELECT B.COD_USUARIO',
'          FROM CM_APRUEBA_DEPTO B',
'         WHERE B.COD_USUARIO = :APP_USER',
'           AND B.COD_EMPRESA = :P_COD_EMPRESA',
'           AND NVL(B.APRUEBA_OC, ''N'') = ''S'')',
'      ',
'   AND FEC_COMPROBANTE >= TRUNC(SYSDATE - 30)',
'   AND C.COD_EMPRESA = FV.COD_EMPRESA',
'   AND C.COD_VENDEDOR = FV.COD_VENDEDOR',
'      ',
'   AND NVL(C.ESTADO, ''N'') NOT IN (''A'', ''F'', ''C'')',
'   AND DERIVADO IS NOT NULL',
'   AND (DERIVADO = :P240_DERIVADO OR :P240_DERIVADO IS NULL)',
'   AND (AUTORIZADO = :P240_ESTADO_PEDIDO OR',
'       :P240_ESTADO_PEDIDO IS NULL)',
' GROUP BY C.COD_VENDEDOR, FV.DESCRIPCION',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA,P240_FLETE,P240_DERIVADO,P240_ESTADO_PEDIDO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(59087401609406702)
,p_name=>'P240_AUTORIZADO_USUARIO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(52980507093988148)
,p_prompt=>'Autorizado por :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT A.AUTORIZADO_POR,',
'                A.AUTORIZADO_POR R ',
'  from VT_PEDIDOS_CABECERA A',
'WHERE A.COD_EMPRESA=:P_COD_EMPRESA',
'AND A.FEC_COMPROBANTE>SYSDATE-360',
'order by 1',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_imp.id(59087523617406703)
,p_name=>'P240_TIPO_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(52980507093988148)
,p_prompt=>'Tipo Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_TIP_CLIENTE||''-''||A.DESCRIPCION NOMBRE, ',
'         COD_TIP_CLIENTE CODIGO ',
'  FROM CC_TIPO_CLIENTE A',
' WHERE A.COD_TIP_CLIENTE',
'   NOT IN (''6'')',
'  ORDER BY TO_NUMBER(COD_TIP_CLIENTE)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_imp.id(59087603717406704)
,p_name=>'P240_FECHA_DESDE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(52980507093988148)
,p_prompt=>'Periodo Desde'
,p_placeholder=>'Fecha Desde'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59087740130406705)
,p_name=>'P240_FECHA_HASTA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(52980507093988148)
,p_prompt=>'Hasta'
,p_placeholder=>'Fecha Hasta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59088243653406710)
,p_name=>'P240_FLETE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(52980507093988148)
,p_prompt=>'Flete'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  R.DESCRIPCION NOMBRE,',
'        R.COD_FLETE CODIGO ',
'  FROM VT_FLETES R',
' WHERE R.COD_EMPRESA = :P_COD_EMPRESA',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59088320141406711)
,p_name=>'P240_IND_TRANSPORTADORA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(52980507093988148)
,p_item_default=>'N'
,p_prompt=>'Ver Ventas eCommerce'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Si;S,No;N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59088695795406714)
,p_name=>'P240_IND_TIPO_PEDIDO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(52980507093988148)
,p_prompt=>'Tipo Pedido'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:PEDIDOS;P,REPUESTOS;R,TODOS;T'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59088735492406715)
,p_name=>'P240_NRO_PEDIDO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(52980507093988148)
,p_prompt=>'Pedido'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59088861152406716)
,p_name=>'P240_VER_OFERTAS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(52980507093988148)
,p_prompt=>'Ver Ofertas'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'105'
,p_attribute_03=>'T'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59088909515406717)
,p_name=>'P240_ESTADO_PEDIDO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(52980507093988148)
,p_item_default=>'select ''P'' from dual'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Estado Pedido'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:AUTORIZADO;S,RECHAZADO;N,PENDIENTES;P,DERIVADOS;D,FACTURADOS;F'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59091874557406746)
,p_name=>'P240_NRO_ORDEN'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(52980507093988148)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59091929424406747)
,p_name=>'P240_SER_ORDEN'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(52980507093988148)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61168664922524414)
,p_name=>'P240_ULT_SEGUIMIENTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61168729219524415)
,p_prompt=>'Ultimo Seguimiento'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61169606531524424)
,p_name=>'P240_AUTORIZADO_POR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(61169582834524423)
,p_prompt=>'Autorizacion'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-md'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61169795112524425)
,p_name=>'P240_FEC_AUTORIZACION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(61169582834524423)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-md'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61169887215524426)
,p_name=>'P240_USR_PR_FMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(61169582834524423)
,p_prompt=>'Primera Firma'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61169993396524427)
,p_name=>'P240_FCH_PR_FMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(61169582834524423)
,p_format_mask=>'DD-MM-YYYY HH24:MI'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61170017599524428)
,p_name=>'P240_USR_SA_FMA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(61169582834524423)
,p_prompt=>'Segunda Firma'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61170196983524429)
,p_name=>'P240_FCH_SA_FMA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(61169582834524423)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61171345962524441)
,p_name=>'P240_OBSERVACION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(61169582834524423)
,p_prompt=>'Observacion'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cHeight=>1
,p_tag_attributes=>'readonly'
,p_colspan=>9
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-md'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61171870470524446)
,p_name=>'P240_TIP_ORDEN'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(52980507093988148)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61171927416524447)
,p_name=>'P240_PR_FMA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(52980507093988148)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61172079906524448)
,p_name=>'P240_SA_FMA'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(52980507093988148)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66711309265943637)
,p_name=>'P240_PARAMETROS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(59090056323406728)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66711778579943641)
,p_name=>'P240_URL_REPORTS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(59090056323406728)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69758242815374301)
,p_name=>'P240_SEQ_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(59090056323406728)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71120342050147506)
,p_name=>'P240_DESCRIPCION_DATOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(71120243445147505)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71120464153147507)
,p_name=>'P240_SEGUIMIENTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(71120243445147505)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Seguimiento'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71121645922147519)
,p_name=>'P240_PED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(71121599318147518)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71121781585147520)
,p_name=>'P240_DERIVAR_A'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(71121599318147518)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Derivado a :'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:FACTURACION;F,COBRANZAS;CO,CREDITOS;CR,DIRECTORIO;DI,RRHH;RH,CANJE;CA,MARKETING;MA,ANULACION;AN,AUTORIZADO A FACTURA;AF,VENTAS;VE,AUTORIZACION CREDITOS;AC,SUPERVISION DE VALORES;SV,CANJE PUBLICIDAD;CP,ARREGLOS ADMINISTRATIVOS;AA,TESORERIA;TE,'
||'DISTRIBUCION;RP,GENTE CPH;GC,PENDIENTE DE RIESGOS;PR,AUDITORIA;AU'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>5
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71122230370147525)
,p_name=>'P240_DERIVAR_COMENTARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(71121599318147518)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Derivar Comentario'
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
 p_id=>wwv_flow_imp.id(71122929772147532)
,p_name=>'P240_FORMA_PAGO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(71122885840147531)
,p_prompt=>'Forma Pago'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:EFECTIVO;EFECTIVO,CHEQUE AL DIA;CHEQUE AL DIA,VALORES A DEPOSITAR;VALORES A DEPOSITAR,CHEQUE DE TERCERO;CHEQUE DE TERCERO,CANJE PARA NOTA DE CREDITO;CANJE PARA NOTA DE CREDITO,TRANSFERENCIA;TRANSFERENCIA,TARJETA DE CREDITO;TARJETA DE CREDITO,'
||'TARJETA DE DEBITO;TARJETA DE DEBITO,DESCUENTO DE DOCUMENTO;DESCUENTO DE DOCUMENTO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
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
 p_id=>wwv_flow_imp.id(71123135323147534)
,p_name=>'P240_BANCO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(71122885840147531)
,p_prompt=>'Banco'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_PER_JURIDICA||''-''|| NOM_COMERCIAL D, COD_PER_JURIDICA R',
'  FROM PERSONAS_JURIDICAS',
' WHERE COD_SECTOR = ''6''',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>7
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_imp.id(71123219941147535)
,p_name=>'P240_NRO_BOLETA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(71122885840147531)
,p_prompt=>unistr('N\00FAmero Valor')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71123358754147536)
,p_name=>'P240_FECHA_DEPOSITO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(71122885840147531)
,p_prompt=>'Fecha Deposito'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71123831106147541)
,p_name=>'P240_PED2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(71122885840147531)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71123935512147542)
,p_name=>'P240_IMPORTE_DEPOSITO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(71122885840147531)
,p_prompt=>'Monto Documento'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>7
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71124021219147543)
,p_name=>'P240_CONFIRMADO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(71122885840147531)
,p_prompt=>'Confirmado'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'S'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71124137239147544)
,p_name=>'P240_CF_SEGUIMIENTO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(71122885840147531)
,p_prompt=>'Seguimiento'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72504345496711043)
,p_name=>'P240_BORDEN_DERIVADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(59090056323406728)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59087837323406706)
,p_name=>'Cambiar_Fecha_Desde'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P240_FECHA_DESDE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59087918830406707)
,p_event_id=>wwv_flow_imp.id(59087837323406706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P240_FECHA_DESDE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'if :P240_FECHA_DESDE is not null then',
' return FUNCDB_TRAER_FECHA(:P240_FECHA_DESDE);',
'end if;',
'end;'))
,p_attribute_07=>'P240_FECHA_DESDE'
,p_attribute_08=>'N'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59088046414406708)
,p_name=>'Cambiar_Fecha_Hasta'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P240_FECHA_HASTA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59088197815406709)
,p_event_id=>wwv_flow_imp.id(59088046414406708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P240_FECHA_HASTA'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'if :P240_FECHA_HASTA is not null then',
' return FUNCDB_TRAER_FECHA(:P240_FECHA_HASTA);',
'end if;',
'end;'))
,p_attribute_07=>'P240_FECHA_HASTA'
,p_attribute_08=>'N'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59092222199406750)
,p_name=>'Cambiar_Nro_Orden'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P240_NRO_ORDEN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61167360991524401)
,p_event_id=>wwv_flow_imp.id(59092222199406750)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' /*IF :P240_SER_ORDEN IS NULL AND :APP_USER = ''ETRINIDAD'' THEN ',
'    RAISE_APPLICATION_ERROR(-20001,''NULO :''||:P240_SER_ORDEN);',
'END IF;*/',
'VTCANVER.PROCBD_CARGA_ANALISIS(:P240_SER_ORDEN,',
'                               :P240_NRO_ORDEN);',
'',
'',
'---------------------------------carga ultimo seguimiento--------------------------------------- ',
'               declare',
'                 cursor ccab is ',
'                 SELECT FECHA, HORA, P.COMENTARIO, COD_USUARIO',
'                   FROM VT_SEGUIMIENTO_PEDIDOS P',
'                  WHERE P.COD_EMPRESA = :P_COD_EMPRESA',
'                   ',
'                    AND P.SER_COMPROBANTE = :P240_SER_ORDEN',
'                    AND P.NRO_COMPROBANTE = :P240_NRO_ORDEN',
'                    AND P.FECHA IN',
'                        (SELECT MAX(C1.FECHA)',
'                           FROM VT_SEGUIMIENTO_PEDIDOS C1',
'                          WHERE C1.COD_EMPRESA = :P_COD_EMPRESA',
'                           ',
'                            AND C1.SER_COMPROBANTE =',
'                                :P240_SER_ORDEN',
'                            AND C1.NRO_COMPROBANTE =',
'                                :P240_NRO_ORDEN)',
'                  ORDER BY 1 DESC;',
'                ',
'                BEGIN',
'                    ',
'',
'                   ',
'                    ',
'                    ',
'',
'                    :P240_ULT_SEGUIMIENTO := '' '';',
'                    for x in ccab loop	',
'                       :P240_ULT_SEGUIMIENTO := TO_CHAR(x.fecha,''DD/MM/YYYY'')||'' ''||x.hora ||'' ''||'' USUARIO:''||x.COD_USUARIO',
'                       ||'' ''||CHR(10)',
'                       ||''COMENTARIO: '' ||X.COMENTARIO',
'                                            ;',
'                  		 ',
'                  		 	 ',
'                  		 ',
'                    end loop;	',
'                   ',
'                    end;	'))
,p_attribute_02=>'P240_SER_ORDEN,P240_NRO_ORDEN'
,p_attribute_03=>'P240_ULT_SEGUIMIENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(62296033795554614)
,p_event_id=>wwv_flow_imp.id(59092222199406750)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59090056323406728)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61167608335524404)
,p_event_id=>wwv_flow_imp.id(59092222199406750)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59089356492406721)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(347917789114606701)
,p_event_id=>wwv_flow_imp.id(59092222199406750)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P240_NRO_ORDEN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61171633784524444)
,p_name=>'Clic_Firma1'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(61170493928524432)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61171752016524445)
,p_event_id=>wwv_flow_imp.id(61171633784524444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'VTCANVER.PROCBD_PROCESAR_FIRMAS(:P_COD_EMPRESA        ,',
'                                :P240_BORDEN_DERIVADO        ,',
'                                :APP_USER             ,',
'                                :P240_TIP_ORDEN ,',
'                                :P240_SER_ORDEN ,',
'                                :P240_NRO_ORDEN,',
'                                :P240_PR_FMA,',
'                                1);'))
,p_attribute_02=>'P240_BORDEN_DERIVADO,P240_TIP_ORDEN,P240_SER_ORDEN,P240_NRO_ORDEN,P240_PR_FMA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72504121764711041)
,p_event_id=>wwv_flow_imp.id(61171633784524444)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61172169141524449)
,p_name=>'Clic_Firma2'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(61170266356524430)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(62294718761554601)
,p_event_id=>wwv_flow_imp.id(61172169141524449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'VTCANVER.PROCBD_PROCESAR_FIRMAS(:P_COD_EMPRESA        ,',
'                                :P240_BORDEN_DERIVADO,',
'                                :APP_USER             ,',
'                                :P240_TIP_ORDEN ,',
'                                :P240_SER_ORDEN ,',
'                                :P240_NRO_ORDEN,',
'                                :P240_SA_FMA,',
'                                2);'))
,p_attribute_02=>'P240_BORDEN_DERIVADO,P240_TIP_ORDEN,P240_SER_ORDEN,P240_NRO_ORDEN,P240_SA_FMA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72504219918711042)
,p_event_id=>wwv_flow_imp.id(61172169141524449)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66711082000943634)
,p_name=>'Clic_Reporte_Cta_Cte'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(62297133219554625)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66711410815943638)
,p_event_id=>wwv_flow_imp.id(66711082000943634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*declare',
'v_cod_cliente number;',
'',
'',
'  ',
' BEGIN*/',
'SELECT V.COD_CLIENTE||'',''||TO_DATE(''01/01/0001'')||'',''||TO_DATE(''31/12/2099'') ',
'  INTO :P240_PARAMETROS',
'  FROM VT_PEDIDOS_CABECERA V',
' WHERE V.SER_COMPROBANTE = :P240_SER_ORDEN',
'   AND V.NRO_COMPROBANTE = :P240_NRO_ORDEN;',
'',
'/*if V_COD_CLIENTE is not null then ',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''PARAMETERS'');',
'',
'',
'',
'APEX_COLLECTION.ADD_MEMBER(p_collection_name=>''PARAMETERS'',',
'                             ',
'                                p_c001           =>''P_COD_CLIENTE'',',
'                                p_c002           =>v_cod_cliente,',
'                                p_c003 => TO_DATE(''01/01/0001''),',
'                                p_c004 => TO_DATE(''31/12/2099''),',
'                                p_c005 => null,',
'                                p_c006 => ''S'',',
'                                p_c007 => TO_DATE(''01/01/0001''),',
'                                p_c008 => TO_DATE(''31/12/2099'')',
'                               );',
'COMMIT;',
'',
'end if;',
'END;*/'))
,p_attribute_02=>'P240_SER_ORDEN,P240_NRO_ORDEN'
,p_attribute_03=>'P240_PARAMETROS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66711180949943635)
,p_event_id=>wwv_flow_imp.id(66711082000943634)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var param = apex.item(''P240_PARAMETROS'').getValue();',
'',
'',
'apex.server.process("GENERA_URL", {',
'x01: param,',
'x02: 86, ',
'  }, {',
'  success: function(pData) {',
'   if (pData.success === true) {',
'',
'       window.open(pData.url,"Pagina Child","width=1800,height=800,scrollbars=NO") ;',
'     ',
'   } else {',
'     console.log("FALSE");',
'   }',
' },',
'error: function(request, status, error) {',
'console.log("status---" + status + " error----" + error);',
'  }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66711986846943643)
,p_name=>'Clic_Ver_Datos'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(62297318060554627)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66712006157943644)
,p_event_id=>wwv_flow_imp.id(66711986846943643)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT :P_COD_EMPRESA||'',''||V.COD_CLIENTE',
'  INTO :P240_PARAMETROS',
'  FROM VT_PEDIDOS_CABECERA V',
' WHERE V.SER_COMPROBANTE = :P240_SER_ORDEN',
'   AND V.NRO_COMPROBANTE = :P240_NRO_ORDEN;'))
,p_attribute_02=>'P240_SER_ORDEN,P240_NRO_ORDEN'
,p_attribute_03=>'P240_PARAMETROS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66712145122943645)
,p_event_id=>wwv_flow_imp.id(66711986846943643)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var param = apex.item(''P240_PARAMETROS'').getValue();',
'',
'',
'apex.server.process("GENERA_URL", {',
'x01: param,',
'x02: 162, ',
'  }, {',
'  success: function(pData) {',
'   if (pData.success === true) {',
'',
'       window.open(pData.url,"Pagina Child","width=1800,height=800,scrollbars=NO") ;',
'     ',
'   } else {',
'     console.log("FALSE");',
'   }',
' },',
'error: function(request, status, error) {',
'console.log("status---" + status + " error----" + error);',
'  }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66711506017943639)
,p_name=>'Clic_Report_Hcli'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(62297299169554626)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66711600251943640)
,p_event_id=>wwv_flow_imp.id(66711506017943639)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(32767):= ''https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2FCCRHISTC&standAlone=true&j_username=jasperadmin&j_password=jasperadmin&output=pdf&'';',
'v_cliente varchar2(6);',
'begin',
'',
'SELECT V.COD_CLIENTE',
'  INTO v_cliente',
'  FROM VT_PEDIDOS_CABECERA V',
' WHERE V.SER_COMPROBANTE = :P240_SER_ORDEN',
'   AND V.NRO_COMPROBANTE = :P240_NRO_ORDEN;',
'',
'',
':P240_URL_REPORTS := v_url||''P_REFINANCIACION=N&P_TIP_CLIENTE=~NULL~&P_CHEQUE=N&P_COD_CORPORACION=~NULL~&''||',
'                ''P_COD_CUSTODIO=~NULL~&P_NRO_COMPROBANTE=~NULL~&P_COD_PERSONA=~NULL~&P_VER_OBS=N&''||',
'                ''P_VER_CONTADO=~NULL~&P_MES=~NULL~&P_ANIO_C1=''||TO_CHAR(ADD_MONTHS(SYSDATE,-12),''YYYY'')||''&P_VER_PAGOS=S&P_ANIO_C2=''||TO_CHAR(SYSDATE,''YYYY'')||''&''||',
'                ''P_ATRASO_B=~NULL~&P_SECTOR=~NULL~&P_OBSERVACIONES=~NULL~&P_COD_MONEDA_CUOTA=~NULL~&''||',
'                ''P_MOROSIDAD=N&P_COD_EMPRESA=''||:P_COD_EMPRESA||''&P_COD_CLIENTE=''||v_cliente||',
'                ''&P_ANIO_2=~NULL~&P_VER_SCORING=N&P_ATRASO_A=N&P_COD_SECTOR=~NULL~&P_USER=''||:APP_USER||''&P_ANIO=~NULL~'';',
'end;'))
,p_attribute_02=>'P240_SER_ORDEN,P240_NRO_ORDEN'
,p_attribute_03=>'P240_URL_REPORTS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66711808775943642)
,p_event_id=>wwv_flow_imp.id(66711506017943639)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var vURL = apex.item(''P240_URL_REPORTS'').getValue();',
'window.open(vURL,"Pagina Child","width=1800,height=800,scrollbars=NO") ;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66712273937943646)
,p_name=>'Clic_ACV'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(62297026134554624)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66712434399943648)
,p_event_id=>wwv_flow_imp.id(66712273937943646)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'VTCANVER.PROCBD_ANALIZA_CANAL_VERDE(:P240_SEQ_ID);'
,p_attribute_02=>'P240_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69758337700374302)
,p_event_id=>wwv_flow_imp.id(66712273937943646)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'closeModal();',
'//gSpinner = apex.widget.waitPopup();',
'var spinner = apex.util.showSpinner(); ',
'var button = parent.$(''.ui-dialog-titlebar-close''); //get the button'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66712578535943649)
,p_event_id=>wwv_flow_imp.id(66712273937943646)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59090056323406728)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66712604243943650)
,p_event_id=>wwv_flow_imp.id(66712273937943646)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59089356492406721)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(226772507580544206)
,p_event_id=>wwv_flow_imp.id(66712273937943646)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#apex_wait_overlay").remove(); $(".u-Processing").remove(); '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69758544860374304)
,p_name=>'After Resfresh B_Orden'
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(59090056323406728)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69758436109374303)
,p_event_id=>wwv_flow_imp.id(69758544860374304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'gSpinner.remove();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69758793622374306)
,p_name=>'Clic_Ver_Datos_Pers'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(62297668805554630)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69758978603374308)
,p_event_id=>wwv_flow_imp.id(69758793622374306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.COD_PERSONA',
'  INTO :P240_PARAMETROS',
'  FROM VT_PEDIDOS_CABECERA V,',
'       CC_CLIENTES C ',
' WHERE C.COD_EMPRESA = V.COD_EMPRESA',
'   AND C.COD_CLIENTE = V.COD_CLIENTE',
'   AND V.SER_COMPROBANTE = :P240_SER_ORDEN',
'   AND V.NRO_COMPROBANTE = :P240_NRO_ORDEN;'))
,p_attribute_02=>'P240_SER_ORDEN,P240_NRO_ORDEN'
,p_attribute_03=>'P240_PARAMETROS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69759072852374309)
,p_event_id=>wwv_flow_imp.id(69758793622374306)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var param = apex.item(''P240_PARAMETROS'').getValue();',
'',
'',
'apex.server.process("GENERA_URL", {',
'x01: param,',
'x02: 102, ',
'  }, {',
'  success: function(pData) {',
'   if (pData.success === true) {',
'       //alert(pData.url);',
'       window.open(pData.url,"Pagina Child","width=1800,height=800,scrollbars=NO") ;',
'     ',
'   } else {',
'     console.log("FALSE");',
'   }',
' },',
'error: function(request, status, error) {',
'console.log("status---" + status + " error----" + error);',
'  }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69760568895374324)
,p_name=>'Clic_APRM'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(62297862505554632)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69760792509374326)
,p_event_id=>wwv_flow_imp.id(69760568895374324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.COD_PERSONA',
'  INTO :P240_PARAMETROS',
'  FROM VT_PEDIDOS_CABECERA V,',
'       CC_CLIENTES C ',
' WHERE C.COD_EMPRESA = V.COD_EMPRESA',
'   AND C.COD_CLIENTE = V.COD_CLIENTE',
'   AND V.SER_COMPROBANTE = :P240_SER_ORDEN',
'   AND V.NRO_COMPROBANTE = :P240_NRO_ORDEN;'))
,p_attribute_02=>'P240_SER_ORDEN,P240_NRO_ORDEN'
,p_attribute_03=>'P240_PARAMETROS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69760832279374327)
,p_event_id=>wwv_flow_imp.id(69760568895374324)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var param = apex.item(''P240_PARAMETROS'').getValue();',
'',
'',
'apex.server.process("GENERA_URL", {',
'x01: param,',
'x02: 129, ',
'  }, {',
'  success: function(pData) {',
'   if (pData.success === true) {',
'       //alert(pData.url);',
'       window.open(pData.url,"Pagina Child","width=1800,height=800,scrollbars=NO") ;',
'     ',
'   } else {',
'     console.log("FALSE");',
'   }',
' },',
'error: function(request, status, error) {',
'console.log("status---" + status + " error----" + error);',
'  }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69760997509374328)
,p_name=>'Clic_Observaciones'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(62297982354554633)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69761198795374330)
,p_event_id=>wwv_flow_imp.id(69760997509374328)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.COD_PERSONA',
'  INTO :P240_PARAMETROS',
'  FROM VT_PEDIDOS_CABECERA V,',
'       CC_CLIENTES C ',
' WHERE C.COD_EMPRESA = V.COD_EMPRESA',
'   AND C.COD_CLIENTE = V.COD_CLIENTE',
'   AND V.SER_COMPROBANTE = :P240_SER_ORDEN',
'   AND V.NRO_COMPROBANTE = :P240_NRO_ORDEN;'))
,p_attribute_02=>'P240_SER_ORDEN,P240_NRO_ORDEN'
,p_attribute_03=>'P240_PARAMETROS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69761239246374331)
,p_event_id=>wwv_flow_imp.id(69760997509374328)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var param = apex.item(''P240_PARAMETROS'').getValue();',
'',
'',
'apex.server.process("GENERA_URL", {',
'x01: param,',
'x02: 236, ',
'  }, {',
'  success: function(pData) {',
'   if (pData.success === true) {',
'       //alert(pData.url);',
'       window.open(pData.url,"Pagina Child","width=1800,height=800,scrollbars=NO") ;',
'     ',
'   } else {',
'     console.log("FALSE");',
'   }',
' },',
'error: function(request, status, error) {',
'console.log("status---" + status + " error----" + error);',
'  }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70626231631711619)
,p_name=>'Clic_Anular_Pedido'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(62298040837554634)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70626302051711620)
,p_event_id=>wwv_flow_imp.id(70626231631711619)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var param = apex.item(''P240_SER_ORDEN'').getValue()+","+apex.item(''P240_NRO_ORDEN'').getValue();',
'',
'',
'apex.server.process("GENERA_URL", {',
'x01: param,',
'x02: 285, ',
'  }, {',
'  success: function(pData) {',
'   if (pData.success === true) {',
'       //alert(pData.url);',
'       apex.navigation.redirect (pData.url);',
'       //window.open(pData.url) ;',
'       closeModal(''MENU'');',
'     ',
'   } else {',
'     console.log("FALSE");',
'   }',
' },',
'error: function(request, status, error) {',
'console.log("status---" + status + " error----" + error);',
'  }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71120569934147508)
,p_name=>'Clic_Agregar_Seg'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(62298105684554635)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71120729942147510)
,p_event_id=>wwv_flow_imp.id(71120569934147508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''PED:''||:P240_SER_ORDEN||'' ''||:P240_NRO_ORDEN||'' Cliente:''||NVL(P.NOMBRE,P.NOMB_FANTASIA)',
'       ||'' Total:''||to_char(V.tot_comprobante,''999G999G999G990'')',
'  INTO :P240_DESCRIPCION_DATOS',
'  FROM PERSONAS P,',
'       CC_CLIENTES C,',
'       VT_PEDIDOS_CABECERA V',
' WHERE P.COD_PERSONA = C.COD_PERSONA',
'   AND C.COD_CLIENTE = V.COD_CLIENTE',
'   AND C.COD_EMPRESA = V.COD_EMPRESA',
'   AND V.SER_COMPROBANTE = :P240_SER_ORDEN',
'   AND V.NRO_COMPROBANTE = :P240_NRO_ORDEN;',
'',
'',
'',
'',
'---------------------------------carga ultimo seguimiento--------------------------------------- ',
'               declare',
'                 cursor ccab is ',
'                 SELECT FECHA, HORA, P.COMENTARIO, COD_USUARIO',
'                   FROM VT_SEGUIMIENTO_PEDIDOS P',
'                  WHERE P.COD_EMPRESA = :P_COD_EMPRESA',
'                   ',
'                    AND P.SER_COMPROBANTE = :P240_SER_ORDEN',
'                    AND P.NRO_COMPROBANTE = :P240_NRO_ORDEN',
'                    AND P.FECHA IN',
'                        (SELECT MAX(C1.FECHA)',
'                           FROM VT_SEGUIMIENTO_PEDIDOS C1',
'                          WHERE C1.COD_EMPRESA = :P_COD_EMPRESA',
'                           ',
'                            AND C1.SER_COMPROBANTE =',
'                                :P240_SER_ORDEN',
'                            AND C1.NRO_COMPROBANTE =',
'                                :P240_NRO_ORDEN)',
'                  ORDER BY 1 DESC;',
'                ',
'                BEGIN',
'                    ',
'',
'                   ',
'                    ',
'                    ',
'',
'',
'                    for x in ccab loop	',
'                       :P240_ULT_SEGUIMIENTO := TO_CHAR(x.fecha,''DD/MM/YYYY'')||'' ''||x.hora ||'' ''||'' USUARIO:''||x.COD_USUARIO',
'                       ||'' ''||CHR(10)',
'                       ||''COMENTARIO: '' ||X.COMENTARIO',
'                                            ;',
'                  		 ',
'                  		 	 ',
'                  		 ',
'                    end loop;	',
'                   ',
'                    end;	'))
,p_attribute_02=>'P240_SER_ORDEN,P240_NRO_ORDEN'
,p_attribute_03=>'P240_DESCRIPCION_DATOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71120623055147509)
,p_event_id=>wwv_flow_imp.id(71120569934147508)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'closeModal(''MENU'');',
'openModal(''SEG'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71121072175147513)
,p_name=>'Clic_Aceptar'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71120884074147511)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71121140346147514)
,p_event_id=>wwv_flow_imp.id(71121072175147513)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' 	declare ',
'	vmensaje varchar2(400);',
'	begin ',
'       	INSERTA_SEGUIMIENTO_PED(:P_COD_EMPRESA,:P240_SEGUIMIENTO,',
'       	:APP_USER,',
'       	:P240_SER_ORDEN,',
'        to_char(:P240_NRO_ORDEN), ''COMENTARIO'', vmensaje);',
' ',
'               ',
'    end ;'))
,p_attribute_02=>'P_COD_EMPRESA,P240_SEGUIMIENTO,P240_SER_ORDEN,P240_NRO_ORDEN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71121254577147515)
,p_event_id=>wwv_flow_imp.id(71121072175147513)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71121962039147522)
,p_name=>'Clic_Derivar_Pedido'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(62298200596554636)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71121860611147521)
,p_event_id=>wwv_flow_imp.id(71121962039147522)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''PED:''||:P240_SER_ORDEN||'' ''||:P240_NRO_ORDEN||'' Cliente:''||NVL(P.NOMBRE,P.NOMB_FANTASIA)',
'       ||'' Total:''||to_char(V.tot_comprobante,''999G999G999G990'')',
'  INTO :P240_PED',
'  FROM PERSONAS P,',
'       CC_CLIENTES C,',
'       VT_PEDIDOS_CABECERA V',
' WHERE P.COD_PERSONA = C.COD_PERSONA',
'   AND C.COD_CLIENTE = V.COD_CLIENTE',
'   AND C.COD_EMPRESA = V.COD_EMPRESA',
'   AND V.SER_COMPROBANTE = :P240_SER_ORDEN',
'   AND V.NRO_COMPROBANTE = :P240_NRO_ORDEN;',
'',
'',
''))
,p_attribute_02=>'P240_SER_ORDEN,P240_NRO_ORDEN'
,p_attribute_03=>'P240_PED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71122119672147524)
,p_event_id=>wwv_flow_imp.id(71121962039147522)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'closeModal(''MENU'');',
'openModal(''DERIV'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71122573202147528)
,p_name=>'Clic_Derivar'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71122490652147527)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71122627578147529)
,p_event_id=>wwv_flow_imp.id(71122573202147528)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                 ',
'                 if :P240_DERIVAR_A is not  null then',
'                 	if :P240_NRO_ORDEN is not null then  ',
'                 	declare ',
'                 		vmensaje varchar2(400);',
'                 		VTEXTO VARCHAR2(500);',
'                 	begin ',
'                            IF :P240_DERIVAR_A=''F'' then',
'                            vtexto:= ''FACTURACION'';',
'                            elsIF :DERIVAR_A=''CO'' then',
'                            vtexto:= ''COBRANZAS'';',
'                            elsIF :P240_DERIVAR_A=''CP'' then',
'                            vtexto:= ''CANJE PUBLICIDAD'';',
'                            elsIF :P240_DERIVAR_A=''VE'' then',
'                            vtexto:= ''VENTAS'';',
'                            elsIF :P240_DERIVAR_A=''CR'' then',
'                            vtexto:= ''CREDITOS'';',
'                            elsIF :P240_DERIVAR_A=''DI'' then',
'                            vtexto:= ''DIRECTORIO'';',
'                            elsIF :P240_DERIVAR_A=''RH'' then',
'                            vtexto:= ''RRHH'';',
'                            elsIF :P240_DERIVAR_A=''CA'' then',
'                            vtexto:= ''CANJE'';',
'                            elsIF :P240_DERIVAR_A=''AN'' then',
'                            vtexto:= ''ANULACION'';',
'                            elsIF :P240_DERIVAR_A=''CA'' then',
'                            vtexto:= ''CANJE'';',
'                            elsIF :P240_DERIVAR_A=''MA'' then',
'                            vtexto:= ''MARKETING'';',
'                            elsIF :P240_DERIVAR_A=''PR'' then',
'                            vtexto:= ''PENDIENTE DE RIESGOS'';',
'                            elsIF :P240_DERIVAR_A=''AF'' then',
'                            vtexto:= ''AUTORIZADO A FACTURAR'';',
'                            elsIF :P240_DERIVAR_A=''AC'' then',
'                            vtexto:= ''AUTORIZACION CREDITOS'';',
'                            elsIF :P240_DERIVAR_A=''SV'' then',
'                            vtexto:= ''SUPERVISION DE VALORES'';',
'                            elsIF :P240_DERIVAR_A=''RP'' then',
'                            vtexto:= ''DISTRIBUCION'';',
'                            elsIF :P240_DERIVAR_A=''GC'' then',
'                            vtexto:= ''GENTE CPH'';',
'',
'                            END IF;',
'',
'                 		',
'                 		',
'                   	INSERTA_SEGUIMIENTO_PED(:P_COD_EMPRESA,''Derivado a: ''||vtexto||''  ''|| chr(10)||:P240_DERIVAR_COMENTARIO,',
'                   	:APP_USER,',
'                   	:P240_SER_ORDEN,',
'                    to_char(:P240_NRO_ORDEN), ''COMENTARIO'', vmensaje);',
'                    if vmensaje is not null then ',
'                    	raise_application_error(-20001,vmensaje);',
'                    end if;',
'',
'                    UPDATE VT_PEDIDOS_CABECERA V ',
'                       SET V.DERIVADO = :P240_DERIVAR_A',
'                      WHERE V.COD_EMPRESA = :P_COD_EMPRESA',
'                        AND V.SER_COMPROBANTE = :P240_SER_ORDEN',
'                        AND V.NRO_COMPROBANTE = :P240_NRO_ORDEN;',
'                 	exception',
'                 		when others then 	',
'                 	  raise_application_error(-20001,vmensaje);',
'                    end ;',
'                    ',
'                   else',
'                   	raise_application_error(-20001,''La solicitud de Credito debe estar Grabada para agregarle un comentario '');',
'                   end if; ',
'                   ',
'                   ',
'                    else',
'                   	raise_application_error(-20001,''Debe asignar a un responsable para agregarle un comentario '');',
'                   end if; ',
'      ',
'                    ',
''))
,p_attribute_02=>'P240_DERIVAR_A,P240_NRO_ORDEN,P240_DERIVAR_COMENTARIO,P240_SER_ORDEN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71122795237147530)
,p_event_id=>wwv_flow_imp.id(71122573202147528)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71123407640147537)
,p_name=>'Clic_Confirmar_Pago'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(62298371611554637)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71123639333147539)
,p_event_id=>wwv_flow_imp.id(71123407640147537)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''PED:''||:P240_SER_ORDEN||'' ''||:P240_NRO_ORDEN||'' Cliente:''||NVL(P.NOMBRE,P.NOMB_FANTASIA)',
'       ||'' Total:''||to_char(V.tot_comprobante,''999G999G999G990'')',
'  INTO :P240_PED2',
'  FROM PERSONAS P,',
'       CC_CLIENTES C,',
'       VT_PEDIDOS_CABECERA V',
' WHERE P.COD_PERSONA = C.COD_PERSONA',
'   AND C.COD_CLIENTE = V.COD_CLIENTE',
'   AND C.COD_EMPRESA = V.COD_EMPRESA',
'   AND V.SER_COMPROBANTE = :P240_SER_ORDEN',
'   AND V.NRO_COMPROBANTE = :P240_NRO_ORDEN;',
'',
'',
''))
,p_attribute_02=>'P240_SER_ORDEN,P240_NRO_ORDEN'
,p_attribute_03=>'P240_PED2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71123757623147540)
,p_event_id=>wwv_flow_imp.id(71123407640147537)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'closeModal(''MENU'');',
'openModal(''CF'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71124476731147547)
,p_name=>'Clic_Cancelar'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71120989495147512)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71124569203147548)
,p_event_id=>wwv_flow_imp.id(71124476731147547)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'closeModal(''SEG'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71124607303147549)
,p_name=>'Clic_Cancelar_der'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71122311213147526)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72500155197711001)
,p_event_id=>wwv_flow_imp.id(71124607303147549)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'closeModal(''DERIV'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72500271417711002)
,p_name=>'Clic_Cancelar_Cf'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71124386587147546)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72500451822711004)
,p_event_id=>wwv_flow_imp.id(72500271417711002)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'closeModal(''CF'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72500562105711005)
,p_name=>'Clic_Confirmar'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71124203764147545)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72500639431711006)
,p_event_id=>wwv_flow_imp.id(72500562105711005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                 if NVL(:P240_CONFIRMADO,''N'')=''S'' then  ',
'                   declare ',
'                     vmensaje varchar2(4000);',
'                     VERROR  varchar2(4000);',
'                     V_NOM_PER_JURIDICA varchar2(4000);',
'                   begin ',
'                        SELECT NOM_COMERCIAL ',
'                          INTO V_NOM_PER_JURIDICA',
'                          FROM PERSONAS_JURIDICAS ',
'                         WHERE COD_SECTOR = ''6''',
'                           AND COD_PER_JURIDICA = :P240_BANCO;',
'',
'',
'                       VMENSAJE:= ''FORMA DE PAGO CONFIRMADA''||CHR(10)||',
'                     ''BANCO : ''||V_NOM_PER_JURIDICA||'' ''||CHR(10)||',
'                     ''BOLETA/CHEQUE : ''||:P240_NRO_BOLETA||'' ''||CHR(10)||',
'                       ''FECHA DEPOSITO : ''||TO_CHAR(:P240_FECHA_DEPOSITO,''DD/MM/YYYY'')||'' ''||CHR(10)||',
'                         ''MONTO : ''||:P240_IMPORTE_DEPOSITO||'' ''||CHR(10)||:P240_CF_SEGUIMIENTO;',
'                     INSERTA_SEGUIMIENTO_PED(:P_COD_EMPRESA,VMENSAJE,',
'                     :APP_USER,',
'                     :P240_SER_ORDEN,',
'                    to_char(:P240_NRO_ORDEN), ''COMENTARIO'', VERROR);',
'                    ',
'                    UPDATE VT_PEDIDOS_CABECERA C ',
'                       SET C.AUTORIZADO       = ''S'',',
'                           C.ORDEN_AUTORIZADA = ''S'',',
'                           C.AUTORIZADO_POR   = :APP_USER,',
'                           C.FEC_AUTORIZACION = TO_CHAR(SYSDATE,''DD/MM/YYYY HH24:MI:SS''),',
'                           C.DERIVADO         = ''AF'',',
'                           C.DEPOSITO_FACT = ''SL''',
'                      WHERE C.COD_EMPRESA = :P_COD_EMPRESA',
'                        AND C.SER_COMPROBANTE = :P240_SER_ORDEN',
'                        AND C.NRO_COMPROBANTE = :P240_NRO_ORDEN;',
'                    ',
'',
'',
'          ',
'',
'                    ',
'                    if VERROR is not null then ',
'                      RAISE_APPLICATION_ERROR(-20001,VERROR);',
'                      end if;',
'                   exception',
'                     when others then   ',
'                   RAISE_APPLICATION_ERROR(-20001,VERROR);',
'                    end ;',
'                    ',
'                   else',
'                     RAISE_APPLICATION_ERROR(-20001,''DEBE CONFIRMAR PARA GUARDAR LOS DATOS BANCARIOS'');',
'                   end if; ',
'                   ',
'                    ',
'                  VTCANVER.PROCBD_ANALIZA_CANAL_VERDE(:P240_SEQ_ID);'))
,p_attribute_02=>'P240_CONFIRMADO,P240_BANCO,P240_NRO_BOLETA,P240_FECHA_DEPOSITO,P240_IMPORTE_DEPOSITO,P240_CF_SEGUIMIENTO,P240_SER_ORDEN,P240_NRO_ORDEN,P240_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72500724350711007)
,p_event_id=>wwv_flow_imp.id(72500562105711005)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72501248348711012)
,p_name=>'Clic_Ver_Comentarios'
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(62298467081554638)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72501376544711013)
,p_event_id=>wwv_flow_imp.id(72501248348711012)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_COD_CLIENTE VARCHAR2(10);',
'BEGIN ',
'',
'SELECT COD_CLIENTE',
'  INTO V_COD_CLIENTE',
'  FROM VT_PEDIDOS_CABECERA A ',
' WHERE A.SER_COMPROBANTE = :P240_SER_ORDEN',
'   AND A.NRO_COMPROBANTE = :P240_NRO_ORDEN;',
'',
'VTCANVER.PROCBD_BUSCA_LLAMADAS(:P_COD_EMPRESA,',
'                               V_COD_CLIENTE);',
'',
'END;'))
,p_attribute_02=>'P240_SER_ORDEN,P240_NRO_ORDEN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72501460638711014)
,p_event_id=>wwv_flow_imp.id(72501248348711012)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72500904110711009)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72501550377711015)
,p_event_id=>wwv_flow_imp.id(72501248348711012)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'closeModal(''MENU'');',
'openModal(''COMENTARIOS'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72502038714711020)
,p_name=>'Clic_Desautorizar'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(62298680243554640)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72502191710711021)
,p_event_id=>wwv_flow_imp.id(72502038714711020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'        ',
'  UPDATE VT_PEDIDOS_CABECERA C ',
'     SET C.AUTORIZADO = ''P'',',
'         C.ORDEN_AUTORIZADA = NULL,',
'         C.AUTORIZADO_POR = NULL,',
'         C.FEC_AUTORIZACION = NULL,',
'         C.DERIVADO = ''F''',
'   WHERE C.COD_EMPRESA = :P_COD_EMPRESA',
'     AND C.SER_COMPROBANTE = :P240_SER_ORDEN',
'     AND C.NRO_COMPROBANTE = :P240_NRO_ORDEN; ',
'',
'      ',
'				',
'				',
'		DECLARE VEXISTE varchar2(1000);',
'		    	vmensaje varchar2(1000);',
'                V_COD_CLIENTE VARCHAR2(10);',
'                V_DESC_CLIENTE VARCHAR2(100);',
'		 BEGIN',
'                 SELECT C.COD_CLIENTE,NVL(P.NOMBRE,P.NOMB_FANTASIA)',
'                  INTO V_COD_CLIENTE,V_DESC_CLIENTE',
'                  FROM VT_PEDIDOS_CABECERA V ,',
'                       CC_CLIENTES C ,',
'                       PERSONAS P',
'                  WHERE V.COD_EMPRESA     =  C.COD_EMPRESA',
'                    AND V.COD_CLIENTE     =  C.COD_CLIENTE',
'                    AND C.COD_PERSONA     =  P.COD_PERSONA',
'                    AND V.COD_EMPRESA     = :P_COD_EMPRESA',
'                    AND V.SER_COMPROBANTE = :P240_SER_ORDEN',
'                    AND V.NRO_COMPROBANTE = :P240_NRO_ORDEN;',
'			 begin',
'			 	select ''S''',
'			 	 INTO VEXISTE',
'			 	from cc_transladoped_det d',
'			 	where  cod_empresa= :P_COD_EMPRESA',
'			 	and  tip_comprobante=:P240_TIP_ORDEN',
'			 	and  ser_comprobante=:P240_SER_ORDEN',
'			 	and  nro_comprobante=:P240_NRO_ORDEN;',
'			 EXCEPTION',
'			 	WHEN OTHERS THEN',
'			 	NULL;',
'			 END;',
'			 if VEXISTE=''S''  THEN',
'			 begin ',
'			  delete cc_transladoped_det d',
'			 	where  cod_empresa= :P_COD_EMPRESA',
'			 	and  tip_comprobante=:P240_TIP_ORDEN',
'			 	and  ser_comprobante=:P240_SER_ORDEN',
'			 	and  nro_comprobante=:P240_NRO_ORDEN;',
'			 EXCEPTION',
'			 	WHEN OTHERS THEN',
'			 	NULL;',
'			 END;',
'			 ',
'			  begin ',
'			  delete rp_reparto_pedido_det d',
'			 	where  cod_empresa= :P_COD_EMPRESA',
'			 	and  tip_comprobante=:P240_TIP_ORDEN',
'			 	and  ser_comprobante=:P240_SER_ORDEN',
'			 	and  nro_comprobante=:P240_NRO_ORDEN',
'			 	and empresa_origen=''NGO'';',
'			 EXCEPTION',
'			 	WHEN OTHERS THEN',
'			 	NULL;',
'			 END;',
'			 ',
'			 	INSERTA_SEGUIMIENTO_PED(:P_COD_EMPRESA,''Pedido trasladado y desautorizado  '',      	:APP_USER,      	:P240_SER_ORDEN,  to_char(:P240_NRO_ORDEN), ''COMENTARIO'', vmensaje);',
'			 	',
'			 	',
'			 	 DECLARE',
'        CURSOR CCAB IS',
'          SELECT ''ariel_miranda@ngosaeca.com.py'' CORREO',
'            FROM DUAL',
'          union all',
'          SELECT ''rolando@ngosaeca.com.py'' CORREO',
'            FROM DUAL',
'            union all',
'          SELECT ''logistica3@ngosaeca.com.py'' CORREO',
'          ',
'            FROM DUAL',
'            union all ',
'            select ''mirtha@ngosaeca.com.py'' correo',
'            from dual;',
'              vhost   varchar2(400) := bs_busca_parametro(''BS'', ''HOST_CORREO'');',
'			 	  begin',
'        for x in ccab loop',
'          EnviarCorreo(''mail@ngosaeca.com.py'',',
'                       x.correo,',
'                       ''Pedido en Logistica Rechazado '' ||',
'                       :P240_NRO_ORDEN || '' Cliente ('' ||',
'                       V_COD_CLIENTE || '')'' || V_DESC_CLIENTE  ,',
'                       ''Pedido en Logistica Rechazado '' ||',
'                       :P240_NRO_ORDEN || '' Cliente ('' ||',
'                       V_COD_CLIENTE || '')'' || V_DESC_CLIENTE ,',
'                       vhost);',
'        end loop;',
'      ',
'      end;',
'			 	',
'			 ',
'			 END IF;',
'	',
'			 END;'))
,p_attribute_02=>'P240_SER_ORDEN,P240_NRO_ORDEN,P240_TIP_ORDEN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72502274513711022)
,p_event_id=>wwv_flow_imp.id(72502038714711020)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72502306952711023)
,p_name=>'Clic_Autorizar'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(62298751817554641)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72502475533711024)
,p_event_id=>wwv_flow_imp.id(72502306952711023)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'VTCANVER.PROCBD_AUTORIZA_ORDEN(:P_COD_EMPRESA,',
'                               :P240_SEQ_ID);'))
,p_attribute_02=>'P240_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72502588883711025)
,p_event_id=>wwv_flow_imp.id(72502306952711023)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72502675942711026)
,p_name=>'Da_Cambiar_Seq_ID'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P240_SEQ_ID'
,p_condition_element=>'P240_SEQ_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72502704420711027)
,p_event_id=>wwv_flow_imp.id(72502675942711026)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*VTCANVER.PROCBD_CARGAR_COL_ORDEN(:P_COD_EMPRESA,',
'                           :P240_IND_TRANSPORTADORA,',
'                           :P240_AUTORIZADO_USUARIO,',
'                           :P240_FECHA_DESDE,',
'                           :P240_FECHA_HASTA,',
'                           :P240_TIPO_CLIENTE,',
'                           :P240_IND_TIPO_PEDIDO,',
'                           :P240_FLETE,',
'                           :P240_NRO_PEDIDO,',
'                           :P240_COD_CLIENTE,',
'                           :P240_VER_OFERTAS,',
'                           :APP_USER,',
'                           :P240_VENDEDOR,',
'                           :P240_DERIVADO,',
'                           :P240_ESTADO_PEDIDO);*/',
'--,P_COD_EMPRESA,P240_IND_TRANSPORTADORA,P240_AUTORIZADO_USUARIO,P240_FECHA_DESDE,P240_FECHA_HASTA,P240_TIPO_CLIENTE,P240_IND_TIPO_PEDIDO,P240_FLETE,P240_NRO_PEDIDO,P240_COD_CLIENTE,P240_VER_OFERTAS,P240_VENDEDOR,P240_DERIVADO,P240_ESTADO_PEDIDO',
'SELECT',
'       C001 SER_COMPROBANTE,',
'       to_number(C002) NRO_COMPROBANTE,',
'       c013 ULT_SEG,',
'       C014 AUTORIZADO_POR,',
'       C015 FEC_AUTORIZACION,',
'       C016 USR_PR_FMA,',
'       C017 FCH_PR_FMA,',
'       C018 USR_SA_FMA,',
'       C019 FCH_SA_FMA,',
'       C020 OBSERVACION,',
'       C023 TIP_COMPROBANTE,',
'       c026 DERIVADO',
'       ',
'       /*C003 FEC_COMPROBANTE,',
'       C004 COD_CLIENTE,',
'       C005 DESC_CLIENTE,',
'       C006 TIPO_CLIENTE,',
'       C007 DESC_MONEDA,',
'       C008 VENDEDOR,',
'       to_number(C009) TOT_COMPROBANTE,',
'       TO_NUMBER(C010) TOTAL,',
'       C011 ESTADO_CLIENTE,',
'       C012 VATRIBUTO,',
'       C021 RESULTADO*/',
'  INTO :P240_SER_ORDEN,',
'       :P240_NRO_ORDEN,',
'       :P240_ULT_SEGUIMIENTO,',
'       :P240_AUTORIZADO_POR,',
'       :P240_FEC_AUTORIZACION,',
'       :P240_USR_PR_FMA,',
'       :P240_FCH_PR_FMA,',
'       :P240_USR_SA_FMA,',
'       :P240_FCH_SA_FMA,',
'       :P240_OBSERVACION,',
'       :P240_TIP_ORDEN,',
'       :P240_BORDEN_DERIVADO',
'',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''B_ORDEN''',
'   AND SEQ_ID = :P240_SEQ_ID;',
'   exception',
'   when no_data_found then ',
'    SELECT',
'       C001 SER_COMPROBANTE,',
'       to_number(C002) NRO_COMPROBANTE,',
'       c013 ULT_SEG,',
'       C014 AUTORIZADO_POR,',
'       C015 FEC_AUTORIZACION,',
'       C016 USR_PR_FMA,',
'       C017 FCH_PR_FMA,',
'       C018 USR_SA_FMA,',
'       C019 FCH_SA_FMA,',
'       C020 OBSERVACION,',
'       C023 TIP_COMPROBANTE,',
'       c026 DERIVADO',
'       ',
'       /*C003 FEC_COMPROBANTE,',
'       C004 COD_CLIENTE,',
'       C005 DESC_CLIENTE,',
'       C006 TIPO_CLIENTE,',
'       C007 DESC_MONEDA,',
'       C008 VENDEDOR,',
'       to_number(C009) TOT_COMPROBANTE,',
'       TO_NUMBER(C010) TOTAL,',
'       C011 ESTADO_CLIENTE,',
'       C012 VATRIBUTO,',
'       C021 RESULTADO*/',
'  INTO :P240_SER_ORDEN,',
'       :P240_NRO_ORDEN,',
'       :P240_ULT_SEGUIMIENTO,',
'       :P240_AUTORIZADO_POR,',
'       :P240_FEC_AUTORIZACION,',
'       :P240_USR_PR_FMA,',
'       :P240_FCH_PR_FMA,',
'       :P240_USR_SA_FMA,',
'       :P240_FCH_SA_FMA,',
'       :P240_OBSERVACION,',
'       :P240_TIP_ORDEN,',
'       :P240_BORDEN_DERIVADO',
'',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''B_ORDEN''',
'   AND SEQ_ID = 1;',
'',
''))
,p_attribute_02=>'P240_SEQ_ID'
,p_attribute_03=>'P240_SER_ORDEN,P240_NRO_ORDEN,P240_ULT_SEGUIMIENTO,P240_AUTORIZADO_POR,P240_FEC_AUTORIZACION,P240_USR_PR_FMA,P240_FCH_PR_FMA,P240_USR_SA_FMA,P240_FCH_SA_FMA,P240_OBSERVACION,P240_BORDEN_DERIVADO,P240_TIP_ORDEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72503896819711038)
,p_event_id=>wwv_flow_imp.id(72502675942711026)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(61170493928524432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72503929541711039)
,p_event_id=>wwv_flow_imp.id(72502675942711026)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(61170266356524430)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72502851770711028)
,p_name=>'Cambiar_USR_PR_FMA'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P240_USR_PR_FMA'
,p_condition_element=>'P240_USR_PR_FMA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72502902780711029)
,p_event_id=>wwv_flow_imp.id(72502851770711028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(61170266356524430)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72503373240711033)
,p_event_id=>wwv_flow_imp.id(72502851770711028)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(61170493928524432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72503035906711030)
,p_event_id=>wwv_flow_imp.id(72502851770711028)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(61170493928524432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72503175838711031)
,p_event_id=>wwv_flow_imp.id(72502851770711028)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(61170266356524430)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72503673262711036)
,p_name=>'Cambiar_USR_SA_FMA'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P240_USR_SA_FMA'
,p_condition_element=>'P240_USR_SA_FMA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72503719704711037)
,p_event_id=>wwv_flow_imp.id(72503673262711036)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(61170266356524430)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72504622981711046)
,p_name=>'Cargar_Pagina_Deshabilita_Firmas'
,p_event_sequence=>320
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P240_USR_PR_FMA is not null and :P240_USR_SA_FMA is not null then ',
'return true;',
'end if;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72504728214711047)
,p_event_id=>wwv_flow_imp.id(72504622981711046)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(61170493928524432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72504829361711048)
,p_event_id=>wwv_flow_imp.id(72504622981711046)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(61170266356524430)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75650658947710201)
,p_name=>'Clic_Ver_Pedido'
,p_event_sequence=>330
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(62297419676554628)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75650736778710202)
,p_event_id=>wwv_flow_imp.id(75650658947710201)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'closeModal(''MENU'');',
'openModal(''MSG'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75650810203710203)
,p_name=>'Clic_Print_Pedido'
,p_event_sequence=>340
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(62298573514554639)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75650909228710204)
,p_event_id=>wwv_flow_imp.id(75650810203710203)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'closeModal(''MENU'');',
'openModal(''MSG'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77479273841133408)
,p_name=>'Cargar Pagina Cargar collections'
,p_event_sequence=>350
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75651195645710206)
,p_event_id=>wwv_flow_imp.id(77479273841133408)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P240_FECHA_DESDE IS NULL THEN ',
':P240_FECHA_DESDE:=  LAST_DAY(ADD_MONTHS(SYSDATE,-1))+1;',
'END IF;',
'IF :P240_FECHA_HASTA IS NULL THEN',
':P240_FECHA_HASTA:=SYSDATE;',
'END IF;',
''))
,p_attribute_02=>'P240_FECHA_DESDE,P240_FECHA_HASTA'
,p_attribute_03=>'P240_FECHA_DESDE,P240_FECHA_HASTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(347428373310528927)
,p_event_id=>wwv_flow_imp.id(77479273841133408)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--out_out(''entre en el proceso'');',
'BEGIN ',
' --RAISE_APPLICATION_ERROR(-20001 , ''fec_desde:''||:P240_FECHA_DESDE||'',fec_hasta: ''||:P240_FECHA_HASTA);',
'VTCANVER.PROCBD_CARGAR_COL_ORDEN(:P_COD_EMPRESA,',
'                           :P240_IND_TRANSPORTADORA,',
'                           :P240_AUTORIZADO_USUARIO,',
'                           :P240_FECHA_DESDE,',
'                           :P240_FECHA_HASTA,',
'                           :P240_TIPO_CLIENTE,',
'                           :P240_IND_TIPO_PEDIDO,',
'                           :P240_FLETE,',
'                           :P240_NRO_PEDIDO,',
'                           :P240_COD_CLIENTE,',
'                           :P240_VER_OFERTAS,',
'                           :APP_USER,',
'                           :P240_VENDEDOR,',
'                           :P240_DERIVADO,',
'                           :P240_ESTADO_PEDIDO);',
'                           --RAISE_APPLICATION_ERROR(-20001 , ''fec_desde:''||:P240_FECHA_DESDE||'',fec_hasta: ''||:P240_FECHA_HASTA);',
'',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P240_IND_TRANSPORTADORA,P240_AUTORIZADO_USUARIO,P240_FECHA_DESDE,P240_FECHA_HASTA,P240_TIPO_CLIENTE,V,P240_FLETE,P240_NRO_PEDIDO,P240_COD_CLIENTE,P240_VER_OFERTAS,P240_VENDEDOR,P240_DERIVADO,P240_ESTADO_PEDIDO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(347428545892528929)
,p_event_id=>wwv_flow_imp.id(77479273841133408)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--out_out(''entre en el proceso'');',
'BEGIN ',
' --RAISE_APPLICATION_ERROR(-20001 , ''fec_desde:''||:P240_FECHA_DESDE||'',fec_hasta: ''||:P240_FECHA_HASTA);',
'VTCANVER.PROCBD_CARGAR_COL_ORDEN(:P_COD_EMPRESA,',
'                           :P240_IND_TRANSPORTADORA,',
'                           :P240_AUTORIZADO_USUARIO,',
'                           :P240_FECHA_DESDE,',
'                           :P240_FECHA_HASTA,',
'                           :P240_TIPO_CLIENTE,',
'                           :P240_IND_TIPO_PEDIDO,',
'                           :P240_FLETE,',
'                           :P240_NRO_PEDIDO,',
'                           :P240_COD_CLIENTE,',
'                           :P240_VER_OFERTAS,',
'                           :APP_USER,',
'                           :P240_VENDEDOR,',
'                           :P240_DERIVADO,',
'                           :P240_ESTADO_PEDIDO);',
'                           --RAISE_APPLICATION_ERROR(-20001 , ''fec_desde:''||:P240_FECHA_DESDE||'',fec_hasta: ''||:P240_FECHA_HASTA);',
'',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P240_IND_TRANSPORTADORA,P240_AUTORIZADO_USUARIO,P240_FECHA_DESDE,P240_FECHA_HASTA,P240_TIPO_CLIENTE,V,P240_FLETE,P240_NRO_PEDIDO,P240_COD_CLIENTE,P240_VER_OFERTAS,P240_VENDEDOR,P240_DERIVADO,P240_ESTADO_PEDIDO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77479349033133409)
,p_event_id=>wwv_flow_imp.id(77479273841133408)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--out_out(''entre en el proceso'');',
'BEGIN ',
' --RAISE_APPLICATION_ERROR(-20001 , ''fec_desde:''||:P240_FECHA_DESDE||'',fec_hasta: ''||:P240_FECHA_HASTA);',
'VTCANVER.PROCBD_CARGAR_COL_ORDEN(:P_COD_EMPRESA,',
'                           :P240_IND_TRANSPORTADORA,',
'                           :P240_AUTORIZADO_USUARIO,',
'                           :P240_FECHA_DESDE,',
'                           :P240_FECHA_HASTA,',
'                           :P240_TIPO_CLIENTE,',
'                           :P240_IND_TIPO_PEDIDO,',
'                           :P240_FLETE,',
'                           :P240_NRO_PEDIDO,',
'                           :P240_COD_CLIENTE,',
'                           :P240_VER_OFERTAS,',
'                           :APP_USER,',
'                           :P240_VENDEDOR,',
'                           :P240_DERIVADO,',
'                           :P240_ESTADO_PEDIDO);',
'                           --RAISE_APPLICATION_ERROR(-20001 , ''fec_desde:''||:P240_FECHA_DESDE||'',fec_hasta: ''||:P240_FECHA_HASTA);',
'',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P240_IND_TRANSPORTADORA,P240_AUTORIZADO_USUARIO,P240_FECHA_DESDE,P240_FECHA_HASTA,P240_TIPO_CLIENTE,V,P240_FLETE,P240_NRO_PEDIDO,P240_COD_CLIENTE,P240_VER_OFERTAS,P240_VENDEDOR,P240_DERIVADO,P240_ESTADO_PEDIDO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(347428729270528931)
,p_event_id=>wwv_flow_imp.id(77479273841133408)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59090056323406728)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77479454478133410)
,p_event_id=>wwv_flow_imp.id(77479273841133408)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59090056323406728)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(347917810660606702)
,p_name=>'New'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P240_SER_ORDEN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(347917977400606703)
,p_event_id=>wwv_flow_imp.id(347917810660606702)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P240_SER_ORDEN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(347428823039528932)
,p_name=>'RefreshDA'
,p_event_sequence=>370
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(59089064874406718)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(347428951400528933)
,p_event_id=>wwv_flow_imp.id(347428823039528932)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--out_out(''entre en el proceso'');',
'BEGIN ',
' --RAISE_APPLICATION_ERROR(-20001 , ''fec_desde:''||:P240_FECHA_DESDE||'',fec_hasta: ''||:P240_FECHA_HASTA);',
'VTCANVER.PROCBD_CARGAR_COL_ORDEN(:P_COD_EMPRESA,',
'                           :P240_IND_TRANSPORTADORA,',
'                           :P240_AUTORIZADO_USUARIO,',
'                           :P240_FECHA_DESDE,',
'                           :P240_FECHA_HASTA,',
'                           :P240_TIPO_CLIENTE,',
'                           :P240_IND_TIPO_PEDIDO,',
'                           :P240_FLETE,',
'                           :P240_NRO_PEDIDO,',
'                           :P240_COD_CLIENTE,',
'                           :P240_VER_OFERTAS,',
'                           :APP_USER,',
'                           :P240_VENDEDOR,',
'                           :P240_DERIVADO,',
'                           :P240_ESTADO_PEDIDO);',
'                           --RAISE_APPLICATION_ERROR(-20001 , ''fec_desde:''||:P240_FECHA_DESDE||'',fec_hasta: ''||:P240_FECHA_HASTA);',
'',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P240_IND_TRANSPORTADORA,P240_AUTORIZADO_USUARIO,P240_FECHA_DESDE,P240_FECHA_HASTA,P240_TIPO_CLIENTE,V,P240_FLETE,P240_NRO_PEDIDO,P240_COD_CLIENTE,P240_VER_OFERTAS,P240_VENDEDOR,P240_DERIVADO,P240_ESTADO_PEDIDO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(347429199673528935)
,p_event_id=>wwv_flow_imp.id(347428823039528932)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59090056323406728)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59088577628406713)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pre-Form'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P240_IND_TIPO_PEDIDO IS NULL THEN',
':P240_IND_TIPO_PEDIDO:=''T'';',
'END IF;',
'--:variables.autorizado_por :=''X'';',
'declare',
'	 V_OFERTAS           VARCHAR2(100):=busca_permiso( :P_cod_empresa,',
'                                                        ''VTCANVER'',',
'                                                       :APP_USER,',
'                                                       ''VER_SOLO_OFERTAS'' ); ',
'	begin',
'	IF NVL(V_OFERTAS,''N'')=''S'' THEN',
'			:P240_VER_OFERTAS:=''105'';',
'	end if;',
'	end;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59091148212406739)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARGA_COL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'out_out(''entre en el proceso'');',
'BEGIN ',
'VTCANVER.PROCBD_CARGAR_COL_ORDEN(:P_COD_EMPRESA,',
'                           :P240_IND_TRANSPORTADORA,',
'                           :P240_AUTORIZADO_USUARIO,',
'                           :P240_FECHA_DESDE,',
'                           :P240_FECHA_HASTA,',
'                           :P240_TIPO_CLIENTE,',
'                           :P240_IND_TIPO_PEDIDO,',
'                           :P240_FLETE,',
'                           :P240_NRO_PEDIDO,',
'                           :P240_COD_CLIENTE,',
'                           :P240_VER_OFERTAS,',
'                           :APP_USER,',
'                           :P240_VENDEDOR,',
'                           :P240_DERIVADO,',
'                           :P240_ESTADO_PEDIDO);',
'EXCEPTION ',
'    WHEN OTHERS THEN ',
'         RAISE_APPLICATION_ERROR(-20001 , SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(75651004915710205)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Restaurar'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'240'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'RESTAURAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
