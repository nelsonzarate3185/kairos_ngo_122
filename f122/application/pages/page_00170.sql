prompt --application/pages/page_00170
begin
--   Manifest
--     PAGE: 00170
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
 p_id=>170
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CCDESCLI - Descuentos a Clientes'
,p_alias=>'CCDESCLI-DESCUENTOS-A-CLIENTES'
,p_step_title=>'CCDESCLI - Descuentos a Clientes'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20221125150233'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35857655366790637)
,p_plug_name=>'Descuentos a Clientes'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useRegionTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36258105975335710)
,p_plug_name=>'Listado - Descuentos de Clientes'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36094621390119708)
,p_plug_name=>'Form - Descuentos de Clientes'
,p_parent_plug_id=>wwv_flow_imp.id(36258105975335710)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SEQ_ID ,',
'        c001 cod_empresa,',
'       c002 cod_cliente,',
'       c003 cod_persona,',
'       c004 cod_division,',
'       c005 cod_marca,',
'       c006 cod_condicion_venta,',
'       n001 porc_descuento,',
'       c049 id_registro,',
'       null editar',
'         from APEX_COLLECTIONS ',
'           where COLLECTION_NAME = ''COLEC_CC_DESCUENTO_CLIENTE''',
'            order by SEQ_ID desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Form - Descuentos de Clientes'
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
 p_id=>wwv_flow_imp.id(36094797363119709)
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
,p_internal_uid=>36094797363119709
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36094814641119710)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36094970387119711)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36095053985119712)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('C\00F3digo Cliente')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36095105207119713)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(25345769790214481)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36095288627119714)
,p_db_column_name=>'COD_DIVISION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Divisi\00F3n')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(12986256768405011)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36095375032119715)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(6493312274090693)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36095427143119716)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('Condici\00F3n de Venta')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(6213171224436112)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36095500174119717)
,p_db_column_name=>'PORC_DESCUENTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'% Descuento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36095656787119718)
,p_db_column_name=>'ID_REGISTRO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Id Registro'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36259496134335723)
,p_db_column_name=>'EDITAR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Editar'
,p_column_link=>'f?p=&APP_ID.:176:&SESSION.::&DEBUG.::P176_SEQ_ID:#SEQ_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-page.png" class="apex-edit-page" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(36356671230177390)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'363567'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_CLIENTE:COD_PERSONA:COD_DIVISION:COD_MARCA:COD_CONDICION_VENTA:PORC_DESCUENTO:EDITAR:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36260795888335736)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(36094621390119708)
,p_button_name=>'BTN_NUEVO_REGISTRO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Nuevo Registro'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:176:&SESSION.::&DEBUG.::P176_COD_CLIENTE:&P170_COD_CLIENTE.'
,p_icon_css_classes=>'fa-plus-circle-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36260861159335737)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(36094621390119708)
,p_button_name=>'BTN_GUARDAR_BD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Registrar Datos'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-database-play'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48937332908377215)
,p_name=>'P170_COD_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(35857655366790637)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36260466216335733)
,p_name=>'ActualizarListado'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(36094621390119708)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36260539384335734)
,p_event_id=>wwv_flow_imp.id(36260466216335733)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36094621390119708)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36261140467335740)
,p_name=>'DA_RegistrarDatos'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(36260861159335737)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36261286539335741)
,p_event_id=>wwv_flow_imp.id(36261140467335740)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFSeguro que quieres registrar los cambios realizados?')
,p_attribute_02=>unistr('Confimaci\00F3n del registro')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36261342650335742)
,p_event_id=>wwv_flow_imp.id(36261140467335740)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCDESCLI.sp_procesa_ccdescli();',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36261439442335743)
,p_event_id=>wwv_flow_imp.id(36261140467335740)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36094621390119708)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36261542255335744)
,p_event_id=>wwv_flow_imp.id(36261140467335740)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Los datos fueron registrados con \00E9xito')
,p_attribute_02=>'Registro de datos completado'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36257941393335708)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INI_CARGA_LISTADO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_CC_DESCUENTO_CLIENTE'');',
'',
'BEGIN',
'    ',
'    CCDESCLI.sp_listado_descuentos_clientes(pi_cod_empresa => :P_COD_EMPRESA, pi_cod_cliente => :P170_COD_CLIENTE);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     RAISE_APPLICATION_ERROR(-20001,SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
