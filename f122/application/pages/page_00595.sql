prompt --application/pages/page_00595
begin
--   Manifest
--     PAGE: 00595
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
 p_id=>595
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'MOT. DERIVACION POSTVTA'
,p_alias=>'MOT-DERIVACION-POSTVTA'
,p_page_mode=>'MODAL'
,p_step_title=>'MOT. DERIVACION POSTVTA'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20230829155938'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(190722821266790480)
,p_plug_name=>'MOT. DERIVACION POSTVTA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CRM_MOTIVO_DERIVACION_PV'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(190726896122790392)
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
 p_id=>wwv_flow_imp.id(190728621466790382)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(190726896122790392)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Eliminar'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P595_COD_MOTIVO_PRINCIPAL'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'u-color-6-text'
,p_icon_css_classes=>'fa-trash-o'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(190729094796790382)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(190726896122790392)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aplicar Cambios'
,p_button_position=>'NEXT'
,p_button_condition=>'P595_COD_MOTIVO_PRINCIPAL'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'u-color-6-text'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(190729485345790382)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(190726896122790392)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'GUARDAR'
,p_button_position=>'NEXT'
,p_button_condition=>'P595_COD_MOTIVO_PRINCIPAL'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'u-color-6-text'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190723160748790472)
,p_name=>'P595_COD_MOTIVO_PRINCIPAL'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(190722821266790480)
,p_item_source_plug_id=>wwv_flow_imp.id(190722821266790480)
,p_prompt=>'MOTIVO PRINCIPAL'
,p_source=>'COD_MOTIVO_PRINCIPAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION , COD_MOTIVO',
'FROM CRM_MOTIVO M',
'WHERE NVL(M.ACTIVO,''S'')<>''N''',
'AND NOT EXISTS ( select DISTINCT ''1'' from INV.CRM_MOTIVO_DERIVACION_PV T WHERE T.COD_MOTIVO_PRINCIPAL= COD_MOTIVO)'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190723547281790459)
,p_name=>'P595_COD_MOTIVO_DERIVA'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(190722821266790480)
,p_item_source_plug_id=>wwv_flow_imp.id(190722821266790480)
,p_prompt=>'MOTIVO DERIVACION'
,p_source=>'COD_MOTIVO_DERIVA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION , COD_MOTIVO',
'FROM crm_motivo_derivacion M',
'WHERE NVL(M.ACTIVO,''S'')<>''N''',
'AND NOT EXISTS ( select DISTINCT ''1'' from INV.CRM_MOTIVO_DERIVACION_PV T WHERE T.COD_MOTIVO_DERIVA= COD_MOTIVO)'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190723968212790457)
,p_name=>'P595_COD_AREA_RESPONSABLE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(190722821266790480)
,p_item_source_plug_id=>wwv_flow_imp.id(190722821266790480)
,p_prompt=>'Area Responsable'
,p_source=>'COD_AREA_RESPONSABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select A.DESCRIPCION as AREA ,',
'        A.COD_AREA as CODIGO',
' from   rh_areas a ',
'       ,rh_empleados e',
' where e.cod_persona = :P595_COD_PERS_RESPONSABLE',
' and   e.cod_empresa = :P_COD_EMPRESA',
' and   e.cod_area=a.cod_area',
' and   e.cod_empresa=a.cod_empresa',
' and   e.cod_sucursal = a.cod_sucursal ',
' ;'))
,p_lov_cascade_parent_items=>'P595_COD_PERS_RESPONSABLE'
,p_ajax_items_to_submit=>'P595_COD_PERS_RESPONSABLE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190724329875790455)
,p_name=>'P595_COD_PERS_RESPONSABLE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(190722821266790480)
,p_item_source_plug_id=>wwv_flow_imp.id(190722821266790480)
,p_prompt=>'Responsable'
,p_source=>'COD_PERS_RESPONSABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT p.nombre   persona,',
'       e.cod_persona cod',
'from  rh_empleados e,',
'     personas p',
'where  e.cod_empresa=:P_COD_EMPRESA',
'and   nvl(e.activo,''S'')<>''I''',
'and   e.cod_persona= p.cod_persona'))
,p_lov_display_null=>'YES'
,p_cSize=>60
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190724742337790452)
,p_name=>'P595_COD_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(190722821266790480)
,p_item_source_plug_id=>wwv_flow_imp.id(190722821266790480)
,p_item_default=>'P_COD_EMPRESA'
,p_item_default_type=>'ITEM'
,p_source=>'COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(190730208627790381)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(190722821266790480)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form MOT. DERIVACION POSTVTA'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(190730697577790380)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(190729857418790381)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(190722821266790480)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form MOT. DERIVACION POSTVTA'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
