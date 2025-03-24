prompt --application/pages/page_00295
begin
--   Manifest
--     PAGE: 00295
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
 p_id=>295
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Cierre de Proveedores - CCHISTCP'
,p_alias=>'CCHISTCP'
,p_step_title=>'Cierre de Proveedores'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'MARIANABLA'
,p_last_upd_yyyymmddhh24miss=>'20230104163615'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74658182895748622)
,p_plug_name=>'Cierre de Proveedores'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody:margin-top-md'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74658451970748625)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74659415885748635)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(74658182895748622)
,p_button_name=>'PROCESAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74658587989748626)
,p_name=>'P295_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74658451970748625)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74658630663748627)
,p_name=>'P295_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(74658451970748625)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74658724804748628)
,p_name=>'P295_COD_USUARIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(74658451970748625)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74658820142748629)
,p_name=>'P295_COD_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(74658451970748625)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74658944577748630)
,p_name=>'P295_MES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(74658182895748622)
,p_prompt=>unistr('Mes y a\00F1o a cerrar')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74659016177748631)
,p_name=>'P295_ANIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(74658182895748622)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74659132834748632)
,p_name=>'P295_FEC_INI'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(74658182895748622)
,p_prompt=>'Siguiente periodo'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74659269753748633)
,p_name=>'P295_FEC_FIN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(74658182895748622)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74659305607748634)
,p_name=>'P295_DESC_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74658182895748622)
,p_prompt=>'Empresa'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74659750857748638)
,p_name=>'P295_AUX_MSJ'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(74658451970748625)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74659977013748640)
,p_name=>'P295_TOT_REGISTROS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(74658451970748625)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74659599067748636)
,p_name=>'DA_PROCESAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74659415885748635)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74659832996748639)
,p_event_id=>wwv_flow_imp.id(74659599067748636)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr(':P295_AUX_MSJ := ''Est\00E1 a punto de ejecutar el cierre mensual para la empresa '' || :P295_COD_EMPRESA || '),
'                 ''. Este proceso no puede ser revertido.'' || chr(13) ||',
unistr('                 ''\00BFEst\00E1 seguro que desea continuar?'';')))
,p_attribute_02=>'P295_COD_EMPRESA'
,p_attribute_03=>'P295_AUX_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74659690401748637)
,p_event_id=>wwv_flow_imp.id(74659599067748636)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'&P295_AUX_MSJ.'
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'warning'
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74660141092748642)
,p_event_id=>wwv_flow_imp.id(74659599067748636)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CCHISTCP.PR_INICIA_PROCESO(PI_COD_EMPRESA      => :P295_COD_EMPRESA, ',
'                           PI_FEC_INI          => TO_DATE(:P295_FEC_INI,''DD/MM/YYYY''), ',
'                           PI_FEC_FIN          => TO_DATE(:P295_FEC_FIN,''DD/MM/YYYY''), ',
'                           PI_ANIO             => TO_DATE(:P295_ANIO, ''YYYY''),',
'                           PI_MES              => TO_DATE(:P295_MES,''MM''),',
'                           PO_TOT_REGISTROS    => :P295_TOT_REGISTROS,',
'                           PO_MENSAJE          => :P295_AUX_MSJ);',
''))
,p_attribute_02=>'P295_COD_EMPRESA,P295_FEC_INI,P295_FEC_FIN,P295_ANIO,P295_MES'
,p_attribute_03=>'P295_TOT_REGISTROS,P295_AUX_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75670014856717202)
,p_event_id=>wwv_flow_imp.id(74659599067748636)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P295_AUX_MSJ.'
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'success'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P295_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74660234307748643)
,p_name=>'DA_MES'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P295_MES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74660306605748644)
,p_event_id=>wwv_flow_imp.id(74660234307748643)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P295_FEC_INI := add_months( TO_DATE(:P295_MES||''/''||:P295_ANIO, ''MM/YYYY''), 1 );',
':P295_FEC_FIN := last_day( TO_DATE(:P295_FEC_INI, ''DD/MM/YYYY'' ));',
''))
,p_attribute_02=>'P295_MES,P295_ANIO'
,p_attribute_03=>'P295_FEC_INI,P295_FEC_FIN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74660429353748645)
,p_name=>'DA_ANIO'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P295_ANIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74660515497748646)
,p_event_id=>wwv_flow_imp.id(74660429353748645)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P295_FEC_INI := add_months( TO_DATE(:P295_MES||''/''||:P295_ANIO, ''MM/YYYY''), 1 );',
':P295_FEC_FIN := last_day( TO_DATE(:P295_FEC_INI, ''DD/MM/YYYY'' ));'))
,p_attribute_02=>'P295_MES,P295_ANIO'
,p_attribute_03=>'P295_FEC_INI,P295_FEC_FIN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74660965043748650)
,p_name=>'SOLO_NUM'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P295_MES,P295_ANIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75669964460717201)
,p_event_id=>wwv_flow_imp.id(74660965043748650)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74658222715748623)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P_COD_MODULO := ''CC'';',
'',
':P295_COD_USUARIO  := NVL(:P_COD_USUARIO, :APP_USER);',
':P295_COD_EMPRESA  := NVL(:P_COD_EMPRESA, ''1'');',
':P295_COD_SUCURSAL := :P_COD_SUCURSAL;',
':P295_COD_MODULO   := :P_COD_MODULO;',
'',
':P295_MES  := TO_CHAR(SYSDATE, ''MM'');',
':P295_ANIO := TO_CHAR(SYSDATE,''YYYY'');',
'',
':P295_DESC_EMPRESA := CCHISTCP.FN_DESC_EMPRESA(PI_COD_EMPRESA => :P295_COD_EMPRESA);',
'',
':P295_FEC_INI := to_date( ''01/'' || to_char( add_months( sysdate, 1 ), ''MM/YYYY'' ), ''DD/MM/YYYY'' );',
':P295_FEC_FIN := last_day( to_date( ''01/'' || to_char( add_months( sysdate, 1 ), ''MM/YYYY'' ) , ''DD/MM/YYYY'' ) );',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
