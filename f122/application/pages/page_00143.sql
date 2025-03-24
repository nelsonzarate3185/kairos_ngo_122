prompt --application/pages/page_00143
begin
--   Manifest
--     PAGE: 00143
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
 p_id=>143
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Control de Calidad'
,p_alias=>'CONTROL-DE-CALIDAD'
,p_page_mode=>'MODAL'
,p_step_title=>'Control de Calidad'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20221101142349'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(125355848658210049)
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
' where cod_empresa     = :P143_COD_EMPRESA',
'   and tip_comprobante = :P143_TIP_COMPROBANTE',
'   and ser_comprobante = :P143_SER_COMPROBANTE',
'   and nro_comprobante = :P143_NRO_COMPROBANTE;'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P143_COD_EMPRESA,P143_TIP_COMPROBANTE,P143_SER_COMPROBANTE,P143_NRO_COMPROBANTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(125363550614210345)
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
 p_id=>wwv_flow_imp.id(30321042858792063)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(125363550614210345)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30321410581792063)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(125363550614210345)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P143_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30321841532792064)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(125363550614210345)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P143_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30322244911792064)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(125363550614210345)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Insertar Datos'
,p_button_position=>'NEXT'
,p_button_condition=>'P143_NRO_COMPROBANTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30308207270792056)
,p_name=>'P143_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(125355848658210049)
,p_item_source_plug_id=>wwv_flow_imp.id(125355848658210049)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30308613975792056)
,p_name=>'P143_COD_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(125355848658210049)
,p_item_source_plug_id=>wwv_flow_imp.id(125355848658210049)
,p_item_default=>'1'
,p_source=>'COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30309005084792057)
,p_name=>'P143_COD_TIPO_ENCUESTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(125355848658210049)
,p_item_source_plug_id=>wwv_flow_imp.id(125355848658210049)
,p_source=>'COD_TIPO_ENCUESTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30309475412792057)
,p_name=>'P143_COD_LLAMADA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(125355848658210049)
,p_item_source_plug_id=>wwv_flow_imp.id(125355848658210049)
,p_source=>'COD_LLAMADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30309839889792057)
,p_name=>'P143_TIP_COMPROBANTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(125355848658210049)
,p_item_source_plug_id=>wwv_flow_imp.id(125355848658210049)
,p_source=>'TIP_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30310266354792057)
,p_name=>'P143_SER_COMPROBANTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(125355848658210049)
,p_item_source_plug_id=>wwv_flow_imp.id(125355848658210049)
,p_source=>'SER_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30310679845792057)
,p_name=>'P143_NRO_COMPROBANTE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(125355848658210049)
,p_item_source_plug_id=>wwv_flow_imp.id(125355848658210049)
,p_source=>'NRO_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30311033368792057)
,p_name=>'P143_NRO_ENCUESTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(125355848658210049)
,p_item_source_plug_id=>wwv_flow_imp.id(125355848658210049)
,p_item_default=>'1'
,p_source=>'NRO_ENCUESTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30311494754792058)
,p_name=>'P143_TIPO_RESPUESTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(125355848658210049)
,p_item_source_plug_id=>wwv_flow_imp.id(125355848658210049)
,p_item_default=>'PUNTO_1_5'
,p_source=>'TIPO_RESPUESTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30311814270792058)
,p_name=>'P143_TIPO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(125355848658210049)
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
 p_id=>wwv_flow_imp.id(30312265415792058)
,p_name=>'P143_COD_RESPUESTA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(125355848658210049)
,p_item_source_plug_id=>wwv_flow_imp.id(125355848658210049)
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
 p_id=>wwv_flow_imp.id(30312682322792058)
,p_name=>'P143_OBSERVACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(125355848658210049)
,p_item_source_plug_id=>wwv_flow_imp.id(125355848658210049)
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
 p_id=>wwv_flow_imp.id(30313083691792058)
,p_name=>'P143_NRO_ENCUESTA2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(125355848658210049)
,p_item_default=>'2'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30313416041792058)
,p_name=>'P143_TIPO_RESPUESTA2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(125355848658210049)
,p_item_default=>'PUNTO_1_5'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30313861123792059)
,p_name=>'P143_TIPO2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(125355848658210049)
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
 p_id=>wwv_flow_imp.id(30314257214792059)
,p_name=>'P143_COD_RESPUESTA2'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(125355848658210049)
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
 p_id=>wwv_flow_imp.id(30314614713792059)
,p_name=>'P143_OBSERVACION2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(125355848658210049)
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
 p_id=>wwv_flow_imp.id(30315088247792059)
,p_name=>'P143_NRO_ENCUESTA3'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(125355848658210049)
,p_item_default=>'3'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30315435020792059)
,p_name=>'P143_TIPO_RESPUESTA3'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(125355848658210049)
,p_item_default=>'SI_NO_CC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30315824418792060)
,p_name=>'P143_TIPO3'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(125355848658210049)
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
 p_id=>wwv_flow_imp.id(30316238832792060)
,p_name=>'P143_COD_RESPUESTA3'
,p_is_required=>true
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(125355848658210049)
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
 p_id=>wwv_flow_imp.id(30316656358792060)
,p_name=>'P143_OBSERVACION3'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(125355848658210049)
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
 p_id=>wwv_flow_imp.id(30323402621792065)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30321042858792063)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30323976377792065)
,p_event_id=>wwv_flow_imp.id(30323402621792065)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30323003357792064)
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
'                                             :P143_NRO_ENCUESTA2,',
'                                             :P143_TIPO_RESPUESTA2,',
'                                             :P143_COD_RESPUESTA2,',
'                                             :P143_OBSERVACION2,',
'                                             :P143_TIP_COMPROBANTE,',
'                                             :P143_SER_COMPROBANTE,',
'                                             :P143_NRO_COMPROBANTE);',
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
'                                             :P143_NRO_ENCUESTA3,',
'                                             :P143_TIPO_RESPUESTA3,',
'                                             :P143_COD_RESPUESTA3,',
'                                             :P143_OBSERVACION3,',
'                                             :P143_TIP_COMPROBANTE,',
'                                             :P143_SER_COMPROBANTE,',
'                                             :P143_NRO_COMPROBANTE);',
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
'                                             :P143_NRO_ENCUESTA,',
'                                             :P143_TIPO_RESPUESTA,',
'                                             :P143_COD_RESPUESTA,',
'                                             :P143_OBSERVACION,',
'                                             :P143_TIP_COMPROBANTE,',
'                                             :P143_SER_COMPROBANTE,',
'                                             :P143_NRO_COMPROBANTE);',
'  end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(30322244911792064)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30322636633792064)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30320363606792062)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(125355848658210049)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Control de Calidad'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
