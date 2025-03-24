prompt --application/pages/page_00480
begin
--   Manifest
--     PAGE: 00480
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
 p_id=>480
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'STCHKPRO'
,p_alias=>'STCHKPRO'
,p_step_title=>'STCHKPRO'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20230411100932'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140120952358250707)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141846718414986036)
,p_plug_name=>'Check list de Productos - STCHKPRO'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141904378611792606)
,p_plug_name=>'CAB_1'
,p_parent_plug_id=>wwv_flow_imp.id(141846718414986036)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>200
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141904475724792607)
,p_plug_name=>'CAB_2'
,p_parent_plug_id=>wwv_flow_imp.id(141846718414986036)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>220
,p_plug_new_grid_row=>false
,p_plug_display_column=>9
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141846878808986037)
,p_plug_name=>'DETALLE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    SEQ_ID P_ID,',
'    C001 COD_EMPRESA,',
'    C002 NRO_PLANILLA, ',
'    C003 SER_COMPROBANTE, ',
'    C004 CODIGO_CHEQUEO, ',
'    APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                    p_value       => seq_id,',
'                    p_attributes  => (case C005',
'                                       when ''S'' then ''checked ''',
'                                      else null',
'                                     end )  )as ESTADO_CHEQUEO,   ',
'    C006 OBSERVACION,					',
'    C017 RID,',
'    NULL EDITAR,',
'    NULL ELIMINAR',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COL_DETALLE''',
'AND NVL(C030,''P'') <> ''B'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DETALLE'
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
 p_id=>wwv_flow_imp.id(141907648302792639)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>141907648302792639
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141907772920792640)
,p_db_column_name=>'P_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141907882620792641)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141907981899792642)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Planilla'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141908060854792643)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141908198498792644)
,p_db_column_name=>'CODIGO_CHEQUEO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Codigo Chequeo'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(141972344239773952)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141908219043792645)
,p_db_column_name=>'ESTADO_CHEQUEO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Estado Chequeo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141908327163792646)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141908487121792647)
,p_db_column_name=>'RID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Rid'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(142980188983230712)
,p_db_column_name=>'EDITAR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P480_SEQ_ID_EDITAR'',''#P_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(142980273360230713)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P480_SEQ_ID_ELIMINAR'',''#P_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(142034017708058653)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1420341'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDITAR:CODIGO_CHEQUEO:OBSERVACION:ESTADO_CHEQUEO:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141904561018792608)
,p_plug_name=>'CAB_3'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1030
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141904807259792611)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141908735891792650)
,p_plug_name=>'AGREGAR/EDITAR'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1050
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(142983985853230750)
,p_plug_name=>'DETALLE_SIN_ABM'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    SEQ_ID P_ID,',
'    C004 CODIGO_CHEQUEO, ',
'    APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                    p_value       => seq_id,',
'                    p_attributes  => (case C005',
'                                       when ''S'' then ''checked ''',
'                                      else null',
'                                     end )  )as ESTADO_CHEQUEO,   ',
'    C006 OBSERVACION				',
'   ',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COL_DETALLE''',
'AND NVL(C030,''P'') <> ''B'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DETALLE_SIN_ABM'
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
 p_id=>wwv_flow_imp.id(143136553222680501)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>143136553222680501
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143136673275680502)
,p_db_column_name=>'P_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143137018597680506)
,p_db_column_name=>'CODIGO_CHEQUEO'
,p_display_order=>50
,p_column_identifier=>'B'
,p_column_label=>'Codigo Chequeo'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(141972344239773952)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143137149586680507)
,p_db_column_name=>'ESTADO_CHEQUEO'
,p_display_order=>60
,p_column_identifier=>'C'
,p_column_label=>'Estado Chequeo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143137245738680508)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>70
,p_column_identifier=>'D'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(143150248378664626)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1431503'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CODIGO_CHEQUEO:OBSERVACION:ESTADO_CHEQUEO:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(141904684367792609)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(141904475724792607)
,p_button_name=>'BT_CONFIRMAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(142979878065230709)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(141908735891792650)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(142979685311230707)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(141908735891792650)
,p_button_name=>'BT_ACEPTAR_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(142979716317230708)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(141908735891792650)
,p_button_name=>'BT_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(141905091048792613)
,p_button_sequence=>230
,p_button_plug_id=>wwv_flow_imp.id(141846718414986036)
,p_button_name=>'BT_VOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:481:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-reply'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(141905125915792614)
,p_button_sequence=>240
,p_button_plug_id=>wwv_flow_imp.id(141846718414986036)
,p_button_name=>'BT_CONFIRMAR_CAMBIOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar Cambios'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save-as'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(141908616166792649)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(141846878808986037)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140121044194250708)
,p_name=>'P480_CONFIRMA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140121101538250709)
,p_name=>'P480_DIV'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140121242110250710)
,p_name=>'P480_DIRECCION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140121395829250711)
,p_name=>'P480_COD_EMPRESA'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140121424120250712)
,p_name=>'P480_CLIENTE_PERSONA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140121531244250713)
,p_name=>'P480_VCOD_ARTICULO_BON'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140121683835250714)
,p_name=>'P480_NOM_MODULO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140121753329250715)
,p_name=>'P480_NOM_SUCURSAL'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140121804293250716)
,p_name=>'P480_CANTIDAD_LINEAS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140121911541250717)
,p_name=>'P480_COD_EMPLEADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140122012550250718)
,p_name=>'P480_VCOD_ARTICULO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140122145682250719)
,p_name=>'P480_VCANTIDAD'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140122244250250720)
,p_name=>'P480_COD_CLIENTE_OCA'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140122304817250721)
,p_name=>'P480_TIP_VENTA'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140122421256250722)
,p_name=>'P480_COD_SUCURSAL'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140122581488250723)
,p_name=>'P480_CODSISMENU'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140122646639250724)
,p_name=>'P480_EXISTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140122741364250725)
,p_name=>'P480_INSERTA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140122838167250726)
,p_name=>'P480_COD_EMPRESA_POR_DEFECTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140122939117250727)
,p_name=>'P480_COD_COSTODIO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140123085034250728)
,p_name=>'P480_DERECHOS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140123161175250729)
,p_name=>'P480_VART'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140123255947250730)
,p_name=>'P480_VCANTIDAD_ART'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140123358123250731)
,p_name=>'P480_VCANTIDAD_MIN'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140123458767250732)
,p_name=>'P480_COD_MODULO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140123516011250733)
,p_name=>'P480_ESTA_CONSULTANDO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140123650599250734)
,p_name=>'P480_COD_FORMA'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140123732339250735)
,p_name=>'P480_NOM_FORMA'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140123821885250736)
,p_name=>'P480_NOM_EMPRESA'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140123991314250737)
,p_name=>'P480_COD_USUARIO'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140124067804250738)
,p_name=>'P480_COD_IDIOMA'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140124137962250739)
,p_name=>'P480_TIP_CONTADO'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140124261669250740)
,p_name=>'P480_TIP_CREDITO'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140124333722250741)
,p_name=>'P480_TIP_DEBITO'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140124468988250742)
,p_name=>'P480_TIP_TICKET'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140124594474250743)
,p_name=>'P480_SER_TIK'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140124685744250744)
,p_name=>'P480_SER_DEB'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140124762199250745)
,p_name=>'P480_TIP_REFERENCIAS'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140124843481250746)
,p_name=>'P480_TIP_ANTERIOR'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140124925374250747)
,p_name=>'P480_VENDEDOR_SERVICIOS'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140125006326250748)
,p_name=>'P480_REFERENCIA'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140125159903250749)
,p_name=>'P480_CONSULTA'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140125237961250750)
,p_name=>'P480_ESTADO_ANT'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141843270405986001)
,p_name=>'P480_TOT_CANTIDAD_ANT'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141843387203986002)
,p_name=>'P480_CARGA_SUCURSAL'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141843473779986003)
,p_name=>'P480_CARGA_COTIZACION'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141843579468986004)
,p_name=>'P480_COD_SUCURSAL_CENTRAL'
,p_item_sequence=>900
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141843671935986005)
,p_name=>'P480_SER_COMPROBANTE'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141843790866986006)
,p_name=>'P480_LISTA_PRECIOS'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141843801118986007)
,p_name=>'P480_NRO_MENSAJE'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141843981397986008)
,p_name=>'P480_CONDICION_VENTA'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141844012600986009)
,p_name=>'P480_COD_ARTICULO_ANT'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141844169662986010)
,p_name=>'P480_FEC_VENCIMIENTO'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141844252292986011)
,p_name=>'P480_NRO_AUTORIZACION'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141844323773986012)
,p_name=>'P480_NRO_CON_FINAL'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141844407184986013)
,p_name=>'P480_NRO_CON_INICIAL'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141844517547986014)
,p_name=>'P480_NRO_TIK_INICIAL'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141844620763986015)
,p_name=>'P480_NRO_TIK_FINAL'
,p_item_sequence=>840
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141844772414986016)
,p_name=>'P480_NRO_CRE_FINAL'
,p_item_sequence=>850
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141844827089986017)
,p_name=>'P480_NRO_CRE_INICIAL'
,p_item_sequence=>860
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141844995905986018)
,p_name=>'P480_SER_CON'
,p_item_sequence=>870
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141845065534986019)
,p_name=>'P480_SER_CRE'
,p_item_sequence=>880
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141845183323986020)
,p_name=>'P480_IMPRIME_CON'
,p_item_sequence=>910
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141845207462986021)
,p_name=>'P480_CAMBIA_FECHA'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141845327044986022)
,p_name=>'P480_USA_UM_DEF'
,p_item_sequence=>950
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141845573566986024)
,p_name=>'P480_TIP_IMPRESION_CON'
,p_item_sequence=>930
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_imp.id(141845605103986025)
,p_name=>'P480_MENSAJE_CREDITO'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141845717686986026)
,p_name=>'P480_RUBRO_REPUESTO'
,p_item_sequence=>1010
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141845948876986028)
,p_name=>'P480_IMPRIME_CRE'
,p_item_sequence=>920
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141846038544986029)
,p_name=>'P480_TIP_IMPRESION_CRE'
,p_item_sequence=>940
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141846123045986030)
,p_name=>'P480_MENSAJE_CONTADO'
,p_item_sequence=>960
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141846260366986031)
,p_name=>'P480_MODIFICA_FECHA_ANT'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141846326154986032)
,p_name=>'P480_RUBRO_MANO_OBRA'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141846403726986033)
,p_name=>'P480_MAX_NRO_FACTURA'
,p_item_sequence=>1020
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141846979759986038)
,p_name=>'P480_C_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(141846718414986036)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141847073949986039)
,p_name=>'P480_C_COD_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(141904378611792606)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sucursal||'' - ''||descripcion L, ',
'         cod_sucursal V',
'    FROM sucursales ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141847185133986040)
,p_name=>'P480_C_COD_DEPOSITO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(141846718414986036)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141847285219986041)
,p_name=>'P480_C_COD_BLOQUE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(141846718414986036)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141847349928986042)
,p_name=>'P480_C_OBSERVACIONES'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(141904561018792608)
,p_prompt=>'Observaciones'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141847428360986043)
,p_name=>'P480_C_CONFIRMADO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(141846718414986036)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141847571163986044)
,p_name=>'P480_C_COD_ARMADOR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(141904378611792606)
,p_prompt=>'Armador'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARMADOR_STCHKPRO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  r.cod_armador ||'' - ''||ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) nombre, r.cod_armador R',
'',
'    from RP_ARMADORES r, personas p',
'   where r.cod_empresa = :P_COD_EMPRESA',
'',
'     and nvl( r.activo, ''S'' ) = ''S''',
'     and r.cod_persona = p.cod_persona'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141847622432986045)
,p_name=>'P480_C_COD_ART_CORTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(141904378611792606)
,p_prompt=>'Cod. Corto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141847786315986046)
,p_name=>'P480_C_COD_ARTICULO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(141904378611792606)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_STCHKPRO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo||'' - ''||descripcion D, ',
'         cod_articulo R',
' from st_articulos',
'where cod_empresa = :P_COD_EMPRESA',
'and cod_rubro=''PR''',
'AND COD_MARCA IN (''EV'',''SPT'')',
'   order by 1 asc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141847801106986047)
,p_name=>'P480_C_NRO_GARANTIA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(141904378611792606)
,p_prompt=>'Garantia'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'number_field'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141847955909986048)
,p_name=>'P480_C_CANTIDAD'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(141846718414986036)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141848098809986049)
,p_name=>'P480_C_FECHA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(141904378611792606)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(141848188819986050)
,p_name=>'P480_C_NRO_PLANILLA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(141904378611792606)
,p_prompt=>unistr('N\00FAmero')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141903863259792601)
,p_name=>'P480_C_COD_USUARIO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(141904561018792608)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141903966477792602)
,p_name=>'P480_C_HORA_ALTA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(141904378611792606)
,p_prompt=>'Hora'
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
 p_id=>wwv_flow_imp.id(141904039272792603)
