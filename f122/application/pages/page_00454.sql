prompt --application/pages/page_00454
begin
--   Manifest
--     PAGE: 00454
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
 p_id=>454
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VALIDA_EMAIL'
,p_alias=>'VALIDA-EMAIL'
,p_step_title=>unistr('Verificaci\00F3n de Datos')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico.js'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  .t-Report-colHead,  .t-Report-colHead .u-Report-sort .u-Report-sortHeading a {',
'      background: #003a85!important;',
'       color: yellow; ',
' }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'HSEGOVIA'
,p_last_upd_yyyymmddhh24miss=>'20230330172201'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134112948369083403)
,p_plug_name=>'Formulario Verificador'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>980
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134113041890083404)
,p_plug_name=>'Validador Email'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133685432934168131)
,p_plug_name=>'Email'
,p_parent_plug_id=>wwv_flow_imp.id(134113041890083404)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>990
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id,',
'             c001   AS email,',
'             c002   AS cod_cliente,',
'             c003   AS cod_persona,',
'             c004   AS nombre,',
unistr('             c005   AS Tel\00E9fono,'),
'             c006   AS tipo_cliente',
'        FROM apex_collections',
'       WHERE collection_name = ''TMP_EMAIL'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Email'
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
 p_id=>wwv_flow_imp.id(133686929918168146)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'HSEGOVIA'
,p_internal_uid=>133686929918168146
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133687046621168147)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133687122609168148)
,p_db_column_name=>'EMAIL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'E-MAIL'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133687213351168149)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('C\00F3d. Cliente')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133687333131168150)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('C\00F3d. Persona')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134112721078083401)
,p_db_column_name=>'NOMBRE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134112831566083402)
,p_db_column_name=>unistr('TEL\00C9FONO')
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('Tel\00E9fono')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137003245736087934)
,p_db_column_name=>'TIPO_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Tipo Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(134121834190083062)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1341219'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('COD_CLIENTE:COD_PERSONA:NOMBRE:EMAIL:TEL\00C9FONO:TIPO_CLIENTE:')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134113171300083405)
,p_plug_name=>'Validador RUC'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134113219396083406)
,p_plug_name=>'RUC'
,p_parent_plug_id=>wwv_flow_imp.id(134113171300083405)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1000
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id,',
'             c001   AS numero,',
'             c002   AS cod_cliente,',
'             c003   AS Cod_Persona,',
'             c004   AS nombre,',
'             c005   AS telef2,',
'             c006   AS mensaje',
'        FROM apex_collections',
'       WHERE collection_name = ''TMP_RUC'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'RUC'
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
 p_id=>wwv_flow_imp.id(134113346026083407)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'HSEGOVIA'
,p_internal_uid=>134113346026083407
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134113476774083408)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134114738932083421)
,p_db_column_name=>'MENSAJE'
,p_display_order=>30
,p_column_identifier=>'H'
,p_column_label=>'Mensaje'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134114934714083423)
,p_db_column_name=>'NUMERO'
,p_display_order=>40
,p_column_identifier=>'I'
,p_column_label=>'RUC'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134115096062083424)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>50
,p_column_identifier=>'J'
,p_column_label=>unistr('C\00F3d. Cliente')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134115105615083425)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>60
,p_column_identifier=>'K'
,p_column_label=>unistr('C\00F3d. Persona')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134115289729083426)
,p_db_column_name=>'NOMBRE'
,p_display_order=>70
,p_column_identifier=>'L'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134115347689083427)
,p_db_column_name=>'TELEF2'
,p_display_order=>80
,p_column_identifier=>'M'
,p_column_label=>unistr('Tel\00E9fono')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(134142723957864953)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1341428'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_CLIENTE:COD_PERSONA:NOMBRE:TELEF2:NUMERO:MENSAJE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(137003355807087935)
,p_plug_name=>'Clientes sin Movimientos'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(137003470744087936)
,p_plug_name=>'CLIENTES_SIN_MOV'
,p_parent_plug_id=>wwv_flow_imp.id(137003355807087935)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id,',
'             c001   AS cod_cliente,',
'             c002   AS cod_persona,',
'             c003   AS direc_electronica,',
'             c004   AS nombre,',
'             c005   AS telef2,',
'             c006   AS tipo_cliente',
'        FROM apex_collections',
'       WHERE collection_name = ''TMP_CLIENTES_SIN_MOV'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CLIENTES_SIN_MOV'
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
 p_id=>wwv_flow_imp.id(137004276474087944)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'HSEGOVIA'
