prompt --application/pages/page_00255
begin
--   Manifest
--     PAGE: 00255
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
 p_id=>255
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'FCOMSUPR_RESUMEN'
,p_alias=>'FCOMSUPR-RESUMEN'
,p_page_mode=>'MODAL'
,p_step_title=>'RESUMEN'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JOSEFINAGU'
,p_last_upd_yyyymmddhh24miss=>'20221226183333'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58368561098758110)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58372341860758148)
,p_plug_name=>'Mensaje'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<SPAN>Por favor, espere...</SPAN>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63239642226188086)
,p_plug_name=>'FVCOMSUP_RESUMEN'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_NUMBER(:P255_CP_PORC) CP_PORC,',
'       TO_NUMBER(:P255_CP_MARGEN) CP_MARGEN,',
'       TO_NUMBER(:P255_CF_COMI) CF_COMI,',
'       TO_NUMBER(:P255_CF_SUELDO) CF_SUELDO,',
'       TO_NUMBER(:P255_CF_COBRAR) CF_COBRAR',
'  FROM DUAL'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P255_COD_EMPRESA,P255_NUM_PERIODO,P255_COD_VENDEDOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'FVCOMSUP_RESUMEN'
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
 p_id=>wwv_flow_imp.id(64521161718371509)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>64521161718371509
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64521296345371510)
,p_db_column_name=>'CP_PORC'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('Comisi\00F3n %')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64521358593371511)
,p_db_column_name=>'CP_MARGEN'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'M%'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64521490565371512)
,p_db_column_name=>'CF_COMI'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Total Comisi\00F3n')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64521547224371513)
,p_db_column_name=>'CF_SUELDO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'S. Base'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64521689794371514)
,p_db_column_name=>'CF_COBRAR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Total a Cobrar'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66679147461778148)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'666792'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CP_PORC:CP_MARGEN:CF_COMI:CF_SUELDO:CF_COBRAR'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58369297782758117)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_imp.id(58368561098758110)
,p_button_name=>'BT_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58368636822758111)
,p_name=>'P255_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(58368561098758110)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58368710156758112)
,p_name=>'P255_NUM_PERIODO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(58368561098758110)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58368886855758113)
,p_name=>'P255_COD_VENDEDOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(58368561098758110)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58369744699758122)
,p_name=>'P255_CF_COSTO_VTA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(58368561098758110)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58369889580758123)
,p_name=>'P255_VTA_TOTAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(58368561098758110)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58369989165758124)
,p_name=>'P255_CF_SUELDO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(58368561098758110)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58370099124758125)
,p_name=>'P255_CF_COMI'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(58368561098758110)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58370124293758126)
,p_name=>'P255_CP_PORC'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(58368561098758110)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58370234520758127)
,p_name=>'P255_CF_COBRAR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(58368561098758110)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58370322418758128)
,p_name=>'P255_CF_PERIODO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(58368561098758110)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58370451257758129)
,p_name=>'P255_CS_COSTO_VTA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(58368561098758110)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58370531902758130)
,p_name=>'P255_CS_VTA_TOTAL'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(58368561098758110)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58370631582758131)
,p_name=>'P255_CP_MARGEN'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(58368561098758110)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64520401750371502)
,p_name=>'P255_WIN'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(58368561098758110)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58369093396758115)
,p_name=>'DA_REFRESH'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58369186170758116)
,p_event_id=>wwv_flow_imp.id(58369093396758115)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(63239642226188086)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58369384047758118)
,p_name=>'REFRESH'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58369297782758117)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58369469696758119)
,p_event_id=>wwv_flow_imp.id(58369384047758118)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(63239642226188086)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58372562016758150)
,p_name=>'DA_SHOW'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64520332249371501)
,p_event_id=>wwv_flow_imp.id(58372562016758150)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58372341860758148)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64520567136371503)
,p_name=>'DA_SHOW_REGION'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P255_WIN'
,p_condition_element=>'P255_WIN'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64520616950371504)
,p_event_id=>wwv_flow_imp.id(64520567136371503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58372341860758148)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P255_WIN'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(58368996770758114)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'/*:P255_COD_EMPRESA := ''1'';',
':P255_NUM_PERIODO := ''228'';',
':P255_COD_VENDEDOR := ''137'';*/',
'',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DETALLE'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_TOTALES'');',
'',
'INV.VFRCOMVD.INSERTAR_COLLECION_FVCOMSUP(PI_COD_EMPRESA => :P255_COD_EMPRESA,',
'									     PI_NUM_PERIODO => :P255_NUM_PERIODO,',
'									     PI_COD_VENDEDOR => :P255_COD_VENDEDOR);',
'',
'SELECT DISTINCT C001 CF_COSTO_VTA,',
'       C002 VTA_TOTAL',
'  INTO :P255_CF_COSTO_VTA,',
'       :P255_VTA_TOTAL',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_DETALLE''',
'   AND ROWNUM = 1;',
'',
'',
'SELECT DISTINCT C001 CF_SUELDO,',
'       C002 CF_COMI,',
'       C003 CP_PORC,',
'       C004 CF_COBRAR,',
'       C005 CF_PERIODO',
'  INTO :P255_CF_SUELDO,',
'       :P255_CF_COMI,',
'       :P255_CP_PORC,',
'       :P255_CF_COBRAR,',
'       :P255_CF_PERIODO',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_TOTALES''',
'   AND ROWNUM = 1;',
'',
'SELECT SUM(TO_NUMBER(C001)) CS_COSTO_VTA,',
'       SUM(TO_NUMBER(C002)) CS_VTA_TOTAL',
'  INTO :P255_CS_COSTO_VTA,',
'       :P255_CS_VTA_TOTAL',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_DETALLE'';',
'',
':P255_CP_MARGEN := ROUND((TO_NUMBER(:P255_CS_VTA_TOTAL) - NVL(TO_NUMBER(:P255_CS_COSTO_VTA),0)) / TO_NUMBER(:P255_CS_VTA_TOTAL) * 100, 2);',
'',
':P255_WIN := ''0'';',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
