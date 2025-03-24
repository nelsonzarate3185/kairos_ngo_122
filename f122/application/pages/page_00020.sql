prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Carga de Fondo de Sencillo'
,p_alias=>'CARGA-DE-FONDO-DE-SENCILLO'
,p_step_title=>'Carga de Fondo de Sencillo'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P20_COD_USUARIO_CONFIRMADO").disable();',
'apex.item("P20_HORA_FIN").disable();',
'apex.item("P20_FECHA_FIN").disable();',
'',
'if (apex.item("P20_PERMITE_CONFIRMAR").getValue() == "S"){',
'    apex.item("P20_COD_USUARIO_CONFIRMADO").enable();',
'    apex.item("P20_HORA_FIN").enable();',
'    apex.item("P20_FECHA_FIN").enable();',
'}',
'',
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}',
'',
'',
'function doDescarga(p_cod_empresa, p_nro_planilla, p_user){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/VTFONSENCILLO.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa + ''&P_NRO_PLANILLA='' + p_nro_planilla  + ''&P_USER=''+ p_user +''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    //window.open(unescape($v(''P20_URL'').replace(/&amp;/g,''g'')),"_blank");',
'    window.open((vURL.replace(/&amp;/g,''g'')),"_blank");',
'}',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JOSEFINAGU'
,p_last_upd_yyyymmddhh24miss=>'20221111172456'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6324955780278640)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7299846788215903)
,p_plug_name=>'CABECERA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7300889935215913)
,p_plug_name=>'CABECERA_1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_column=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7301378026215918)
,p_plug_name=>'DETALLE'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-top:9px;"'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7303669560215941)
,p_plug_name=>'Denominaciones'
,p_parent_plug_id=>wwv_flow_imp.id(7301378026215918)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001, --P_COD_EMPRESA',
'       C002, --NRO_PLANILLA',
'       C003, --COD_DENOMINACION',
'       C004, --DESC_DENOMINACION',
'       C005, --CANTIDAD',
'       TO_NUMBER(C006), --MONTO_TOTAL',
'       C007, --OBSERVACIONES,',
'       NULL ELIMINAR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_DENOMINACION'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Denominaciones'
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
 p_id=>wwv_flow_imp.id(7303730436215942)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>unistr('Debe seleccionar una denominaci\00F3n e ingresar una cantidad.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>7303730436215942
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7303821381215943)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7303918612215944)
,p_db_column_name=>'C001'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'C001'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7304038010215945)
,p_db_column_name=>'C002'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'C002'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7304128488215946)
,p_db_column_name=>'C003'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7304253669215947)
,p_db_column_name=>'C004'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7925523777883005)
,p_db_column_name=>'C005'
,p_display_order=>60
,p_column_identifier=>'J'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12124864770451125)
,p_db_column_name=>'TO_NUMBER(C006)'
,p_display_order=>70
,p_column_identifier=>'L'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7304579477215950)
,p_db_column_name=>'C007'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Observaciones'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12123355635451110)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>90
,p_column_identifier=>'K'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P20_AUX_SEQ_ID'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-irrow" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7936484543922714)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'79365'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'C003:C004:C005:TO_NUMBER(C006):C007:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7925827619883008)
,p_plug_name=>'Totales'
,p_parent_plug_id=>wwv_flow_imp.id(7301378026215918)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7927140000883021)
,p_plug_name=>'CABECERA_3'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7929940153883049)
,p_plug_name=>'MSJE'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7301236362215917)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7300889935215913)
,p_button_name=>'BT_CONFIRMAR'
,p_button_static_id=>'BT_CONFIRMAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12122894509451105)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7929940153883049)
,p_button_name=>'BT_CERRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7302112125215926)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(7301378026215918)
,p_button_name=>'BT_INSERTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Insertar'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P20_CONFIRMADO'
,p_button_condition2=>'N'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_cattributes=>'style="margin-top:9px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7928408324883034)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(7299846788215903)
,p_button_name=>'BT_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_button_cattributes=>'style="margin-top:9px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7927983175883029)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7303669560215941)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'COPY'
,p_button_condition=>'P20_CONFIRMADO'
,p_button_condition2=>'N'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7929450158883044)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7303669560215941)
,p_button_name=>'BT_DESCARGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Descargar'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6325172125278642)
,p_name=>'P20_COD_MODULO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(6324955780278640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6325205264278643)
,p_name=>'P20_COD_FORMA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(6324955780278640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6325392285278644)
,p_name=>'P20_NOM_MODULO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(6324955780278640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6325459611278645)
,p_name=>'P20_NOM_FORMA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(6324955780278640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6325508676278646)
,p_name=>'P20_PERMITE_CONFIRMAR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(6324955780278640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6325797484278648)
,p_name=>'P20_COD_USUARIO_VBLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7927140000883021)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readOnly'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6325875786278649)
,p_name=>'P20_COD_EMPRESA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6324955780278640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6325908955278650)
,p_name=>'P20_NOM_EMPRESA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6324955780278640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7299694520215901)
,p_name=>'P20_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7299846788215903)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7299724320215902)
,p_name=>'P20_NOM_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(6324955780278640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7300017120215905)
,p_name=>'P20_DESC_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7299846788215903)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7300189206215906)
,p_name=>'P20_NRO_PLANILLA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7299846788215903)
,p_prompt=>unistr('N\00FAmero')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7300202180215907)
,p_name=>'P20_FECHA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7299846788215903)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(7300350230215908)
,p_name=>'P20_HORA_ALTA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7299846788215903)
,p_prompt=>'Hora'
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
 p_id=>wwv_flow_imp.id(7300420723215909)
