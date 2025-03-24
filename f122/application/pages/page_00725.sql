prompt --application/pages/page_00725
begin
--   Manifest
--     PAGE: 00725
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
 p_id=>725
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CX Referencias (modal)'
,p_alias=>'CX-REFERENCIAS-MODAL'
,p_page_mode=>'MODAL'
,p_step_title=>'Mantenimiento de Referencias'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20250109164342'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(336869593983596567)
,p_plug_name=>'Referencias'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'	rowid,',
'	a.COD_REFERENCIA ,',
'	a.CODIGO_REFERENCIA,',
'	a.DESCRIPCION_REFERENCIA,',
'	a.VALOR_ALFANUMERICO,',
'	a.VALOR_DECIMAL,',
'	a.ESTADO,',
'	a.COD_TIPO_REFERENCIA,',
'	a.DESCRIPCION_LARGA,',
'	a.USUARIO_ALTA,',
'	a.INMUTABLE',
'FROM',
'	inv.CX_REFERENCIAS a',
'WHERE',
'	a.COD_EMPRESA = 1',
';'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(336872741028596569)
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
 p_id=>wwv_flow_imp.id(277092891423056581)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(336872741028596569)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(277094078453056581)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(336872741028596569)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'NEXT'
,p_button_condition=>'P725_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(275258683007823425)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(336872741028596569)
,p_button_name=>'Actualizar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_button_position=>'NEXT'
,p_button_condition=>'P725_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(275257030378823409)
,p_name=>'P725_COD_REFERENCIA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(336869593983596567)
,p_item_source_plug_id=>wwv_flow_imp.id(336869593983596567)
,p_source=>'COD_REFERENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(275257142338823410)
,p_name=>'P725_DESCRIPCION_REFERENCIA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(336869593983596567)
,p_item_source_plug_id=>wwv_flow_imp.id(336869593983596567)
,p_prompt=>'Descripcion Referencia'
,p_source=>'DESCRIPCION_REFERENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(275257249551823411)
,p_name=>'P725_VALOR_ALFANUMERICO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(336869593983596567)
,p_item_source_plug_id=>wwv_flow_imp.id(336869593983596567)
,p_prompt=>'Valor Alfanumerico'
,p_source=>'VALOR_ALFANUMERICO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(275257338709823412)
,p_name=>'P725_VALOR_DECIMAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(336869593983596567)
,p_prompt=>'Valor Decimal'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(275257491032823413)
,p_name=>'P725_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(336869593983596567)
,p_item_source_plug_id=>wwv_flow_imp.id(336869593983596567)
,p_item_default=>'A'
,p_prompt=>'Estado'
,p_source=>'ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Activo;A,Inactivo;I'
,p_cHeight=>1
,p_grid_column=>6
,p_read_only_when=>'P725_INMUTABLE'
,p_read_only_when2=>'N'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(275257565184823414)
,p_name=>'P725_COD_TIPO_REFERENCIA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(336869593983596567)
,p_item_source_plug_id=>wwv_flow_imp.id(336869593983596567)
,p_prompt=>'Cod Tipo Referencia'
,p_source=>'COD_TIPO_REFERENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CX_TIPO_REFERENCIAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'	a.COD_TIPO_REFERENCIA,',
'	DESCRIPCION_TIPO_REFERENCIA',
'FROM',
'	CX_TIPO_REFERENCIA a',
'WHERE',
'	a.COD_EMPRESA = 1',
'	AND a.ESTADO = ''A''',
';'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(275257613484823415)
,p_name=>'P725_DESCRIPCION_LARGA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(336869593983596567)
,p_item_source_plug_id=>wwv_flow_imp.id(336869593983596567)
,p_prompt=>'Descripcion Larga'
,p_source=>'DESCRIPCION_LARGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>2550
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(275257749082823416)
,p_name=>'P725_CODIGO_REFERENCIA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(336869593983596567)
,p_item_source_plug_id=>wwv_flow_imp.id(336869593983596567)
,p_prompt=>'Codigo Referencia'
,p_source=>'CODIGO_REFERENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(275259685729823435)
,p_name=>'P725_USUARIO_ALTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(336869593983596567)
,p_item_source_plug_id=>wwv_flow_imp.id(336869593983596567)
,p_source=>'USUARIO_ALTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(275259892002823437)
,p_name=>'P725_INMUTABLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(336869593983596567)
,p_item_source_plug_id=>wwv_flow_imp.id(336869593983596567)
,p_source=>'INMUTABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(277086857379056577)
,p_name=>'P725_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(336869593983596567)
,p_item_source_plug_id=>wwv_flow_imp.id(336869593983596567)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(277094816917056582)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(277092891423056581)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(277095374464056582)
,p_event_id=>wwv_flow_imp.id(277094816917056582)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(277092118461056580)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(336869593983596567)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Referencias'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_process_error_message=>'Fallo'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Exito'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(275258343705823422)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Actualizar campos'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN	',
'UPDATE',
'	cx_referencias',
'SET',
'    valor_decimal = :P725_VALOR_DECIMAL,',
'	usuario_mod = :P_COD_USUARIO,',
'	fecha_mod = sysdate',
'WHERE',
'	cod_referencia = :P725_COD_REFERENCIA;',
'	--apex_application.g_print_success_message := ''<span style="color:white"> Registro actualizado exitosamente! </span>'';',
'	exception when others then',
'	raise_application_error(-20000, sqlerrm );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Ocurrio un error'
,p_process_when_button_id=>wwv_flow_imp.id(275258683007823425)
,p_process_success_message=>'Exito'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(277094402937056581)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_process_error_message=>'Fallo'
,p_process_when=>'SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Exito'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(277091780350056579)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(336869593983596567)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Referencias'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(275259441517823433)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Init'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P725_USUARIO_ALTA := :P_COD_USUARIO;',
'',
'IF :P725_COD_REFERENCIA IS NULL AND :P725_INMUTABLE IS NULL THEN',
'	:P725_INMUTABLE := ''N'';',
'ELSE',
'	null;',
'END IF;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
