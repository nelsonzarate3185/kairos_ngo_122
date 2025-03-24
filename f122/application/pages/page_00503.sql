prompt --application/pages/page_00503
begin
--   Manifest
--     PAGE: 00503
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
 p_id=>503
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'PRUEBA TEMPORAL'
,p_alias=>'PRUEBA-TEMPORAL'
,p_step_title=>'PRUEBA TEMPORAL'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'HSEGOVIA'
,p_last_upd_yyyymmddhh24miss=>'20230424153141'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(147541998045413030)
,p_plug_name=>'Nuevo'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(147542143718413032)
,p_plug_name=>'Nuevo'
,p_parent_plug_id=>wwv_flow_imp.id(147541998045413030)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT id_llamador, ',
'             box, ',
'             num_ticket, ',
'             serie, ',
'             id_ticket',
'       from labl5100;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Nuevo'
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
 p_id=>wwv_flow_imp.id(147542269460413033)
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
,p_internal_uid=>147542269460413033
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147542344315413034)
,p_db_column_name=>'ID_LLAMADOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id Llamador'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147542404510413035)
,p_db_column_name=>'BOX'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Box'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147542593339413036)
,p_db_column_name=>'NUM_TICKET'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Num Ticket'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147542921843413040)
,p_db_column_name=>'SERIE'
,p_display_order=>40
,p_column_identifier=>'F'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147543029735413041)
,p_db_column_name=>'ID_TICKET'
,p_display_order=>50
,p_column_identifier=>'G'
,p_column_label=>'Id Ticket'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(148487622881868652)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1484877'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_LLAMADOR:BOX:NUM_TICKET:SERIE:ID_TICKET'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147543206520413043)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(147541998045413030)
,p_button_name=>'Refrescar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Refrescar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147542064898413031)
,p_name=>'P503_PARAMETRO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(147541998045413030)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Parametro'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147541755358413028)
,p_name=>'Nuevo'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147541842728413029)
,p_event_id=>wwv_flow_imp.id(147541755358413028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'inv.catickets.pr_obtener_datos_tabla_tem(p_parametro =>  :P503_PARAMETRO);'
,p_attribute_02=>'P503_PARAMETRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147543118344413042)
,p_event_id=>wwv_flow_imp.id(147541755358413028)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147542143718413032)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147543339051413044)
,p_name=>'Nuevo_1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147543206520413043)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(149026752918268846)
,p_event_id=>wwv_flow_imp.id(147543339051413044)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'disableScreen();',
'',
'',
'function disableScreen() {',
'    // creates <div class="overlay"></div> and ',
'    // adds it to the DOM',
'    var div= document.createElement("div");',
'    div.className += "overlay";',
'    document.body.appendChild(div);',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147543570945413046)
,p_event_id=>wwv_flow_imp.id(147543339051413044)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.catickets.pr_obtener_datos_tabla_tem(p_parametro =>  :P503_PARAMETRO);',
''))
,p_attribute_02=>'P503_PARAMETRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147543611545413047)
,p_event_id=>wwv_flow_imp.id(147543339051413044)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147542143718413032)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(147542831010413039)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Nuevo'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECLARE ',
'    v_sql_stmt VARCHAR2(4000);',
' BEGIN',
'      v_sql_stmt := (''CREATE GLOBAL TEMPORARY TABLE labl51003(',
'               id_llamador         number(5)',
'              ,box       varchar2(200)',
'              ,num_ticket  varchar2(200)',
'              ,serie varchar2(200)',
'              ,id_ticket    varchar2(200)            ',
'              ) ON COMMIT DELETE ROWS'');',
'',
'     EXECUTE IMMEDIATE v_sql_stmt;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp.component_end;
end;
/