,p_name=>'P20_COD_CAJERO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7299846788215903)
,p_prompt=>'Cajero'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CAJEROS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT U.COD_USUARIO||'' - ''||P.NOMBRE D,',
'	    U.COD_USUARIO R',
'   FROM CC_USUARIOS_CAJAS C,',
'		USUARIOS U, PERSONAS P',
'  WHERE C.COD_EMPRESA = ''1''',
'    AND C.COD_EMPRESA = C.COD_EMPRESA',
'    AND C.COD_USUARIO = U.COD_USUARIO',
'    AND U.COD_PERSONA = P.COD_PERSONA',
'    AND U.ESTADO = ''A''',
'    AND C.COD_EMPRESA = :P_COD_EMPRESA',
'  ORDER BY 1 '))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7300514393215910)
,p_name=>'P20_DESC_CAJERO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7299846788215903)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7300697619215911)
,p_name=>'P20_COD_MONEDA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(7299846788215903)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVMONEDAS1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- IDENTICO A LV_MONEDAS DEL VTFONSEN',
'  SELECT cod_moneda||'' - ''||descripcion D, ',
'         cod_moneda R',
'    FROM monedas ',
'ORDER BY 1;'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7300769582215912)
,p_name=>'P20_DESC_MONEDA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(7299846788215903)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7300942105215914)
,p_name=>'P20_COD_USUARIO_CONFIRMADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7300889935215913)
,p_prompt=>'Usuario'
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
 p_id=>wwv_flow_imp.id(7301089874215915)
,p_name=>'P20_HORA_FIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7300889935215913)
,p_prompt=>'Hora'
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
 p_id=>wwv_flow_imp.id(7301127541215916)
,p_name=>'P20_FECHA_FIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7300889935215913)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(7301436476215919)
,p_name=>'P20_COD_DENOMINACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7301378026215918)
,p_prompt=>unistr('Denominaci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT S.DESCRIPCION D, ',
'	   S.COD_DENOMINACION R  ',
'  FROM VT_TIPOS_DENOMINACION S',
' WHERE S.COD_EMPRESA = :P20_COD_EMPRESA',
'   AND S.COD_MONEDA = :P20_COD_MONEDA ',
' ORDER BY TO_NUMBER(COD_DENOMINACION);'))
,p_lov_cascade_parent_items=>'P20_COD_MONEDA'
,p_ajax_items_to_submit=>'P20_COD_MONEDA,P20_COD_DENOMINACION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7301544927215920)
,p_name=>'P20_CANTIDAD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7301378026215918)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7301638464215921)
,p_name=>'P20_OBSERVACIONES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7301378026215918)
,p_prompt=>'Observaciones'
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
 p_id=>wwv_flow_imp.id(7301822575215923)
