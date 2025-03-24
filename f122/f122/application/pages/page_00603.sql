prompt --application/pages/page_00603
begin
--   Manifest
--     PAGE: 00603
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
 p_id=>603
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Listado de solicitudes de capacitaci\00F3n')
,p_alias=>'CAPACITACIONES-WANGO'
,p_step_title=>unistr('Listado de solicitudes de capacitaci\00F3n')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function editar(p_nro_solicitud){',
'    apex.item("P603_EDITAR").setValue(p_nro_solicitud);',
'}',
'',
'function anular(p_nro_solicitud){',
'    apex.item("P603_ANULAR").setValue(p_nro_solicitud);',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MBLANCO'
,p_last_upd_yyyymmddhh24miss=>'20230929152742'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(97750247088503613)
,p_plug_name=>unistr('Listado de solicitudes de capacitaci\00F3n')
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(97750538699503616)
,p_plug_name=>'Reporte de Solicitudes'
,p_parent_plug_id=>wwv_flow_imp.id(97750247088503613)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT',
'    ROWNUM r,',
'    a.nro_solicitud,',
'    TO_CHAR(a.fec_solicitud,''DD-MM-YYYY'') as fec_solicitud,       ',
'    a.tema_capacitacion,',
'    a.obs_instituto,',
'    a.ind_tipo, ',
'    case ',
'     when a.ind_estado = 1 then ''Autorizado por el jefe inmediato''',
'     when a.ind_estado = 2 then ''Autorizado por Gente NGO''',
'     when a.ind_estado = 3 then ''Anulado por el usuario''',
unistr('     when a.ind_estado is null then ''Pendiente de autorizaci\00F3n'''),
'     --else ''N/A''',
'    end estado,',
'    case ',
'     when a.ind_estado is null then ''<a href="javascript:anular(''''''||a.nro_solicitud||'''''');"><span aria-hidden="true" class="fa fa-times-square" style="color:red;"></span></span></a>''',
'     else null',
'    end anular,',
'    case ',
'     when a.ind_estado is null then ''<a href="javascript:editar(''''''||a.nro_solicitud||'''''');"><span class="fa fa-edit"></span></a>''',
'     else null',
'    end editar',
'FROM',
'    (',
'        SELECT',
'            a.*',
'        FROM',
'            RH_SOLICITUDES_CAPACITACION a                                           ',
'        WHERE',
'            1 = 1',
'            AND a.cod_empresa = 1',
'            AND a.cod_empleado = :P_COD_EMPLEADO  --1207--740 -- valores para test                                                                                                                                                              ',
'        ORDER BY ',
'            a.fec_solicitud desc ',
'    ) a',
'   '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P603_COD_EMPLEADO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte de Solicitudes'
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
 p_id=>wwv_flow_imp.id(97750616365503617)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se han encontrado datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'MBLANCO'
,p_internal_uid=>97750616365503617
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97750737973503618)
,p_db_column_name=>'R'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'R'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97750800226503619)
,p_db_column_name=>'NRO_SOLICITUD'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97750901104503620)
,p_db_column_name=>'FEC_SOLICITUD'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha Solicitud'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97751048298503621)
,p_db_column_name=>'TEMA_CAPACITACION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tema '
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97751173455503622)
,p_db_column_name=>'OBS_INSTITUTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Instituto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97751268451503623)
,p_db_column_name=>'IND_TIPO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(206216996414318418)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97751494304503625)
,p_db_column_name=>'ESTADO'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97751671431503627)
,p_db_column_name=>'EDITAR'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Editar'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(97751709417503628)
,p_db_column_name=>'ANULAR'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Anular'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(205908262847139304)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2059083'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'R:NRO_SOLICITUD:FEC_SOLICITUD:TEMA_CAPACITACION:OBS_INSTITUTO:IND_TIPO:ESTADO:ANULAR:EDITAR:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(97750324983503614)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(97750538699503616)
,p_button_name=>'BT_CREAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Solicitud'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:609:&SESSION.::&DEBUG.:609::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97750486477503615)
,p_name=>'P603_COD_EMPLEADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(97750247088503613)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(206367973696755621)
,p_name=>'P603_EDITAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(97750247088503613)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(206368083650755622)
,p_name=>'P603_ANULAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(97750247088503613)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(206368321827755625)
,p_name=>'P603_URL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(97750247088503613)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(206369621402755638)
,p_name=>'P603_MENSAJE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(97750247088503613)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206368144129755623)
,p_name=>'DA_EDITAR'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P603_EDITAR'
,p_condition_element=>'P603_EDITAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206368274553755624)
,p_event_id=>wwv_flow_imp.id(206368144129755623)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_PAGE.GET_URL (  p_page   => 609,',
'                            p_items  => ''P609_NRO_SOLICITUD'',',
'                            p_values => (''''||:P603_EDITAR||'''')) f_url_1',
'INTO :P603_URL',
'FROM DUAL;',
''))
,p_attribute_02=>'P603_EDITAR'
,p_attribute_03=>'P603_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206368430760755626)
,p_event_id=>wwv_flow_imp.id(206368144129755623)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P603_URL").getValue();',
'apex.navigation.redirect (url);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206369345980755635)
,p_name=>'DA_ANULAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P603_ANULAR'
,p_condition_element=>'P603_ANULAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206369419138755636)
,p_event_id=>wwv_flow_imp.id(206369345980755635)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea anular la solicitud?')
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206369526220755637)
,p_event_id=>wwv_flow_imp.id(206369345980755635)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SOLICITUD_CAPACITACIONES.PR_ANULAR(PI_NRO_SOLICITUD => TO_NUMBER(:P603_ANULAR),',
'                                   PO_MENSAJE => :P603_MENSAJE);'))
,p_attribute_02=>'P603_ANULAR'
,p_attribute_03=>'P603_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206369707454755639)
,p_event_id=>wwv_flow_imp.id(206369345980755635)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(97750538699503616)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P603_MENSAJE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206369871329755640)
,p_name=>'DA_MENSAJE'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P603_MENSAJE'
,p_condition_element=>'P603_MENSAJE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206369908076755641)
,p_event_id=>wwv_flow_imp.id(206369871329755640)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P603_MENSAJE.'
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_05=>'Aceptar'
,p_attribute_06=>'Cancelar'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(207193818113594036)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--:P_COD_EMPLEADO := 1207; ',
'null;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
