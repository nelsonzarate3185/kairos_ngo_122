prompt --application/pages/page_00184
begin
--   Manifest
--     PAGE: 00184
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
 p_id=>184
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('VTMOTI - Motivos de notas de cr\00E9ditos (Modal)')
,p_alias=>unistr('VTMOTI-MOTIVOS-DE-NOTAS-DE-CR\00C9DITOS-MODAL')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Motivos de notas de cr\00E9ditos')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'EMILIANOP'
,p_last_upd_yyyymmddhh24miss=>'20221115162018'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37879100579696708)
,p_plug_name=>unistr('Formulario de edici\00F3n de datos')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SEQ_ID ,',
'        c001 cod_empresa,',
'       c002 descripcion,',
'       c003 cod_motivo',
'         from APEX_COLLECTIONS ',
'           where COLLECTION_NAME = ''COLEC_MOTIVOS_NOTA_CREDITO''',
'            order by SEQ_ID desc'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37880215115696719)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(37879100579696708)
,p_button_name=>'BTN_ACTUALIZAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Actualizar'
,p_button_position=>'CHANGE'
,p_confirm_message=>'Confirmas que quieres actualizar los datos para luego registrarlos.'
,p_button_condition=>'P184_SEQ_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-window-edit'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37880160340696718)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(37879100579696708)
,p_button_name=>'BTN_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37880340215696720)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(37879100579696708)
,p_button_name=>'BTN_AGREGAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Agregar'
,p_button_position=>'CREATE'
,p_confirm_message=>'Confirmas que quieres agregar nuevos datos para luego registrarlos'
,p_button_condition=>'P184_SEQ_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-window-new'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37879363733696710)
,p_name=>'P184_SEQ_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37879100579696708)
,p_item_source_plug_id=>wwv_flow_imp.id(37879100579696708)
,p_source=>'SEQ_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37879461403696711)
,p_name=>'P184_COD_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(37879100579696708)
,p_item_source_plug_id=>wwv_flow_imp.id(37879100579696708)
,p_source=>'COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37879592185696712)
,p_name=>'P184_DESCRIPCION'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(37879100579696708)
,p_item_source_plug_id=>wwv_flow_imp.id(37879100579696708)
,p_prompt=>'Descripcion'
,p_source=>'DESCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>65
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37879663174696713)
,p_name=>'P184_COD_MOTIVO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(37879100579696708)
,p_item_source_plug_id=>wwv_flow_imp.id(37879100579696708)
,p_source=>'COD_MOTIVO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37880451615696721)
,p_name=>'DA_ActualizarRegistro'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(37880215115696719)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37880539534696722)
,p_event_id=>wwv_flow_imp.id(37880451615696721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.update_member(p_collection_name => ''COLEC_MOTIVOS_NOTA_CREDITO'',',
'                                  p_seq  => :P184_SEQ_ID,',
'                                  p_c001 => :P184_COD_EMPRESA,',
'                                  p_c002 => :P184_DESCRIPCION,',
'                                  p_c003 => :P184_COD_MOTIVO,',
'                                  p_c050 => ''U'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P184_SEQ_ID,P184_COD_EMPRESA,P184_DESCRIPCION,P184_COD_MOTIVO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37880610980696723)
,p_name=>'DA_AgregarRegistro'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(37880340215696720)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37880734502696724)
,p_event_id=>wwv_flow_imp.id(37880610980696723)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.add_member(p_collection_name => ''COLEC_MOTIVOS_NOTA_CREDITO'',',
'                                  p_c001 => :P_COD_EMPRESA,',
'                                  p_c002 => :P184_DESCRIPCION,',
'                                  p_c050 => ''I'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P184_DESCRIPCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37880835403696725)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(37880160340696718)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37880943149696726)
,p_event_id=>wwv_flow_imp.id(37880835403696725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37881615417696733)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'PRO_CLOSE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37879284576696709)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(37879100579696708)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form VTMOTI - Motivos de notas de cr\00E9ditos (Modal)')
);
wwv_flow_imp.component_end;
end;
/
