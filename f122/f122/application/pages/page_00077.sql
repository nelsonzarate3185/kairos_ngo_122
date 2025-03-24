prompt --application/pages/page_00077
begin
--   Manifest
--     PAGE: 00077
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
 p_id=>77
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Visita Vendedor'
,p_alias=>'VISITA-VENDEDOR'
,p_page_mode=>'MODAL'
,p_step_title=>'Visita Vendedor'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'',
'',
'function getLocation() { ',
'if (navigator.geolocation) {',
'navigator.geolocation.getCurrentPosition(',
' function setPosition(position) { ',
' $s("P77_LAT_LONG_1" , position.coords.latitude +","+position.coords.longitude);',
'  //$s("P225_LATITUDE" , position.coords.latitude);',
' //$s("P225_LONGITUDE", position.coords.longitude);',
' //$s("P77_LAT_LONG_1" , position.coords.latitude );',
' ',
' }',
',function (error)',
'{',
'switch(error.code) ',
'{',
'case error.PERMISSION_DENIED: ',
'    return "User denied the request for Geolocation.";',
'break;',
'case error.POSITION_UNAVAILABLE:',
'    return  "Location information is unavailable.";',
'break;',
'case error.TIMEOUT:',
'    return "The request to get user location timed out." ;',
'  ',
'break;',
'case error.UNKNOWN_ERROR:',
'    return "An unknown error occurred.";',
'break;',
'}',
'}    ',
',{timeout:10000});',
'  return "Success";',
'}',
'else',
'    return "Geolocation is not supported by this browser.";',
'};'))
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250320152559'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(658624194602902612)
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
,p_attribute_04=>'P77_LAT_LONG'
,p_attribute_05=>'16'
,p_attribute_07=>'Y'
,p_attribute_11=>'P77_ADDRESS'
,p_attribute_12=>'Y'
,p_attribute_13=>'13'
,p_attribute_14=>'TRUE'
,p_attribute_17=>'greedy'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2228040433771067783)
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
 p_id=>wwv_flow_imp.id(9452236008765010972)
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
 p_id=>wwv_flow_imp.id(13315607555891487)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2228040433771067783)
,p_button_name=>'DELETE2'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Delete'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P77_EVENT_ID is not null and',
':P77_SERIES_ID is not null'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13316099438891488)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2228040433771067783)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13316482046891488)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2228040433771067783)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>':P77_EVENT_ID is not null'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13316849654891488)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2228040433771067783)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P77_EVENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13317238216891488)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2228040433771067783)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Visita'
,p_button_position=>'NEXT'
,p_button_condition=>'P77_EVENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(13334263114891495)
,p_branch_name=>'Go To Page 1'
,p_branch_action=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.:RP,76::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(13317238216891488)
,p_branch_sequence=>20
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 08-SEP-2010 20:10 by SBKENNED'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13311786049891486)
,p_name=>'P77_LAT_LONG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(658624194602902612)
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
 p_id=>wwv_flow_imp.id(13312133563891486)
,p_name=>'P77_INFO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(658624194602902612)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13312540563891486)
,p_name=>'P77_ADDRESS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(658624194602902612)
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
 p_id=>wwv_flow_imp.id(13312909331891486)
,p_name=>'P77_STREET_NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(658624194602902612)
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
 p_id=>wwv_flow_imp.id(13313356593891486)
,p_name=>'P77_ROUTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(658624194602902612)
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
 p_id=>wwv_flow_imp.id(13313772629891486)
,p_name=>'P77_LOCALITY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(658624194602902612)
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
 p_id=>wwv_flow_imp.id(13314160317891487)
,p_name=>'P77_AREA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(658624194602902612)
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
 p_id=>wwv_flow_imp.id(13314534684891487)
,p_name=>'P77_COUNTRY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(658624194602902612)
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
 p_id=>wwv_flow_imp.id(13314988210891487)
,p_name=>'P77_POSTAL_CODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(658624194602902612)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13317951653891488)
,p_name=>'P77_EVENT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9452236008765010972)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13318367931891489)
,p_name=>'P77_NRO_MOVIMIENTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9452236008765010972)
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
 p_id=>wwv_flow_imp.id(13318763585891489)
