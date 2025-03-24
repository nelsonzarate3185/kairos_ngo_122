prompt --application/pages/page_00097
begin
--   Manifest
--     PAGE: 00097
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
 p_id=>97
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Cambiar Contrase\00F1a')
,p_alias=>unistr('CAMBIAR-CONTRASE\00D1A')
,p_step_title=>unistr('Cambiar Contrase\00F1a')
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Login-region{',
'  background-color: rgba(255, 255, 255, 0.8) !important;',
'  }',
'',
'  .t-Login-container {',
'  background: url(#WORKSPACE_IMAGES#fondo_ngo.png)no-repeat center center fixed !important;',
'  background-size: cover !important;',
'',
'  }'))
,p_step_template=>wwv_flow_imp.id(40078493853263648)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'10'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20241113120813'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(57270238998150948)
,p_plug_name=>unistr('Migraci\00F3n NGO')
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#:t-Login-region--headerHidden js-removeLandmark'
,p_plug_template=>wwv_flow_imp.id(40123958035263660)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="text-align: center">',
'  <img src="#WORKSPACE_FILES#logo_ngo.png" height="auto" width="35%"  ',
'  display="block"  margin="0" auto>',
'</div>'))
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(57274987550150950)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_imp.id(57270238998150948)
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
 p_id=>wwv_flow_imp.id(17056284522887266)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(57270238998150948)
,p_button_name=>'BTCAMBIAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Cambiar Contrase\00F1a')
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(15197836574872535)
,p_branch_name=>'BR_GO_TO_LOGIN'
,p_branch_action=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:9999::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15197072636872527)
,p_name=>'P97_USUA0100_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(57270238998150948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15197136106872528)
,p_name=>'P97_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(57270238998150948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17057435877887268)
,p_name=>'P97_PASSWORD_2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(57270238998150948)
,p_prompt=>unistr('Repetir Contrase\00F1a')
,p_placeholder=>unistr('Repetir Contrase\00F1a')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(40186365556263678)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17057880537887268)
,p_name=>'P97_PASSWORD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(57270238998150948)
,p_prompt=>unistr('Nueva Contrase\00F1a')
,p_placeholder=>unistr('Nueva Contrase\00F1a')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(40186365556263678)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(15197290406872529)
,p_validation_name=>'VA_PASS'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P97_PASSWORD_2 = :P97_PASSWORD then',
'    return true;',
'else',
'    return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Las nuevas contrase\00F1as indicadas no coinciden.')
,p_associated_item=>wwv_flow_imp.id(17057435877887268)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(15197546471872532)
,p_validation_name=>'VA_PASS_1'
,p_validation_sequence=>20
,p_validation=>'P97_PASSWORD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Complete la contrase\00F1a.')
,p_associated_item=>wwv_flow_imp.id(17057880537887268)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(15197687651872533)
,p_validation_name=>'VA_PASS_2'
,p_validation_sequence=>30
,p_validation=>'P97_PASSWORD_2'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Repita la contrase\00F1a nueva.')
,p_associated_item=>wwv_flow_imp.id(17057435877887268)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15197729724872534)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_SAVE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    UPDATE ASP$USUA0100',
'       SET PASS = SEGURIDAD.FB_ENCRIPTAR(:P97_PASSWORD),CAMBIO_INICIO_SESION=''N''',
'     WHERE ID = :P97_ID;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(17056284522887266)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17061477978887275)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P97_ID:= :P_USUA0100_ID;',
'EXCEPTION',
'WHEN OTHERS THEN',
'      apex_debug.error(sqlerrm);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
