prompt --application/pages/page_00599
begin
--   Manifest
--     PAGE: 00599
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
 p_id=>599
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Consulta de Clientes por N\00FAmero de Documento')
,p_alias=>'CCCONSUL'
,p_step_title=>unistr('Consulta de Clientes por N\00FAmero de Documento')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Body-content {',
'   background-color:  #d0e0f783!important;}',
'',
'#param{    ',
'  background-color: #487ab8  !important;',
'} ',
'.t-Form-label  {',
'  color: darkblue  !important;',
'  border-color: #003a85 !important;',
'}',
' ',
'.display_only, .apex-item-display-only',
'{',
'    font-weight: bold !important;',
'    border-style: solid !important;',
'    background-color: #ebebeb  !important;',
'',
'}',
'',
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: #e9ffbf !important;',
'   border-color: #8f0000 !important;',
'}',
'',
'.apex-item-select,  .apex-item-text , .apex-item-textarea , .apex-item-group, .display_only {',
'  border-color: #b4c6dd !important;',
'  background-color: #f8f6ea !important;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240408163812'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(201776052161585509)
,p_plug_name=>'Region 1'
,p_region_name=>'param'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>980
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(201776107138585510)
,p_plug_name=>'Reporte'
,p_parent_plug_id=>wwv_flow_imp.id(201776052161585509)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C001 cod_cliente,',
'       C002 nombre,',
'       C003 cod_persona,',
'       C004 tipo,',
'       C005 numero,',
'       C006 fec_vencimiento,',
'       seq_id seq_id_reporte ',
'',
'FROM   APEX_COLLECTIONS',
'',
'WHERE  COLLECTION_NAME = ''B_DOCS'' ',
'-- AND    :P599_AUX = 1;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P599_AUX'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte'
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
 p_id=>wwv_flow_imp.id(201778295248585531)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron registros.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JANDERSON'
,p_internal_uid=>201778295248585531
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201778392167585532)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Codigo Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201778401702585533)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201778564345585534)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Codigo Persona'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201778639695585535)
,p_db_column_name=>'TIPO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201778775706585536)
,p_db_column_name=>'NUMERO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Numero'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201778834961585537)
,p_db_column_name=>'SEQ_ID_REPORTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Seq Id Reporte'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(203136758566361802)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fecha Vencimiento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(202817757696412596)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2028178'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIPO:NUMERO:FEC_VENCIMIENTO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(626550647594954310)
,p_plug_name=>'valores'
,p_parent_plug_id=>wwv_flow_imp.id(201776052161585509)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(201776686014585515)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(626550647594954310)
,p_button_name=>'BT_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-text'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(201777434371585523)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(626550647594954310)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-text'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201776334499585512)
,p_name=>'P599_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(626550647594954310)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201776447255585513)
,p_name=>'P599_TIPO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(626550647594954310)
,p_prompt=>'Tipo de Documento'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:RUC;RUC,CI;CI'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccionar --'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201776564201585514)
,p_name=>'P599_CON_DOC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(626550647594954310)
,p_prompt=>unistr('N\00FAmero de Documento')
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
 p_id=>wwv_flow_imp.id(201776982573585518)
,p_name=>'P599_AUX'
,p_item_sequence=>940
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201777027114585519)
,p_name=>'P599_MSG'
,p_item_sequence=>960
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201777662418585525)
,p_name=>'P599_AUX_COD_PERSONA'
,p_item_sequence=>950
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201777811726585527)
,p_name=>'P599_ERROR'
,p_item_sequence=>970
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201780017386585549)
,p_name=>'P599_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(201776107138585510)
,p_prompt=>unistr('C\00F3digo Cliente')
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
 p_id=>wwv_flow_imp.id(201780163585585550)
,p_name=>'P599_DESC_PERSONA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(201776107138585510)
,p_prompt=>unistr('Descripci\00F3n Persona')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(203136604745361801)
,p_name=>'P599_COD_PERSONA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(201776107138585510)
,p_prompt=>unistr('C\00F3digo Persona')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(201776704736585516)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(201776686014585515)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(201777571063585524)
,p_event_id=>wwv_flow_imp.id(201776704736585516)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    -- APEX_DEBUG.ERROR( ''Antes del  tipo  ''|| :P599_TIPO ||'' EMPRESA ''|| :P599_COD_EMPRESA || '' DOC '' || :P599_CON_DOC );',
'    CCCONSUL.PR_CARGAR_DATOS(PI_TIPO => :P599_TIPO,',
'                             PI_COD_EMPRESA => :P599_COD_EMPRESA,',
'                             PI_CON_DOC => :P599_CON_DOC,',
'                             PO_ERROR =>   :P599_ERROR ,',
'                             PO_COD_PERSONA => :P599_COD_PERSONA,',
'                             PO_COD_CLIENTE => :P599_COD_CLIENTE,',
'                             PO_DESC_PERSONA => :P599_DESC_PERSONA);',
'',
'-- APEX_DEBUG.ERROR( ''Antes del  ERROR  ''|| :P599_ERROR ||'' AUX ''|| :P599_AUX_COD_PERSONA);',
'',
':P599_AUX := 1;                             ',
'EXCEPTION',
'    when others then ',
'        APEX_DEBUG.ERROR(''Error al cargar datos. '' || SQLERRM);',
'',
'END;',
''))
,p_attribute_02=>'P599_CON_DOC,P599_TIPO,P599_COD_EMPRESA'
,p_attribute_03=>'P599_ERROR,P599_AUX,P599_COD_CLIENTE,P599_DESC_PERSONA,P599_COD_PERSONA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(201779192842585540)
,p_event_id=>wwv_flow_imp.id(201776704736585516)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(201776107138585510)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P599_AUX'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(201778146769585530)
,p_event_id=>wwv_flow_imp.id(201776704736585516)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(201776107138585510)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(201777905939585528)
,p_name=>'DA_ERROR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P599_ERROR'
,p_condition_element=>'P599_ERROR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(201778035831585529)
,p_event_id=>wwv_flow_imp.id(201777905939585528)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P599_ERROR.'
,p_attribute_03=>'information'
,p_attribute_04=>'fa-info'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(201778978045585538)
,p_name=>'DA_PAGE_LOAD'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(201779058870585539)
,p_event_id=>wwv_flow_imp.id(201778978045585538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(201776107138585510)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(201779483123585543)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(201777434371585523)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(201779937857585548)
,p_event_id=>wwv_flow_imp.id(201779483123585543)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFSeguro que desea limpiar los datos ingresados?')
,p_attribute_03=>'information'
,p_attribute_04=>'fa-eraser'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(201779595483585544)
,p_event_id=>wwv_flow_imp.id(201779483123585543)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P599_TIPO := NULL;',
':P599_CON_DOC := NULL;',
':P599_AUX := 0;',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''B_DOCS'');',
'',
':P599_COD_PERSONA:= NULL;',
':P599_COD_CLIENTE:= NULL;',
':P599_DESC_PERSONA:= NULL;'))
,p_attribute_03=>'P599_TIPO,P599_CON_DOC,P599_AUX,P599_COD_PERSONA,P599_COD_CLIENTE,P599_DESC_PERSONA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(201779800235585547)
,p_event_id=>wwv_flow_imp.id(201779483123585543)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(201776107138585510)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(203136821225361803)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(201779385649585542)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P599_COD_EMPRESA := :P_COD_EMPRESA;',
':P599_AUX := 0;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