,p_name=>'P20_CONFIRMADO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(7299846788215903)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7302534047215930)
,p_name=>'P20_VALOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7301378026215918)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7303048359215935)
,p_name=>'P20_ERROR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7301378026215918)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7925371963883003)
,p_name=>'P20_DESC_DENOMINACION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7301378026215918)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7925908467883009)
,p_name=>'P20_TOTAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7925827619883008)
,p_prompt=>'Total'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readOnly'
,p_colspan=>2
,p_grid_column=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7926004603883010)
,p_name=>'P20_TOTAL_MONTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7925827619883008)
,p_prompt=>'Total Monto'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readOnly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7926151824883011)
,p_name=>'P20_BASE_SENCILLO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7925827619883008)
,p_prompt=>'Base Sencillo'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_grid_column=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7926254878883012)
,p_name=>'P20_DIFE_SENCILLO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7925827619883008)
,p_prompt=>'Dife Sencillo'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7926792645883017)
,p_name=>'P20_COD_SUCURSAL_VBLE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6324955780278640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7927297819883022)
,p_name=>'P20_OBSERVACIONES_CAB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7927140000883021)
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
 p_id=>wwv_flow_imp.id(12122475970451101)
,p_name=>'P20_MSJE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7929940153883049)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12123429099451111)
,p_name=>'P20_AUX_SEQ_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7301378026215918)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12124151779451118)
,p_name=>'P20_URL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(6324955780278640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12124340952451120)
,p_name=>'P20_AUX_INHABILITAR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(7299846788215903)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7301968606215924)
,p_name=>'DA_LLENA_DESC'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7302036832215925)
,p_event_id=>wwv_flow_imp.id(7301968606215924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P20_COD_SUCURSAL IS NOT NULL THEN',
'  DECLARE',
'    VALERTA NUMBER;',
'  BEGIN',
'    SELECT DESCRIPCION',
'      INTO :P20_DESC_SUCURSAL',
'      FROM SUCURSALES',
'     WHERE COD_EMPRESA = :P20_COD_EMPRESA',
'       AND COD_SUCURSAL = :P20_COD_SUCURSAL;',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      :P20_DESC_SUCURSAL := NULL;',
unistr('      RAISE_APPLICATION_ERROR(-20000,''NO SE ENCUENTRA C\00D3DIGO DE SUCURSAL.'');'),
'    WHEN OTHERS THEN',
'      :P20_DESC_SUCURSAL := NULL;',
'      RAISE_APPLICATION_ERROR(-20000,''ERROR EN LA TABLA DE SUCURSALES ''||SQLERRM);',
'  END;',
'END IF;'))
,p_attribute_02=>'P20_COD_SUCURSAL ,P20_COD_EMPRESA,P20_COD_SUCURSAL'
,p_attribute_03=>'P20_DESC_SUCURSAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7302392209215928)
,p_name=>'DA_INSERTAR_DENOMINACION'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7302112125215926)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12123196068451108)
,p_event_id=>wwv_flow_imp.id(7302392209215928)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P20_COD_DENOMINACION IS NULL AND :P20_CANTIDAD IS NULL THEN',
unistr('    :P20_MSJE := ''Debe seleccionar una denominaci\00F3n e ingresar una cantidad'';'),
'    :P20_ERROR := 1;',
'ELSE',
'    IF  :P20_COD_DENOMINACION IS NULL THEN',
unistr('        :P20_MSJE := ''Debe seleccionar una denominaci\00F3n'';'),
'        :P20_ERROR := 1;',
'    ELSE',
'        IF :P20_CANTIDAD IS NULL THEN',
'            :P20_MSJE := ''Debe ingresar una cantidad'';',
'            :P20_ERROR := 1;',
'        END IF;',
'    END IF;',
'END IF;',
''))
,p_attribute_02=>'P20_COD_DENOMINACION,P20_CANTIDAD'
,p_attribute_03=>'P20_MSJE,P20_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12123242472451109)
,p_event_id=>wwv_flow_imp.id(7302392209215928)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7929940153883049)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P20_ERROR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7302408283215929)
,p_event_id=>wwv_flow_imp.id(7302392209215928)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'VTFONSEN.INSERTAR_COLECCION(PI_COD_EMPRESA       => :P20_COD_EMPRESA,',
'    					    PI_NRO_PLANILLA      => :P20_NRO_PLANILLA,',
'    					    PI_COD_DENOMINACION  => :P20_COD_DENOMINACION,',
'    					    PI_DESC_DENOMINACION => :P20_DESC_DENOMINACION,',
'    					    PI_CANTIDAD          => :P20_CANTIDAD,',
'    					    PI_OBSERVACIONES     => :P20_OBSERVACIONES,',
'    					    PI_VALOR             => :P20_VALOR,',
'    					    PO_TOTAL             => :P20_TOTAL,',
'    					    PO_TOTAL_MONTO       => :P20_TOTAL_MONTO);'))
,p_attribute_02=>'P20_CANTIDAD,P20_VALOR,P20_COD_EMPRESA,P20_NRO_PLANILLA,P20_COD_DENOMINACION,P20_DESC_DENOMINACION,P20_OBSERVACIONES'
,p_attribute_03=>'P20_TOTAL,P20_TOTAL_MONTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7925256609883002)
,p_event_id=>wwv_flow_imp.id(7302392209215928)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7303669560215941)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7925659690883006)
,p_event_id=>wwv_flow_imp.id(7302392209215928)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P20_COD_DENOMINACION := NULL;',
':P20_CANTIDAD := NULL;',
':P20_OBSERVACIONES := NULL;'))
,p_attribute_03=>'P20_COD_DENOMINACION,P20_CANTIDAD,P20_OBSERVACIONES_CAB'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7302625495215931)
,p_name=>'DA_CALCULA_MONTO'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_COD_DENOMINACION'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
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
 p_id=>wwv_flow_imp.id(7302773203215932)
