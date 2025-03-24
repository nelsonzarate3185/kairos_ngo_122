prompt --application/pages/page_00259
begin
--   Manifest
--     PAGE: 00259
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
 p_id=>259
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CCCLIENT Ver firmas'
,p_alias=>'CCCLIENT-VER-FIRMAS'
,p_page_mode=>'MODAL'
,p_step_title=>'CCCLIENT Ver firmas'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.center {',
'  display: block;',
'  margin-left: auto;',
'  margin-right: auto;',
'  width: 50%;',
'}'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20230124094605'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58324634729298848)
,p_name=>'P259_VER_IMAGEN'
,p_item_sequence=>20
,p_item_default=>'<img class="imgart" src="https://ngosaeca.com.py/storage/banner-33-1-1652533056.jpg">'
,p_prompt=>'Archivo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59762113896338004)
,p_name=>'P259_TEXTO'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59762769629338010)
,p_name=>'P259_ORIGEN'
,p_item_sequence=>990
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59762573187338008)
,p_name=>'DA_TEXTO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P259_TEXTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59762632054338009)
,p_event_id=>wwv_flow_imp.id(59762573187338008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var decodeString = btoa(P259_TEXTO.value);',
'//P259_TEXTO.value = decodeString;',
'console.log(decodeString);'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59762311925338006)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P259_ORIGEN = ''CLIENTE'' then',
'    --:P259_TEXTO := replace(:P259_TEXTO,''O:\APLIC\IMAGENES\clientes\'','''');',
'    :P259_TEXTO := P_Base64.EncodeString(:P259_TEXTO||''.jpg'');',
'    :P259_VER_IMAGEN := ''<img class="center" src="http://10.100.12.218:4000/imagesEncode/''||:P259_TEXTO||''">'';',
'elsif :P259_ORIGEN = ''MERCADERIAS'' then',
'    :P259_TEXTO := P_Base64.EncodeString(:P259_TEXTO||''.jpg'');',
'    :P259_VER_IMAGEN := ''<img class="center" src="http://10.100.12.218:4000/imagesMercaderiasEncode/''||:P259_TEXTO||''">'';',
'elsif :P259_ORIGEN = ''FIRMA_STA'' then',
'    :P259_TEXTO := P_Base64.EncodeString(:P259_TEXTO||''.jpg'');',
'    :P259_VER_IMAGEN := ''<img class="center" src="http://10.100.12.218:4000/imagesFirmaSTAEncode/''||:P259_TEXTO||''">'';',
'elsif :P259_ORIGEN = ''GARANTIAS'' then',
'    :P259_TEXTO := P_Base64.EncodeString(:P259_TEXTO||''.pdf'');',
'    :P259_VER_IMAGEN := ''<iframe src="http://10.100.12.218:4000/imagesGarantiasEncode/''||:P259_TEXTO||''" width="100%" height="800px"></iframe>'';',
'elsif :P259_ORIGEN = ''CONTRATOS'' then',
'    :P259_TEXTO := P_Base64.EncodeString(:P259_TEXTO||''.pdf'');',
'    :P259_VER_IMAGEN := ''<iframe src="http://10.100.12.218:4000/imagesContratosEncode/''||:P259_TEXTO||''" width="100%" height="800px"></iframe>'';',
'end if;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
