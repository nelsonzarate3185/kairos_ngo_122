prompt --application/pages/page_00566
begin
--   Manifest
--     PAGE: 00566
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
 p_id=>566
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Zona'
,p_alias=>'ZONA'
,p_step_title=>'Zona'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Footer {',
'visibility:hidden;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20250207144244'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(578653511500045393)
,p_plug_name=>'Zona'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent2:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(182683326766544692)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(578653511500045393)
,p_button_name=>'cancelar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:565:&SESSION.::&DEBUG.:565::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(182683774898544690)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(578653511500045393)
,p_button_name=>'Aceptar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-check'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(182684119348544689)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(578653511500045393)
,p_button_name=>'LecturaZona'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Lecturazona'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6::'
,p_icon_css_classes=>'fa-wifi'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(182687558292544679)
,p_branch_name=>'Go To Page 5'
,p_branch_action=>'f?p=&APP_ID.:567:&SESSION.::&DEBUG.:567:P567_ZONA,P567_NRO_INVENTARIO:&P566_ZONA.,&P566_NRO_INVENTARIO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(182683774898544690)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182684556655544689)
,p_name=>'P566_DEPOSITO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(578653511500045393)
,p_prompt=>'Deposito'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182684941074544685)
,p_name=>'P566_NRO_INVENTARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(578653511500045393)
,p_prompt=>'Nro Inventario'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182685322834544684)
,p_name=>'P566_ZONA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(578653511500045393)
,p_prompt=>'Zona'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182685798059544684)
,p_name=>'P566_COD_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(578653511500045393)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183047049451013031)
,p_name=>'P566_ES_CPH'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(578653511500045393)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(182686224317544683)
,p_validation_name=>'valida_zona'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P566_ES_CPH=''S'' THEN',
'declare',
'vexiste varchar2(10);',
'begin',
'select ''S''',
' INTO VEXISTE',
'from st_posiciones@DBLINK_CPH',
'WHERE COD_EMPRESA=''1''',
'AND COD_POSICION= rtrim(:P566_ZONA)',
'and :P566_COD_SUCURSAL=cod_sucursal;',
'RETURN TRUE;',
'EXCEPTION WHEN OTHERS THEN',
'RETURN FALSE;',
'end;',
'ELSif :P566_ES_CPH=''T'' THEN',
'declare',
'vexiste varchar2(10);',
'begin',
'select ''S''',
' INTO VEXISTE',
'from INV.st_posiciones@DBLINK_tf',
'WHERE COD_EMPRESA=''1''',
'AND COD_POSICION=rtrim(:P566_ZONA)',
'and :P566_COD_SUCURSAL=cod_sucursal;',
'RETURN TRUE;',
'EXCEPTION WHEN OTHERS THEN',
'RETURN FALSE;',
'end;',
'ELSif :P566_ES_CPH=''B'' THEN',
'declare',
'vexiste varchar2(10);',
'begin',
'select ''S''',
' INTO VEXISTE',
'from INV.st_posiciones',
'WHERE COD_EMPRESA=''18''',
'AND COD_POSICION=rtrim(:P566_ZONA)',
'and :P566_COD_SUCURSAL=cod_sucursal;',
'RETURN TRUE;',
'EXCEPTION WHEN OTHERS THEN',
'RETURN FALSE;',
'end;',
'ELSE',
'declare',
'vexiste varchar2(10);',
'begin',
'select ''S''',
' INTO VEXISTE',
'from st_posiciones',
'WHERE COD_EMPRESA=''1''',
'AND COD_POSICION=rtrim(:P566_ZONA)',
'and :P566_COD_SUCURSAL=cod_sucursal;',
'RETURN TRUE;',
'EXCEPTION WHEN OTHERS THEN',
'RETURN FALSE;',
'end;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'No existe la Zona para el deposito'
,p_associated_item=>wwv_flow_imp.id(182685322834544684)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(182686539776544683)
,p_name=>'New'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(182687025667544680)
,p_event_id=>wwv_flow_imp.id(182686539776544683)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(182684119348544689)
);
wwv_flow_imp.component_end;
end;
/
