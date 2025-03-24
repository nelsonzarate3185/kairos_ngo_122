prompt --application/pages/page_00386
begin
--   Manifest
--     PAGE: 00386
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
 p_id=>386
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Aplicacion de Notas de Credito - CCCANCUO'
,p_alias=>'APLICACION-DE-NOTAS-DE-CREDITO-CCCANCUO'
,p_step_title=>'Aplicacion de Notas de Credito - CCCANCUO'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.ui-dialog{',
'    width: 1000px !important;',
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DFINO'
,p_last_upd_yyyymmddhh24miss=>'20230424135753'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108555008528810708)
,p_plug_name=>unistr('Aplicaci\00F3n de Notas de Cr\00E9dito - CCCANCUO')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108558779019810745)
,p_plug_name=>'Contenedor Variables'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110767604209397319)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(40070279985263645)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(40189153869263678)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110964064319268213)
,p_plug_name=>'Contenedor buscador'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110964775561268220)
,p_plug_name=>'COLEC_CC_CANCELA_CUOTAS_DET'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 COD_EMPRESA,',
'       c002 NRO_CANCELACION,',
'       c003 TIP_COMPROBANTE,',
'       c004 SER_COMPROBANTE,',
'       c005 NRO_COMPROBANTE,',
'       c006 NRO_CUOTA,',
'       c007 COD_MONEDA,',
'       c008 TIP_CAMBIO,',
'       n001 IMPORTE,',
'       c009 TIPO_MOVIMIENTO,',
'       c010 PORC_GRAVADAS,',
'       c011 ROW_ID,',
'       c012 CONTROL,',
'       c013 FEC_VENCIMIENTO,',
'       n002 CREDITO,',
'       NULL EDITAR,',
'       NULL BORRAR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COLEC_CC_CANCELA_CUOTAS_DET''',
'   AND (c012 = ''U'' OR c012 = ''I'' OR c012 IS NULL)',
'ORDER BY seq_id DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COLEC_CC_CANCELA_CUOTAS_DET'
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
 p_id=>wwv_flow_imp.id(110964829187268221)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>110964829187268221
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110964959606268222)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110965045882268223)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110965115605268224)
,p_db_column_name=>'NRO_CANCELACION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Cancelacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110965223521268225)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110965345718268226)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110965483147268227)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('N\00BA')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110965531665268228)
,p_db_column_name=>'NRO_CUOTA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cuota'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110965662797268229)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(91612397972797839)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110965763253268230)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Tipo Cambio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110965870013268231)
,p_db_column_name=>'IMPORTE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Monto Cuota'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110965939018268232)
,p_db_column_name=>'TIPO_MOVIMIENTO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Tipo Movimiento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110966060674268233)
,p_db_column_name=>'PORC_GRAVADAS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Porc Gravadas'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110966102264268234)
,p_db_column_name=>'ROW_ID'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110966234515268235)
,p_db_column_name=>'CONTROL'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110966338455268236)
,p_db_column_name=>'EDITAR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P386_EDIT_DATA_DET'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110966459074268237)
,p_db_column_name=>'BORRAR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P386_DELETE_DATA_DET'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112166389998065505)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Vencimiento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112166498995065506)
,p_db_column_name=>'CREDITO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>unistr('Cr\00E9dito')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(111489072344101523)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1114891'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:NRO_CUOTA:FEC_VENCIMIENTO:IMPORTE:COD_MONEDA:TIP_CAMBIO:CREDITO:EDITAR:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110967548128268248)
,p_plug_name=>'Agregar/Editar Detalle'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111498481899120313)
,p_plug_name=>'Contenedor Cabecera y Detalle'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(111497990229120308)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(110967548128268248)
,p_button_name=>'BTAGREGAR_EDITAR_DET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar/Editar Registro'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110964510786268218)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(110964064319268213)
,p_button_name=>'BTBUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(108558508075810743)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(108555008528810708)
,p_button_name=>'BTVOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Volver'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:387:&SESSION.::&DEBUG.:387::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(112167539961065517)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(108555008528810708)
,p_button_name=>'BTGUARDAR_DATOS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Datos'
,p_button_position=>'COPY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110966519776268238)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(110964775561268220)
,p_button_name=>'BTAGREGAR_DET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(112167696174065518)
,p_branch_name=>'GO_TO_387'
,p_branch_action=>'f?p=&APP_ID.:387:&SESSION.::&DEBUG.:387::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108555106561810709)
,p_name=>'P386_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(108558779019810745)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108555229136810710)
,p_name=>'P386_TIPO_TRANS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(108558779019810745)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108555317714810711)
,p_name=>'P386_SUB_TIPO_TRANS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(108558779019810745)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108555438718810712)
,p_name=>'P386_SER_RECIBO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(108558779019810745)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108555564031810713)
,p_name=>'P386_COD_MONEDA_BASE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(108558779019810745)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108555621922810714)
,p_name=>'P386_TIPO_CREDITO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(108558779019810745)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108555726602810715)
,p_name=>'P386_TIPO_NOTACRE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(108558779019810745)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108555896818810716)
,p_name=>'P386_SER_REC_GC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(108558779019810745)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108555925729810717)
,p_name=>'P386_NRO_REC_GC'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(108558779019810745)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108558677009810744)
,p_name=>'P386_NRO_CANCELACION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(108555008528810708)
,p_prompt=>unistr('N\00FAmero')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108558899148810746)
,p_name=>'P386_FEC_CACELACION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(108555008528810708)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_column=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108558921892810747)
,p_name=>'P386_COD_CLIENTE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(108555008528810708)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_CCCANCUO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select /*+ rule */',
'       C.cod_cliente CODIGO, ',
'       nombre NOMBRE',
'  from cc_clientes c, personas p, CC_SALDOS SAL',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_persona = p.cod_persona',
'   and nvl(estado,''A'') NOT IN (''I'')',
'   AND SAL.COD_EMPRESA=C.COD_EMPRESA',
'   AND SAL.COD_CLIENTE=C.COD_CLIENTE',
'',
'GROUP BY C.cod_cliente, nombre',
' order by nombre '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'NOMBRE:P386_NOMBRE_CLIENTE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108559032432810748)
,p_name=>'P386_TIP_COMPROBANTE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(108555008528810708)
,p_prompt=>'Tipo Comprobante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SALFAC_CCCANCUO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select /*+ RULE */ tipo_comprobante,',
'       substr(ser_comprobante,1,8) ser_comprobante, ',
'       nro_comprobante, ',
'       nro_cuota, ',
'       saldo_cuota - nvl( rec_pendientes,0) as saldo_cuota , ',
'       monto_cuota, ',
'       cod_moneda_cuota, ',
'       fec_vencimiento,',
'       fec_acobrar',
'  from cc_saldos',
' where cod_empresa = :P_COD_EMPRESA',
'   and cod_cliente = :P386_COD_CLIENTE',
'   and ((:P386_CONTROL_ORIGEN = 0 AND ( saldo_cuota ) > 0) OR :P386_CONTROL_ORIGEN = 1)',
'   and ((nro_comprobante = :P386_NRO_REC_GC) or :P386_NRO_REC_GC is null)',
'order by fec_vencimiento'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P386_COD_CLIENTE'
,p_ajax_items_to_submit=>'P386_COD_CLIENTE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'1000'
,p_attribute_10=>'NRO_CUOTA:P386_NRO_CUOTA_AUX,SER_COMPROBANTE:P386_SER_COMPROBANTE_AUX'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108559190292810749)
,p_name=>'P386_SER_COMPROBANTE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(108555008528810708)
,p_prompt=>'Serie Comprobante'
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
 p_id=>wwv_flow_imp.id(108559238944810750)