,p_event_id=>wwv_flow_imp.id(7302625495215931)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT VALOR,',
'        DESCRIPCION',
'  INTO :P20_VALOR,',
'       :P20_DESC_DENOMINACION',
'  FROM VT_TIPOS_DENOMINACION',
' WHERE COD_EMPRESA = :P20_COD_EMPRESA',
'   AND COD_DENOMINACION = :P20_COD_DENOMINACION',
'   AND COD_MONEDA = :P20_COD_MONEDA;',
''))
,p_attribute_02=>'P20_COD_EMPRESA,P20_COD_DENOMINACION,P20_COD_MONEDA'
,p_attribute_03=>'P20_VALOR,P20_DESC_DENOMINACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7302835757215933)
,p_name=>'DA_NOT_NULL'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_CANTIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7302952334215934)
,p_event_id=>wwv_flow_imp.id(7302835757215933)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P20_CANTIDAD IS NULL THEN',
'    :P20_ERROR := 1;',
'END IF;'))
,p_attribute_02=>'P20_CANTIDAD'
,p_attribute_03=>'P20_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7303114791215936)
,p_event_id=>wwv_flow_imp.id(7302835757215933)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe ingresar una cantidad mayor a 0.'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P20_ERROR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7925742470883007)
,p_event_id=>wwv_flow_imp.id(7302835757215933)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P20_ERROR := 0;'
,p_attribute_03=>'P20_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7303387994215938)
,p_name=>'DA_REFRESH_DENOMINACION'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_COD_MONEDA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7303418510215939)
,p_event_id=>wwv_flow_imp.id(7303387994215938)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7301378026215918)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7926398288883013)
,p_name=>'DA_LLENA_SENCILLO'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_COD_CAJERO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7926405647883014)
,p_event_id=>wwv_flow_imp.id(7926398288883013)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT BASE',
'      INTO :P20_BASE_SENCILLO',
'      FROM VT_FONDO_SENCILLO_BASE',
'     WHERE COD_EMPRESA = :P20_COD_EMPRESA ',
'       AND COD_USUARIO = :P20_COD_CAJERO',
'       AND COD_SUCURSAL = :P20_COD_SUCURSAL;',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'        :P20_BASE_SENCILLO := 0;',
'END;'))
,p_attribute_02=>'P20_COD_EMPRESA,P20_COD_CAJERO,P20_COD_SUCURSAL'
,p_attribute_03=>'P20_BASE_SENCILLO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7926511602883015)
,p_name=>'DA_CALCULAR_DIFE'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_TOTAL_MONTO,P20_BASE_SENCILLO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7926644368883016)
,p_event_id=>wwv_flow_imp.id(7926511602883015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P20_DIFE_SENCILLO := NVL(:P20_TOTAL_MONTO,0) - NVL(:P20_BASE_SENCILLO,0);'
,p_attribute_02=>'P20_TOTAL_MONTO ,P20_BASE_SENCILLO'
,p_attribute_03=>'P20_DIFE_SENCILLO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7926811366883018)
,p_name=>'DA_LLENA'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_COD_SUCURSAL_VBLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7926931374883019)
,p_event_id=>wwv_flow_imp.id(7926811366883018)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P20_COD_SUCURSAL:= NVL(:P20_COD_SUCURSAL_VBLE,''01'');',
'IF :P20_NRO_PLANILLA IS NULL THEN',
'  BEGIN',
'    SELECT NVL( MAX( NRO_PLANILLA ), 0 ) + 1',
'      INTO :P20_NRO_PLANILLA',
'      FROM VT_FONDO_SENCILLO_CAB ',
'     WHERE COD_EMPRESA = :P20_COD_EMPRESA;',
'    IF :P20_NRO_PLANILLA IS NULL THEN',
'      :P20_NRO_PLANILLA := 1;',
'    END IF;',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      :P20_NRO_PLANILLA := 1;',
'    WHEN OTHERS THEN',
'      RAISE_APPLICATION_ERROR(-20000, ''ERROR EN LA TABLA DE GARANTIA/PRODUCTOS CABECERA '' || SQLERRM );',
'  END;',
'END IF;'))
,p_attribute_02=>'P20_COD_SUCURSAL_VBLE,P20_NRO_PLANILLA,P20_COD_EMPRESA'
,p_attribute_03=>'P20_NRO_PLANILLA,P20_COD_SUCURSAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7927662378883026)
,p_name=>'DA_DISABLE'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_PERMITE_CONFIRMAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7927894128883028)
,p_event_id=>wwv_flow_imp.id(7927662378883026)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(7301236362215917)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P20_PERMITE_CONFIRMAR'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7929754703883047)
,p_event_id=>wwv_flow_imp.id(7927662378883026)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(7301236362215917)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P20_PERMITE_CONFIRMAR'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7928018344883030)
,p_name=>'DA_LLENAR_CAMPOS'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7301236362215917)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7928118304883031)
,p_event_id=>wwv_flow_imp.id(7928018344883030)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P20_FECHA_FIN := SYSDATE;',
':P20_HORA_FIN := TO_CHAR(SYSDATE,''HH24:MI:SS'');',
':P20_COD_USUARIO_CONFIRMADO := :APP_USER;',
':P20_CONFIRMADO := ''S'';'))
,p_attribute_03=>'P20_FECHA_FIN ,P20_HORA_FIN ,P20_COD_USUARIO_CONFIRMADO ,P20_CONFIRMADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7928522293883035)
,p_name=>'DA_BUSCA_PLANILLA'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7928408324883034)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7928641251883036)
,p_event_id=>wwv_flow_imp.id(7928522293883035)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''COL_DENOMINACION'');',
'VTFONSEN.BUSCAR_PLANILLA(PI_NRO_PLANILLA 			=>  :P20_NRO_PLANILLA,',
'						  PO_COD_EMPRESA 			=>  :P20_COD_EMPRESA,',
'						  PO_FECHA 					=>  :P20_FECHA,',
'						  PO_COD_SUCURSAL 			=>  :P20_COD_SUCURSAL,',
'						  PO_OBSERVACIONES 			=>  :P20_OBSERVACIONES_CAB,',
'						  PO_COD_USUARIO_VBLE 		=>  :P20_COD_USUARIO_VBLE,',
'						  PO_HORA_ALTA 				=>  :P20_HORA_ALTA,',
'						  PO_FECHA_FIN   			=>  :P20_FECHA_FIN,',
'						  PO_HORA_FIN  				=>  :P20_HORA_FIN,',
'						  PO_COD_USUARIO_CONFIRMADO =>  :P20_COD_USUARIO_CONFIRMADO,',
'						  PO_COD_CAJERO 			=>  :P20_COD_CAJERO,',
'						  PO_COD_MONEDA				=>  :P20_COD_MONEDA,',
'						  PO_CONFIRMADO 			=>  :P20_CONFIRMADO,',
'						  PO_BASE_SENCILLO 			=>  :P20_BASE_SENCILLO,',
'						  PO_TOTAL 					=>  :P20_TOTAL,',
'						  PO_TOTAL_MONTO 			=>  :P20_TOTAL_MONTO);',
'',
'IF :P20_CONFIRMADO = ''S'' THEN',
'    :P20_AUX_INHABILITAR := ''S'';',
'ELSE',
'    :P20_AUX_INHABILITAR := ''N'';',
'END IF;'))
,p_attribute_02=>'P20_NRO_PLANILLA,P20_CONFIRMADO'
,p_attribute_03=>'P20_COD_EMPRESA,P20_FECHA,P20_COD_SUCURSAL,P20_OBSERVACIONES,P20_COD_USUARIO_VBLE,P20_HORA_ALTA,P20_FECHA_FIN,P20_HORA_FIN,P20_COD_USUARIO_CONFIRMADO,P20_COD_CAJERO,P20_COD_MONEDA,P20_CONFIRMADO,P20_BASE_SENCILLO,P20_TOTAL,P20_TOTAL_MONTO,P20_AUX_INH'
||'ABILITAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12124468970451121)
,p_event_id=>wwv_flow_imp.id(7928522293883035)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(7927983175883029)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P20_AUX_INHABILITAR'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12124770902451124)
,p_event_id=>wwv_flow_imp.id(7928522293883035)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(7927983175883029)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P20_AUX_INHABILITAR'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7928728123883037)
,p_event_id=>wwv_flow_imp.id(7928522293883035)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7299846788215903)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7928807414883038)
,p_event_id=>wwv_flow_imp.id(7928522293883035)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7300889935215913)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7928969474883039)
,p_event_id=>wwv_flow_imp.id(7928522293883035)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7301378026215918)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7929189912883041)
,p_event_id=>wwv_flow_imp.id(7928522293883035)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7303669560215941)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7929015931883040)
,p_event_id=>wwv_flow_imp.id(7928522293883035)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7927140000883021)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7929380734883043)
,p_event_id=>wwv_flow_imp.id(7928522293883035)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7925827619883008)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7929535031883045)
,p_name=>'DA_DESCARGAR'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7929450158883044)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12124275650451119)
,p_event_id=>wwv_flow_imp.id(7929535031883045)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P20_URL := ''https://ngosaeca.com.py//reportes/flow.html?''||',
'            ''_flowId=viewReportFlow&_flowId=viewReportFlow&''||',
'            ''ParentFolderUri=/reports&reportUnit=/reports/''||',
'            ''VTFONSENCILLO&P_COD_EMPRESA=''||:P20_COD_EMPRESA||',
'            ''&userLocale=en_US&standAlone=true&output=pdf''||',
'            ''&P_NRO_PLANILLA=''||:P20_NRO_PLANILLA||',
'            ''&P_USER=''||:P20_COD_USUARIO_VBLE||''&j_username=jasperadmin&j_password=jasperadmin'';',
''))
,p_attribute_02=>'P20_NRO_PLANILLA,P20_COD_EMPRESA,P20_COD_USUARIO_VBLE'
,p_attribute_03=>'P20_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7929611516883046)
,p_event_id=>wwv_flow_imp.id(7929535031883045)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'doDescarga(apex.item(''P20_COD_EMPRESA'').getValue(),apex.item(''P20_NRO_PLANILLA'').getValue(),apex.item(''P20_COD_USUARIO_VBLE'').getValue());'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12122923870451106)
,p_name=>'DA_CLOSE'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12122894509451105)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12124071880451117)
,p_event_id=>wwv_flow_imp.id(12122923870451106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P20_ERROR := 2;'
,p_attribute_03=>'P20_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12123056989451107)
,p_event_id=>wwv_flow_imp.id(12122923870451106)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7929940153883049)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12123542627451112)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_AUX_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12123603758451113)
,p_event_id=>wwv_flow_imp.id(12123542627451112)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar este registro?')
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12123713485451114)
,p_event_id=>wwv_flow_imp.id(12123542627451112)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.DELETE_MEMBER (p_collection_name => ''COL_DENOMINACION'',',
'                               p_seq => :P20_AUX_SEQ_ID);',
'',
'IF APEX_COLLECTION.COLLECTION_MEMBER_COUNT (p_collection_name => ''COL_DENOMINACION'') = 0 THEN',
'    :P20_TOTAL := 0;',
'    :P20_TOTAL_MONTO := 0;',
'END IF;'))
,p_attribute_02=>'P20_AUX_SEQ_ID'
,p_attribute_03=>'P20_TOTAL ,P20_TOTAL_MONTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12123829069451115)
,p_event_id=>wwv_flow_imp.id(12123542627451112)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7303669560215941)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12123989702451116)
,p_event_id=>wwv_flow_imp.id(12123542627451112)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7925827619883008)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12124930559451126)
,p_name=>'DA_SOLO_NUMEROS'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_NRO_PLANILLA'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12125000681451127)
,p_event_id=>wwv_flow_imp.id(12124930559451126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_NRO_PLANILLA'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'  	event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7303245956215937)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR_SESSION'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6325679106278647)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''COL_DENOMINACION'');',
':P_COD_MODULO := ''VT'';',
':P20_ERROR := 2;',
':P20_COD_FORMA := ''VTFONSEN'';',
':P20_AUX_INHABILITAR := ''N'';',
'',
':P20_COD_USUARIO_VBLE := NVL(:P_COD_USUARIO, :APP_USER);',
':P20_COD_EMPRESA := NVL(:P_COD_EMPRESA, ''1'');',
':P20_NOM_EMPRESA := :P_NOM_EMPRESA;',
':P20_COD_SUCURSAL_VBLE := NVL(:P_COD_SUCURSAL,''01'');',
':P20_NOM_SUCURSAL := :P_NOM_SUCURSAL;',
':P20_COD_MODULO := NVL(:P_COD_MODULO,''ST'');',
'',
'LIBRERIA_FORMAS.RUTINA_INICIAL(PI_COD_MODULO => :P20_COD_MODULO,',
'                               PI_COD_FORMA  => :P20_COD_FORMA,',
'                               PI_NOM_MODULO => :P20_NOM_MODULO,',
'                               PI_NOM_FORMA  => :P20_NOM_FORMA,',
'            				   PO_NOM_MODULO => :P20_NOM_MODULO,',
'            				   PO_NOM_FORMA  => :P20_NOM_FORMA);',
'',
':P20_PERMITE_CONFIRMAR := BUSCA_PERMISO(p_empresa => :P20_COD_EMPRESA,',
'                                        p_forma   => :P20_COD_FORMA,',
'                                        p_usuario => :P20_COD_USUARIO_VBLE,',
'                                        p_permiso => ''PERMITE_CONFIRMAR'');',
'',
':P20_COD_CAJERO := :P20_COD_USUARIO_VBLE;',
':P20_FECHA := SYSDATE;',
':P20_HORA_ALTA := TO_CHAR(SYSDATE,''HH24:MI:SS'');',
':P20_CONFIRMADO := ''N'';',
'',
':P20_COD_SUCURSAL:= NVL(:P20_COD_SUCURSAL_VBLE,''01'');',
'IF :P20_NRO_PLANILLA IS NULL THEN',
'    BEGIN',
'        SELECT NVL( MAX( NRO_PLANILLA ), 0 ) + 1',
'          INTO :P20_NRO_PLANILLA',
'          FROM VT_FONDO_SENCILLO_CAB ',
'         WHERE COD_EMPRESA = :P20_COD_EMPRESA;',
'        IF :P20_NRO_PLANILLA IS NULL THEN',
'            :P20_NRO_PLANILLA := 1;',
'        END IF;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                :P20_NRO_PLANILLA := 1;',
'        WHEN OTHERS THEN',
'            RAISE_APPLICATION_ERROR(-20000, ''ERROR EN LA TABLA DE GARANTIA/PRODUCTOS CABECERA '' || SQLERRM );',
'    END;',
'END IF;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7928318502883033)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDADO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF TO_NUMBER(:P20_NRO_PLANILLA) IS NULL THEN',
'        BEGIN',
'            SELECT NVL( MAX( NRO_PLANILLA ), 0 ) + 1',
'              INTO :P20_NRO_PLANILLA',
'              FROM VT_FONDO_SENCILLO_CAB ',
'             WHERE COD_EMPRESA = :P20_COD_EMPRESA;',
'            IF :P20_NRO_PLANILLA IS NULL THEN',
'                :P20_NRO_PLANILLA := 1;',
'            END IF;',
'            EXCEPTION',
'                WHEN NO_DATA_FOUND THEN',
'                    :P20_NRO_PLANILLA := 1;',
'            WHEN OTHERS THEN',
'                RAISE_APPLICATION_ERROR(-20000, ''ERROR EN LA TABLA DE GARANTIA/PRODUCTOS CABECERA '' || SQLERRM );',
'        END;',
'    END IF;',
'    ',
'    IF :P20_CONFIRMADO != ''S'' THEN',
'        IF APEX_COLLECTION.COLLECTION_MEMBER_COUNT (p_collection_name => ''COL_DENOMINACION'') != 0 THEN',
'            INSERT INTO VT_FONDO_SENCILLO_CAB(COD_EMPRESA,',
'                                              FECHA,',
'                                              COD_SUCURSAL,',
'                                              NRO_PLANILLA,',
'                                              OBSERVACIONES,',
'                                              COD_USUARIO,',
'                                              HORA_ALTA,',
'                                              FECHA_FIN,',
'                                              HORA_FIN,',
'                                              COD_USUARIO_CONFIRMADO,',
'                                              COD_CAJERO,',
'                                              COD_MONEDA,',
'                                              CONFIRMADO,',
'                                              BASE_SENCILLO)',
'                                    VALUES(:P20_COD_EMPRESA,',
'                                           TO_DATE(:P20_FECHA,''DD/MM/YYYY HH24:MI:SS''),',
'                                           :P20_COD_SUCURSAL,',
'                                           TO_NUMBER(:P20_NRO_PLANILLA),',
'                                           :P20_OBSERVACIONES,',
'                                           :P20_COD_USUARIO_VBLE,',
'                                           :P20_HORA_ALTA,',
'                                           TO_DATE(:P20_FECHA_FIN,''DD/MM/YYYY HH24:MI:SS''),',
'                                           :P20_HORA_FIN,',
'                                           :P20_COD_USUARIO_CONFIRMADO,',
'                                           :P20_COD_CAJERO,',
'                                           :P20_COD_MONEDA,',
'                                           :P20_CONFIRMADO,',
'                                           TO_NUMBER(:P20_BASE_SENCILLO));',
'            ',
'            FOR C IN (SELECT SEQ_ID,',
'                             C001, --P_COD_EMPRESA',
'                             C002, --NRO_PLANILLA',
'                             C003, --COD_DENOMINACION',
'                             C004, --DESC_DENOMINACION',
'                             C005, --CANTIDAD',
'                             C006, --OBSERVACIONES',
'                             C007 --MONTO_TOTAL',
'                        FROM APEX_COLLECTIONS',
'                       WHERE COLLECTION_NAME = ''COL_DENOMINACION'')',
'            LOOP',
'                INSERT INTO VT_FONDO_SENCILLO_DET(COD_EMPRESA,',
'                                                  NRO_PLANILLA,',
'                                                  COD_DENOMINACION,',
'                                                  CANTIDAD,',
'                                                  OBSERVACIONES,',
'                                                  MONTO_TOTAL,',
'                                                  OBSERVACION)',
'                                        VALUES(C.C001,',
'                                               TO_NUMBER(C.C002),',
'                                               C.C003,',
'                                               TO_NUMBER(C.C005),',
'                                               C.C007,',
'                                               TO_NUMBER(C.C006),',
'                                               NULL);',
'            END LOOP;',
'        ELSE',
'            RAISE_APPLICATION_ERROR(-20000,''Debe ingresar datos para continuar.'');',
'        END IF;',
'    ELSE',
'        UPDATE VT_FONDO_SENCILLO_CAB',
'           SET COD_USUARIO_CONFIRMADO = :P20_COD_USUARIO_CONFIRMADO,',
'               HORA_FIN = :P20_HORA_FIN,',
'               FECHA_FIN = TO_DATE(:P20_FECHA_FIN,''DD/MM/YYYY''),',
'               CONFIRMADO = ''S''',
'         WHERE NRO_PLANILLA = :P20_NRO_PLANILLA;',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(7927983175883029)
,p_process_success_message=>unistr('La transacci\00F3n fue guardada con el n\00FAmero de planilla: &P20_NRO_PLANILLA.')
);
wwv_flow_imp.component_end;
end;
/
