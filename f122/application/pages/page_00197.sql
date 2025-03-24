prompt --application/pages/page_00197
begin
--   Manifest
--     PAGE: 00197
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
 p_id=>197
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTRGARAN'
,p_alias=>'VTRGARAN'
,p_step_title=>unistr('Reporte de Garant\00EDas Emitidas')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MARIANABLA'
,p_last_upd_yyyymmddhh24miss=>'20221118155202'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42564889095231250)
,p_plug_name=>unistr('Reporte de Garant\00EDas Emitidas')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43257481771450606)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(42564889095231250)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43258203530450614)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(42564889095231250)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct   d.cod_empresa,',
'    d.fec_alta fec_comprobante,',
'    d.nro_garantia, ',
'    d.nro_comprobante nro_gardor, ',
'    d.nro_comprobante, ',
'    (select rtrim(nvl(p.nombre,p.nomb_fantasia)||''(''||cl.cod_cliente||'')'')  ',
'    from vt_comprobantes_cabecera cc, cc_clientes cl, personas p',
'    where cc.cod_empresa=d.cod_empresa',
'      and cc.tip_comprobante=d.tip_comprobante',
'      and cc.ser_comprobante=d.ser_comprobante',
'      and cc.nro_comprobante=d.nro_comprobante',
'      and cc.cod_empresa=cl.cod_empresa',
'      and cc.cod_cliente=cl.cod_cliente',
'      and cl.cod_persona=p.cod_persona) nombre,',
'      null control',
'     from   st_garantia_productos_det d',
'    where d.cod_empresa=:P197_COD_EMPRESA',
'      and (:P197_NRO_INI is null or :P197_NRO_FIN is null or d.nro_garantia between :P197_NRO_INI and :P197_NRO_FIN)',
'      and (:P197_FEC_INI is null or :P197_FEC_FIN is null or d.fec_alta between TO_DATE(:P197_FEC_INI, ''DD/MM/YYYY'') and TO_DATE(:P197_FEC_FIN, ''DD/MM/YYYY''))',
'      and :P197_AUX_REPORTE = ''1''',
' order by 3,2',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P197_AUX_REPORTE,P197_NRO_INI,P197_NRO_FIN,P197_FEC_INI,P197_FEC_FIN,P197_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Garant\00EDas')
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
 p_id=>wwv_flow_imp.id(43258391565450615)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se han encontrado datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>43258391565450615
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43258454196450616)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43258518562450617)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'COLUMNA'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43258611508450618)
,p_db_column_name=>'NRO_GARANTIA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Garant\00EDa')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43258804254450620)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nro. Factura'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43258921734450621)
,p_db_column_name=>'NOMBRE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43259594653450627)
,p_db_column_name=>'NRO_GARDOR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('Nro. Garant\00EDa')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43259601055450628)
,p_db_column_name=>'CONTROL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(43347542573658049)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'433476'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_GARANTIA:NRO_GARDOR:NOMBRE:FEC_COMPROBANTE:NRO_COMPROBANTE:CONTROL:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43257356718450605)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(42564889095231250)
,p_button_name=>'EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43258055791450612)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(42564889095231250)
,p_button_name=>'LIMPIAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Limpiar'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43256932374450601)
,p_name=>'P197_NRO_INI'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(42564889095231250)
,p_prompt=>'De'
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
 p_id=>wwv_flow_imp.id(43257083396450602)
,p_name=>'P197_NRO_FIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(42564889095231250)
,p_prompt=>'A'
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
 p_id=>wwv_flow_imp.id(43257181122450603)
,p_name=>'P197_FEC_INI'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(42564889095231250)
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
 p_id=>wwv_flow_imp.id(43257299485450604)
,p_name=>'P197_FEC_FIN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(42564889095231250)
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
 p_id=>wwv_flow_imp.id(43257517345450607)
,p_name=>'P197_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(43257481771450606)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43257683602450608)
,p_name=>'P197_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(43257481771450606)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43257788447450609)
,p_name=>'P197_COD_SUCURSAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(43257481771450606)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43257939610450611)
,p_name=>'P197_COD_USUARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(43257481771450606)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43259233356450624)
,p_name=>'P197_AUX_MSJ'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(43257481771450606)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43259778191450629)
,p_name=>'P197_AUX_REPORTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(43257481771450606)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43259028792450622)
,p_name=>'DA_EJECUTAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43257356718450605)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43259125263450623)
,p_event_id=>wwv_flow_imp.id(43259028792450622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P197_AUX_MSJ := NULL;',
':P197_AUX_REPORTE := ''1'';',
'IF TO_DATE(:P197_FEC_INI, ''DD/MM/YYYY'') > TO_DATE(:P197_FEC_FIN, ''DD/MM/YYYY'') THEN',
'    :P197_AUX_MSJ := ''La fecha final debe ser mayor a la fecha inicial.'';',
'END IF;    '))
,p_attribute_02=>'P197_FEC_INI,P197_FEC_FIN'
,p_attribute_03=>'P197_AUX_MSJ,P197_AUX_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43259368337450625)
,p_event_id=>wwv_flow_imp.id(43259028792450622)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P197_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P197_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43259419305450626)
,p_event_id=>wwv_flow_imp.id(43259028792450622)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43258203530450614)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P197_AUX_MSJ'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(43257839333450610)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--WHEN NEW FORM INSTANCE',
':P_COD_MODULO := ''ST'';',
'',
'--INICIALIZA GLOBALES',
':P197_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
':P197_COD_MODULO := :P_COD_MODULO;',
':P197_COD_SUCURSAL := :P_COD_SUCURSAL;',
':P197_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
'',
':P197_AUX_REPORTE := ''2'';'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(43258164688450613)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(43258055791450612)
);
wwv_flow_imp.component_end;
end;
/