,p_name=>'P77_EMPRESA'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9452236008765010972)
,p_item_default=>'NGO'
,p_prompt=>'Empresa'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''NGO'' D, ''NGO'' C',
'from DUAL',
'UNION ALL',
'select ''CPH'' D, ''CPH'' C',
'from DUAL',
'UNION ALL',
'select ''NGO-CPH'' D, ''NGO-CPH'' C',
'from DUAL',
''))
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13319131833891489)
,p_name=>'P77_COD_CLIENTE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9452236008765010972)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre || '' ''||cod_cliente||'' - '' ||(select numero from ident_personas i where i.cod_persona=a.cod_persona and rownum=1) nombre, cod_cliente',
'from cc_clientes a, personas p',
'where a.cod_empresa=''1''',
'/*and a.cod_cliente=:P77_COD_CLIENTE*/',
'and a.cod_persona=p.cod_persona',
'and (:P77_EMPRESA=''NGO'' OR :P77_EMPRESA=''NGO-CPH'')',
'UNION ALL',
'select nombre || '' ''||cod_cliente||'' - ''|| (select numero from ident_personas@dblink_cph i where i.cod_persona=a.cod_persona and rownum=1)nombre, cod_cliente',
'from cc_clientes@dblink_cph a, personas@dblink_cph p',
'where a.cod_empresa=''1''',
'/*and a.cod_cliente=:P77_COD_CLIENTE*/',
'and a.cod_persona=p.cod_persona',
'and (:P77_EMPRESA=''CPH'' )'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13319510390891489)
,p_name=>'P77_NOMBRE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9452236008765010972)
,p_prompt=>'Nombre'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13319994696891489)
,p_name=>'P77_COD_COBRADOR'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9452236008765010972)
,p_item_default=>':P_COD_COBRADOR'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NOMBRE as d,',
'       C.COD_COBRADOR as r ',
'  from CC_COBRADORES C, PERSONAS P',
'WHERE C.COD_EMPRESA=''1''',
'AND C.COD_PERSONA=P.COD_PERSONA',
'and activo=''S''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13320397177891489)
,p_name=>'P77_COD_CUSTODIO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9452236008765010972)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76102127906162847)
,p_name=>'P77_LAT_LONG_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(658624194602902612)
,p_prompt=>'Posicion L1'
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
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(13320861854891490)
,p_validation_name=>'valida_cliente'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''S''',
'from cc_clientes a',
'where a.cod_empresa=''1''',
'and a.cod_cliente=:P77_COD_CLIENTE',
'and (:P77_EMPRESA=''NGO'' OR :P77_EMPRESA=''NGO-CPH'')',
'UNION ALL',
'select ''S''',
'from cc_clientes@dblink_cph a',
'where a.cod_empresa=''1''',
'and a.cod_cliente=:P77_COD_CLIENTE',
'and (:P77_EMPRESA=''CPH'' )'))
,p_validation_type=>'EXISTS'
,p_error_message=>'No existe el codigo de cliente!'
,p_associated_item=>wwv_flow_imp.id(13319131833891489)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13321965241891491)
,p_name=>'save duration'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_DURATION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13322424866891491)
,p_event_id=>wwv_flow_imp.id(13321965241891491)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P77_DURATION_S'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$v("P77_DURATION")'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13322834974891491)
,p_name=>'reset duration after refresh'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_DURATION'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13323363136891491)
,p_event_id=>wwv_flow_imp.id(13322834974891491)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P77_DURATION'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$v("P77_DURATION_S")'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13323773535891491)
,p_name=>'display recurrence region'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_RECUR_FLAG'
,p_condition_element=>'P77_RECUR_FLAG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13324189330891491)
,p_name=>'show/hide new event type'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_TYPE_ID'
,p_condition_element=>'P77_TYPE_ID'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'-1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13324672381891492)
,p_event_id=>wwv_flow_imp.id(13324189330891491)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P77_NEW_EVENT_TYPE,P77_NEW_COLOR_PREF_ID,P77_NEW_INTERNAL_YN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13325106576891492)
,p_event_id=>wwv_flow_imp.id(13324189330891491)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P77_NEW_EVENT_TYPE,P77_NEW_COLOR_PREF_ID,P77_NEW_INTERNAL_YN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13325555294891492)
,p_name=>'redefault recur end date'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_EVENT_DATE_D'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>'(:P77_EVENT_ID is null or :P77_RECUR_FLAG is null) and regexp_like(:P77_EVENT_DATE_D,''^[:digit:]+\-[:alpha:]+\-[:digit:]+$'')'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13326029860891492)
,p_event_id=>wwv_flow_imp.id(13325555294891492)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P77_RECUR_END_DATE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'to_date(:P77_EVENT_DATE_D,''&APP_DATE_FORMAT.'')+7'
,p_attribute_07=>'P77_EVENT_DATE_D'
,p_attribute_08=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13326424500891492)
,p_name=>'Hide time if All Day event'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_SUPPRESS_TIME'
,p_condition_element=>'P77_SUPPRESS_TIME'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13326932381891493)
,p_event_id=>wwv_flow_imp.id(13326424500891492)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P77_DURATION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13327469242891493)
,p_event_id=>wwv_flow_imp.id(13326424500891492)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P77_DURATION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13327846004891493)
,p_name=>'Cancel Dialog'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13316099438891488)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13328315387891493)
,p_event_id=>wwv_flow_imp.id(13327846004891493)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13328775026891493)
,p_name=>'CARGA_INICIAL'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13329266083891493)
,p_event_id=>wwv_flow_imp.id(13328775026891493)
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
'NULL;--:P77_LAT_LONG :=''-25.274736360624846,-57.60732650756836'';',
'',
'ELSE ',
'NULL;--:P77_LAT_LONG :=VCOORDENADAS;',
'END IF;',
'END ;',
''))
,p_attribute_02=>'P77_NRO_MOVIMIENTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76102277154162848)
,p_event_id=>wwv_flow_imp.id(13328775026891493)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'getLocation();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13329661012891494)
,p_name=>'map click'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(658624194602902612)
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_COM.JK64.SIMPLE_GOOGLE_MAP|REGION TYPE|mapclick'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13330100412891494)
,p_event_id=>wwv_flow_imp.id(13329661012891494)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s("P77_INFO", "You clicked at: " + this.data.lat + "," + this.data.lng);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13330587515891494)
,p_name=>'address'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(658624194602902612)
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_COM.JK64.SIMPLE_GOOGLE_MAP|REGION TYPE|address'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13331031613891494)
,p_event_id=>wwv_flow_imp.id(13330587515891494)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.debug("address_components found: "+this.data.result.address_components.length);',
'',
'$s("P77_STREET_NUMBER","");',
'$s("P77_ROUTE","");',
'$s("P77_LOCALITY","");',
'$s("P77_AREA","");',
'$s("P77_COUNTRY","");',
'$s("P77_POSTAL_CODE","");',
'',
'var components = this.data.result.address_components;',
'for (i=0; i<components.length; i++) {',
'  switch (components[i].types[0]) {',
'  case "street_number" : $s("P77_STREET_NUMBER", components[i].short_name); break;',
'  case "route" : $s("P77_ROUTE", components[i].short_name); break;',
'  case "locality" : $s("P77_LOCALITY", components[i].short_name); break;',
'  case "administrative_area_level_1" : $s("P77_AREA", components[i].short_name); break;',
'  case "country" : $s("P77_COUNTRY", components[i].short_name); break;',
'  case "postal_code" : $s("P77_POSTAL_CODE", components[i].short_name); break;',
'  }',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13331497725891494)
,p_name=>'geolocate'
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(658624194602902612)
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_COM.JK64.SIMPLE_GOOGLE_MAP|REGION TYPE|geolocate'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13331963234891495)
,p_event_id=>wwv_flow_imp.id(13331497725891494)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s("P77_INFO", "Geolocate says you are here: " + this.data.lat + "," + this.data.lng);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13332376135891495)
,p_name=>'nombre_cliente'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13332817850891495)
,p_event_id=>wwv_flow_imp.id(13332376135891495)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P77_NOMBRE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre',
'from cc_clientes c, personas p',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona',
'and c.cod_cliente=:P77_COD_CLIENTE',
'AND (:P77_EMPRESA=''NGO'' OR :P77_EMPRESA=''NGO-CPH'')',
'AND ROWNUM=1',
'UNION ALL',
'select nombre',
'from cc_clientes@dblink_cph c, personas@dblink_cph p',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona',
'and c.cod_cliente=:P77_COD_CLIENTE',
'AND :P77_EMPRESA=''CPH''',
'AND ROWNUM=1',
'',
'order by 1'))
,p_attribute_07=>'P77_COD_CLIENTE,P77_EMPRESA'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13333272318891495)
,p_name=>'New'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_COD_COBRADOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13333767525891495)
,p_event_id=>wwv_flow_imp.id(13333272318891495)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select U.COD_CUSTODIO',
' INTO :P77_COD_CUSTODIO',
'from usuarios u, cc_cobradores c',
'where u.cod_empresa=''1''',
'and u.cod_persona=c.cod_persona',
'and u.cod_empresa=c.cod_empresa',
'and c.cod_cobrador = :P77_COD_COBRADOR;',
'EXCEPTION WHEN OTHERS THEN',
':P77_COD_CUSTODIO:=NULL;',
'end;'))
,p_attribute_02=>'P77_COD_COBRADOR'
,p_attribute_03=>'P77_COD_CUSTODIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13321548730891490)
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
'',
'',
'begin',
'',
'begin',
'select U.COD_CUSTODIO',
' INTO :P77_COD_CUSTODIO',
'from usuarios u, cc_cobradores c',
'where u.cod_empresa=''1''',
'and u.cod_persona=c.cod_persona',
'and u.cod_empresa=c.cod_empresa',
'and c.cod_cobrador = :P77_COD_COBRADOR;',
'EXCEPTION WHEN OTHERS THEN',
':P77_COD_CUSTODIO:=NULL;',
'end;',
'',
'begin',
'',
'  select id',
'  into vid',
'',
'  from cc_visit_cast',
'  where cod_empresa=''1''',
'  and fecha_fin_visita is null',
'  and codigo_usuario = :P_COD_CUSTODIO;',
'  exception',
'  when others then',
'  null;',
'  end;',
'  if :P77_EMPRESA=''CPH'' then',
'                begin',
'',
'                  select id',
'                  into vid',
'',
'                  from cc_visit_cast@dblink_cph',
'                  where cod_empresa=''1''',
'                  and fecha_fin_visita is null',
'                  and codigo_usuario = :P_COD_CUSTODIO;',
'                  exception',
'                  when others then',
'                  null;',
'                  end;',
'    end if;',
'                  ',
'',
'if vid is not null then',
'raise verror;',
'end if;',
'BEGIN',
'  Select max( id )',
'    into vnumero',
'    from cc_visit_cast',
'   where cod_empresa =''1'';',
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
'    where c.cod_empresa=''1''  ',
'    and c.cod_cliente=:P77_COD_CLIENTE',
'    and i.cod_persona=c.cod_persona',
'    AND ROWNUM=1;',
'    exception when others then ',
'     vRUC :=NULL;    ',
'    end ;',
'    ',
'',
'vdireccion := :P77_ADDRESS;',
'VHORA_AGENDADA:=  TO_CHAR(SYSDATE,''HH24:MI:SS'') ;',
'VHORA_AGENDADA:= REPLACE(VHORA_AGENDADA,''AM'',NULL);',
'VHORA_AGENDADA:= REPLACE(VHORA_AGENDADA,''PM'',NULL);',
'if (:P77_EMPRESA=''NGO'' OR  :P77_EMPRESA=''NGO-CPH'') THEN',
'begin ',
'insert into cc_visit_cast(',
'COD_EMPRESA,ID,CODIGO_CLIENTE,NOMBRE_CLIENTE,',
'        NOMBRE_USUARIO,FECHA_VISITA,MOTIVO,CODIGO_USUARIO,',
'        FECHA_FIN_VISITA,OBSERVATION,COD_USUARIO,COD_VISITA,',
'        EMPRESA_ORIGEN,latitud_longitud',
')',
'',
'values(''1'',vnumero,   :P77_COD_CLIENTE, :P77_NOMBRE,',
'       :P_COD_USUARIO, SYSDATE, NULL, NVL(:P_COD_CUSTODIO,:P77_COD_CUSTODIO),',
'       NULL, NULL ,NVL(:P_COD_CUSTODIO,:P77_COD_CUSTODIO),NULL,''NGO'',',
'       nvl(:P77_LAT_LONG,:P77_LAT_LONG_1)',
'      );',
'',
':P77_NRO_MOVIMIENTO:=vnumero;',
'commit;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'    raise_application_error(-20111,''INSERT ''||SQLERRM );',
'end;',
'    END IF;',
'    ',
'if :P77_EMPRESA=''CPH'' OR  :P77_EMPRESA=''NGO-CPH'' THEN',
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
'    if :P77_EMPRESA=''NGO-CPH'' then',
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
'     vCOD_CLIENTE := :P77_COD_CLIENTE;',
'    vNOMBRE_CLIENTE:= :P77_NOMBRE;',
'    ',
'    end ;',
'    else',
'    vCOD_CLIENTE := :P77_COD_CLIENTE;',
'    vNOMBRE_CLIENTE:= :P77_NOMBRE;',
'    end if;',
'begin ',
'insert into cc_visit_cast@dblink_cph(',
'COD_EMPRESA,ID,CODIGO_CLIENTE,NOMBRE_CLIENTE,',
'        NOMBRE_USUARIO,FECHA_VISITA,MOTIVO,CODIGO_USUARIO,',
'        FECHA_FIN_VISITA,OBSERVATION,COD_USUARIO,COD_VISITA',
')',
'',
'values(''1'',vnumero_CPH,   vCOD_CLIENTE, vNOMBRE_CLIENTE,',
'       :P_COD_USUARIO, SYSDATE, NULL, NVL(:P_COD_CUSTODIO,:P77_COD_CUSTODIO),',
'       NULL, NULL ,NVL(:P_COD_CUSTODIO,:P77_COD_CUSTODIO),NULL',
'      );',
'',
':P77_NRO_MOVIMIENTO:=vnumero;',
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
,p_process_when_button_id=>wwv_flow_imp.id(13317238216891488)
,p_process_success_message=>'Event created.'
);
wwv_flow_imp.component_end;
end;
/