,p_name=>'P386_NRO_COMPROBANTE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(108555008528810708)
,p_prompt=>unistr('N\00BA Comprobante')
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
 p_id=>wwv_flow_imp.id(110962811526268201)
,p_name=>'P386_NRO_CUOTA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(108555008528810708)
,p_prompt=>unistr('N\00BA Cuota')
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
 p_id=>wwv_flow_imp.id(110962918552268202)
,p_name=>'P386_FEC_VENCIMIENTO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(108555008528810708)
,p_prompt=>'Fecha de Vencimiento'
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
 p_id=>wwv_flow_imp.id(110963056706268203)
,p_name=>'P386_IMPORTE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(108555008528810708)
,p_prompt=>'Importe'
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
 p_id=>wwv_flow_imp.id(110963105011268204)
,p_name=>'P386_TIPO_CAMBIO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(108555008528810708)
,p_prompt=>'Tipo Cambio'
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
 p_id=>wwv_flow_imp.id(110963208783268205)
,p_name=>'P386_COD_MONEDA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(108555008528810708)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MONEDAS_CAENTSAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_moneda R, ',
'       cod_moneda||'' - ''||descripcion D',
'  from monedas '))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(110963434717268207)
,p_name=>'P386_CONTROL_ORIGEN'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(108558779019810745)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110964124834268214)
,p_name=>'P386_NRO_DESDE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(110964064319268213)
,p_prompt=>unistr('N\00BA Desde')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110964242223268215)
,p_name=>'P386_NRO_HASTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(110964064319268213)
,p_prompt=>unistr('N\00BA Hasta')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110964398717268216)
,p_name=>'P386_FECHA_INI'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(110964064319268213)
,p_prompt=>'Fecha Desde'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(110964403674268217)
,p_name=>'P386_FECHA_FIN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(110964064319268213)
,p_prompt=>'Fecha Hasta'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(110966638356268239)
,p_name=>'P386_EDIT_DATA_DET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(110964775561268220)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110966789444268240)
,p_name=>'P386_DELETE_DATA_DET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(110964775561268220)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110967637859268249)
,p_name=>'P386_TIP_COMPROBANTE_ADD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(110967548128268248)
,p_prompt=>'Tip. Comprobante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SALNCR_CCCANCUO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select /*+ RULE */ tipo_comprobante,',
'       substr(ser_comprobante,1,8) ser_comprobante, ',
'       nro_comprobante, ',
'       nro_cuota, ',
'       saldo_cuota - nvl( rec_pendientes,0) as saldo_cuota , ',
'       monto_cuota, ',
'       cod_moneda_cuota, ',
'       fec_vencimiento,',
'       fec_acobrar',
'  from cc_saldos',
' where cod_empresa = :P_COD_EMPRESA',
'   and cod_cliente = :P386_COD_CLIENTE',
'   and ( saldo_cuota ) < 0 ',
'   and ((nro_comprobante = :P386_NRO_REC_GC) or :P386_NRO_REC_GC is null)',
'order by fec_vencimiento',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(110967734876268250)
,p_name=>'P386_SER_COMPROBANTE_ADD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(110967548128268248)
,p_prompt=>'Ser. Comprobante'
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
 p_id=>wwv_flow_imp.id(111497239378120301)
,p_name=>'P386_NRO_COMPROBANTE_ADD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(110967548128268248)
,p_prompt=>unistr('N\00BA Comprobante')
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
 p_id=>wwv_flow_imp.id(111497315295120302)
,p_name=>'P386_NRO_CUOTA_ADD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(110967548128268248)
,p_prompt=>unistr('N\00BA Cuota')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111497426303120303)
,p_name=>'P386_FEC_VENCIMIENTO_ADD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(110967548128268248)
,p_prompt=>'Fecha de Vencimiento'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111497585799120304)
,p_name=>'P386_IMPORTE_ADD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(110967548128268248)
,p_prompt=>'Monto Cuota'
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
 p_id=>wwv_flow_imp.id(111497692769120305)
