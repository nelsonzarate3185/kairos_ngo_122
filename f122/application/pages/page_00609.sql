prompt --application/pages/page_00609
begin
--   Manifest
--     PAGE: 00609
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
 p_id=>609
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Crear Solicitud Capacitaciones Wango'
,p_alias=>'CREAR-SOLICITUD-CAPACITACIONES-WANGO'
,p_step_title=>'Crear Solicitud Capacitaciones Wango'
,p_reload_on_submit=>'A'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'MBLANCO'
,p_last_upd_yyyymmddhh24miss=>'20230929145447'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(97751838883503629)
,p_plug_name=>'Agregar/Editar una solicitud'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(207194819081594046)
,p_plug_name=>'Adjunto'
,p_parent_plug_id=>wwv_flow_imp.id(97751838883503629)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(207194995131594047)
,p_plug_name=>unistr('Informaci\00F3n sobre la solicitud')
,p_parent_plug_id=>wwv_flow_imp.id(97751838883503629)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(97753258399503643)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(97751838883503629)
,p_button_name=>'BT_ENVIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enviar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P609_NRO_SOLICITUD'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-check'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(206368565622755627)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(97751838883503629)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P609_NRO_SOLICITUD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-check'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(206366045020755602)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(97751838883503629)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-times'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(207194689586594044)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_imp.id(207194819081594046)
,p_button_name=>'BT_ELIMINAR_ADJUNTO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Adjunto'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(207195005942594048)
,p_button_sequence=>220
,p_button_plug_id=>wwv_flow_imp.id(207194819081594046)
,p_button_name=>'BT_VER_ADJUNTO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ver Adjunto'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:632:&SESSION.::&DEBUG.::P632_MIMETYPE,P632_NOMBRE_ADJUNTO,P632_NRO_SOLICITUD:&P609_MIMETYPE.,&P609_NOMBRE_ADJUNTO.,&P609_NRO_SOLICITUD.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(206365981251755601)
,p_branch_name=>'BR_603'
,p_branch_action=>'f?p=&APP_ID.:603:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97751988853503630)
,p_name=>'P609_AUTORIZANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(207194995131594047)
,p_prompt=>'Autorizante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="border-color: #bce8f1; background-color:#d9edf7;"'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97752131942503632)
,p_name=>'P609_COD_SUPERIOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(207194995131594047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97752266623503633)
,p_name=>'P609_NOMB_EMP_AUTORIZA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(207194995131594047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97752384773503634)
,p_name=>'P609_TEMA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(207194995131594047)
,p_prompt=>'Tema'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97752443533503635)
,p_name=>'P609_INSTITUCION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(207194995131594047)
,p_prompt=>unistr('Instituci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97752590902503636)
,p_name=>'P609_TIPO_CAPACITACION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(207194995131594047)
,p_prompt=>unistr('Tipo Capacitaci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TIPO_CAPACITACION_WANGO'
,p_lov=>'.'||wwv_flow_imp.id(206216996414318418)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccionar'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97752686290503637)
,p_name=>'P609_TIPO_MODALIDAD'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(207194995131594047)
,p_prompt=>'Tipo Modalidad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TIPO_MODALIDAD_WANGO'
,p_lov=>'.'||wwv_flow_imp.id(206219171030312664)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccionar'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97752706779503638)
,p_name=>'P609_MOTIVO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(207194995131594047)
,p_prompt=>'Motivo de solicitud'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MOTIVO_CAPACITACIONES_WANGO'
,p_lov=>'.'||wwv_flow_imp.id(206220137519308338)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccionar'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97752837635503639)
,p_name=>'P609_ADJUNTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(207194819081594046)
,p_prompt=>'Archivo adjunto'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'REQUEST'
,p_attribute_10=>'N'
,p_attribute_12=>'DROPZONE_BLOCK'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(206367339613755615)
,p_name=>'P609_NRO_SOLICITUD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(207194995131594047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(206367423472755616)
,p_name=>'P609_COD_AREA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(207194995131594047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(206367530776755617)
,p_name=>'P609_COD_DEPARTAMENTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(207194995131594047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(206367730204755619)
,p_name=>'P609_COD_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(207194995131594047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(206369069869755632)
,p_name=>'P609_MENSAJE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(207194995131594047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(207191987236594017)
,p_name=>'P609_VER_ADJUNTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(207194819081594046)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_attributes=>'style="width: 100%;"'
,p_grid_label_column_span=>0
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if substr(:P609_MIMETYPE,1,5) like ''%image%'' then',
'return true;',
'else',
'return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SOLICITUD_CAPACITACIONES.FN_GET_BLOB_FROM_FILE(P_DIR => ''UPLOAD_IMAGE_CAP'',',
'                                                                P_FILE_NAME  => a.nombre_archivo ) adjunto                       ',
'FROM RH_SOLICITUDES_CAPACITACION a ',
'WHERE a.cod_empleado = :P_COD_EMPLEADO ',
'AND a.NRO_SOLICITUD = :P609_NRO_SOLICITUD;',
''))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(207193295623594030)
,p_name=>'P609_NOMBRE_ADJUNTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(207194819081594046)
,p_prompt=>'Nombre del Archivo Adjunto'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(207193560534594033)
,p_name=>'P609_CAMBIO_ADJUNTO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(207194995131594047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(215198392625001301)
,p_name=>'P609_MIMETYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(207194995131594047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(206366745421755609)
,p_validation_name=>'VA_TEMA'
,p_validation_sequence=>10
,p_validation=>'P609_TEMA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Debe indicar el tema de la capacitaci\00F3n')
,p_validation_condition=>'ENVIAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(97752384773503634)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(206366834001755610)
,p_validation_name=>'VA_INSTITUCION'
,p_validation_sequence=>20
,p_validation=>'P609_INSTITUCION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Debe indicar la instituci\00F3n donde se llevar\00E1 a cabo la capacitaci\00F3n.')
,p_validation_condition=>'ENVIAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(97752443533503635)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(206366991111755611)
,p_validation_name=>'VA_TIPO'
,p_validation_sequence=>30
,p_validation=>'P609_TIPO_CAPACITACION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Debe indicar el tipo de capacitaci\00F3n.')
,p_validation_condition=>'ENVIAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(97752590902503636)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(206367048135755612)
,p_validation_name=>'VA_MODALIDAD'
,p_validation_sequence=>40
,p_validation=>'P609_TIPO_MODALIDAD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Debe indicar la modalidad de la capacitaci\00F3n.')
,p_validation_condition=>'ENVIAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(97752686290503637)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(206367139852755613)
,p_validation_name=>'VA_MOTIVO'
,p_validation_sequence=>50
,p_validation=>'P609_MOTIVO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Debe indicar el motivo de la capacitaci\00F3n.')
,p_validation_condition=>'ENVIAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(97752706779503638)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(206367654250755618)
,p_validation_name=>'VA_CAMPOS_OCULTOS'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P609_COD_SUPERIOR IS NULL OR :P609_COD_AREA IS NULL OR :P609_COD_DEPARTAMENTO IS NULL OR :P609_COD_SUCURSAL IS NULL THEN',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'FALTAN CAMPOS OCULTOS, POR FAVOR CONTACTE CON EL ADMINISTRADOR.'
,p_validation_condition=>'ENVIAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97753037569503641)
,p_name=>'DA_LIMPIAR_ADJUNTO'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(207194689586594044)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(207191769705594015)
,p_event_id=>wwv_flow_imp.id(97753037569503641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea reemplazar el archivo adjunto?')
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'warning'
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97753160445503642)
,p_event_id=>wwv_flow_imp.id(97753037569503641)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P609_ADJUNTO,P609_MIMETYPE,P609_NOMBRE_ADJUNTO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(207193020187594028)
,p_event_id=>wwv_flow_imp.id(97753037569503641)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('-- no se ejecuta este update aqu\00ED, la actualizaci\00F3n se hace al guardar'),
'/*BEGIN',
'    UPDATE RH_SOLICITUDES_CAPACITACION',
'    SET BLOB_ARCHIVO = EMPTY_BLOB(),',
'        NOMBRE_ARCHIVO = NULL,',
'        MIME_TYPE = NULL,',
'        URL_ARCHIVO = NULL',
'    WHERE NRO_SOLICITUD = :P609_NRO_SOLICITUD',
'    AND COD_EMPRESA = ''1'';',
'    :P609_MENSAJE := ''Debe adjuntar otro archivo para guardar la solicitud.'';',
'    :P609_CAMBIO_ADJUNTO := 1;',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        :P609_MENSAJE := ''Ocurri\00F3 un error al borrar el adjunto. Intente nuevamente.'';'),
'        apex_Debug.error(''Error al limpiar datos del adjunto en la tabla de capacitaciones: ''||sqlerrm);',
'END; */',
'',
':P609_CAMBIO_ADJUNTO := 1;'))
,p_attribute_03=>'P609_CAMBIO_ADJUNTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(207192666398594024)
,p_event_id=>wwv_flow_imp.id(97753037569503641)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P609_ADJUNTO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(207192798516594025)
,p_event_id=>wwv_flow_imp.id(97753037569503641)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P609_VER_ADJUNTO,P609_NOMBRE_ADJUNTO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(215199888334001316)
,p_event_id=>wwv_flow_imp.id(97753037569503641)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(207195005942594048)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(215200173956001319)
,p_event_id=>wwv_flow_imp.id(97753037569503641)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(207194689586594044)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206366177228755603)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(206366045020755602)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206366245760755604)
,p_event_id=>wwv_flow_imp.id(206366177228755603)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea cancelar el proceso?')
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'warning'
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206366351345755605)
,p_event_id=>wwv_flow_imp.id(206366177228755603)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CANCELAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206366492081755606)
,p_name=>'DA_ENVIAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(97753258399503643)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(215199915530001317)
,p_event_id=>wwv_flow_imp.id(206366492081755606)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe ingresar un archivo adjunto para completar la solicitud.'
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'information'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P609_ADJUNTO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206366541243755607)
,p_event_id=>wwv_flow_imp.id(206366492081755606)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea enviar la solicitud?')
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'information'
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P609_ADJUNTO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206366644436755608)
,p_event_id=>wwv_flow_imp.id(206366492081755606)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ENVIAR'
,p_attribute_02=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P609_ADJUNTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206368641757755628)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(206368565622755627)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(215200066209001318)
,p_event_id=>wwv_flow_imp.id(206368641757755628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe ingresar un archivo adjunto para completar la solicitud.'
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'information'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'apex.item("P609_CAMBIO_ADJUNTO").getValue() != 0 && apex.item("P609_ADJUNTO").getValue() == ""'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206368746762755629)
,p_event_id=>wwv_flow_imp.id(206368641757755628)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar los cambios en la solicitud?')
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'information'
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'apex.item("P609_CAMBIO_ADJUNTO").getValue() == 0 || (apex.item("P609_CAMBIO_ADJUNTO").getValue() == 1 && apex.item("P609_ADJUNTO").getValue() != "")'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206368848906755630)
,p_event_id=>wwv_flow_imp.id(206368641757755628)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDAR'
,p_attribute_02=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'apex.item("P609_CAMBIO_ADJUNTO").getValue() == 0 || (apex.item("P609_CAMBIO_ADJUNTO").getValue() == 1 && apex.item("P609_ADJUNTO").getValue() != "")'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(206369185278755633)
,p_name=>'DA_MENSAJE'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P609_MENSAJE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(206369273649755634)
,p_event_id=>wwv_flow_imp.id(206369185278755633)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P609_MENSAJE.'
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(207192065672594018)
,p_name=>'DA_VER_ADJUNTO'
,p_event_sequence=>60
,p_condition_element=>'P609_NOMBRE_ADJUNTO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(207192194294594019)
,p_event_id=>wwv_flow_imp.id(207192065672594018)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P609_VER_ADJUNTO,P609_NOMBRE_ADJUNTO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(215199553959001313)
,p_event_id=>wwv_flow_imp.id(207192065672594018)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(207195005942594048)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(207192204161594020)
,p_event_id=>wwv_flow_imp.id(207192065672594018)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P609_ADJUNTO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(215199384389001311)
,p_event_id=>wwv_flow_imp.id(207192065672594018)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(207194689586594044)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(207192465295594022)
,p_event_id=>wwv_flow_imp.id(207192065672594018)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P609_ADJUNTO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(215199232856001310)
,p_event_id=>wwv_flow_imp.id(207192065672594018)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(207194689586594044)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(207192344101594021)
,p_event_id=>wwv_flow_imp.id(207192065672594018)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P609_VER_ADJUNTO,P609_NOMBRE_ADJUNTO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(215199407341001312)
,p_event_id=>wwv_flow_imp.id(207192065672594018)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(207195005942594048)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(207195130046594049)
,p_name=>'DA_VER'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(207195005942594048)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(207195222174594050)
,p_event_id=>wwv_flow_imp.id(207195130046594049)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_blob_content  blob;',
'  v_mime_type     varchar2(500);',
'  v_filename      varchar2(500);',
'',
'BEGIN',
'    SELECT SOLICITUD_CAPACITACIONES.FN_GET_BLOB_FROM_FILE(P_DIR => ''UPLOAD_IMAGE_CAP'',',
'                                                          P_FILE_NAME  => a.nombre_archivo ) adjunto  ',
'    INTO v_blob_content                                                                                     ',
'    FROM RH_SOLICITUDES_CAPACITACION a ',
'    WHERE a.cod_empleado = :P_COD_EMPLEADO ',
'    AND a.NRO_SOLICITUD = :P609_NRO_SOLICITUD;',
'--DBMS_LOB.CREATETEMPORARY(ADJUNTO,true);',
'  sys.HTP.init;',
'  sys.OWA_UTIL.mime_header(:P609_MIMETYPE, FALSE);',
'  sys.HTP.p(''Content-Length: '' || DBMS_LOB.getlength(v_blob_content));',
'  sys.HTP.p(''Content-Disposition: filename="'' || :P609_NOMBRE_ADJUNTO || ''"'');',
'  sys.OWA_UTIL.http_header_close;',
'',
'  sys.WPG_DOCLOAD.download_file(v_blob_content);',
'  apex_application.stop_apex_engine;',
'EXCEPTION',
'  WHEN apex_application.e_stop_apex_engine THEN',
'    apex_debug.error(''error descarga ''||sqlerrm);',
'END;',
'',
''))
,p_attribute_02=>'P609_MIMETYPE,P609_NRO_SOLICITUD,P609_NOMBRE_ADJUNTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(206367841975755620)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT_SOLICITUD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--:P_COD_EMPLEADO := 1207;----------------------------------------TEST ------------------------------',
'DECLARE',
'VNOMBRE_ARCHIVO VARCHAR2(200);',
'BEGIN',
'    IF :P609_NRO_SOLICITUD IS NOT NULL THEN',
'        BEGIN',
'            SELECT a.COD_SUPERIOR, ',
'                   a.COD_SUCURSAL,',
'                   a.COD_AREA, ',
'                   a.COD_DEPARTAMENTO,',
'                   a.TEMA_CAPACITACION,',
'                   a.OBS_INSTITUTO,',
'                   a.IND_TIPO,',
'                   a.IND_MODALIDAD,',
'                   a.IND_MOTIVO,                   ',
'                   a.nombre_archivo,',
'                   a.mime_type ',
'              INTO :P609_COD_SUPERIOR, :P609_COD_SUCURSAL, :P609_COD_AREA, :P609_COD_DEPARTAMENTO, :P609_TEMA,',
'                   :P609_INSTITUCION, :P609_TIPO_CAPACITACION, :P609_TIPO_MODALIDAD, :P609_MOTIVO, :P609_NOMBRE_ADJUNTO ,',
'                   :P609_MIMETYPE   ',
'            FROM RH_SOLICITUDES_CAPACITACION a ',
'            --LEFT JOIN RH_SOLICITUDES_CAP_ARCHIVOS b ON (a.nro_solicitud = b.nro_solicitud)',
'            WHERE a.cod_empleado = :P_COD_EMPLEADO ',
'              AND a.NRO_SOLICITUD = :P609_NRO_SOLICITUD;',
'  ',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN      ',
'                apex_error.add_error (p_message          => ''No se han encontrado los datos de la solicitud. Contacte al administrador.'',',
'                                      p_display_location => apex_error.c_inline_in_notification );                        ',
'                APEX_DEBUG.ERROR(''No se han encontrado datos de la solicitud en PR_INIT_SOLICITUD: ''||SQLERRM);      ',
'            WHEN OTHERS THEN',
'                apex_error.add_error (p_message          => ''Ha ocurrido un error al buscar los datos de la solicitud. Contacte al administrador.'',',
'                                      p_display_location => apex_error.c_inline_in_notification );',
'                APEX_DEBUG.ERROR(''Error al buscar datos de la solicitud PR_INIT_SOLICITUD: ''||SQLERRM); ',
'        END;            ',
'    ELSE',
'        :P609_TEMA := NULL;',
'        :P609_INSTITUCION := NULL;',
'        :P609_TIPO_CAPACITACION := NULL;',
'        :P609_TIPO_MODALIDAD := NULL;',
'        :P609_MOTIVO := NULL;',
'',
'        BEGIN',
'            SELECT a.cod_sucursal, a.COD_SUPERIOR, a.COD_DEPARTAMENTO, a.COD_AREA',
'              INTO :P609_COD_SUCURSAL, :P609_COD_SUPERIOR, :P609_COD_DEPARTAMENTO, :P609_COD_AREA  ',
'              FROM rh_empleados a',
'             WHERE a.cod_empleado = :P_COD_EMPLEADO',
'               AND a.cod_empresa = 1 and a.activo = ''S''; ',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                :P609_COD_SUPERIOR := NULL; ',
'                :P609_COD_SUCURSAL := NULL;',
'                :P609_COD_AREA := NULL;',
'                :P609_COD_DEPARTAMENTO := NULL; ',
'                apex_error.add_error (p_message          => ''No se han encontrado datos ocultos. Contacte al administrador.'',',
'                                      p_display_location => apex_error.c_inline_in_notification );                        ',
'                APEX_DEBUG.ERROR(''No se han encontrado datos ocultos en PR_INIT_SOLICITUD: ''||SQLERRM);',
'',
'            WHEN OTHERS THEN',
'                :P609_COD_SUPERIOR := NULL; ',
'                :P609_COD_SUCURSAL := NULL;',
'                :P609_COD_AREA := NULL;',
'                :P609_COD_DEPARTAMENTO := NULL; ',
'                apex_error.add_error (p_message          => ''Ha ocurrido un error. Contacte al administrador.'',',
'                                      p_display_location => apex_error.c_inline_in_notification );',
'                APEX_DEBUG.ERROR(''Error al buscar dtos PR_INIT_SOLICITUD: ''||SQLERRM);        ',
'        END;                ',
'    END IF;      ',
'END;',
'',
'-- BANDERA PARA SABER SI HAY UN CAMBIO EN EL ADJUNTO',
':P609_CAMBIO_ADJUNTO := 0;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(97752076480503631)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT_SUPERIOR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--busca el superior',
'BEGIN    ',
'    SELECT p.nombre,',
'           x.cod_emp_autoriza ',
'      INTO :P609_NOMB_EMP_AUTORIZA,',
'           :P609_COD_SUPERIOR     ',
'      FROM rh_emp_responsables x,',
'           rh_empleados e,',
'           personas p',
'     WHERE x.cod_empresa = 1',
'       AND x.cod_emp_solicita = :P_COD_EMPLEADO            ',
'       AND x.cod_empresa = e.cod_empresa',
'       AND x.cod_emp_autoriza = e.cod_empleado',
'       AND e.cod_persona = p.cod_persona',
'       AND ROWNUM = 1;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''Error al buscar el superior: ''||SQLERRM);',
'END;        ',
'',
':P609_AUTORIZANTE := ''La persona autorizante para tu solicitud es ''||:P609_NOMB_EMP_AUTORIZA;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(206367217868755614)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_ENVIAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VNRO_SOLICITUD NUMBER;',
'UPLOAD_BLOB BLOB;  ',
'V_FILENAME VARCHAR2(350);',
'V_MIME_TYPE VARCHAR2(350);',
'VDIR VARCHAR2(100);',
'BEGIN',
'    SOLICITUD_CAPACITACIONES.PR_ENVIAR(PI_TEMA => :P609_TEMA, ',
'                                       PI_INSTITUCION => :P609_INSTITUCION,',
'                                       PI_TIPO_CAPACITACION => :P609_TIPO_CAPACITACION,',
'                                       PI_TIPO_MODALIDAD    => :P609_TIPO_MODALIDAD,',
'                                       PI_MOTIVO            => :P609_MOTIVO,',
'                                       PI_COD_SUCURSAL => :P609_COD_SUCURSAL, ',
'                                       PI_COD_AREA => :P609_COD_AREA,',
'                                       PI_COD_DEPARTAMENTO => :P609_COD_DEPARTAMENTO,',
'                                       PI_COD_SUPERIOR => :P609_COD_SUPERIOR,',
'                                       PI_COD_EMPLEADO => :P_COD_EMPLEADO,',
'                                       PO_NRO_SOLICITUD => VNRO_SOLICITUD); ',
'',
'    IF VNRO_SOLICITUD IS NOT NULL AND :P609_ADJUNTO IS NOT NULL THEN',
'        apex_debug.error(''entro a guardar el adjunto''); ',
'        -- UPDATE SOBRE TABLA PARA GUARDAR EL ARCHIVO',
'        SELECT BLOB_CONTENT,',
'               FILENAME, ',
'               MIME_TYPE  ',
'          INTO UPLOAD_BLOB,',
'               V_FILENAME,',
'               V_MIME_TYPE       ',
'          FROM APEX_APPLICATION_TEMP_FILES   ',
'         WHERE NAME = :P609_ADJUNTO;',
'',
'        UPDATE RH_SOLICITUDES_CAPACITACION',
'        SET BLOB_ARCHIVO = UPLOAD_BLOB,',
'            NOMBRE_ARCHIVO = V_FILENAME,',
'            MIME_TYPE = V_MIME_TYPE',
'        WHERE NRO_SOLICITUD = VNRO_SOLICITUD',
'        AND COD_EMPRESA = ''1'';',
'        apex_debug.error(''update y preproc''); ',
'        SOLICITUD_CAPACITACIONES.WRITE_BLOB_TO_FILE(P_NRO_SOLICITUD => VNRO_SOLICITUD, ',
'                                                    P_DIR => ''UPLOAD_IMAGE_CAP''); ',
'        apex_debug.error(''update y preproc'');                                              ',
'    END IF;    ',
'END;',
'',
'',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Ha ocurrido un error.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ENVIAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(206368954052755631)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'UPLOAD_BLOB BLOB;  ',
'V_FILENAME VARCHAR2(350);',
'V_MIME_TYPE VARCHAR2(350);',
'VDIR VARCHAR2(100);',
'BEGIN',
'    SOLICITUD_CAPACITACIONES.PR_GUARDAR(PI_TEMA => :P609_TEMA, ',
'                                        PI_INSTITUCION => :P609_INSTITUCION,',
'                                        PI_TIPO_CAPACITACION => :P609_TIPO_CAPACITACION,',
'                                        PI_TIPO_MODALIDAD    => :P609_TIPO_MODALIDAD,',
'                                        PI_MOTIVO            => :P609_MOTIVO,',
'                                        PI_NRO_SOLICITUD     => TO_NUMBER(:P609_NRO_SOLICITUD));',
'',
'    --IF :P609_CAMBIO_ADJUNTO = 1 THEN',
'        IF :P609_ADJUNTO IS NOT NULL THEN',
'            apex_debug.error('' entro a P609_CAMBIO_ADJUNTO'');',
'            -- UPDATE SOBRE TABLA PARA GUARDAR EL ARCHIVO',
'            SELECT BLOB_CONTENT,',
'                   FILENAME, ',
'                   MIME_TYPE  ',
'              INTO UPLOAD_BLOB,',
'                   V_FILENAME,',
'                   V_MIME_TYPE       ',
'              FROM APEX_APPLICATION_TEMP_FILES   ',
'             WHERE NAME = :P609_ADJUNTO;',
'            ',
'            UPDATE RH_SOLICITUDES_CAPACITACION',
'            SET BLOB_ARCHIVO = UPLOAD_BLOB,',
'                NOMBRE_ARCHIVO = V_FILENAME,',
'                MIME_TYPE = V_MIME_TYPE,',
'                URL_ARCHIVO = NULL',
'            WHERE NRO_SOLICITUD = TO_NUMBER(:P609_NRO_SOLICITUD)',
'            AND COD_EMPRESA = ''1'';',
'            apex_debug.error('' update RH_SOLICITUDES_CAPACITACION'');',
'            SOLICITUD_CAPACITACIONES.WRITE_BLOB_TO_FILE(P_NRO_SOLICITUD => TO_NUMBER(:P609_NRO_SOLICITUD), ',
'                                                        P_DIR => ''UPLOAD_IMAGE_CAP''); ',
'            apex_debug.error(''volvio del proc'');    ',
'        END IF;                                                                                          ',
'    --END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Ha ocurrido un error.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GUARDAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(215198511825001303)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_PREVISUALIZAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_blob_content  blob;',
'  v_mime_type     varchar2(500);',
'  v_filename      varchar2(500);',
'',
'BEGIN',
'    SELECT SOLICITUD_CAPACITACIONES.FN_GET_BLOB_FROM_FILE(P_DIR => ''UPLOAD_IMAGE_CAP'',',
'                                                          P_FILE_NAME  => a.nombre_archivo ) adjunto  ',
'    INTO v_blob_content                                                                                     ',
'    FROM RH_SOLICITUDES_CAPACITACION a ',
'    WHERE a.cod_empleado = :P_COD_EMPLEADO ',
'    AND a.NRO_SOLICITUD = :P609_NRO_SOLICITUD;',
'',
'  sys.HTP.init;',
'  sys.OWA_UTIL.mime_header(:P609_MIMETYPE, FALSE);',
'  sys.HTP.p(''Content-Length: '' || DBMS_LOB.getlength(v_blob_content));',
'  sys.HTP.p(''Content-Disposition: filename="'' || :P609_NOMBRE_ADJUNTO || ''"'');',
'  sys.OWA_UTIL.http_header_close;',
'',
'  sys.WPG_DOCLOAD.download_file(v_blob_content);',
'  apex_application.stop_apex_engine;',
'EXCEPTION',
'  WHEN apex_application.e_stop_apex_engine THEN',
'    apex_debug.error(''error descarga ''||sqlerrm);',
'END;',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'SQLERRM'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp.component_end;
end;
/
