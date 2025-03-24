prompt --application/pages/page_00154
begin
--   Manifest
--     PAGE: 00154
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
 p_id=>154
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CAMP_CAN_MOTIVOS'
,p_alias=>'CAMP-CAN-MOTIVOS'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Relaci\00F3n de Campanhas/Canales/Motivos')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#P95_COD_CAMPANIA ,  #P95_COD_CANAL, #P95_COD_MOTIVO{',
'    color:  darkblue !important;',
'    font-weight: bold !important;',
'    background: white;',
'    border-color: yellow;  ',
'    } ',
'    ',
'',
'    .t-Dialog, .t-ButtonRegion {',
'    background: #003A85;}',
' '))
,p_step_template=>wwv_flow_imp.id(40080790783263649)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20240913100924'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46567601633322277)
,p_plug_name=>'Campanha - Canal - Motivos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CRM_CAM_CAN_MOT'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46570792058322280)
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
 p_id=>wwv_flow_imp.id(24150708488067949)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(46570792058322280)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-43-text u-color-22'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24151165082067949)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(46570792058322280)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Eliminar'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P154_COD_CAMPANIA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'u-color-43-text u-color-22'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24151594942067949)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(46570792058322280)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_button_position=>'NEXT'
,p_button_condition=>'P154_COD_CAMPANIA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'u-color-43-text u-color-22'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24151938792067949)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(46570792058322280)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'NEXT'
,p_button_condition=>'P154_COD_CAMPANIA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'u-color-43-text u-color-22'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24146128356067946)
,p_name=>'P154_COD_CAMPANIA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(46567601633322277)
,p_item_source_plug_id=>wwv_flow_imp.id(46567601633322277)
,p_prompt=>'Campanha'
,p_source=>'COD_CAMPANIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CRM_CAMPANIA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION , COD_CAMPANIA',
'FROM CRM_CAMPANIA',
'WHERE ACTIVO = ''S''',
'AND COD_EMPRESA = :P_COD_EMPRESA',
'UNION ALL ',
'SELECT descripcion_referencia, to_char(cod_referencia)',
'FROM cx_referencias ',
'WHERE cod_empresa = :P_COD_EMPRESA',
'AND cod_tipo_referencia = 10',
'AND estado = ''A'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Seleccionar--'
,p_cHeight=>1
,p_grid_column_css_classes=>'u-color-36-border'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24146564228067947)
,p_name=>'P154_COD_CANAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(46567601633322277)
,p_item_source_plug_id=>wwv_flow_imp.id(46567601633322277)
,p_source=>'COD_CANAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24146937160067947)
,p_name=>'P154_COD_MOTIVO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(46567601633322277)
,p_item_source_plug_id=>wwv_flow_imp.id(46567601633322277)
,p_prompt=>'Motivo'
,p_source=>'COD_MOTIVO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CRM_MOTIVO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION , COD_MOTIVO',
'FROM CRM_MOTIVO',
'WHERE ACTIVO = ''S''',
'AND COD_EMPRESA = :P_COD_EMPRESA',
'UNION ALL ',
'SELECT descripcion_referencia, to_char(cod_referencia)',
'FROM cx_referencias ',
'WHERE cod_empresa = :P_COD_EMPRESA',
'AND cod_tipo_referencia = 11',
'AND estado = ''A'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Seleccionar--'
,p_grid_column_css_classes=>'u-color-36-border'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24147367224067947)
,p_name=>'P154_COD_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(46567601633322277)
,p_item_source_plug_id=>wwv_flow_imp.id(46567601633322277)
,p_source=>'COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24147752621067947)
,p_name=>'P154_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(46567601633322277)
,p_item_source_plug_id=>wwv_flow_imp.id(46567601633322277)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24152757668067950)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24150708488067949)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24153292710067950)
,p_event_id=>wwv_flow_imp.id(24152757668067950)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(24150053288067949)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(46567601633322277)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form CAMP_CAN_MOTIVOS'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(24152324553067950)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(377745716650198434)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>':P154_COD_EMPRESA := :P_COD_EMPRESA;'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(24149634311067948)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(46567601633322277)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form CAMP_CAN_MOTIVOS'
);
wwv_flow_imp.component_end;
end;
/
