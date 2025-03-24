prompt --application/pages/page_00058
begin
--   Manifest
--     PAGE: 00058
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
 p_id=>58
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Recuperar Clave'
,p_alias=>'RECUPERAR-CLAVE'
,p_page_mode=>'MODAL'
,p_step_title=>'Recuperar Clave'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(40080790783263649)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20231121164344'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15195950985872516)
,p_plug_name=>'Contenedor'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15196305768872520)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(15195950985872516)
,p_button_name=>'BTENVIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enviar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15196063981872517)
,p_name=>'P58_LEYENDA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15195950985872516)
,p_source=>unistr('Ingrese su usuario y correo, se le enviara un enlace para cambiar su contrase\00F1a')
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15196141345872518)
,p_name=>'P58_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15195950985872516)
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
 p_id=>wwv_flow_imp.id(15196292612872519)
,p_name=>'P58_MAIL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(15195950985872516)
,p_prompt=>'Mail'
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
 p_id=>wwv_flow_imp.id(15196786711872524)
,p_name=>'P58_MENSAJE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(15195950985872516)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15196402614872521)
,p_name=>'DA_ENVIAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15196305768872520)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15196567005872522)
,p_event_id=>wwv_flow_imp.id(15196402614872521)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P58_USUARIO,P58_MAIL,P58_MENSAJE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15196641566872523)
,p_event_id=>wwv_flow_imp.id(15196402614872521)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VURL VARCHAR2(2000);',
'BEGIN',
'    VURL:= APEX_PAGE.GET_URL(p_page   => 97);',
'',
'    VURL := REPLACE(REPLACE(VURL,''javascript:apex.navigation.dialog.close(true,'''''',''''),'''''');'','''');',
'',
'    INV.SEGURIDAD.CAMBIO_CLAVE(pusuario          => :P58_USUARIO,',
'                               pmail             => :P58_MAIL,',
'                              -- pcontrol_ambiente => 1,',
'                            --   purl              => VURL,',
'                               pmensaje          => :P58_MENSAJE);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P58_USUARIO,P58_MAIL'
,p_attribute_03=>'P58_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15196892354872525)
,p_name=>'DA_MENSAJE'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_MENSAJE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15196944397872526)
,p_event_id=>wwv_flow_imp.id(15196892354872525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P58_MENSAJE.'
);
wwv_flow_imp.component_end;
end;
/
