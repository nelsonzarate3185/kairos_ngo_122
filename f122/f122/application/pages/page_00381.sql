prompt --application/pages/page_00381
begin
--   Manifest
--     PAGE: 00381
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
 p_id=>381
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'BSPROVIN MODAL'
,p_alias=>'BSPROVIN-MODAL'
,p_page_mode=>'MODAL'
,p_step_title=>'BSPROVIN MODAL'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20230217094021'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104702208836157923)
,p_plug_name=>'Editor de datos'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  SEQ_ID,',
'        c001 cod_pais,',
'        c002 cod_provincia,',
'        c003 descripcion,',
'        c004 abreviaturas,',
'        c005 zona,',
'        c006 departamento_set,',
'        c049 id_registro',
'from APEX_COLLECTIONS',
'where COLLECTION_NAME = ''COLEC_DATOS_PROVINCIAS'';'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104703277955157933)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(104702208836157923)
,p_button_name=>'BTN_AGREGAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Agregar'
,p_button_position=>'CREATE'
,p_button_condition=>'P381_SEQ_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104704027422157941)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(104702208836157923)
,p_button_name=>'BTN_ACTUALIZAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Actualizar'
,p_button_position=>'CREATE'
,p_button_condition=>'P381_SEQ_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104702402224157925)
,p_name=>'P381_COD_PAIS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(104702208836157923)
,p_item_source_plug_id=>wwv_flow_imp.id(104702208836157923)
,p_prompt=>unistr('Pa\00EDs')
,p_source=>'COD_PAIS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PAISES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select descripcion',
'			, cod_pais',
'			    from paises'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
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
 p_id=>wwv_flow_imp.id(104702522248157926)
,p_name=>'P381_COD_PROVINCIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(104702208836157923)
,p_item_source_plug_id=>wwv_flow_imp.id(104702208836157923)
,p_source=>'COD_PROVINCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104702615144157927)
,p_name=>'P381_DESCRIPCION'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(104702208836157923)
,p_item_source_plug_id=>wwv_flow_imp.id(104702208836157923)
,p_prompt=>'Nombre del departamento'
,p_source=>'DESCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>80
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104702776417157928)
,p_name=>'P381_ABREVIATURAS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(104702208836157923)
,p_item_source_plug_id=>wwv_flow_imp.id(104702208836157923)
,p_prompt=>'Abreviado'
,p_source=>'ABREVIATURAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104702884896157929)
,p_name=>'P381_ZONA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(104702208836157923)
,p_item_source_plug_id=>wwv_flow_imp.id(104702208836157923)
,p_prompt=>'Zona'
,p_source=>'ZONA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104702908165157930)
,p_name=>'P381_DEPARTAMENTO_SET'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(104702208836157923)
,p_item_source_plug_id=>wwv_flow_imp.id(104702208836157923)
,p_source=>'DEPARTAMENTO_SET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104703037807157931)
,p_name=>'P381_ID_REGISTRO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(104702208836157923)
,p_item_source_plug_id=>wwv_flow_imp.id(104702208836157923)
,p_source=>'ID_REGISTRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104704344603157944)
,p_name=>'P381_SEQ_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(104702208836157923)
,p_item_source_plug_id=>wwv_flow_imp.id(104702208836157923)
,p_source=>'SEQ_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(104704825123157949)
,p_validation_name=>'VALIDA_DATOS'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare v_cantidad numeric(3);',
'begin',
'    select count(1) INTO v_cantidad from APEX_COLLECTIONS where COLLECTION_NAME = ''COLEC_DATOS_PROVINCIAS''',
'        and c001 = :P381_COD_PAIS and c003 = :P381_DESCRIPCION and seq_id <> nvl(:P381_SEQ_ID,0);',
'    if v_cantidad > 0 then',
unistr('        RAISE_APPLICATION_ERROR(-20001,''Ya existe provincia con el mismo pa\00EDs'');'),
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     RAISE_APPLICATION_ERROR(-20001,SQLERRM);',
'END;'))
,p_validation_type=>'PLSQL_ERROR'
,p_error_message=>unistr('Ya existe departamento con el mismo pa\00EDs')
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(104703400012157935)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ADD_COLECCION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'APEX_COLLECTION.add_member(p_collection_name => ''COLEC_DATOS_PROVINCIAS'',',
'                                       p_c001 => :P381_COD_PAIS,',
'                                       p_c002 => :P381_COD_PROVINCIA, ',
'                                       p_c003 => :P381_DESCRIPCION, ',
'                                       p_c004 => :P381_ABREVIATURAS,',
'                                       p_c005 => :P381_ZONA,',
'                                       p_c006 => :P381_DEPARTAMENTO_SET,',
'                                       p_c050 => ''I'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    RAISE_APPLICATION_ERROR(-20001,SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error al agregar datos en las colecciones'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(104703277955157933)
,p_process_success_message=>'Nuevos datos agregados, puedes registrarlos en la base de datos.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(104704165321157942)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPD_COLECCION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'APEX_COLLECTION.UPDATE_MEMBER(p_collection_name => ''COLEC_DATOS_PROVINCIAS'',',
'                           P_SEQ   =>  TO_NUMBER(:P381_SEQ_ID),',
'                           p_c001 => :P381_COD_PAIS,',
'                           p_c002 => :P381_COD_PROVINCIA, ',
'                           p_c003 => :P381_DESCRIPCION, ',
'                           p_c004 => :P381_ABREVIATURAS,',
'                           p_c005 => :P381_ZONA,',
'                           p_c006 => :P381_DEPARTAMENTO_SET,',
'                           P_C049 => :P381_ID_REGISTRO,',
'                           p_c050 => ''U'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    RAISE_APPLICATION_ERROR(-20001,SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(104704027422157941)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(104703986382157940)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'CERRAR_FORMULARIO'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(104702342356157924)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(104702208836157923)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form BSPROVIN MODAL'
);
wwv_flow_imp.component_end;
end;
/