,p_name=>'P386_TIPO_CAMBIO_ADD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(110967548128268248)
,p_prompt=>'Tipo Cambio'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111497742204120306)
,p_name=>'P386_COD_MONEDA_ADD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(110967548128268248)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MONEDAS_CAENTSAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_moneda R, ',
'       cod_moneda||'' - ''||descripcion D',
'  from monedas '))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(111497820296120307)
,p_name=>'P386_CREDITO_ADD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(110967548128268248)
,p_prompt=>unistr('Cr\00E9dito')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111498054907120309)
,p_name=>'P386_TOT_CREDITO_GRAV'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(108555008528810708)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111498138087120310)
,p_name=>'P386_PORC_GRAVADAS'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(108555008528810708)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111498539416120314)
,p_name=>'P386_TOT_CREDITO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(111498481899120313)
,p_prompt=>unistr('Tot. Cr\00E9dito')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
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
 p_id=>wwv_flow_imp.id(111498674465120315)
,p_name=>'P386_DIFERENCIA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(111498481899120313)
,p_prompt=>'Diferencia'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111498769311120316)
,p_name=>'P386_COD_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(111498481899120313)
,p_prompt=>'Dato Administrativo Usuario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>9
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111498838428120317)
,p_name=>'P386_ANULADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(111498481899120313)
,p_prompt=>'Anulado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>9
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111498915301120318)
,p_name=>'P386_CARGA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(110964775561268220)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111499386682120322)
,p_name=>'P386_MENSAJE_BUSCA_NC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(110964775561268220)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111499494176120323)
,p_name=>'P386_CREDITO_ANT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(110964775561268220)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111499521621120324)
,p_name=>'P386_CREDITO_GRAV'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(110964775561268220)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111499646090120325)
,p_name=>'P386_CREDITO_GRAV_ANT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(110964775561268220)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111500337932120332)
,p_name=>'P386_TIP_COMPROBANTE_AUX'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(108555008528810708)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111500435222120333)
,p_name=>'P386_TIP_COMPROBANTE_ADD_AUX'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(110967548128268248)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111500939345120338)
,p_name=>'P386_SALDO_CUOTA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(110967548128268248)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111501055784120339)
,p_name=>'P386_MENSAJE_IMPORTE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(110967548128268248)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111502019198120349)
,p_name=>'P386_TIPO_MOVIMIENTO_ADD'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(110967548128268248)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126307371191686818)
,p_name=>'P386_NOMBRE_CLIENTE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(108555008528810708)
,p_prompt=>'Nombre Cliente'
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
 p_id=>wwv_flow_imp.id(126307434184686819)
