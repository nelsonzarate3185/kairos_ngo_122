prompt --application/pages/page_00064
begin
--   Manifest
--     PAGE: 00064
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
 p_id=>64
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Reubicaciones'
,p_alias=>'REUBICACIONES'
,p_step_title=>'Reubicaciones'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function myerror() {',
'    var myval = apex.item(''P102_ERR'').getValue();',
'',
'    if (myval != '''') {',
'        document.getElementById(''P102_NRO_COMPROBANTE'').focus();',
'        apex.message.clearErrors();',
'        apex.message.showErrors(',
'            [{',
'                "type": "error",',
'                "location": "page",',
'                "message": myval',
'            }]',
'        );',
'    } else{',
'        apex.message.clearErrors();',
'    }',
'    ',
'',
'}',
''))
,p_page_css_classes=>'CSS_CLASS'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20230811134149'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(402637826730423868)
,p_plug_name=>'OT Reubicacion II'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(402693372743883407)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12938002948296476)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(402693372743883407)
,p_button_name=>'CONFIRMAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'BELOW_BOX'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12938481468296476)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(402693372743883407)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12931814403296473)
,p_name=>'P64_SER_COMPROBANTE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(402637826730423868)
,p_prompt=>'Serie OT '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>150
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12932100495296474)
,p_name=>'P64_NRO_COMPROBANTE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(402637826730423868)
,p_prompt=>'Numero OT '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>150
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12932579068296474)
,p_name=>'P64_ERR'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(402637826730423868)
,p_prompt=>'Numero OT '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>150
,p_tag_attributes=>'onchange="myerror();"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12932977187296474)
,p_name=>'P64_PARAM_ID_SOLICITUD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(402637826730423868)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12933349814296474)
,p_name=>'P64_COD_USUARIO_PED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(402637826730423868)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12933744118296474)
,p_name=>'P64_COD_ARTICULO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(402637826730423868)
,p_prompt=>'Codigo articulo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12934109079296475)
,p_name=>'P64_COD_ART_CORTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(402637826730423868)
,p_prompt=>'Codigo corto'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12934518658296475)
,p_name=>'P64_DESCRIPCION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(402637826730423868)
,p_prompt=>'Descripcion'
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
 p_id=>wwv_flow_imp.id(12934981635296475)
,p_name=>'P64_GARANTIA_OT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(402637826730423868)
,p_prompt=>'Garantia Ot'
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
 p_id=>wwv_flow_imp.id(12935387711296475)
,p_name=>'P64_POSICION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(402637826730423868)
,p_prompt=>'Posicion'
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
 p_id=>wwv_flow_imp.id(12935766775296475)
,p_name=>'P64_TIPO_REUBICACION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(402637826730423868)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12936164305296475)
,p_name=>'P64_POSICION_DESTINO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(402637826730423868)
,p_prompt=>'Posicion destino'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT u.posicion   ',
' FROM CA_UBIC_PRODUCTOS U',
' WHERE COD_EMPRESA = ''1''',
' AND (u.nro_comprobante is null ',
' 		or u.nro_comprobante_2 is null ',
'		or u.nro_comprobante_3 is null ',
'		or u.nro_comprobante_4 is null ',
'		or u.nro_comprobante_5 is null)    '))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
,p_attribute_09=>'3'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12936518573296475)
,p_name=>'P64_OBSERVACIONES'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(402637826730423868)
,p_prompt=>'Observaciones'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12936905088296476)
,p_name=>'P64_SER_OT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(402637826730423868)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12937334112296476)
,p_name=>'P64_NRO_OT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(402637826730423868)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12939233052296477)
,p_name=>'datos_ot'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_NRO_COMPROBANTE,P64_SER_COMPROBANTE'
,p_condition_element=>'P64_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12939745542296478)
,p_event_id=>wwv_flow_imp.id(12939233052296477)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin    ',
'    select  w.DESCRIPCION, ',
'            fnc_posicion_ot(o.cod_empresa, o.tip_comprobante, o.ser_comprobante, o.nro_comprobante) POSICION,',
'            O.GARANTIA_OT, ',
'            W.cod_articulo,',
'            W.cod_art_corto,',
'            O.SER_COMPROBANTE, ',
'            O.NRO_COMPROBANTE               ',
'    into ',
'            :P64_DESCRIPCION,',
'            :P64_POSICION,',
'            :P64_GARANTIA_OT,',
'            :P64_COD_ARTICULO,',
'            :P64_COD_ART_CORTO, ',
'            :P64_SER_OT,',
'            :P64_NRO_OT',
'    from ST_ARTICULOS W, VT_ORDENES_TRABAJO O',
'    where o.cod_empresa   =  ''1''',
'    and o.ser_comprobante = :P64_SER_COMPROBANTE',
'    and o.nro_comprobante = :P64_NRO_COMPROBANTE',
'    and NVL(o.ANULADO,''N'')<>''S''',
'    and nvl(nvl(o.ind_entrega,''N''),NVL(o.IND_RETIRADO,''N''))<>''S''',
'    AND W.COD_EMPRESA= o.COD_EMPRESA',
'    AND W.COD_ARTICULO = o.cod_articulo; ',
'    :P64_ERR := null;',
'    exception ',
'     when others then ',
'     :P64_ERR := ''OT ''|| :P64_NRO_COMPROBANTE||'' seleccionada no valida para reubicacion. ''||SQLERRM;',
'      begin ',
'            :P64_DESCRIPCION := null;',
'            :P64_POSICION:= null;',
'            :P64_GARANTIA_OT:= null;',
'            :P64_COD_ARTICULO:= null;',
'            :P64_COD_ART_CORTO:= null; ',
'            :P64_POSICION_DESTINO := null; ',
'            :P64_OBSERVACIONES := null; ',
'            :P64_TIPO_REUBICACION := null; ',
'            :P64_POSICION_DESTINO:= null ; ',
'            :P64_SER_OT:= null; ',
'            :P64_NRO_OT := null ;      ',
'        end; ',
'      ----raise_application_error(-20201, ''No se encontro la OT seleccionada!'');',
'end;  ',
'',
''))
,p_attribute_02=>'P64_NRO_COMPROBANTE,P64_SER_COMPROBANTE'
,p_attribute_03=>'P64_DESCRIPCION,P64_GARANTIA_OT,P64_POSICION,P64_COD_ARTICULO,P64_COD_ART_CORTO,P64_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12940167835296478)
,p_name=>'valida_ubicacion'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_POSICION_DESTINO'
,p_condition_element=>'P64_POSICION_DESTINO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12940640143296478)
,p_event_id=>wwv_flow_imp.id(12940167835296478)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    :P64_ERR := null;',
'     SELECT p.POSICION',
'     INTO :P64_OBSERVACIONES',
'     FROM CA_UBIC_PRODUCTOS p',
'     WHERE COD_EMPRESA = ''1''',
'     AND p.POSICION = :P64_POSICION_DESTINO',
'     and (p.nro_comprobante is null or p.nro_comprobante_2 is null or p.nro_comprobante_3 is null or p.nro_comprobante_4 is null or p.nro_comprobante_5 is null ) ;',
'    :P64_ERR := null;',
'	out_out(:P64_OBSERVACIONES,:P64_POSICION_DESTINO);',
'    exception ',
'     when others then',
'	 out_out(''fallos'',:P64_POSICION_DESTINO); ',
'     :P64_ERR := ''Posicion: ''||:P64_POSICION_DESTINO||'' seleccionada no valida para reubicacion. ''||SQLERRM; ',
'     :P64_POSICION_DESTINO := null;     ',
'end;  ',
'',
''))
,p_attribute_02=>'P64_POSICION_DESTINO'
,p_attribute_03=>'P64_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12941096391296478)
,p_name=>'clear'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12941591499296479)
,p_event_id=>wwv_flow_imp.id(12941096391296478)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P64_COD_ARTICULO,P64_DESCRIPCION,P64_GARANTIA_OT,P64_POSICION,P64_COD_ART_CORTO,P64_NRO_COMPROBANTE,P64_TIPO_REUBICACION,P64_POSICION_DESTINO,P64_OBSERVACIONES,P64_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12941999539296479)
,p_name=>'on page lode hide item'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12942461167296479)
,p_event_id=>wwv_flow_imp.id(12941999539296479)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P64_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12942813005296479)
,p_name=>'on page load disable item '
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12943311274296479)
,p_event_id=>wwv_flow_imp.id(12942813005296479)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P64_TIPO_REUBICACION,P64_POSICION_DESTINO,P64_OBSERVACIONES'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12943727913296479)
,p_name=>'on page load disable button'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12944251383296479)
,p_event_id=>wwv_flow_imp.id(12943727913296479)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(12938002948296476)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12944658537296480)
,p_name=>'button enable'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_COD_ARTICULO,P64_POSICION_DESTINO'
,p_condition_element=>'P64_POSICION_DESTINO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12945199941296480)
,p_event_id=>wwv_flow_imp.id(12944658537296480)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(12938002948296476)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12945529802296480)
,p_name=>'items enable'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_COD_ARTICULO'
,p_condition_element=>'P64_COD_ARTICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12946073699296480)
,p_event_id=>wwv_flow_imp.id(12945529802296480)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P64_OBSERVACIONES,P64_POSICION_DESTINO,P64_TIPO_REUBICACION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12946461769296480)
,p_name=>'disable items'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_NRO_OT,P64_COD_ARTICULO'
,p_condition_element=>'P64_COD_ARTICULO'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12946963602296480)
,p_event_id=>wwv_flow_imp.id(12946461769296480)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P64_OBSERVACIONES,P64_POSICION_DESTINO,P64_TIPO_REUBICACION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12947385799296481)
,p_name=>'disable button '
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_COD_ARTICULO,P64_POSICION_DESTINO'
,p_condition_element=>'P64_POSICION_DESTINO'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12947837684296481)
,p_event_id=>wwv_flow_imp.id(12947385799296481)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(12938002948296476)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12948257475296481)
,p_name=>'disable button _1'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_ERR'
,p_condition_element=>'P64_ERR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12948734082296481)
,p_event_id=>wwv_flow_imp.id(12948257475296481)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(12938002948296476)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12949100874296481)
,p_name=>'carga_serie'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12949696141296481)
,p_event_id=>wwv_flow_imp.id(12949100874296481)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P64_SER_COMPROBANTE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'A'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12938844050296477)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'reubica_ot'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
' VRESULTADO VARCHAR2(50); ',
'BEGIN',
'    :P64_ERR:= null; ',
'    sp_reubica_ot_appnew(  :P64_NRO_COMPROBANTE,',
'                           ',
'                           :P64_POSICION_DESTINO,',
'                           :P_COD_USUARIO,',
'                           :P64_OBSERVACIONES,',
'                            VRESULTADO,',
'                            :P64_SER_COMPROBANTE',
'                           );',
'    if vresultado <>  ''1'' then ',
'      :P64_ERR := ''La OT NO se confirmo: ''||vresultado;',
'    end if ; ',
'END; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12938002948296476)
,p_process_when=>'P64_POSICION_DESTINO'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Solicitud Confirmada'
);
wwv_flow_imp.component_end;
end;
/
