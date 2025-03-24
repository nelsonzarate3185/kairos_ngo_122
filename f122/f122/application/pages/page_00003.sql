prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Usuarios'
,p_alias=>'USUARIOS'
,p_step_title=>'Usuarios'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function resetPass(pid){',
'    apex.item(''P3_ID'').setValue(pid); ',
'      ',
unistr('    vmsg = ''\00BFEst\00E1 seguro que desea resetear la contrase\00F1a para este usuario?'';'),
'    apex.message.confirm(vmsg, function(okPressed) {',
'      if (okPressed) {',
'        apex.submit(''CHANGE_PASS'');',
'      }',
'    });',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20241113111946'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15195194867872508)
,p_plug_name=>unistr('Contrase\00F1a Nueva')
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40224552113418301)
,p_plug_name=>'Listado de Usuarios'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.* ,''X'', null ver_clave',
'  FROM ASP$USUA0100 A '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Listado de Usuarios'
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
 p_id=>wwv_flow_imp.id(40224613952418302)
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6:P6_ID,P6_TITULO:#ID#,Modificar Usuario'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'MARIANABLA'
,p_internal_uid=>40224613952418302
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40224701642418303)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40224893219418304)
,p_db_column_name=>'USRN'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre de Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40224920642418305)
,p_db_column_name=>'APEL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Apellido'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40225099306418306)
,p_db_column_name=>'NOMB'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40225162510418307)
,p_db_column_name=>'DM$ACTI'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('\00BFActivo?')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(40303239801928454)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40225275687418308)
,p_db_column_name=>'MAIL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'E-Mail'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40225345735418309)
,p_db_column_name=>'DM$PADM'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Dm$padm'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40225490364418310)
,p_db_column_name=>'DM$IMPR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Dm$impr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40225582348418311)
,p_db_column_name=>'PASS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>unistr('Contrase\00F1a')
,p_column_link=>'javascript:$s(''P3_ID_CLAVE'',''#ID#'');'
,p_column_linktext=>unistr('Restaurar Contrase\00F1a')
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--small"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40225684442418312)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fecha de Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40225748403418313)
,p_db_column_name=>'CREATION_BY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Creado por'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40225893968418314)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>unistr('Fecha \00DAltima Modificaci\00F3n')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40225930909418315)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Modificado por'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8810154538104806)
,p_db_column_name=>'''X'''
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'&#x27;x&#x27;'
,p_column_html_expression=>'#PASS#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15195293869872509)
,p_db_column_name=>'VER_CLAVE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>unistr('Ver Contrase\00F1a')
,p_column_link=>'javascript:$s(''P3_CONTROL_CLAVE'',''#ID#'');'
,p_column_linktext=>'<span style="color: #003a85;" class="fa fa-eye" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'NEVER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12524580390514407)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(30819098647981997)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12524603216514408)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(41127354264101747)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12524740913514409)
,p_db_column_name=>'COD_CUSTODIO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cod Custodio'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(30820581861995845)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(40242491925482470)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'402425'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMB:APEL:USRN:MAIL:PASS:VER_CLAVE:CREATION_DATE:LAST_UPDATE_DATE:DM$ACTI:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(419457042606055847)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(15195194867872508)
,p_button_name=>'Modificar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Modificar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-key'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40226082307418316)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(40224552113418301)
,p_button_name=>'CREAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6:P6_TITULO:Registrar Usuario'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(419456926915055846)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(15195194867872508)
,p_button_name=>'Cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-box-arrow-in-west'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15195340655872510)
,p_name=>'P3_CONTROL_CLAVE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(40224552113418301)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15195637373872513)
,p_name=>'P3_CLAVE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15195194867872508)
,p_prompt=>unistr('Contrase\00F1a')
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
 p_id=>wwv_flow_imp.id(40226118096418317)