,p_internal_uid=>137004276474087944
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137004351428087945)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137004470483087946)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3d. Cliente')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137004564927087947)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('C\00F3d. Persona')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137004682595087948)
,p_db_column_name=>'DIREC_ELECTRONICA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'E-MAIL'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137004753892087949)
,p_db_column_name=>'NOMBRE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137004829382087950)
,p_db_column_name=>'TELEF2'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('Tel\00E9fono')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137937793162472701)
,p_db_column_name=>'TIPO_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Tipo Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(137947701976472438)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1379478'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_CLIENTE:COD_PERSONA:NOMBRE:DIREC_ELECTRONICA:TELEF2:TIPO_CLIENTE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(137969905392322801)
,p_plug_name=>'Clientes que no tienen movimientos segun Fecha Ingresada hasta la fecha Actual'
,p_parent_plug_id=>wwv_flow_imp.id(137003355807087935)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(137937810928472702)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(137969905392322801)
,p_button_name=>'Obtener_clientes'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133685707410168134)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133685432934168131)
,p_button_name=>'Verificar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Verificar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(134114037333083414)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(134113219396083406)
,p_button_name=>'Verificar_ruc'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Verificar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137970066225322802)
,p_name=>'P454_FECHA_DESDE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(137969905392322801)
,p_prompt=>'Fecha Desde'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);"  onkeyup = "setDateFormat(this);" '
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133685819664168135)
,p_name=>'Ejecuta proceso'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(133685707410168134)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133686735838168144)
,p_event_id=>wwv_flow_imp.id(133685819664168135)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner(); '
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133685905910168136)
,p_event_id=>wwv_flow_imp.id(133685819664168135)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'inv.pck_general_apex.pr_verifica_email;'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133686008226168137)
,p_event_id=>wwv_flow_imp.id(133685819664168135)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133685432934168131)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133686801837168145)
,p_event_id=>wwv_flow_imp.id(133685819664168135)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove(); ',
'$(".u-Processing").remove(); '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134114138842083415)
,p_name=>'Ejecuta proceso_1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(134114037333083414)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134114261430083416)
,p_event_id=>wwv_flow_imp.id(134114138842083415)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner(); '
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134114310767083417)
,p_event_id=>wwv_flow_imp.id(134114138842083415)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'inv.pck_general_apex.pr_verifica_ruc;'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134114420014083418)
,p_event_id=>wwv_flow_imp.id(134114138842083415)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134113219396083406)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134114551659083419)
,p_event_id=>wwv_flow_imp.id(134114138842083415)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove(); ',
'$(".u-Processing").remove(); '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133686409594168141)
,p_name=>'Validador de Email'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133686594116168142)
,p_event_id=>wwv_flow_imp.id(133686409594168141)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection(p_collection_name => ''TMP_EMAIL'');',
'apex_collection.add_member(p_collection_name => ''TMP_EMAIL'',',
'                                   p_c001            => null,',
'                                   p_c002            => null,',
'                                   p_c003            => null,',
'                                   p_c004            => null);',
'',
'apex_collection.create_or_truncate_collection(p_collection_name => ''TMP_RUC'');',
'apex_collection.add_member(p_collection_name => ''TMP_RUC'',',
'                                   p_c001            => null,',
'                                   p_c002            => null,',
'                                   p_c003            => null,',
'                                   p_c004            => null);',
'',
'',
' apex_collection.create_or_truncate_collection(p_collection_name => ''TMP_CLIENTES_SIN_MOV'');',
' apex_collection.add_member(p_collection_name => ''TMP_CLIENTES_SIN_MOV'',',
'                                   p_c001            => null,',
'                                   p_c002            => null,',
'                                   p_c003            => null,',
'                                   p_c004            => null);',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133686661997168143)
,p_event_id=>wwv_flow_imp.id(133686409594168141)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133685432934168131)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134114892527083422)
,p_event_id=>wwv_flow_imp.id(133686409594168141)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134113219396083406)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137938428517472708)
,p_event_id=>wwv_flow_imp.id(133686409594168141)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(137003470744087936)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137937906234472703)
,p_name=>'Obtiene datos'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(137937810928472702)
,p_condition_element=>'P454_FECHA_DESDE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137938243131472706)
,p_event_id=>wwv_flow_imp.id(137937906234472703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner(); '
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137938573104472709)
,p_event_id=>wwv_flow_imp.id(137937906234472703)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.NOTIFICATIONS'
,p_attribute_01=>'warning'
,p_attribute_02=>'static'
,p_attribute_03=>unistr('Atenci\00F3n')
,p_attribute_04=>'Ingrese la fecha para ejecutar el proceso'
,p_attribute_07=>'autodismiss:prevent-duplicates:remove-notifications:escape-html:newest-on-top:client-side-substitutions:dismiss-on-click:dismiss-on-button'
,p_attribute_08=>'top-right'
,p_attribute_09=>'Y'
,p_attribute_11=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137938027038472704)
,p_event_id=>wwv_flow_imp.id(137937906234472703)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'inv.pck_general_apex.pr_clientes_sin_mov(P_fechadesde => :P454_FECHA_DESDE);'
,p_attribute_02=>'P454_FECHA_DESDE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137938143922472705)
,p_event_id=>wwv_flow_imp.id(137937906234472703)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(137003470744087936)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137938397238472707)
,p_event_id=>wwv_flow_imp.id(137937906234472703)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove(); ',
'$(".u-Processing").remove(); '))
);
wwv_flow_imp.component_end;
end;
/
