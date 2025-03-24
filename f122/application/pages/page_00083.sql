prompt --application/pages/page_00083
begin
--   Manifest
--     PAGE: 00083
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
 p_id=>83
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Crear Visita'
,p_alias=>'CREAR-VISITA1'
,p_page_mode=>'MODAL'
,p_step_title=>'Crear Visita'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250305093541'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(481737928441165746)
,p_plug_name=>'Map'
,p_region_name=>'mymap'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'PLUGIN_COM.JK64.SIMPLE_GOOGLE_MAP'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'-25,-57'
,p_attribute_02=>'8'
,p_attribute_03=>'350'
,p_attribute_04=>'P83_LAT_LONG'
,p_attribute_05=>'16'
,p_attribute_07=>'Y'
,p_attribute_11=>'P83_ADDRESS'
,p_attribute_12=>'Y'
,p_attribute_13=>'13'
,p_attribute_14=>'TRUE'
,p_attribute_17=>'greedy'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2051154167609330917)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9275349742603274106)
,p_plug_name=>'Event'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13758738756133516)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2051154167609330917)
,p_button_name=>'DELETE2'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Delete'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P83_EVENT_ID is not null and',
':P83_SERIES_ID is not null'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13759157816133516)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2051154167609330917)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13759537360133516)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2051154167609330917)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P83_EVENT_ID is not null and',
':P83_SERIES_ID is null'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13759939692133517)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2051154167609330917)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P83_EVENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13760335373133517)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2051154167609330917)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Visita'
,p_button_position=>'NEXT'
,p_button_condition=>'P83_EVENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(13777336657133526)
,p_branch_name=>'Go To Page 489'
,p_branch_action=>'f?p=&APP_ID.:489:&SESSION.::&DEBUG.:RP,489::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(13760335373133517)
,p_branch_sequence=>20
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 08-SEP-2010 20:10 by SBKENNED'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13754892548133514)
,p_name=>'P83_LAT_LONG'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(481737928441165746)
,p_prompt=>'Posicion'
,p_placeholder=>'lat,long'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13755222332133514)
,p_name=>'P83_INFO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(481737928441165746)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13755694327133514)
,p_name=>'P83_ADDRESS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(481737928441165746)
,p_prompt=>'Direccion'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13756012524133515)
,p_name=>'P83_STREET_NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(481737928441165746)
,p_prompt=>'Calle Numero'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13756445705133515)
,p_name=>'P83_ROUTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(481737928441165746)
,p_prompt=>'Ruta'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13756849127133515)
,p_name=>'P83_LOCALITY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(481737928441165746)
,p_prompt=>'Localidad'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13757242628133515)
,p_name=>'P83_AREA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(481737928441165746)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13757671282133515)
,p_name=>'P83_COUNTRY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(481737928441165746)
,p_prompt=>'Pais'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13758083750133516)
,p_name=>'P83_POSTAL_CODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(481737928441165746)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13761035313133517)
,p_name=>'P83_EVENT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9275349742603274106)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13761455237133518)
,p_name=>'P83_NRO_MOVIMIENTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9275349742603274106)
,p_prompt=>'Nro Movimiento'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13761847828133518)
,p_name=>'P83_EMPRESA'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9275349742603274106)
,p_item_default=>'NGO'
,p_prompt=>'Empresa'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''NGO'' D, ''NGO'' C',
'from DUAL',
'UNION ALL',
'select ''CPH'' D, ''CPH'' C',
'from DUAL',
'union all',
'select ''BESTHOME'' D, ''BH'' C',
'from DUAL',
'UNION ALL',
'select ''NGO-CPH'' D, ''NGO-CPH'' C',
'from DUAL',
''))
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'4'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13762245274133518)
,p_name=>'P83_COD_CLIENTE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9275349742603274106)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre || '' ''||cod_cliente||'' - '' ||(select numero from ident_personas i where i.cod_persona=a.cod_persona and rownum=1) nombre, cod_cliente',
'from cc_clientes a, personas p',
'where a.cod_empresa=''1''',
'/*and a.cod_cliente=:P83_COD_CLIENTE*/',
'and a.cod_persona=p.cod_persona',
'and (:P83_EMPRESA=''NGO'' OR :P83_EMPRESA=''NGO-CPH'')',
'union all ',
'select nombre || '' ''||cod_cliente||'' - '' ||(select numero from ident_personas i where i.cod_persona=a.cod_persona and rownum=1) nombre, cod_cliente',
'from cc_clientes a, personas p',
'where a.cod_empresa=''18''',
'/*and a.cod_cliente=:P83_COD_CLIENTE*/',
'and a.cod_persona=p.cod_persona',
'and (:P83_EMPRESA=''BH''  )',
'UNION ALL',
'select nombre || '' ''||cod_cliente||'' - ''|| (select numero from ident_personas@dblink_cph i where i.cod_persona=a.cod_persona and rownum=1)nombre, cod_cliente',
'from cc_clientes@dblink_cph a, personas@dblink_cph p',
'where a.cod_empresa=''1''',
'/*and a.cod_cliente=:P83_COD_CLIENTE*/',
'and a.cod_persona=p.cod_persona',
'and (:P83_EMPRESA=''CPH'' )'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P83_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13762650036133518)
,p_name=>'P83_NOMBRE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9275349742603274106)
,p_prompt=>'Nombre'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13763064789133518)
,p_name=>'P83_COD_COBRADOR'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9275349742603274106)
,p_item_default=>':P_COD_COBRADOR'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NOMBRE as d,',
'       C.COD_COBRADOR as r ',
'  from CC_COBRADORES C, PERSONAS P',
'WHERE C.COD_EMPRESA=:P_COD_EMPRESA',
'AND C.COD_PERSONA=P.COD_PERSONA',
'and activo=''S''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13763454013133519)
,p_name=>'P83_COD_CUSTODIO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9275349742603274106)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(13763988930133519)
,p_validation_name=>'valida_cliente'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''S''',
'from cc_clientes a',
'where a.cod_empresa=''1''',
'and a.cod_cliente=:P83_COD_CLIENTE',
'and (:P83_EMPRESA=''NGO'' OR :P83_EMPRESA=''NGO-CPH'')',
'UNION ALL',
'select ''S''',
'from cc_clientes@dblink_cph a',
'where a.cod_empresa=''1''',
'and a.cod_cliente=:P83_COD_CLIENTE',
'and (:P83_EMPRESA=''CPH'' )',
'UNION ALL',
'select ''S''',
'from cc_clientes a',
'where a.cod_empresa=''18''',
'and a.cod_cliente=:P83_COD_CLIENTE',
'and (:P83_EMPRESA=''BH'' )'))
,p_validation_type=>'EXISTS'
,p_error_message=>'No existe el codigo de cliente!'
,p_associated_item=>wwv_flow_imp.id(13762245274133518)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13765075003133520)
,p_name=>'save duration'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P83_DURATION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13765587226133520)
,p_event_id=>wwv_flow_imp.id(13765075003133520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P83_DURATION_S'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$v("P83_DURATION")'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13765984091133520)
,p_name=>'reset duration after refresh'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P83_DURATION'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13766484184133521)
,p_event_id=>wwv_flow_imp.id(13765984091133520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P83_DURATION'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$v("P83_DURATION_S")'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13766823556133521)
,p_name=>'display recurrence region'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P83_RECUR_FLAG'
,p_condition_element=>'P83_RECUR_FLAG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13767272451133521)
,p_name=>'show/hide new event type'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P83_TYPE_ID'
,p_condition_element=>'P83_TYPE_ID'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'-1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13767734055133521)
,p_event_id=>wwv_flow_imp.id(13767272451133521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P83_NEW_EVENT_TYPE,P83_NEW_COLOR_PREF_ID,P83_NEW_INTERNAL_YN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13768238055133522)
,p_event_id=>wwv_flow_imp.id(13767272451133521)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P83_NEW_EVENT_TYPE,P83_NEW_COLOR_PREF_ID,P83_NEW_INTERNAL_YN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13768663973133522)
,p_name=>'redefault recur end date'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P83_EVENT_DATE_D'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>'(:P83_EVENT_ID is null or :P83_RECUR_FLAG is null) and regexp_like(:P83_EVENT_DATE_D,''^[:digit:]+\-[:alpha:]+\-[:digit:]+$'')'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13769148195133522)
,p_event_id=>wwv_flow_imp.id(13768663973133522)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P83_RECUR_END_DATE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'to_date(:P83_EVENT_DATE_D,''&APP_DATE_FORMAT.'')+7'
,p_attribute_07=>'P83_EVENT_DATE_D'
,p_attribute_08=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13769524498133523)
,p_name=>'Hide time if All Day event'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P83_SUPPRESS_TIME'
,p_condition_element=>'P83_SUPPRESS_TIME'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13770041068133523)
,p_event_id=>wwv_flow_imp.id(13769524498133523)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P83_DURATION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13770531977133523)
,p_event_id=>wwv_flow_imp.id(13769524498133523)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P83_DURATION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13770976422133523)
,p_name=>'Cancel Dialog'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13759157816133516)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13771402906133523)
,p_event_id=>wwv_flow_imp.id(13770976422133523)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13771812334133524)
,p_name=>'CARGA_INICIAL'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13772313329133524)
,p_event_id=>wwv_flow_imp.id(13771812334133524)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCOORDENADAS VARCHAR2(100);',
'BEGIN',
'',
'VCOORDENADAS:=REPLACE(VCOORDENADAS,''('',NULL);',
'VCOORDENADAS:=REPLACE(VCOORDENADAS,'')'',NULL);',
'IF LENGTH(VCOORDENADAS)<10 THEN',
'NULL;--:P83_LAT_LONG :=''-25.274736360624846,-57.60732650756836'';',
'',
'ELSE ',
'NULL;--:P83_LAT_LONG :=VCOORDENADAS;',
'END IF;',
'END ;',
''))
,p_attribute_02=>'P83_NRO_MOVIMIENTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13772739550133524)
,p_name=>'map click'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(481737928441165746)
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_COM.JK64.SIMPLE_GOOGLE_MAP|REGION TYPE|mapclick'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13773216226133524)
,p_event_id=>wwv_flow_imp.id(13772739550133524)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s("P83_INFO", "You clicked at: " + this.data.lat + "," + this.data.lng);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13773607765133524)
,p_name=>'address'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(481737928441165746)
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_COM.JK64.SIMPLE_GOOGLE_MAP|REGION TYPE|address'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13774123952133524)
,p_event_id=>wwv_flow_imp.id(13773607765133524)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.debug("address_components found: "+this.data.result.address_components.length);',
'',
'$s("P83_STREET_NUMBER","");',
'$s("P83_ROUTE","");',
'$s("P83_LOCALITY","");',
'$s("P83_AREA","");',
'$s("P83_COUNTRY","");',
'$s("P83_POSTAL_CODE","");',
'',
'var components = this.data.result.address_components;',
'for (i=0; i<components.length; i++) {',
'  switch (components[i].types[0]) {',
'  case "street_number" : $s("P83_STREET_NUMBER", components[i].short_name); break;',
'  case "route" : $s("P83_ROUTE", components[i].short_name); break;',
'  case "locality" : $s("P83_LOCALITY", components[i].short_name); break;',
'  case "administrative_area_level_1" : $s("P83_AREA", components[i].short_name); break;',
'  case "country" : $s("P83_COUNTRY", components[i].short_name); break;',
'  case "postal_code" : $s("P83_POSTAL_CODE", components[i].short_name); break;',
'  }',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13774554967133525)
,p_name=>'geolocate'
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(481737928441165746)
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_COM.JK64.SIMPLE_GOOGLE_MAP|REGION TYPE|geolocate'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13775038152133525)
,p_event_id=>wwv_flow_imp.id(13774554967133525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s("P83_INFO", "Geolocate says you are here: " + this.data.lat + "," + this.data.lng);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13775482472133525)
,p_name=>'nombre_cliente'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P83_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13775925748133525)
,p_event_id=>wwv_flow_imp.id(13775482472133525)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P83_NOMBRE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre',
'from cc_clientes c, personas p',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona',
'and c.cod_cliente=:P83_COD_CLIENTE',
'AND (:P83_EMPRESA=''NGO'' OR :P83_EMPRESA=''NGO-CPH'')',
'AND ROWNUM=1',
'UNION ALL',
'select nombre',
'from cc_clientes@dblink_cph c, personas@dblink_cph p',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona',
'and c.cod_cliente=:P83_COD_CLIENTE',
'AND :P83_EMPRESA=''CPH''',
'AND ROWNUM=1',
'UNION ALL',
'select nombre',
'from cc_clientes c, personas p',
'where c.cod_empresa = ''18''',
'and c.cod_persona = p.cod_persona',
'and c.cod_cliente=:P83_COD_CLIENTE',
'AND :P83_EMPRESA=''BH''',
'AND ROWNUM=1',
'order by 1'))
,p_attribute_07=>'P83_COD_CLIENTE,P83_EMPRESA'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13776353299133526)
,p_name=>'New'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P83_COD_COBRADOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13776893108133526)
,p_event_id=>wwv_flow_imp.id(13776353299133526)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select U.COD_CUSTODIO',
' INTO :P83_COD_CUSTODIO',
'from usuarios u, cc_cobradores c',
'where u.cod_empresa=:P_COD_EMPRESA',
'and u.cod_persona=c.cod_persona',
'and u.cod_empresa=c.cod_empresa',
'and c.cod_cobrador = :P83_COD_COBRADOR;',
'EXCEPTION WHEN OTHERS THEN',
':P83_COD_CUSTODIO:=NULL;',
'end;'))
,p_attribute_02=>'P83_COD_COBRADOR'
,p_attribute_03=>'P83_COD_CUSTODIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13764217449133519)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
'   select event_name,',
'          calendar_id,',
'          type_id,',
'          event_date_time,',
'          duration,',
'          event_desc,',
'          contact_person,',
'          case when display_time = ''Y'' then null',
'               when display_time = ''N'' then ''Y''',
'               end suppress_time,',
'          location,',
'          link_name_1, link_url_1, link_name_2, link_url_2, link_name_3, link_url_3,',
'          series_id,',
'          created_on, ',
'          created_by, ',
'          last_updated_on, ',
'          last_updated_by, ',
'          tags,',
'          contact_email',
'     from EBA_ca_events',
'   where event_id = :P83_EVENT_ID )',
'loop',
'   :P83_EVENT_NAME         := c1.event_name;	',
'   :P83_CALENDAR_ID        := c1.calendar_id;',
'   :P83_TYPE_ID	           := c1.type_id;	',
'   :P83_EVENT_DATE_TIME	   := to_char(c1.event_date_time,''&APP_DATE_FORMAT.&APP_TIME_FORMAT.'');		',
'   :P83_EVENT_DATE_D	   := to_char(c1.event_date_time,''&APP_DATE_FORMAT.'');	',
'   :P83_EVENT_START_TIME_D := to_char(c1.event_date_time,''&APP_TIME_FORMAT.'');	',
'   :P83_DURATION           := c1.duration;	',
'   :P83_EVENT_DESC	   := c1.event_desc;	',
'   :P83_CONTACT_PERSON	   := c1.contact_person;',
'   if c1.contact_email is null and ',
'      instr(c1.contact_person,''@'') > 0 and ',
'      instr(c1.contact_person,''.'') > 0 then',
'      :P83_CONTACT_EMAIL      := c1.contact_person;',
'   else',
'      :P83_CONTACT_EMAIL      := c1.contact_email;',
'   end if;',
'   ',
'   :P83_SUPPRESS_TIME      := c1.suppress_time;',
'   :P83_LOCATION           := c1.location;',
'   :P83_LINK_NAME_1        := c1.link_name_1;',
'   :P83_LINK_URL_1         := c1.link_url_1;',
'   :P83_LINK_NAME_2        := c1.link_name_2;',
'   :P83_LINK_URL_2         := c1.link_url_2;',
'   :P83_LINK_NAME_3        := c1.link_name_3;',
'   :P83_LINK_URL_3         := c1.link_url_3;',
'   :P83_TAGS               := c1.tags;',
'   :P83_SERIES_ID          := c1.series_id;	',
'',
'   :P83_CREATED_ON	   := apex_util.get_since(c1.created_on);	',
'   :P83_CREATED_BY	   := c1.created_by;	',
'   :P83_LAST_UPDATED_ON	   := apex_util.get_since(c1.last_updated_on);	',
'   :P83_LAST_UPDATED_BY	   := c1.last_updated_by;	',
'',
'   if c1.series_id is not null then',
'      for c2 in (',
'         select recur_freq,',
'                end_date',
'           from EBA_ca_series',
'         where series_id = c1.series_id )',
'      loop',
'         :P83_RECUR_FLAG	:= ''Y'';',
'         :P83_RECUR_FREQ	:= c2.recur_freq;	',
'         :P83_RECUR_END_DATE	:= to_char(c2.end_date,''&APP_DATE_FORMAT.'');	',
'      end loop;',
'   end if;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'failed to load data'
,p_process_when=>'P83_EVENT_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13764673326133520)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   vnumero         number; ',
'   vnumero_CPH NUMBER;',
'   VHORA_AGENDADA VARCHAR2(400);',
'   vdireccion varchar2(800);',
'   verror exception;',
'   vid number;',
'   VID_CPH NUMBER;',
'   vruc varchar2(60);',
'    vCOD_CLIENTE varchar2(800);',
'    vNOMBRE_CLIENTE varchar2(800);',
'begin',
'begin',
'',
'  select id',
'  into vid',
'',
'  from cc_visit_cast',
'  where cod_empresa=:P_COD_EMPRESA',
'  and fecha_fin_visita is null',
'  and codigo_usuario = :P_COD_CUSTODIO;',
'  exception',
'  when others then',
'  null;',
'  end;',
'  if :P83_EMPRESA=''CPH'' then',
'begin',
'',
'  select id',
'  into vid',
'',
'  from cc_visit_cast@dblink_cph',
'  where cod_empresa=:P_COD_EMPRESA',
'  and fecha_fin_visita is null',
'  and codigo_usuario = :P_COD_CUSTODIO;',
'  exception',
'  when others then',
'  null;',
'  end;',
'  end if;',
'  ',
'',
'if vid is not null then',
'raise verror;',
'end if;',
'BEGIN',
'  Select max( id )',
'    into vnumero',
'    from cc_visit_cast',
'   where cod_empresa =:P_COD_EMPRESA;',
'   vnumero := nvl( vnumero, 0 ) + 1;  ',
'EXCEPTION',
'  when no_data_found then  ',
'    vnumero := 1;',
'END;',
'',
'  begin',
'    select I.NUMERO',
'      into VRUC',
'    from cc_clientes c ,  ident_personas i',
'    where c.cod_empresa=:P_COD_EMPRESA ',
'    and c.cod_cliente=:P83_COD_CLIENTE',
'    and i.cod_persona=c.cod_persona',
'    AND ROWNUM=1;',
'    exception when others then ',
'     vRUC :=NULL;    ',
'    end ;',
'    ',
'',
'vdireccion := :P83_ADDRESS;',
' ',
'if (:P83_EMPRESA=''NGO'' OR  :P83_EMPRESA=''NGO-CPH'' OR    :P83_EMPRESA=''BH'') THEN',
'begin ',
'insert into cc_visit_cast(',
'COD_EMPRESA,ID,CODIGO_CLIENTE,NOMBRE_CLIENTE,',
'        NOMBRE_USUARIO,FECHA_VISITA,MOTIVO,CODIGO_USUARIO,',
'        FECHA_FIN_VISITA,OBSERVATION,COD_USUARIO,COD_VISITA,',
'        EMPRESA_ORIGEN,latitud_longitud',
')',
'',
'values(:P_COD_EMPRESA,vnumero,   :P83_COD_CLIENTE, :P83_NOMBRE,',
'       :P_COD_USUARIO, SYSDATE, NULL, :P_COD_CUSTODIO,',
'       NULL, NULL ,NVL(:P_COD_CUSTODIO,:P_COD_CUSTODIO),NULL,''NGO'',',
'       :P83_LAT_LONG',
'      );',
'',
':P83_NRO_MOVIMIENTO:=vnumero;',
'commit;',
'end;',
'    END IF;',
'    ',
'if :P83_EMPRESA=''CPH'' OR  :P83_EMPRESA=''NGO-CPH'' THEN',
'    ',
'    ',
'BEGIN',
'  Select max( id )',
'    into vnumero_CPH',
'    from cc_visit_cast@dblink_CPH',
'   where cod_empresa =''1'';',
'   vnumero_CPH := nvl( vnumero_CPH, 0 ) + 1;  ',
'EXCEPTION',
'  when no_data_found then  ',
'    vnumero_CPH := 1;',
'END;',
'',
'',
'    ',
'    if :P83_EMPRESA=''NGO-CPH'' then',
'    begin',
'    select c.cod_cliente, p.nombre',
'      into vCOD_CLIENTE, vNOMBRE_CLIENTE',
'    from cc_clientes@dblink_cph c, personas@dblink_cph p, ident_personas@dblink_cph i',
'    where c.cod_empresa=''1''',
'     and c.cod_persona=p.cod_persona',
'    and i.numero=vruc',
'    and i.cod_persona=c.cod_persona',
'    AND ROWNUM=1;',
'    exception when others then ',
'     vCOD_CLIENTE := :P83_COD_CLIENTE;',
'    vNOMBRE_CLIENTE:= :P83_NOMBRE;',
'    ',
'    end ;',
'    else',
'    vCOD_CLIENTE := :P83_COD_CLIENTE;',
'    vNOMBRE_CLIENTE:= :P83_NOMBRE;',
'    end if;',
'begin ',
'insert into cc_visit_cast@dblink_cph(',
'COD_EMPRESA,ID,CODIGO_CLIENTE,NOMBRE_CLIENTE,',
'        NOMBRE_USUARIO,FECHA_VISITA,MOTIVO,CODIGO_USUARIO,',
'        FECHA_FIN_VISITA,OBSERVATION,COD_USUARIO,COD_VISITA',
')',
'',
'values(''1'',vnumero_CPH,   vCOD_CLIENTE, vNOMBRE_CLIENTE,',
'       :P_COD_USUARIO, SYSDATE, NULL, :P_COD_CUSTODIO,',
'       NULL, NULL ,NVL(:P_COD_CUSTODIO,:P83_COD_CUSTODIO),NULL',
'      );',
'',
':P83_NRO_MOVIMIENTO:=vnumero;',
'commit;',
'end;',
'    END IF;    ',
'    ',
'exception ',
'when verror then',
' raise_application_error(-20111,''Visita existente pendiente'');',
'when others then ',
'null;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(13760335373133517)
,p_process_success_message=>'Event created.'
);
wwv_flow_imp.component_end;
end;
/