,p_name=>'P480_C_FECHA_FIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(141904475724792607)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141904152604792604)
,p_name=>'P480_C_HORA_FIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(141904475724792607)
,p_prompt=>'Hora'
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
 p_id=>wwv_flow_imp.id(141904204072792605)
,p_name=>'P480_C_COD_USUARIO_CONFIRMADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(141904475724792607)
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
 p_id=>wwv_flow_imp.id(141904961785792612)
,p_name=>'P480_P_NRO_PLANILLA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(141904807259792611)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142979010491230701)
,p_name=>'P480_A_COD_CHEQUEO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(141908735891792650)
,p_prompt=>unistr('C\00F3digo Chequeo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CHEQUEOS_STCHKPRO'
,p_lov=>' SELECT  COD_CHEQUEO||'' - ''||A.DESCRIPCION D, COD_CHEQUEO R FROM ST_LISTA_CHECK_ARTICULOS A'
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
 p_id=>wwv_flow_imp.id(142979144645230702)
,p_name=>'P480_A_DESC_CHEQUEO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(141908735891792650)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142979263200230703)
,p_name=>'P480_A_OBSERVACIONES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(141908735891792650)
,p_prompt=>'Observaciones'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142979308582230704)
,p_name=>'P480_A_ESTADO_CHEQUEO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(141908735891792650)
,p_prompt=>'Estado Chequeo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_grid_column=>11
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142980329295230714)
,p_name=>'P480_SEQ_ID_EDITAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(141908735891792650)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142980400347230715)
,p_name=>'P480_SEQ_ID_ELIMINAR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(141908735891792650)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142982525497230736)
,p_name=>'P480_AUX_MSJ_CONTROL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(141908735891792650)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142982733268230738)
,p_name=>'P480_ACCION_CAB'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(141846718414986036)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143139833493680534)
,p_name=>'P480_ROWID_CABECERA'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_imp.id(140120952358250707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143140103565680537)
,p_name=>'P480_MENSAJE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(141908735891792650)
,p_prompt=>unistr('Solo esta permitido la edici\00F3n de Observacion y Estado chequeo')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141907300820792636)
,p_name=>'BT_CONFIRMAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(141904684367792609)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141907402723792637)
,p_event_id=>wwv_flow_imp.id(141907300820792636)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P480_C_FECHA_FIN     := sysdate;',
'    :P480_C_COD_USUARIO_CONFIRMADO    := :P480_COD_USUARIO;',
'    :P480_C_HORA_FIN  :=TO_CHAR(sysdate,''hh24:mi:ss'');',
'    :P480_C_CONFIRMADO:=''S'';',
'END;'))
,p_attribute_02=>'P480_COD_USUARIO'
,p_attribute_03=>'P480_C_FECHA_FIN,P480_C_COD_USUARIO_CONFIRMADO,P480_C_HORA_FIN,P480_C_CONFIRMADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142981098844230721)
,p_event_id=>wwv_flow_imp.id(141907300820792636)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(141904684367792609)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P480_C_COD_USUARIO_CONFIRMADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142982839496230739)
,p_event_id=>wwv_flow_imp.id(141907300820792636)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(141908616166792649)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P480_C_COD_USUARIO_CONFIRMADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142983055237230741)
,p_event_id=>wwv_flow_imp.id(141907300820792636)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(142979716317230708)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P480_C_COD_USUARIO_CONFIRMADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143137639724680512)
,p_event_id=>wwv_flow_imp.id(141907300820792636)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141846878808986037)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P480_C_COD_USUARIO_CONFIRMADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143138082662680516)
,p_event_id=>wwv_flow_imp.id(141907300820792636)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(142983985853230750)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P480_C_COD_USUARIO_CONFIRMADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142981195630230722)
,p_event_id=>wwv_flow_imp.id(141907300820792636)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(141904684367792609)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P480_C_COD_USUARIO_CONFIRMADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142982970971230740)
,p_event_id=>wwv_flow_imp.id(141907300820792636)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(141908616166792649)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P480_C_COD_USUARIO_CONFIRMADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142983123053230742)
,p_event_id=>wwv_flow_imp.id(141907300820792636)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(142979716317230708)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P480_C_COD_USUARIO_CONFIRMADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143137754642680513)
,p_event_id=>wwv_flow_imp.id(141907300820792636)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141846878808986037)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P480_C_COD_USUARIO_CONFIRMADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143138115608680517)
,p_event_id=>wwv_flow_imp.id(141907300820792636)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(142983985853230750)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P480_C_COD_USUARIO_CONFIRMADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(142979425674230705)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(141908616166792649)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142982607377230737)
,p_event_id=>wwv_flow_imp.id(142979425674230705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P480_A_COD_CHEQUEO,P480_A_ESTADO_CHEQUEO,P480_A_OBSERVACIONES'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142979564171230706)
,p_event_id=>wwv_flow_imp.id(142979425674230705)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141908735891792650)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142979984130230710)
,p_event_id=>wwv_flow_imp.id(142979425674230705)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(142979685311230707)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142980046151230711)
,p_event_id=>wwv_flow_imp.id(142979425674230705)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(142979716317230708)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143140253559680538)
,p_event_id=>wwv_flow_imp.id(142979425674230705)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P480_MENSAJE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142981724587230728)
,p_event_id=>wwv_flow_imp.id(142979425674230705)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P480_A_ESTADO_CHEQUEO := ''N'';',
'end;'))
,p_attribute_03=>'P480_A_ESTADO_CHEQUEO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(142980504337230716)
,p_name=>'DA_EDITAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P480_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142980901560230720)
,p_event_id=>wwv_flow_imp.id(142980504337230716)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C004 CODIGO_CHEQUEO,',
'	C005 ESTADO_CHEQUEO,',
'	C006 OBSERVACION             ',
'INTO',
'    :P480_A_COD_CHEQUEO,',
'    :P480_A_ESTADO_CHEQUEO,',
'    :P480_A_OBSERVACIONES              ',
'from APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME = ''COL_DETALLE''',
'AND SEQ_ID = :P480_SEQ_ID_EDITAR;'))
,p_attribute_02=>'P480_SEQ_ID_EDITAR'
,p_attribute_03=>'P480_A_COD_CHEQUEO,P480_A_ESTADO_CHEQUEO,P480_A_OBSERVACIONES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142980619498230717)
,p_event_id=>wwv_flow_imp.id(142980504337230716)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(142979716317230708)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143140350136680539)
,p_event_id=>wwv_flow_imp.id(142980504337230716)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P480_MENSAJE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142980739789230718)
,p_event_id=>wwv_flow_imp.id(142980504337230716)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(142979685311230707)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142980800562230719)
,p_event_id=>wwv_flow_imp.id(142980504337230716)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141908735891792650)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(142981253520230723)
,p_name=>'DA_EDITAR_DETALLE'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(142979716317230708)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142981325262230724)
,p_event_id=>wwv_flow_imp.id(142981253520230723)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STCHKPRO.pr_editar_detalle(PI_SEQ_ID_EDITAR => :P480_SEQ_ID_EDITAR,',
'        PI_CODIGO_CHEQUEO => :P480_A_COD_CHEQUEO,',
'        PI_ESTADO_CHEQUEO => :P480_A_ESTADO_CHEQUEO,',
'        PI_OBSERVACION => :P480_A_OBSERVACIONES);',
'END;'))
,p_attribute_02=>'P480_SEQ_ID_EDITAR,P480_A_COD_CHEQUEO,P480_A_ESTADO_CHEQUEO,P480_A_OBSERVACIONES'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142981431790230725)
,p_event_id=>wwv_flow_imp.id(142981253520230723)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Registro modificado correctamente'
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142981509246230726)
,p_event_id=>wwv_flow_imp.id(142981253520230723)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141908735891792650)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142981635921230727)
,p_event_id=>wwv_flow_imp.id(142981253520230723)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141846878808986037)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143138326982680519)
,p_event_id=>wwv_flow_imp.id(142981253520230723)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(142983985853230750)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(142981930840230730)
,p_name=>'DA_AGREGAR_DETALLE'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(142979685311230707)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142982178239230732)
,p_event_id=>wwv_flow_imp.id(142981930840230730)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P480_AUX_MSJ_CONTROL := null;',
'if :P480_A_COD_CHEQUEO is not null then',
'    BEGIN',
'        STCHKPRO.pr_agregar_detalle(PI_COD_EMPRESA => :P480_C_COD_EMPRESA,',
'        PI_NRO_PLANILLA => :P480_C_NRO_PLANILLA,',
'        PI_SER_COMPROBANTE => :P480_SER_COMPROBANTE,',
'        PI_CODIGO_CHEQUEO => :P480_A_COD_CHEQUEO,',
'        PI_ESTADO_CHEQUEO => :P480_A_ESTADO_CHEQUEO,',
'        PI_OBSERVACION => :P480_A_OBSERVACIONES );',
'    END; ',
'else',
'    :P480_AUX_MSJ_CONTROL := 1;',
'    raise_application_error(-20201,''Por Favor ingrese el codigo chequeo.'');   ',
'end if;'))
,p_attribute_02=>'P480_C_COD_EMPRESA,P480_C_NRO_PLANILLA,P480_SER_COMPROBANTE,P480_A_COD_CHEQUEO,P480_A_ESTADO_CHEQUEO,P480_A_OBSERVACIONES'
,p_attribute_03=>'P480_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142982427823230735)
,p_event_id=>wwv_flow_imp.id(142981930840230730)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141846878808986037)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P480_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143138276739680518)
,p_event_id=>wwv_flow_imp.id(142981930840230730)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(142983985853230750)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P480_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142982392642230734)
,p_event_id=>wwv_flow_imp.id(142981930840230730)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141908735891792650)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P480_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142982289412230733)
,p_event_id=>wwv_flow_imp.id(142981930840230730)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Nuevo Registro a\00F1adido correctamente')
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P480_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(142983216582230743)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P480_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142983344496230744)
,p_event_id=>wwv_flow_imp.id(142983216582230743)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Nota: no se pueden eliminar registros confirmados'
,p_attribute_02=>unistr('\00BFEsta seguro que desea eliminar?')
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142983499850230745)
,p_event_id=>wwv_flow_imp.id(142983216582230743)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'STCHKPRO.pr_eliminar_miembro( PI_SEQ_ID_ELIMINAR => :P480_SEQ_ID_ELIMINAR);'
,p_attribute_02=>'P480_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142983524826230746)
,p_event_id=>wwv_flow_imp.id(142983216582230743)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Registro eliminado correctamente'
,p_attribute_02=>'ELIMINADO'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142983667977230747)
,p_event_id=>wwv_flow_imp.id(142983216582230743)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141846878808986037)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(142983775739230748)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(142979878065230709)
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
 p_id=>wwv_flow_imp.id(142983868049230749)
