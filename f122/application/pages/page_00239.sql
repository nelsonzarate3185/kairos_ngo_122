prompt --application/pages/page_00239
begin
--   Manifest
--     PAGE: 00239
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
 p_id=>239
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('CONFACEL - Configuraci\00F3n Facturas Electr\00F3nicas')
,p_alias=>unistr('CONFACEL-CONFIGURACI\00D3N-FACTURAS-ELECTR\00D3NICAS')
,p_step_title=>unistr('CONFACEL - Configuraci\00F3n Facturas Electr\00F3nicas')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20221221114227'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51665185224045223)
,p_plug_name=>'Estructura JSON'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>10
,p_query_type=>'TABLE'
,p_query_table=>'DATOS_ESTRUCTURA_JSON'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51665733667045229)
,p_plug_name=>'Buscar'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>2
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54852967739884123)
,p_plug_name=>unistr('Configuraci\00F3n de facturas electr\00F3nicas')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useRegionTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51666473534045236)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(51665185224045223)
,p_button_name=>'UPDATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'ACTUALIZAR'
,p_button_position=>'CHANGE'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52977073036988113)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(51665185224045223)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'AGREGAR'
,p_button_position=>'CREATE'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59765066897338033)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(51665185224045223)
,p_button_name=>'BTN_RENDER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'RENDER JSON'
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51665312645045225)
,p_name=>'P239_TIP_COMPROBANTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(51665185224045223)
,p_item_source_plug_id=>wwv_flow_imp.id(51665185224045223)
,p_prompt=>'Tip Comprobante'
,p_source=>'TIP_COMPROBANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tip_comprobante ||'' - ''|| descripcion descripcion, tip_comprobante ',
'    from tipos_comprobantes where cod_empresa = :P_COD_EMPRESA;'))
,p_cSize=>30
,p_cMaxlength=>10
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51665428624045226)
,p_name=>'P239_CAB_TEXTOJSON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(51665185224045223)
,p_item_source_plug_id=>wwv_flow_imp.id(51665185224045223)
,p_prompt=>'Cabecera Texto JSON'
,p_source=>'CAB_TEXTOJSON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>3000
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51665517395045227)
,p_name=>'P239_DET_TEXTOJSON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(51665185224045223)
,p_item_source_plug_id=>wwv_flow_imp.id(51665185224045223)
,p_prompt=>'Detalle Texto JSON'
,p_source=>'DET_TEXTOJSON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>3000
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51665878292045230)
,p_name=>'P239_BUSCAR_COMP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(51665733667045229)
,p_prompt=>'Buscar Comp'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T.TIP_COMPROBANTE||'' - ''||T.DESCRIPCION D, ',
'       T.TIP_COMPROBANTE R',
'  FROM TIPOS_COMPROBANTES T',
'  INNER JOIN datos_estructura_json d on d.tip_comprobante = T.tip_comprobante',
' AND T.COD_EMPRESA = :P_COD_EMPRESA AND d.es_contribuyente = :P239_BUSCA_ES_CONTRIBUYENTE',
' ORDER BY DESCRIPCION'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P239_BUSCA_ES_CONTRIBUYENTE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58323933925298841)
,p_name=>'P239_BUSCA_ES_CONTRIBUYENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(51665733667045229)
,p_item_default=>'1'
,p_prompt=>'Busca Es Contribuyente'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_04=>'2'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58324431058298846)
,p_name=>'P239_ES_CONTRIBUYENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(51665185224045223)
,p_item_source_plug_id=>wwv_flow_imp.id(51665185224045223)
,p_prompt=>'Es Contribuyente'
,p_source=>'ES_CONTRIBUYENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_04=>'2'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58324586368298847)
,p_name=>'P239_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(51665185224045223)
,p_item_source_plug_id=>wwv_flow_imp.id(51665185224045223)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(52977139065988114)
,p_validation_name=>'VALIDA_DUPLICADO'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_contador number;',
'begin',
'    select count(*) into v_contador from datos_estructura_json where tip_comprobante = :P239_TIP_COMPROBANTE',
'    and es_contribuyente = :P239_ES_CONTRIBUYENTE and rowid <> :P239_ROWID;',
'    if v_contador > 0 then',
'        RETURN ''Ya existe estructura para el comprobante seleccionado'';',
'    end if;',
'',
'    :P239_CAB_TEXTOJSON := replace(:P239_CAB_TEXTOJSON,'' '','''');',
'    :P239_DET_TEXTOJSON := replace(:P239_DET_TEXTOJSON,'' '','''');',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_validation_condition=>'CREATE,UPDATE,DELETE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51666095900045232)
,p_name=>'DA_BUSQUEDA'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P239_BUSCAR_COMP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51666177916045233)
,p_event_id=>wwv_flow_imp.id(51666095900045232)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58324094013298842)
,p_name=>'DA_ES_CONTRIBUYENTE'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P239_BUSCA_ES_CONTRIBUYENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58324161434298843)
,p_event_id=>wwv_flow_imp.id(58324094013298842)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51665185224045223)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59765189510338034)
,p_name=>'DA_RENDER'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(59765066897338033)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59765211746338035)
,p_event_id=>wwv_flow_imp.id(59765189510338034)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ugly = P239_CAB_TEXTOJSON.value;',
'var obj = JSON.parse(ugly);',
'var pretty = JSON.stringify(obj, undefined, 4);',
'P239_CAB_TEXTOJSON.value = pretty;',
'',
'ugly = P239_DET_TEXTOJSON.value;',
'obj = JSON.parse(ugly);',
'pretty = JSON.stringify(obj, undefined, 4);',
'P239_DET_TEXTOJSON.value = pretty;',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(51665970461045231)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(51665185224045223)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Estructura JSON'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(51666328845045235)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P239_BUSCAR_COMP IS NOT NULL THEN ',
'select rowid into :P239_ROWID from datos_estructura_json ',
'    where tip_comprobante = :P239_BUSCAR_COMP and es_contribuyente = :P239_BUSCA_ES_CONTRIBUYENTE;',
'END IF;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(51665235229045224)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(51665185224045223)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form CONFACEL'
);
wwv_flow_imp.component_end;
end;
/