,p_name=>'P3_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(40224552113418301)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(419456410449055841)
,p_name=>'P3_ID_CLAVE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(40224552113418301)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(419456850446055845)
,p_name=>'P3_CAMBIO_INICIO_SESION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15195194867872508)
,p_prompt=>unistr('Requiere cambio de contrase\00F1a en el primer uso')
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'Si'
,p_attribute_04=>'N'
,p_attribute_05=>'No'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40226236951418318)
,p_name=>'DA_REFRESH'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(40224552113418301)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40226387378418319)
,p_event_id=>wwv_flow_imp.id(40226236951418318)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('apex.message.showPageSuccess(''El usuario se guard\00F3 correctamente.'');')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40226444466418320)
,p_event_id=>wwv_flow_imp.id(40226236951418318)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40224552113418301)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15195418559872511)
,p_name=>'DA_ABRIR_MODAL_CLAVE'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_CONTROL_CLAVE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15195781250872514)
,p_event_id=>wwv_flow_imp.id(15195418559872511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT SEGURIDAD.FB_DESCENCRIPTAR(PASS)',
'      INTO :P3_CLAVE',
'      FROM ASP$USUA0100',
'     WHERE ID = :P3_CONTROL_CLAVE;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'    :P3_CLAVE := NULL;',
'END;'))
,p_attribute_02=>'P3_CONTROL_CLAVE'
,p_attribute_03=>'P3_CLAVE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15195594417872512)
,p_event_id=>wwv_flow_imp.id(15195418559872511)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15195194867872508)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(419456601423055843)
,p_name=>'DA_ABRIL_MODAL_CLAVE'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_ID_CLAVE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(432284652057518205)
,p_event_id=>wwv_flow_imp.id(419456601423055843)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':p3_clave:=null;'
,p_attribute_03=>'P3_CLAVE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(419456735912055844)
,p_event_id=>wwv_flow_imp.id(419456601423055843)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15195194867872508)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(419457181126055848)
,p_name=>'da_cancelar'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(419456926915055846)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(419457212091055849)
,p_event_id=>wwv_flow_imp.id(419457181126055848)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15195194867872508)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(419457375561055850)
,p_name=>'da_modificar_clave'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(419457042606055847)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(432284319200518202)
,p_event_id=>wwv_flow_imp.id(419457375561055850)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de realizar el cambio de clave para el usuario?'
,p_attribute_02=>'Cambio de Clave'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(432284471014518203)
,p_event_id=>wwv_flow_imp.id(419457375561055850)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    vpass VARCHAR2(100);',
'    vnomb VARCHAR2(100);',
'    vapel VARCHAR2(100);',
'BEGIN',
'',
'--RAISE_APPLICATION_ERROR(-20001,:P3_ID);',
'     IF :P3_ID_CLAVE IS NOT NULL THEN',
'',
'        SELECT apel, nomb',
'          INTO vapel, vnomb',
'          FROM ASP$USUA0100',
'         WHERE id = :P3_ID_CLAVE;',
'        ',
'        select seguridad.fb_encriptar(:P3_CLAVE)',
'          INTO vpass',
'          from dual;',
'        /*SELECT seguridad.fb_encriptar(UPPER(vnomb)||UPPER(vapel)||''1234'')',
'          INTO vpass',
'          FROM dual;*/',
'',
'        UPDATE ASP$USUA0100',
'           SET PASS = vpass,cambio_inicio_sesion=:P3_CAMBIO_INICIO_SESION',
'          WHERE id = :P3_ID_CLAVE;',
'          commit;',
'    END IF;   ',
'     ',
'END;'))
,p_attribute_02=>'P3_CLAVE,P3_ID_CLAVE,P3_CAMBIO_INICIO_SESION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(432284252262518201)
,p_event_id=>wwv_flow_imp.id(419457375561055850)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15195194867872508)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8810052036104805)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('PR_RESTAURAR_CONTRASE\00D1A')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    vpass VARCHAR2(100);',
'    vnomb VARCHAR2(100);',
'    vapel VARCHAR2(100);',
'BEGIN',
'',
'--RAISE_APPLICATION_ERROR(-20001,:P3_ID);',
'     IF :P3_ID IS NOT NULL THEN',
'',
'        SELECT apel, nomb',
'          INTO vapel, vnomb',
'          FROM ASP$USUA0100',
'         WHERE id = :P3_ID;',
'        ',
'        select seguridad.fb_encriptar(DBMS_RANDOM.string(''x'',12))',
'          INTO vpass',
'          from dual;',
'        /*SELECT seguridad.fb_encriptar(UPPER(vnomb)||UPPER(vapel)||''1234'')',
'          INTO vpass',
'          FROM dual;*/',
'',
'        UPDATE ASP$USUA0100',
'           SET PASS = vpass',
'          WHERE id = :P3_ID;',
'    END IF;   ',
'     ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CHANGE_PASS'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>unistr('Se restaur\00F3 contrase\00F1a correctamente.')
);
wwv_flow_imp.component_end;
end;
/
