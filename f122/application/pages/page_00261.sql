prompt --application/pages/page_00261
begin
--   Manifest
--     PAGE: 00261
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
 p_id=>261
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Canales por Usuarios'
,p_alias=>'CANALES-POR-USUARIOS'
,p_page_mode=>'MODAL'
,p_step_title=>'Canales por Usuarios'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250107112258'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59783295777539991)
,p_plug_name=>'Canales por Usuarios'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_USUARIO, COD_DEPARTAMENTO, COD_EMPRESA,monto_desde, monto_hasta, aprueba_oc aprueba, ROWID',
'from CM_APRUEBA_DEPTO'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59786442822539993)
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
 p_id=>wwv_flow_imp.id(59786805692539993)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(59786442822539993)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59788281317539995)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(59786442822539993)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P261_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59788635289539995)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(59786442822539993)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P261_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59789040106539995)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(59786442822539993)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'NEXT'
,p_button_condition=>'P261_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59783620330539991)
,p_name=>'P261_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(59783295777539991)
,p_item_source_plug_id=>wwv_flow_imp.id(59783295777539991)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59784069364539992)
,p_name=>'P261_COD_USUARIO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(59783295777539991)
,p_item_source_plug_id=>wwv_flow_imp.id(59783295777539991)
,p_prompt=>'Cod Usuario'
,p_source=>'COD_USUARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_USUARIOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--VTRPLACA',
'select cod_usuario R, cod_usuario|| '' - ''|| nombre D',
'from usuarios u, personas p',
'where   u.cod_persona=p.cod_persona',
' '))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59784446130539992)
,p_name=>'P261_COD_DEPARTAMENTO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(59783295777539991)
,p_item_source_plug_id=>wwv_flow_imp.id(59783295777539991)
,p_prompt=>'Cod Departamento'
,p_source=>'COD_DEPARTAMENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION, CODIGO',
'FROM (select ''AF''CODIGO, ''AUTORIZADO A FACTURA''DESCRIPCION from dual UNION ALL ',
'select ''AN''DESCRIPCION, ''ANULACION''CODIGO from dual UNION ALL ',
'select ''MA''DESCRIPCION, ''MARKETING''CODIGO from dual UNION ALL ',
'select ''CA''DESCRIPCION, ''CANJE''CODIGO from dual UNION ALL ',
'select ''DI''DESCRIPCION, ''DIRECTORIO''CODIGO from dual UNION ALL ',
'select ''CR''DESCRIPCION, ''CREDITOS''CODIGO from dual UNION ALL ',
'select ''CO''DESCRIPCION, ''COBRANZAS''CODIGO from dual UNION ALL ',
'select ''SV''DESCRIPCION, ''SUPERVISION VALORES''CODIGO from dual UNION ALL ',
'select ''RH''DESCRIPCION, ''GENTE''CODIGO from dual UNION ALL ',
'select ''VE''DESCRIPCION, ''VENTAS''CODIGO from dual  UNION ALL',
'select ''AC''DESCRIPCION, ''AUTORIZACION CREDITOS''CODIGO from dual UNION ALL',
'select ''CP''DESCRIPCION, ''CANJE PUBLICIDAD''CODIGO from dual UNION ALL',
'select ''TE''DESCRIPCION, ''TESORERIA''CODIGO from dual UNION ALL',
'select ''RP''DESCRIPCION, ''DISTRIBUCION''CODIGO from dual UNION ALL',
'select ''GC''DESCRIPCION, ''GENTE CPH''CODIGO from dual UNION ALL',
'select ''PR''DESCRIPCION, ''PENDIENTE DE RIESGOS''CODIGO from dual UNION ALL',
'select ''F''DESCRIPCION, ''FACTURACION''CODIGO from dual UNION ALL',
'select ''GA''DESCRIPCION, ''GERENCIA ADMINISTRATIVA''CODIGO from dual UNION ALL',
'select ''GV''DESCRIPCION, ''GERENCIA COMERCIAL''CODIGO from dual UNION ALL',
'select ''PR''DESCRIPCION, ''PENDIENTE DE RIESGOS''CODIGO from dual UNION ALL',
'select ''GV''DESCRIPCION, ''GERENCIA COMERCIAL''CODIGO from dual UNION ALL',
'select ''AV''DESCRIPCION, ''AUTORIZACION VALORES''CODIGO from dual UNION ALL',
'select ''AA''DESCRIPCION, ''ARREGLOS ADMINISTRATIVOS''CODIGO from dual)',
'ORDER BY DESCRIPCION'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161536387557493202)
,p_name=>'P261_MONTO_DESDE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(59783295777539991)
,p_item_source_plug_id=>wwv_flow_imp.id(59783295777539991)
,p_prompt=>'Monto Desde'
,p_source=>'MONTO_DESDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161536494397493203)
,p_name=>'P261_MONTO_HASTA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(59783295777539991)
,p_item_source_plug_id=>wwv_flow_imp.id(59783295777539991)
,p_prompt=>'Monto Hasta'
,p_source=>'MONTO_HASTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161536507152493204)
,p_name=>'P261_APRUEBA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(59783295777539991)
,p_item_source_plug_id=>wwv_flow_imp.id(59783295777539991)
,p_prompt=>'Aprueba'
,p_source=>'APRUEBA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:SI;S,NO;N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(963953106736292728)
,p_name=>'P261_COD_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(59783295777539991)
,p_item_source_plug_id=>wwv_flow_imp.id(59783295777539991)
,p_prompt=>'COD_EMPRESA'
,p_source=>'COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59786981966539993)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(59786805692539993)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59787713318539994)
,p_event_id=>wwv_flow_imp.id(59786981966539993)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59789845877539995)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(59783295777539991)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Canales por Usuarios'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59790279942539996)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59789427287539995)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(59783295777539991)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Canales por Usuarios'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
