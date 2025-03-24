prompt --application/pages/page_00768
begin
--   Manifest
--     PAGE: 00768
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
 p_id=>768
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Login BH'
,p_alias=>'LOGIN-BH'
,p_step_title=>'Login BH'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function mostrarContrasena(){',
'      var tipo = document.getElementById("P9999_PASSWORD");',
'      var ojo = document.getElementById("ojo");',
'      if(tipo.type == "password"){',
'          tipo.type = "text";',
'         // ojo.innerHTML = " Ocultar";',
'          ojo.classList.remove("fa-eye");',
'          ojo.classList.add("fa-eye-slash");',
'      }else{',
'          tipo.type = "password";',
'         // ojo.innerText = " Mostrar";',
'          ojo.classList.add("fa-eye");',
'          ojo.classList.remove("fa-eye-slash");',
'      }',
'  }'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
' .t-Button:not(.t-Button--simple)  {',
'    height:48.5px;',
'}',
'.t-Login-region{',
'  background-color: rgba(255, 255, 255, 0.36)  !important;',
'   ',
'  }',
'',
'  .t-Login-container {',
'  background: url(#WORKSPACE_FILES#BH_logo2.png)no-repeat center center fixed !important;',
'  background-size: cover !important;',
'',
'  }'))
,p_step_template=>wwv_flow_imp.id(40078493853263648)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'10'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240906122147'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(421758124887256777)
,p_plug_name=>'KAIROS'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#:t-Login-region--headerHidden js-removeLandmark'
,p_plug_template=>wwv_flow_imp.id(40123958035263660)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="text-align: center">',
'  <img src="#WORKSPACE_FILES#BHLogo.jpg" height="auto" width="35%"  ',
'  display="block"  margin="0" auto>',
'</div>'))
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(421762873439256779)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_imp.id(421758124887256777)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(381544100848993118)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(421758124887256777)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(381544553543993119)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(421758124887256777)
,p_button_name=>'BTCLAVE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\00BFOlvido su contrase\00F1a?')
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:58::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(381544937800993123)
,p_name=>'P768_EMPRESA'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(421758124887256777)
,p_item_default=>'1'
,p_prompt=>'Empresa'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_empresa',
'from empresas where activo_erp=''S''',
''))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(381545351753993127)
,p_name=>'P768_USERNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(421758124887256777)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(40186365556263678)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(381545727215993127)
,p_name=>'P768_PASSWORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(421758124887256777)
,p_prompt=>'Password'
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button id="oc/vi" class="t-Button t-Button--icon t-Button--iconLeft" type="button" onclick="mostrarContrasena()">',
'<span id="ojo" class="t-Icon t-Icon--left fa fa-eye" style="font-size: 14px; margin-top: 0.5px;" aria-hidden="true">',
'    ',
'</span>',
'</button>'))
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(381546185151993128)
,p_name=>'P768_REMEMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(421758124887256777)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_imp.id(40215602111263689)||'.'
,p_display_when=>'apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(40186365556263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(381547432899993148)
,p_validation_name=>'VA_EMPRESA_NOT_NULL'
,p_validation_sequence=>10
,p_validation=>'P768_EMPRESA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe Seleccionar una Empresa.'
,p_associated_item=>wwv_flow_imp.id(381544937800993123)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(381547807021993148)
,p_validation_name=>'VA_USERNAME_NOT_NULL'
,p_validation_sequence=>20
,p_validation=>'P768_USERNAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe ingresar un Usuario.'
,p_associated_item=>wwv_flow_imp.id(381545351753993127)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(381548278193993148)
,p_validation_name=>'VA_PASS_NOT_NULL'
,p_validation_sequence=>30
,p_validation=>'P768_PASSWORD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Debe ingresar la contrase\00F1a.')
,p_associated_item=>wwv_flow_imp.id(381545727215993127)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(381550141624993150)
,p_name=>'da_cambia_app'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P768_EMPRESA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(381550672652993151)
,p_event_id=>wwv_flow_imp.id(381550141624993150)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($x(''P768_EMPRESA'').value == "15") {',
' window.open(''https://servicio.cph.com.py/ords_cph/r/cph/kairos'');',
'window.close();',
' }',
'if ($x(''P768_EMPRESA'').value == "1") {',
' window.open(''https://ngosaeca.com.py/ords_bdngo/r/ngo/kairos/login'');',
'window.close();',
' } '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(381551095472993153)
,p_name=>'Load_Page'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(381551589967993153)
,p_event_id=>wwv_flow_imp.id(381551095472993153)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P768_USERNAME'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(381548920907993149)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P768_USERNAME),',
'    p_consent  => :P768_REMEMBER = ''Y'' );',
'		',
'    :P_COD_EMPRESA := :P768_EMPRESA;',
':P_COD_USUARIO:=upper(:P768_USERNAME);',
' BEGIN ',
'  BEGIN',
'  SELECT FV.COD_VENDEDOR',
'   INTO :P_COD_VENDEDOR',
'  FROM FV_VENDEDORES FV, USUARIOS U',
'  WHERE FV.COD_EMPRESA=:P_COD_EMPRESA',
'  AND FV.COD_EMPRESA=U.COD_EMPRESA',
'  AND FV.COD_PERSONA=U.COD_PERSONA',
'  AND U.COD_USUARIO = :P_COD_USUARIO',
'  AND FV.ESTADO=''A''',
'  AND ROWNUM=''1'';',
'  EXCEPTION WHEN OTHERS THEN ',
'  :P_COD_VENDEDOR:=''26'';',
'  END;',
'  ',
'  begin',
'select COD_EMPLEADO, COD_CUSTODIO',
' INTO :P_COD_EMPLEADO,:P_COD_CUSTODIO',
'from rh_empleados e, usuarios u, personas p',
'where e.cod_empresa=:P_COD_EMPRESA',
'and e.cod_empresa=u.cod_empresa',
'and e.cod_persona=u.cod_persona',
'and u.cod_usuario=:P_COD_USUARIO',
'and u.cod_persona=p.cod_persona',
'AND E.ACTIVO=''S''',
';',
'EXCEPTION WHEN OTHERS THEN',
':P_COD_EMPLEADO:=NULL;',
'end;',
'',
'  begin',
'select NVL(COD_SUCURSAL ,''01'')',
' INTO :P_COD_SUCURSAL',
'from  usuarios u',
'where U.cod_empresa=:P_COD_EMPRESA',
' AND U.COD_USUARIO = :P_COD_USUARIO;',
'EXCEPTION WHEN OTHERS THEN',
':P_COD_SUCURSAL:=''01'';',
'end;',
'',
'',
'  ',
'BEGIN ',
'SELECT DESCRIPCION ',
'INTO :P_DESCRIPCION_SUCURSAL',
'FROM SUCURSALES  ',
'WHERE COD_EMPRESA = :P_COD_EMPRESA',
'AND   COD_SUCURSAL = :P_cod_SUCURSAL;',
'',
'EXCEPTION',
'WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(SQLERRM);',
'END;',
' ',
'  BEGIN',
'  SELECT CC.COD_COBRADOR, U.COD_CUSTODIO',
'   INTO :P_COD_cobrador, :P_COD_CUSTODIO',
'  FROM CC_COBRADORES CC, USUARIOS U',
'  WHERE CC.COD_EMPRESA=:P_COD_EMPRESA',
'  AND CC.COD_EMPRESA=U.COD_EMPRESA',
'  AND CC.COD_PERSONA=U.COD_PERSONA',
'  AND U.COD_USUARIO = :P_COD_USUARIO',
'  AND cc.activo=''S''',
'  AND ROWNUM=''1'';',
'  EXCEPTION WHEN OTHERS THEN ',
'  NULL;',
'  END;',
' :P_VER_OTROS_VENDEDORES:=BUSCA_PERMISO(''1'',''APEX'',:P_COD_USUARIO,''VER_OTROS_VENDEDORES'');',
'END;',
'',
'  ',
'  ',
'   ',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(381548511884993148)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'owa_util.mime_header(''text/html'', FALSE);',
'owa_cookie.send(name    => ''Administrador_ITG'',',
'                value   => :P768_USERNAME,',
'                expires => SYSDATE + 30);',
'',
':P_COD_EMPRESA := :P768_EMPRESA;',
':P_COD_USUARIO:=upper(:P768_USERNAME);',
' BEGIN',
' ',
'  BEGIN',
'      SELECT FV.COD_VENDEDOR',
'        INTO :P_COD_VENDEDOR',
'        FROM FV_VENDEDORES FV, USUARIOS U',
'       WHERE FV.COD_EMPRESA=''1''',
'         AND FV.COD_EMPRESA=U.COD_EMPRESA',
'         AND FV.COD_PERSONA=U.COD_PERSONA',
'         AND U.COD_USUARIO = :P768_USERNAME',
'         AND FV.ESTADO=''A''',
'         AND ROWNUM=''1'';',
'  EXCEPTION WHEN OTHERS THEN ',
'  NULL;',
'  END;',
'  ',
'  begin',
'',
'    select COD_EMPLEADO, COD_CUSTODIO',
'      INTO :P_COD_EMPLEADO,:P_COD_CUSTODIO',
'      from rh_empleados e, usuarios u, personas p',
'     where e.cod_empresa=''1''',
'       and e.cod_empresa=u.cod_empresa',
'       and e.cod_persona=u.cod_persona',
'       and u.cod_usuario=upper(:P768_USERNAME)',
'       and u.cod_persona=p.cod_persona',
'       AND E.ACTIVO=''S''',
';',
'EXCEPTION WHEN OTHERS THEN',
':P_COD_EMPLEADO:=NULL;',
'end;',
'',
'declare ',
'vpuede varchar2(19);',
'  begin',
'select ''S''',
' INTO vpuede',
'from  EMPRESAS_USUARIOS u',
'where U.cod_empresa=:P_COD_EMPRESA',
' AND U.COD_USUARIO = :P_COD_USUARIO;',
'EXCEPTION WHEN OTHERS THEN',
' RAISE_APPLICATION_ERROR(-20000, ''No tiene permiso para conectarse a la empresa. ''||:P_COD_EMPRESA);',
'end;',
'       ',
' ',
' ',
'    ',
' ',
'  BEGIN',
'      SELECT CC.COD_COBRADOR, U.COD_CUSTODIO',
'        INTO :P_COD_cobrador, :P_COD_CUSTODIO',
'        FROM CC_COBRADORES CC, USUARIOS U',
'       WHERE CC.COD_EMPRESA=''1''',
'         AND CC.COD_EMPRESA=U.COD_EMPRESA',
'         AND CC.COD_PERSONA=U.COD_PERSONA',
'         AND U.COD_USUARIO = :P768_USERNAME',
'         AND cc.activo=''S''',
'         AND ROWNUM=''1'';',
'  EXCEPTION WHEN OTHERS THEN ',
'  NULL;',
'  END;',
' ',
'END;',
'',
'  ',
'  ',
'   ',
'',
'  begin',
'select NVL(COD_SUCURSAL ,''01'')',
' INTO :P_COD_SUCURSAL',
'from  usuarios u',
'where U.cod_empresa=:P_COD_EMPRESA',
' AND U.COD_USUARIO = :P_COD_USUARIO;',
'EXCEPTION WHEN OTHERS THEN',
':P_COD_SUCURSAL:=''01'';',
'end;',
'',
'',
'  ',
'BEGIN ',
'SELECT DESCRIPCION ',
'INTO :P_DESCRIPCION_SUCURSAL',
'FROM SUCURSALES  ',
'WHERE COD_EMPRESA = :P_COD_EMPRESA',
'AND   COD_SUCURSAL = :P_cod_SUCURSAL;',
'',
'',
'EXCEPTION',
'WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(SQLERRM);',
'END;',
' ',
'',
'BEGIN',
'    SELECT DESCRIPCION, decode(:P_COD_EMPRESA,''18'',''#WORKSPACE_FILES#BHLogo.jpg'',''#APP_FILES#app-140-logo.png'')',
'    INTO :P_DESCRIPCION_EMPRESA, :P_LOGO',
'    FROM EMPRESAS  ',
'    WHERE COD_EMPRESA = :P_COD_EMPRESA;',
'EXCEPTION',
'WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
'apex_authentication.login(',
'p_username => :P768_USERNAME,',
'p_password => :P768_PASSWORD,',
'p_set_persistent_auth => nvl(:P768_REMEMBER,''N'')=''Y'');',
'',
'wwv_flow_custom_auth_std.login (P_UNAME => :P768_USERNAME,',
'                                P_PASSWORD => :P768_PASSWORD,',
'                                P_SESSION_ID => NULL, --v (''APP_SESSION''),',
'                                P_FLOW_PAGE => :APP_ID || '':'' || 1);',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(381549783964993149)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(381549313097993149)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P768_EMPRESA:=''18'';',
':P768_USERNAME := apex_authentication.get_login_username_cookie;',
':P768_REMEMBER := case when :P768_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