,p_name=>'P386_NRO_CUOTA_AUX'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(108555008528810708)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126308098947686825)
,p_name=>'P386_SER_COMPROBANTE_AUX'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(108555008528810708)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110963518388268208)
,p_name=>'DA_COD_CLIENTE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P386_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110963659182268209)
,p_event_id=>wwv_flow_imp.id(110963518388268208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P386_COD_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110966816594268241)
,p_name=>'DA_EDIT_DATA_DET'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P386_EDIT_DATA_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110966990974268242)
,p_event_id=>wwv_flow_imp.id(110966816594268241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P386_EDIT_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112166670640065508)
,p_event_id=>wwv_flow_imp.id(110966816594268241)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110967548128268248)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112166780188065509)
,p_event_id=>wwv_flow_imp.id(110966816594268241)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCANCUO.OBTENER_DATOS_COL_DET(pseq_id              => :P386_EDIT_DATA_DET,',
'                                   ptip_comprobante     => :P386_TIP_COMPROBANTE_ADD,',
'                                   pser_comprobante     => :P386_SER_COMPROBANTE_ADD,',
'                                   pnro_comprobante     => :P386_NRO_COMPROBANTE_ADD,',
'                                   pnro_cuota           => :P386_NRO_CUOTA_ADD,',
'                                   pcod_moneda          => :P386_COD_MONEDA_ADD,',
'                                   ptip_cambio          => :P386_TIPO_CAMBIO_ADD,',
'                                   ptipo_movimiento     => :P386_TIPO_MOVIMIENTO_ADD,',
'                                   pporc_gravadas       => :P386_PORC_GRAVADAS,',
'                                   pimporte             => :P386_IMPORTE_ADD,',
'                                   pfec_vencimiento     => :P386_FEC_VENCIMIENTO_ADD,',
'                                   pcredito             => :P386_CREDITO_ADD,',
'                                   ptip_comprobante_aux => :P386_TIP_COMPROBANTE_ADD_AUX);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_EDIT_DATA_DET OBTENER_DATOS_EDIT ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P386_EDIT_DATA_DET'
,p_attribute_03=>'P386_TIP_COMPROBANTE_ADD,P386_SER_COMPROBANTE_ADD,P386_NRO_COMPROBANTE_ADD,P386_NRO_CUOTA_ADD,P386_COD_MONEDA_ADD,P386_TIPO_CAMBIO_ADD,P386_TIPO_MOVIMIENTO_ADD,P386_PORC_GRAVADAS,P386_IMPORTE_ADD,P386_FEC_VENCIMIENTO_ADD,P386_CREDITO_ADD,P386_TIP_COM'
||'PROBANTE_ADD_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110967053625268243)
,p_name=>'DA_DELETE_DATA_DET'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P386_DELETE_DATA_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110967102941268244)
,p_event_id=>wwv_flow_imp.id(110967053625268243)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P386_DELETE_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110967284153268245)
,p_event_id=>wwv_flow_imp.id(110967053625268243)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCANCUO.DELETE_COL(pseq_id   => :P386_DELETE_DATA_DET, ',
'                        p_col     => ''COLEC_CC_CANCELA_CUOTAS_DET'',',
'                        patributo => 12);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DELETE_DATA_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P386_DELETE_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112166589202065507)
,p_event_id=>wwv_flow_imp.id(110967053625268243)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110964775561268220)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110967318268268246)
,p_name=>'DA_AGREGAR_DET'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(110966519776268238)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111498240520120311)
,p_event_id=>wwv_flow_imp.id(110967318268268246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P386_TIP_COMPROBANTE_ADD,P386_SER_COMPROBANTE_ADD,P386_NRO_COMPROBANTE_ADD,P386_NRO_CUOTA_ADD,P386_FEC_VENCIMIENTO_ADD,P386_IMPORTE_ADD,P386_TIPO_CAMBIO_ADD,P386_COD_MONEDA_ADD,P386_CREDITO_ADD,P386_EDIT_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110967440692268247)
,p_event_id=>wwv_flow_imp.id(110967318268268246)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110967548128268248)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111500096545120329)
,p_name=>'DA_TIP_COMPROBANTE'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P386_TIP_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111500129248120330)
,p_event_id=>wwv_flow_imp.id(111500096545120329)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P386_TIP_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111500208419120331)
,p_event_id=>wwv_flow_imp.id(111500096545120329)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCANCUO.GET_INFO_COMPROBANTE(pnro_comprobante_in => :P386_TIP_COMPROBANTE,',
'                                  pcod_empresa        => :P_COD_EMPRESA,',
'                                  pcod_cliente        => :P386_COD_CLIENTE,',
'                                  pcontrol            => 1,',
'                                  pnro_cuota_in       => :P386_NRO_CUOTA_AUX,',
'                                  pser_comprobante_id => :P386_SER_COMPROBANTE_AUX,',
'                                  ptip_comprobante    => :P386_TIP_COMPROBANTE_AUX,',
'                                  pser_comprobante    => :P386_SER_COMPROBANTE,',
'                                  pnro_comprobante    => :P386_NRO_COMPROBANTE,',
'                                  pnro_cuota          => :P386_NRO_CUOTA,',
'                                  pimporte            => :P386_IMPORTE,',
'                                  pcod_moneda         => :P386_COD_MONEDA,',
'                                  pfec_vencimiento    => :P386_FEC_VENCIMIENTO);',
'',
'    BEGIN',
'        :P386_IMPORTE := TO_CHAR(:P386_IMPORTE,''999G999G999G990'');',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'        :P386_IMPORTE := NULL;',
'        APEX_DEBUG.ERROR(''DA_IMPORTE ''||SQLERRM);',
'    END;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_TIP_COMPROBANTE ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P386_TIP_COMPROBANTE,P_COD_EMPRESA,P386_COD_CLIENTE,P386_NRO_CUOTA_AUX,P386_SER_COMPROBANTE_AUX'
,p_attribute_03=>'P386_SER_COMPROBANTE,P386_NRO_COMPROBANTE,P386_NRO_CUOTA,P386_IMPORTE,P386_COD_MONEDA,P386_FEC_VENCIMIENTO,P386_TIP_COMPROBANTE_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P386_TIP_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111500507878120334)
,p_name=>'DA_TIP_COMPROBANTE_ADD'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P386_TIP_COMPROBANTE_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111500632031120335)
,p_event_id=>wwv_flow_imp.id(111500507878120334)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P386_TIP_COMPROBANTE_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111500761787120336)
,p_event_id=>wwv_flow_imp.id(111500507878120334)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCANCUO.GET_INFO_COMPROBANTE(pnro_comprobante_in => :P386_TIP_COMPROBANTE_ADD,',
'                                  pcod_empresa        => :P_COD_EMPRESA,',
'                                  pcod_cliente        => :P386_COD_CLIENTE,',
'                                  pnro_cuota_in       => :P386_NRO_CUOTA_AUX,',
'                                  pser_comprobante_id => :P386_SER_COMPROBANTE_AUX,',
'                                  ptip_comprobante    => :P386_TIP_COMPROBANTE_ADD_AUX,',
'                                  pser_comprobante    => :P386_SER_COMPROBANTE_ADD,',
'                                  pnro_comprobante    => :P386_NRO_COMPROBANTE_ADD,',
'                                  pnro_cuota          => :P386_NRO_CUOTA_ADD,',
'                                  pimporte            => :P386_IMPORTE_ADD,',
'                                  pcod_moneda         => :P386_COD_MONEDA_ADD,',
'                                  pfec_vencimiento    => :P386_FEC_VENCIMIENTO_ADD);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_TIP_COMPROBANTE ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P386_TIP_COMPROBANTE_ADD,P_COD_EMPRESA,P386_COD_CLIENTE,P386_NRO_CUOTA_AUX,P386_SER_COMPROBANTE_AUX'
,p_attribute_03=>'P386_TIP_COMPROBANTE_ADD_AUX,P386_SER_COMPROBANTE_ADD,P386_NRO_COMPROBANTE_ADD,P386_NRO_CUOTA_ADD,P386_IMPORTE_ADD,P386_COD_MONEDA_ADD,P386_FEC_VENCIMIENTO_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P386_TIP_COMPROBANTE_ADD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111500867755120337)
,p_event_id=>wwv_flow_imp.id(111500507878120334)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P386_NRO_COMPROBANTE_ADD IS NULL THEN',
'    APEX_DEBUG.ERROR(''ENTRO A BUSCAR_NC'');',
'        CCCANCUO.BUSCA_NC(pcod_empresa     => :P_COD_EMPRESA,',
'                          ptip_comprobante => :P386_TIP_COMPROBANTE_ADD,',
'                          pser_comprobante => :P386_SER_COMPROBANTE_ADD,',
'                          pnro_comprobante => :P386_NRO_COMPROBANTE_ADD,',
'                          pnro_cuota       => :P386_NRO_CUOTA_ADD,',
'                          pcarga           => :P386_CARGA,',
'                          pcod_cliente     => :P386_COD_CLIENTE,',
'                          pmensaje         => :P386_MENSAJE_BUSCA_NC,',
'                          pfec_vencimiento => :P386_FEC_VENCIMIENTO_ADD,',
'                          pcod_moneda      => :P386_COD_MONEDA_ADD,',
'                          pporc_gravadas   => :P386_PORC_GRAVADAS,',
'                          pimporte         => :P386_IMPORTE_ADD);',
'    END IF;',
'',
'    IF :P386_COD_MONEDA_ADD IS NOT NULL AND NVL(:P386_TIPO_CAMBIO_ADD,0) = 0 THEN',
'        BEGIN',
'            SELECT TIPO_CAMBIO_DIA',
'              INTO :P386_TIPO_CAMBIO_ADD',
'              FROM MONEDAS',
'             WHERE COD_MONEDA = :P386_COD_MONEDA_ADD;',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'            :P386_TIPO_CAMBIO_ADD := NULL;',
'        END;',
'    END IF;',
'--APEX_DEBUG.ERROR(''ENTRO A LA ACCION 3'');',
'    CCCANCUO.CALCULOS(pcod_moneda_cab      => :P386_COD_MONEDA,',
'                      pcod_moneda_det      => :P386_COD_MONEDA_ADD,',
'                      pimporte             => :P386_IMPORTE_ADD,',
'                      ptip_cambio          => :P386_TIPO_CAMBIO_ADD,',
'                      pporc_gravadas       => :P386_PORC_GRAVADAS,',
'                      ptot_credito_in      => :P386_TOT_CREDITO,',
'                      pcredito_in          => :P386_CREDITO_ADD,',
'                      pcredito_ant_in      => :P386_CREDITO_ANT,',
'                      ptot_credito_grav_in => :P386_TOT_CREDITO_GRAV,',
'                      pcredito_grav_in     => :P386_CREDITO_GRAV,',
'                      pcredito_grav_ant_in => :P386_CREDITO_GRAV_ANT,',
'                      pcredito             => :P386_CREDITO_ADD,',
'                      pcredito_grav        => :P386_CREDITO_GRAV,',
'                      ptot_credito         => :P386_TOT_CREDITO,',
'                      ptot_credito_grav    => :P386_TOT_CREDITO_GRAV, ',
'                      pcredito_ant         => :P386_CREDITO_ANT,',
'                      pcredito_grav_ant    => :P386_CREDITO_GRAV_ANT,',
'                      pdiferencia          => :P386_DIFERENCIA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_TIP_COMPROBANTE_ADD ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P386_TIP_COMPROBANTE_ADD,P386_SER_COMPROBANTE_ADD,P386_NRO_COMPROBANTE_ADD,P386_NRO_CUOTA_ADD,P386_CARGA,P386_COD_CLIENTE,P386_COD_MONEDA_ADD,P386_TIPO_CAMBIO_ADD,P386_COD_MONEDA,P386_IMPORTE_ADD,P386_PORC_GRAVADAS,P386_TOT_CREDITO,P386'
||'_CREDITO_ADD,P386_CREDITO_ANT,P386_TOT_CREDITO_GRAV,P386_CREDITO_GRAV,P386_CREDITO_GRAV_ANT'
,p_attribute_03=>'P386_MENSAJE_BUSCA_NC,P386_FEC_VENCIMIENTO_ADD,P386_COD_MONEDA_ADD,P386_PORC_GRAVADAS,P386_IMPORTE_ADD,P386_TIPO_CAMBIO_ADD,P386_CREDITO_ADD,P386_CREDITO_GRAV,P386_TOT_CREDITO,P386_TOT_CREDITO_GRAV,P386_CREDITO_ANT,P386_CREDITO_GRAV_ANT,P386_DIFERENC'
||'IA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P386_TIP_COMPROBANTE_ADD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111501122666120340)
,p_name=>'DA_IMPORTE_ADD'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P386_IMPORTE_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111501201008120341)
,p_event_id=>wwv_flow_imp.id(111501122666120340)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P386_IMPORTE_ADD,P386_TIP_COMPROBANTE_ADD_AUX,P386_SER_COMPROBANTE_ADD,P386_NRO_COMPROBANTE_ADD,P386_NRO_CUOTA_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111501312464120342)
,p_event_id=>wwv_flow_imp.id(111501122666120340)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VERROR1 EXCEPTION;',
'VERROR2 EXCEPTION;',
'VERROR3 EXCEPTION;',
'VERROR4 EXCEPTION;',
'BEGIN',
'    IF :P386_IMPORTE_ADD > 0 THEN',
'        RAISE VERROR1;',
'    END IF;',
'',
'    BEGIN',
'        select saldo_cuota',
'          into :P386_SALDO_CUOTA',
'          from cc_saldos',
'         where cod_empresa = :P_COD_EMPRESA',
'           AND tipo_comprobante = :P386_TIP_COMPROBANTE_ADD_AUX',
'           AND ser_comprobante = :P386_SER_COMPROBANTE_ADD',
'           AND nro_comprobante = :P386_NRO_COMPROBANTE_ADD',
'           AND nro_cuota = :P386_NRO_CUOTA_ADD;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        RAISE VERROR2;',
'        WHEN OTHERS THEN',
'        RAISE VERROR3;',
'    END;',
'',
'    IF :P386_IMPORTE_ADD < :P386_SALDO_CUOTA THEN',
'        RAISE VERROR4;',
'    END IF;',
'',
'    CCCANCUO.CALCULOS(pcod_moneda_cab      => :P386_COD_MONEDA,',
'                      pcod_moneda_det      => :P386_COD_MONEDA_ADD,',
'                      pimporte             => :P386_IMPORTE_ADD,',
'                      ptip_cambio          => :P386_TIPO_CAMBIO_ADD,',
'                      pporc_gravadas       => :P386_PORC_GRAVADAS,',
'                      ptot_credito_in      => :P386_TOT_CREDITO,',
'                      pcredito_in          => :P386_CREDITO_ADD,',
'                      pcredito_ant_in      => :P386_CREDITO_ANT,',
'                      ptot_credito_grav_in => :P386_TOT_CREDITO_GRAV,',
'                      pcredito_grav_in     => :P386_CREDITO_GRAV,',
'                      pcredito_grav_ant_in => :P386_CREDITO_GRAV_ANT,',
'                      pcredito             => :P386_CREDITO_ADD,',
'                      pcredito_grav        => :P386_CREDITO_GRAV,',
'                      ptot_credito         => :P386_TOT_CREDITO,',
'                      ptot_credito_grav    => :P386_TOT_CREDITO_GRAV, ',
'                      pcredito_ant         => :P386_CREDITO_ANT,',
'                      pcredito_grav_ant    => :P386_CREDITO_GRAV_ANT,',
'                      pdiferencia          => :P386_DIFERENCIA);    ',
'EXCEPTION',
'    WHEN VERROR1 THEN',
'    :P386_MENSAJE_IMPORTE := ''Monto no puede ser mayor que 0 '';',
'    WHEN VERROR2 THEN',
'    :P386_MENSAJE_IMPORTE := ''No se encuentra nro. de factura en saldos'';',
'    WHEN VERROR3 THEN',
'    :P386_MENSAJE_IMPORTE := ''Error en la tabla de saldos ''||SQLERRM ;',
'    WHEN VERROR4 THEN',
'    :P386_MENSAJE_IMPORTE := ''Monto a cancelar mayor que el saldo '';',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_IMPORTE_ADD ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P386_IMPORTE_ADD,P_COD_EMPRESA,P386_TIP_COMPROBANTE_ADD_AUX,P386_SER_COMPROBANTE_ADD,P386_NRO_COMPROBANTE_ADD,P386_NRO_CUOTA_ADD,P386_SALDO_CUOTA,P386_COD_MONEDA,P386_COD_MONEDA_ADD,P386_TIPO_CAMBIO_ADD,P386_PORC_GRAVADAS,P386_TOT_CREDITO,P386_CREDIT'
||'O_ADD,P386_CREDITO_ANT,P386_TOT_CREDITO_GRAV,P386_CREDITO_GRAV,P386_CREDITO_GRAV_ANT'
,p_attribute_03=>'P386_MENSAJE_IMPORTE,P386_SALDO_CUOTA,P386_CREDITO_ADD,P386_CREDITO_GRAV,P386_TOT_CREDITO,P386_TOT_CREDITO_GRAV,P386_CREDITO_ANT,P386_CREDITO_GRAV_ANT,P386_DIFERENCIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P386_IMPORTE_ADD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111501430107120343)
,p_name=>'DA_MENSAJE_IMPORTE'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P386_MENSAJE_IMPORTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111501545072120344)
,p_event_id=>wwv_flow_imp.id(111501430107120343)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P386_MENSAJE_IMPORTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111501685934120345)
,p_event_id=>wwv_flow_imp.id(111501430107120343)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P386_MENSAJE_IMPORTE.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P386_MENSAJE_IMPORTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(111501744696120346)
,p_name=>'DA_AGREGAR_EDITAR_DET'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(111497990229120308)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111501854562120347)
,p_event_id=>wwv_flow_imp.id(111501744696120346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P386_TIP_COMPROBANTE_ADD,P386_SER_COMPROBANTE_ADD,P386_NRO_COMPROBANTE_ADD,P386_NRO_CUOTA_ADD,P386_FEC_VENCIMIENTO_ADD,P386_IMPORTE_ADD,P386_TIPO_CAMBIO_ADD,P386_COD_MONEDA_ADD,P386_CREDITO_ADD,P386_TIP_COMPROBANTE_ADD_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111501981593120348)
,p_event_id=>wwv_flow_imp.id(111501744696120346)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCANCUO.ADD_COL_DET(pcod_empresa     => :P_COD_EMPRESA,',
'                         pnro_cancelacion => :P386_NRO_CANCELACION,',
'                         ptip_comprobante => :P386_TIP_COMPROBANTE_ADD_AUX,',
'                         pser_comprobante => :P386_SER_COMPROBANTE_ADD,',
'                         pnro_comprobante => :P386_NRO_COMPROBANTE_ADD,',
'                         pnro_cuota       => :P386_NRO_CUOTA_ADD,',
'                         pcod_moneda      => :P386_COD_MONEDA_ADD,',
'                         ptip_cambio      => :P386_TIPO_CAMBIO_ADD,',
'                         ptipo_movimiento => :P386_TIPO_MOVIMIENTO_ADD,',
'                         pporc_gravadas   => :P386_PORC_GRAVADAS,',
'                         pimporte         => :P386_IMPORTE_ADD,',
'                         pfec_vencimiento => :P386_FEC_VENCIMIENTO_ADD,',
'                         pcredito         => :P386_CREDITO_ADD);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,,P386_TIP_COMPROBANTE_ADD,P386_SER_COMPROBANTE_ADD,P386_NRO_COMPROBANTE_ADD,P386_NRO_CUOTA_ADD,P386_FEC_VENCIMIENTO_ADD,P386_IMPORTE_ADD,P386_TIPO_CAMBIO_ADD,P386_COD_MONEDA_ADD,P386_CREDITO_ADD,P386_TIP_COMPROBANTE_ADD_AUX,P386_TIPO_MO'
||'VIMIENTO_ADD,P386_NRO_CANCELACION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P386_EDIT_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112166908451065511)
,p_event_id=>wwv_flow_imp.id(111501744696120346)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCANCUO.EDIT_COL_DET(pseq_id          => :P386_EDIT_DATA_DET,',
'                          ptip_comprobante => :P386_TIP_COMPROBANTE_ADD_AUX,',
'                          pser_comprobante => :P386_SER_COMPROBANTE_ADD,',
'                          pnro_comprobante => :P386_NRO_COMPROBANTE_ADD,',
'                          pnro_cuota       => :P386_NRO_CUOTA_ADD,',
'                          pcod_moneda      => :P386_COD_MONEDA_ADD,',
'                          ptip_cambio      => :P386_TIPO_CAMBIO_ADD,',
'                          ptipo_movimiento => :P386_TIPO_MOVIMIENTO_ADD,',
'                          pporc_gravadas   => :P386_PORC_GRAVADAS,',
'                          pimporte         => :P386_IMPORTE_ADD,',
'                          pfec_vencimiento => :P386_FEC_VENCIMIENTO_ADD,',
'                          pcredito         => :P386_CREDITO_ADD);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGAR_EDITAR_COL EDTI_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P386_EDIT_DATA_DET,P386_TIP_COMPROBANTE_ADD_AUX,P386_SER_COMPROBANTE_ADD,P386_NRO_COMPROBANTE_ADD,P386_NRO_CUOTA_ADD,P386_COD_MONEDA_ADD,P386_TIPO_CAMBIO_ADD,P386_TIPO_MOVIMIENTO_ADD,P386_PORC_GRAVADAS,P386_IMPORTE_ADD,P386_FEC_VENCIMIENTO_ADD,P386_C'
||'REDITO_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P386_EDIT_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(111502161123120350)
,p_event_id=>wwv_flow_imp.id(111501744696120346)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110967548128268248)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112165995391065501)
,p_event_id=>wwv_flow_imp.id(111501744696120346)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110964775561268220)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112166016298065502)
,p_name=>'DA_NRO_CUOTA'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P386_NRO_CUOTA_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112166153361065503)
,p_event_id=>wwv_flow_imp.id(112166016298065502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P386_NRO_CUOTA_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112166289358065504)
,p_event_id=>wwv_flow_imp.id(112166016298065502)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'        select distinct saldos',
'          into :P386_TIPO_MOVIMIENTO_ADD',
'          from cc_saldos sal, ',
'               tipos_comprobantes tc',
'         where sal.cod_empresa = :P_COD_EMPRESA',
'           AND sal.tipo_comprobante = :P386_TIP_COMPROBANTE_ADD_AUX',
'           AND sal.ser_comprobante = :P386_SER_COMPROBANTE_ADD',
'           AND sal.nro_comprobante = :P386_NRO_COMPROBANTE_ADD',
'           AND sal.cod_cliente = :P386_COD_CLIENTE',
'           AND sal.tipo_comprobante = tc.tip_comprobante(+);',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P386_TIPO_MOVIMIENTO_ADD := NULL;',
'    END;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_NRO_CUOTA ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P386_TIP_COMPROBANTE_ADD_AUX,P386_SER_COMPROBANTE_ADD,P386_NRO_COMPROBANTE_ADD,P386_COD_CLIENTE'
,p_attribute_03=>'P386_TIPO_MOVIMIENTO_ADD'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112167091054065512)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(110964510786268218)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112167152018065513)
,p_event_id=>wwv_flow_imp.id(112167091054065512)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P386_CARGA := ''N'';',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BUSCAR ''||SQLERRM);',
'END;'))
,p_attribute_03=>'P386_CARGA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112167265293065514)
,p_event_id=>wwv_flow_imp.id(112167091054065512)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCANCUO.BUSCAR_DET(pcod_empresa     => :P_COD_EMPRESA,',
'                        pcod_cliente     => :P386_COD_CLIENTE,',
'                        pnro_desde       => :P386_NRO_DESDE,',
'                        pnro_hasta       => :P386_NRO_HASTA,',
'                        pfecha_ini       => :P386_FECHA_INI,',
'                        pfecha_fin       => :P386_FECHA_FIN,',
'                        pimporte         => :P386_IMPORTE,',
'                        pnro_cancelacion => :P386_NRO_CANCELACION,',
'                        pcod_moneda      => :P386_COD_MONEDA,',
'                        ptot_credito     => :P386_TOT_CREDITO,',
'                        pdiferencia      => :P386_DIFERENCIA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BUSCAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P386_COD_CLIENTE,P386_NRO_DESDE,P386_NRO_HASTA,P386_FECHA_INI,P386_FECHA_FIN,P386_IMPORTE,P386_NRO_CANCELACION,P386_COD_MONEDA'
,p_attribute_03=>'P386_TOT_CREDITO,P386_DIFERENCIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112167385376065515)
,p_event_id=>wwv_flow_imp.id(112167091054065512)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110964775561268220)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126307501154686820)
,p_name=>'DA_NRO_CUOTA_AUX'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P386_NRO_CUOTA_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126307655050686821)
,p_event_id=>wwv_flow_imp.id(126307501154686820)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P386_NRO_CUOTA_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126307799838686822)
,p_name=>'DA_IMPORTE'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P386_IMPORTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126307889302686823)
,p_event_id=>wwv_flow_imp.id(126307799838686822)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P386_IMPORTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126307912224686824)
,p_event_id=>wwv_flow_imp.id(126307799838686822)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P386_IMPORTE := TO_CHAR(:P386_IMPORTE,''999G999G999G990'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_IMPORTE ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P386_IMPORTE'
,p_attribute_03=>'P386_IMPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126308172199686826)
,p_name=>'DA_SER_COMPROBANTE_AUX'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P386_SER_COMPROBANTE_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126308292076686827)
,p_event_id=>wwv_flow_imp.id(126308172199686826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P386_SER_COMPROBANTE_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(108556045664810718)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P386_COD_MODULO := ''CC'';',
':P386_TIPO_TRANS := BS_BUSCA_PARAMETRO(:P386_COD_MODULO,''TRANS_COBRO'');',
':P386_SUB_TIPO_TRANS := BS_BUSCA_PARAMETRO(:P386_COD_MODULO,''SUB_TRANS_COBRO'');',
':P386_SER_RECIBO := BS_BUSCA_PARAMETRO(:P386_COD_MODULO,''SERIE_RECIBO'');',
':P386_COD_MONEDA_BASE := BS_BUSCA_PARAMETRO(:P386_COD_MODULO,''COD_MONEDA_BASE'');',
':P386_TIPO_CREDITO := BS_BUSCA_PARAMETRO(''VT'',''TIPO_CREDITO'');',
':P386_TIPO_NOTACRE := BS_BUSCA_PARAMETRO(''VT'',''TIPO_NOTACRE'');',
':P386_SER_REC_GC := NULL;',
':P386_NRO_REC_GC := NULL;',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_CC_CANCELA_CUOTAS_DET'');'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(110963342784268206)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT_NUEVO_REG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'        SELECT NVL(MAX(NRO_CANCELACION),0) + 1',
'          INTO :P386_NRO_CANCELACION',
'          FROM CC_CANCELA_CUOTAS',
'         WHERE COD_EMPRESA = :P_COD_EMPRESA;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P386_NRO_CANCELACION := 0;',
'    END;',
'',
'    :P386_FEC_CACELACION := TRAE_FECHA(:P_COD_EMPRESA,:P386_COD_MODULO);',
'    :P386_COD_USUARIO := :P_COD_USUARIO;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_INIT_NUEVO_REG ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P386_CONTROL_ORIGEN'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'0'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(112167422209065516)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT_EDITAR_REG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P386_NRO_CANCELACION IS NOT NULL THEN',
'        CCCANCUO.CARGAR_DATOS_CAB(pcod_empresa     => :P_COD_EMPRESA,',
'                                  pnro_cancelacion => :P386_NRO_CANCELACION,',
'                                  pfec_cancelacion => :P386_FEC_CACELACION,',
'                                  panulado         => :P386_ANULADO,',
'                                  pcod_cliente     => :P386_COD_CLIENTE,',
'                                  ptip_comprobante => :P386_TIP_COMPROBANTE,',
'                                  pcod_usuario     => :P386_COD_USUARIO,',
'                                  ptip_cambio      => :P386_TIPO_CAMBIO);',
'APEX_DEBUG.ERROR(''P386_TIP_COMPROBANTE ''||:P386_TIP_COMPROBANTE);',
'        CCCANCUO.CARGAR_COL_DET(pcod_empresa     => :P_COD_EMPRESA, ',
'                                pnro_cancelacion => :P386_NRO_CANCELACION);',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_INIT_EDITAR_REG ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P386_CONTROL_ORIGEN'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'1'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(112167791031065519)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_SAVE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'        :P386_IMPORTE := REPLACE(:P386_IMPORTE,''.'','''');',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'        :P386_IMPORTE := NULL;',
'    END;',
'    IF :P386_CONTROL_ORIGEN = 0 THEN',
'        CCCANCUO.GUARDAR_DATOS(pcod_empresa     => :P_COD_EMPRESA,',
'                               pnro_cancelacion => :P386_NRO_CANCELACION,',
'                               pfec_cancelacion => :P386_FEC_CACELACION,',
'                               pcod_cliente     => :P386_COD_CLIENTE,',
'                               panulado         => :P386_ANULADO,',
'                               pcod_usuario     => :P386_COD_USUARIO,',
'                               ptip_comprobante => :P386_TIP_COMPROBANTE_AUX,',
'                               pser_comprobante => :P386_SER_COMPROBANTE,',
'                               pnro_comprobante => :P386_NRO_COMPROBANTE,',
'                               pnro_cuota       => :P386_NRO_CUOTA,',
'                               pcod_moneda      => :P386_COD_MONEDA,',
'                               ptip_cambio      => :P386_TIPO_CAMBIO,',
'                               pimporte         => :P386_IMPORTE,',
'                               pporc_gravadas   => :P386_PORC_GRAVADAS,',
'                               pcontrol         => 0);',
'    ELSE',
'        CCCANCUO.GUARDAR_DATOS(pcod_empresa     => :P_COD_EMPRESA,',
'                               pnro_cancelacion => :P386_NRO_CANCELACION,',
'                               pfec_cancelacion => :P386_FEC_CACELACION,',
'                               pcod_cliente     => :P386_COD_CLIENTE,',
'                               panulado         => :P386_ANULADO,',
'                               pcod_usuario     => :P386_COD_USUARIO,',
'                               ptip_comprobante => :P386_TIP_COMPROBANTE_AUX,',
'                               pser_comprobante => :P386_SER_COMPROBANTE,',
'                               pnro_comprobante => :P386_NRO_COMPROBANTE,',
'                               pnro_cuota       => :P386_NRO_CUOTA,',
'                               pcod_moneda      => :P386_COD_MONEDA,',
'                               ptip_cambio      => :P386_TIPO_CAMBIO,',
'                               pimporte         => :P386_IMPORTE,',
'                               pporc_gravadas   => :P386_PORC_GRAVADAS,',
'                               pcontrol         => 1);',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_SAVE ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error al procesar datos.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(112167539961065517)
,p_process_success_message=>'Datos procesados correctamente.'
);
wwv_flow_imp.component_end;
end;
/