,p_event_id=>wwv_flow_imp.id(142983775739230748)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141908735891792650)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143138430069680520)
,p_name=>'DA_COD_ARTICULO'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P480_C_COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143138572610680521)
,p_event_id=>wwv_flow_imp.id(143138430069680520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P480_C_COD_ARTICULO IS NOT NULL THEN ',
'begin',
'select a.cod_art_corto',
'    into :P480_C_COD_ART_CORTO',
'    from st_articulos a, st_relaciones r ',
'   where a.cod_empresa = :P480_C_COD_EMPRESA  ',
'     and a.cod_articulo = :P480_C_COD_ARTICULO',
'     and a.cod_relacion_um = r.cod_relacion_um ',
'     and r.por_defecto = ''S'';',
'exception',
'	when others then ',
unistr('	    raise_application_error(-20201,''No se encuentra el c\00F3digo del ARTICULO.'');   '),
'end;',
'END IF;'))
,p_attribute_02=>'P480_C_COD_ARTICULO,P480_C_COD_EMPRESA'
,p_attribute_03=>'P480_C_COD_ART_CORTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143138601514680522)
,p_name=>'DA_COD_ART_CORTO'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P480_C_COD_ART_CORTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143138726843680523)
,p_event_id=>wwv_flow_imp.id(143138601514680522)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STCHKPRO.busca_CHECK(PI_COD_EMPRESA => :P480_C_COD_EMPRESA,',
'        PI_COD_ARTICULO => :P480_C_COD_ARTICULO);'))
,p_attribute_02=>'P480_C_COD_EMPRESA,P480_C_COD_ARTICULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143138865066680524)
,p_event_id=>wwv_flow_imp.id(143138601514680522)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141846878808986037)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143139371009680529)
,p_name=>'DA_CONFIRMAR_CAMBIOS'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(141905125915792614)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143139467775680530)
,p_event_id=>wwv_flow_imp.id(143139371009680529)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea Continuar?')
,p_attribute_02=>'Confirmar Cambios'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143139582241680531)
,p_event_id=>wwv_flow_imp.id(143139371009680529)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRMAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(143139622248680532)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CONFIRMAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STCHKPRO.pr_confirmar_cambios(PI_COD_EMPRESA => :P480_C_COD_EMPRESA,',
'            PI_ACCION => :P480_ACCION_CAB,',
'            PI_FECHA => :P480_C_FECHA,',
'            PI_COD_SUCURSAL => :P480_C_COD_SUCURSAL,',
'            PI_NRO_PLANILLA => :P480_C_NRO_PLANILLA,',
'            PI_OBSERVACIONES => :P480_C_OBSERVACIONES,',
'            PI_COD_USUARIO => :P480_C_COD_USUARIO,',
'            PI_HORA_ALTA => :P480_C_HORA_ALTA,',
'            PI_FECHA_FIN => :P480_C_FECHA_FIN,',
'            PI_HORA_FIN => :P480_C_HORA_FIN,',
'            PI_COD_USUARIO_CONFIRMADO => :P480_C_COD_USUARIO_CONFIRMADO,',
'            PI_COD_ARTICULO => :P480_C_COD_ARTICULO,',
'            PI_CANTIDAD => :P480_C_CANTIDAD,',
'            PI_NRO_GARANTIA => :P480_C_NRO_GARANTIA,',
'            PI_CONFIRMADO => :P480_C_CONFIRMADO,',
'            PI_COD_ARMADOR => :P480_C_COD_ARMADOR,',
'            PI_COD_ART_CORTO => :P480_C_COD_ART_CORTO,',
'            PI_ROWID => :P480_ROWID_CABECERA );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'DATOS CONFIRMADOS CORRACTAMENTE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(141904733125792610)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE-FORM',
':P480_COD_MODULO:= ''ST'';',
':P480_COD_EMPRESA := ''1'';',
'--INICIALIZAR GLOBALES',
':P480_COD_USUARIO := NVL(:P_COD_USUARIO,USER);',
':P480_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
':P480_NOM_EMPRESA := NVL(:P_NOM_EMPRESA,NULL);',
':P480_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');',
':P480_NOM_SUCURSAL := NVL(:P_NOM_SUCURSAL,NULL);',
':P480_COD_MODULO := NVL(:P_COD_MODULO,''ST'');',
'--KEY COMMIT',
'IF :P480_P_NRO_PLANILLA IS NULL THEN',
'    :P480_ACCION_CAB := ''A'';',
'  BEGIN',
'    select nvl( max( nro_planilla ), 0 ) + 1',
'      into :P480_C_NRO_PLANILLA',
'      from ST_CKECK_PRODUCTOS_CAB ',
'     where cod_empresa = :P480_COD_EMPRESA;',
'    IF :P480_C_NRO_PLANILLA IS NULL THEN',
'      :P480_C_NRO_PLANILLA := 1;',
'    END IF;',
'  EXCEPTION',
'    when no_data_found then',
'      :P480_C_NRO_PLANILLA := 1;',
'    when others then',
'    RAISE_APPLICATION_ERROR (-20111,''Error en la tabla de Garantia/Productos Cabecera. ''  || SQLERRM);',
'  END;',
'    :P480_C_COD_EMPRESA     := :P480_COD_EMPRESA;',
'    :P480_C_COD_SUCURSAL   := :P480_COD_SUCURSAL;',
'    :P480_C_COD_USUARIO     := :P480_COD_USUARIO;',
'    :P480_C_FECHA   := sysdate;',
'    :P480_C_HORA_ALTA :=TO_CHAR(sysdate,''hh24:mi:ss'');',
'    :P480_C_CONFIRMADO:=''N'';',
'else',
'    :P480_ACCION_CAB := ''E'';',
'   :P480_C_NRO_PLANILLA := :P480_P_NRO_PLANILLA;',
'   STCHKPRO.pr_cargar_cabecera (PI_COD_EMPRESA => :P480_COD_EMPRESA,PI_NRO_PLANILLA => :P480_C_NRO_PLANILLA);',
'   BEGIN',
'   select',
'        c001 COD_EMPRESA,',
'        c002 FECHA, ',
'        c003 COD_SUCURSAL,         ',
'        c005 OBSERVACIONES, ',
'        c006 COD_USUARIO,',
'        c007 HORA_ALTA,',
'        c008 FECHA_FIN,',
'        c009 HORA_FIN,',
'        c010 COD_USUARIO_CONFIRMADO,',
'        c011 COD_ARTICULO,',
'        c012 CANTIDAD,',
'        c013 NRO_GARANTIA,',
'        c014 CONFIRMADO,',
'        c015 COD_ARMADOR,',
'        c016 COD_ART_CORTO,',
'        c017 RID',
'    into',
'        :P480_C_COD_EMPRESA,',
'        :P480_C_FECHA,',
'        :P480_C_COD_SUCURSAL,',
'        :P480_C_OBSERVACIONES,',
'        :P480_C_COD_USUARIO,',
'        :P480_C_HORA_ALTA,',
'        :P480_C_FECHA_FIN,',
'        :P480_C_HORA_FIN,',
'        :P480_C_COD_USUARIO_CONFIRMADO,',
'        :P480_C_COD_ARTICULO,',
'        :P480_C_CANTIDAD,',
'        :P480_C_NRO_GARANTIA,',
'        :P480_C_CONFIRMADO,',
'        :P480_C_COD_ARMADOR,',
'        :P480_C_COD_ART_CORTO,',
'        :P480_ROWID_CABECERA',
'    from apex_collections',
'    where collection_name = ''COL_CABECERA'';',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'    	    APEX_DEBUG.ERROR (SQLERRM);',
'    END;',
'           ',
'END IF;',
'STCHKPRO.pr_cargar_detalle (',
'   PI_COD_EMPRESA => :P480_COD_EMPRESA,',
'   PI_NRO_PLANILLA => :P480_C_NRO_PLANILLA);'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
