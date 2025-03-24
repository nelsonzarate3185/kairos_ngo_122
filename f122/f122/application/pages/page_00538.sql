prompt --application/pages/page_00538
begin
--   Manifest
--     PAGE: 00538
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
 p_id=>538
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'TUR - Control de Calidad'
,p_alias=>'CONTROL-DE-CALIDAD1'
,p_page_mode=>'MODAL'
,p_step_title=>'Control de Calidad'
,p_allow_duplicate_submissions=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20230526105008'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(193597613350668804)
,p_plug_name=>'Control de Calidad'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COD_EMPRESA,',
'       COD_TIPO_ENCUESTA,',
'       COD_LLAMADA,',
'       NRO_ENCUESTA,',
'       TIPO_RESPUESTA,',
'       COD_RESPUESTA,',
'       OBSERVACION,',
'       TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE',
'  from CA_ENCUESTA_CONTROL_CALIDAD',
' where cod_empresa     = :P538_COD_EMPRESA',
'   and tip_comprobante = :P538_TIP_COMPROBANTE',
'   and ser_comprobante = :P538_SER_COMPROBANTE',
'   and nro_comprobante = :P538_NRO_COMPROBANTE;'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P538_COD_EMPRESA,P538_TIP_COMPROBANTE,P538_SER_COMPROBANTE,P538_NRO_COMPROBANTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(193605315306669100)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(160984805353713010)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(193605315306669100)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(160985290111713009)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(193605315306669100)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P538_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(160985681143713009)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(193605315306669100)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P538_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(160986070046713009)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(193605315306669100)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Insertar Datos'
,p_button_position=>'NEXT'
,p_button_condition=>'P538_NRO_COMPROBANTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160972063539713016)
,p_name=>'P538_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_item_source_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160972461025713016)
,p_name=>'P538_COD_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_item_source_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_item_default=>'1'
,p_source=>'COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160972859956713015)
,p_name=>'P538_COD_TIPO_ENCUESTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_item_source_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_source=>'COD_TIPO_ENCUESTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160973212041713015)
,p_name=>'P538_COD_LLAMADA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_item_source_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_source=>'COD_LLAMADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160973682503713015)
,p_name=>'P538_TIP_COMPROBANTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_item_source_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_source=>'TIP_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160974001127713015)
,p_name=>'P538_SER_COMPROBANTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_item_source_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_source=>'SER_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160974465325713015)
,p_name=>'P538_NRO_COMPROBANTE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_item_source_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_source=>'NRO_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160974893994713015)
,p_name=>'P538_NRO_ENCUESTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_item_source_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_item_default=>'1'
,p_source=>'NRO_ENCUESTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160975254975713014)
,p_name=>'P538_TIPO_RESPUESTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_item_source_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_item_default=>'PUNTO_1_5'
,p_source=>'TIPO_RESPUESTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160975697071713014)
,p_name=>'P538_TIPO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_item_default=>'Limpieza'
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160976024031713014)
,p_name=>'P538_COD_RESPUESTA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_item_source_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_prompt=>unistr('Calificaci\00F3n')
,p_source=>'COD_RESPUESTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Muy Malo;1,Malo;2,Bueno;3,Muy Bueno;4,Excelente;5'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160976426486713014)
,p_name=>'P538_OBSERVACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_item_source_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_prompt=>'Observacion'
,p_source=>'OBSERVACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160976815918713014)
,p_name=>'P538_NRO_ENCUESTA2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_item_default=>'2'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160977247083713014)
,p_name=>'P538_TIPO_RESPUESTA2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_item_default=>'PUNTO_1_5'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160977699274713013)
,p_name=>'P538_TIPO2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_item_default=>unistr('Est\00E9tica')
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160978001395713013)
,p_name=>'P538_COD_RESPUESTA2'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_prompt=>unistr('Calificaci\00F3n')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Muy Malo;1,Malo;2,Bueno;3,Muy Bueno;4,Excelente;5'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160978400883713013)
,p_name=>'P538_OBSERVACION2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_prompt=>'Observacion'
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
 p_id=>wwv_flow_imp.id(160978822566713013)
,p_name=>'P538_NRO_ENCUESTA3'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_item_default=>'3'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160979264303713013)
,p_name=>'P538_TIPO_RESPUESTA3'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_item_default=>'SI_NO_CC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160979607798713013)
,p_name=>'P538_TIPO3'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_item_default=>'Accesorios Completos'
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160980044793713012)
,p_name=>'P538_COD_RESPUESTA3'
,p_is_required=>true
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_prompt=>'Tiene'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Si;1,No;2'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160980490003713012)
,p_name=>'P538_OBSERVACION3'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(193597613350668804)
,p_prompt=>'Observacion'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(160987242095713008)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(160984805353713010)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160987741121713008)
,p_event_id=>wwv_flow_imp.id(160987242095713008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(160986875279713008)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'inserta_control_calidad'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    insert into CA_ENCUESTA_CONTROL_CALIDAD (cod_empresa,',
'                                             cod_tipo_encuesta,',
'                                             cod_llamada,',
'                                             nro_encuesta,',
'                                             tipo_respuesta,',
'                                             cod_respuesta,',
'                                             observacion,',
'                                             tip_comprobante,',
'                                             ser_comprobante,',
'                                             nro_comprobante)',
'                                     values (''1'',',
'                                             null,',
'                                             null,',
'                                             :P538_NRO_ENCUESTA2,',
'                                             :P538_TIPO_RESPUESTA2,',
'                                             :P538_COD_RESPUESTA2,',
'                                             :P538_OBSERVACION2,',
'                                             :P538_TIP_COMPROBANTE,',
'                                             :P538_SER_COMPROBANTE,',
'                                             :P538_NRO_COMPROBANTE);',
'  end;',
'',
'begin',
'    insert into CA_ENCUESTA_CONTROL_CALIDAD (cod_empresa,',
'                                             cod_tipo_encuesta,',
'                                             cod_llamada,',
'                                             nro_encuesta,',
'                                             tipo_respuesta,',
'                                             cod_respuesta,',
'                                             observacion,',
'                                             tip_comprobante,',
'                                             ser_comprobante,',
'                                             nro_comprobante)',
'                                     values (''1'',',
'                                             null,',
'                                             null,',
'                                             :P538_NRO_ENCUESTA3,',
'                                             :P538_TIPO_RESPUESTA3,',
'                                             :P538_COD_RESPUESTA3,',
'                                             :P538_OBSERVACION3,',
'                                             :P538_TIP_COMPROBANTE,',
'                                             :P538_SER_COMPROBANTE,',
'                                             :P538_NRO_COMPROBANTE);',
'  end;',
'',
'  begin',
'    insert into CA_ENCUESTA_CONTROL_CALIDAD (cod_empresa,',
'                                             cod_tipo_encuesta,',
'                                             cod_llamada,',
'                                             nro_encuesta,',
'                                             tipo_respuesta,',
'                                             cod_respuesta,',
'                                             observacion,',
'                                             tip_comprobante,',
'                                             ser_comprobante,',
'                                             nro_comprobante)',
'                                     values (''1'',',
'                                             null,',
'                                             null,',
'                                             :P538_NRO_ENCUESTA,',
'                                             :P538_TIPO_RESPUESTA,',
'                                             :P538_COD_RESPUESTA,',
'                                             :P538_OBSERVACION,',
'                                             :P538_TIP_COMPROBANTE,',
'                                             :P538_SER_COMPROBANTE,',
'                                             :P538_NRO_COMPROBANTE);',
'  end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(160986070046713009)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(160986437415713009)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(160984166182713010)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(193597613350668804)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Control de Calidad'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
