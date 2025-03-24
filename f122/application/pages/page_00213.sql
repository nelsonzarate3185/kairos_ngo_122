prompt --application/pages/page_00213
begin
--   Manifest
--     PAGE: 00213
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
 p_id=>213
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('CCCLIENT Editar Tel\00E9fono')
,p_alias=>unistr('CCCLIENT-EDITAR-TEL\00C9FONO')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Edici\00F3n de datos del tel\00E9fono')
,p_error_handling_function=>'APEX_ERROR_HANDLING'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20221123080344'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47089987891156912)
,p_plug_name=>unistr('Formulario de Edici\00F3n')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select seq_id TEL_SEQ_ID,',
'      c001 TEL_COD_PERSONA,',
'      c002 TEL_CODIGO_AREA,',
'      c003 TEL_NUM_TELEFONO,',
'      c004 TEL_TIP_TELEFONO,',
'      c005 TEL_UBICACION,',
'      c006 TEL_INTERNO,',
'      c007 TEL_NOTA,',
'      c008 TEL_POR_DEFECTO,',
'      c009 TEL_PARA_INFORME,',
'      c010 TEL_ID_REGISTRO',
'      from APEX_COLLECTIONS where COLLECTION_NAME = ''COLEC_DATOS_CLIENTE_TELEFONOS'';'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(47091204850156925)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(47089987891156912)
,p_button_name=>'BTL_ACEPTAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_confirm_message=>unistr('\00BFSeguro que quieres actualizar los datos?')
,p_confirm_style=>'information'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47090135116156914)
,p_name=>'P213_TEL_SEQ_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(47089987891156912)
,p_item_source_plug_id=>wwv_flow_imp.id(47089987891156912)
,p_source=>'TEL_SEQ_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47090274971156915)
,p_name=>'P213_TEL_COD_PERSONA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(47089987891156912)
,p_item_source_plug_id=>wwv_flow_imp.id(47089987891156912)
,p_source=>'TEL_COD_PERSONA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47090345634156916)
,p_name=>'P213_TEL_CODIGO_AREA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(47089987891156912)
,p_item_source_plug_id=>wwv_flow_imp.id(47089987891156912)
,p_prompt=>unistr('\00C1rea')
,p_source=>'TEL_CODIGO_AREA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47090468184156917)
,p_name=>'P213_TEL_NUM_TELEFONO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(47089987891156912)
,p_item_source_plug_id=>wwv_flow_imp.id(47089987891156912)
,p_prompt=>unistr('N\00FAmero Tel\00E9fono')
,p_source=>'TEL_NUM_TELEFONO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEL'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47090551427156918)
,p_name=>'P213_TEL_TIP_TELEFONO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(47089987891156912)
,p_item_source_plug_id=>wwv_flow_imp.id(47089987891156912)
,p_prompt=>'Tipo'
,p_source=>'TEL_TIP_TELEFONO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:L\00EDnea Directa;D,Celular;C,Fax;F')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47090652795156919)
,p_name=>'P213_TEL_UBICACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(47089987891156912)
,p_item_source_plug_id=>wwv_flow_imp.id(47089987891156912)
,p_prompt=>unistr('Ubicaci\00F3n')
,p_source=>'TEL_UBICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Casa;C,Trabajo;T,Otro;O'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47090792082156920)
,p_name=>'P213_TEL_INTERNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(47089987891156912)
,p_item_source_plug_id=>wwv_flow_imp.id(47089987891156912)
,p_prompt=>'Interno'
,p_source=>'TEL_INTERNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47090813461156921)
,p_name=>'P213_TEL_NOTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(47089987891156912)
,p_item_source_plug_id=>wwv_flow_imp.id(47089987891156912)
,p_prompt=>unistr('Observaci\00F3n')
,p_source=>'TEL_NOTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>7
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47090905100156922)
,p_name=>'P213_TEL_POR_DEFECTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(47089987891156912)
,p_item_source_plug_id=>wwv_flow_imp.id(47089987891156912)
,p_prompt=>'Por Defecto'
,p_source=>'TEL_POR_DEFECTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47091194118156924)
,p_name=>'P213_TEL_ID_REGISTRO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(47089987891156912)
,p_item_source_plug_id=>wwv_flow_imp.id(47089987891156912)
,p_source=>'TEL_ID_REGISTRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47093469415156947)
,p_name=>'P213_AUX'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(47089987891156912)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(46942801094805334)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_ACTUALIZA_TELEF'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    if :P213_TEL_COD_PERSONA IS NOT NULL AND :P213_TEL_CODIGO_AREA IS NOT NULL AND :P213_TEL_NUM_TELEFONO IS NOT NULL',
'        AND :P213_TEL_TIP_TELEFONO IS NOT NULL then',
'            APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''COLEC_DATOS_CLIENTE_TELEFONOS'',',
'                P_SEQ   =>  TO_NUMBER(:P213_TEL_SEQ_ID),',
'    			P_C001  =>  :P213_TEL_COD_PERSONA,',
'                P_C002  =>  :P213_TEL_CODIGO_AREA,',
'                P_C003  =>  :P213_TEL_NUM_TELEFONO,',
'                P_C004  =>  :P213_TEL_TIP_TELEFONO,',
'                P_C005  =>  :P213_TEL_UBICACION,',
'                P_C006 	=>  :P213_TEL_INTERNO,',
'    		    P_C007  =>  :P213_TEL_NOTA,',
'    		    P_C008  =>  :P213_TEL_POR_DEFECTO,',
'    		    P_C010  =>  :P213_TEL_ID_REGISTRO,',
'                P_C050  => ''U'');',
'    else ',
unistr('        RAISE_APPLICATION_ERROR(-20001,''P\00E1g. 213 - Debes completar los campos obligatorios '');'),
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        RAISE_APPLICATION_ERROR(-20001,''P\00E1g. 213 - ACTUALIZAR_COLECCION_TELEFONOS - Problemas en actualizaci\00F3n del tel\00E9fono ''|| SQLERRM);'),
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P213_TEL_SEQ_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(46942902862805335)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_AGREGA_TELEF'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    if :P213_TEL_COD_PERSONA IS NOT NULL AND :P213_TEL_CODIGO_AREA IS NOT NULL AND :P213_TEL_NUM_TELEFONO IS NOT NULL',
'        AND :P213_TEL_TIP_TELEFONO IS NOT NULL then',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''COLEC_DATOS_CLIENTE_TELEFONOS'',',
'    			P_C001  =>  :P213_TEL_COD_PERSONA,',
'                P_C002  =>  :P213_TEL_CODIGO_AREA,',
'                P_C003  =>  :P213_TEL_NUM_TELEFONO,',
'                P_C004  =>  :P213_TEL_TIP_TELEFONO,',
'                P_C005  =>  :P213_TEL_UBICACION,',
'                P_C006 	=>  :P213_TEL_INTERNO,',
'    		    P_C007  =>  :P213_TEL_NOTA,',
'    		    P_C008  =>  :P213_TEL_POR_DEFECTO,',
'                P_C050  => ''I'');',
'            if :P213_TEL_SEQ_ID IS NULL then',
'                select NVL(max(seq_id),0) INTO :P213_AUX from APEX_COLLECTIONS WHERE COLLECTION_NAME = ''COLEC_DATOS_CLIENTE_TELEFONOS''; ',
'            end if;',
'    else ',
unistr('        RAISE_APPLICATION_ERROR(-20000,''P\00E1g. 213 - Debes completar los campos obligatorios '');'),
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000,''P\00E1g. 213 - ACTUALIZAR_COLECCION_TELEFONOS - Problemas al agregar el tel\00E9fono ''|| SQLERRM);'),
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P213_TEL_SEQ_ID'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(47093334006156946)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_ACTUALIZA_POR_DEFECTO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P213_TEL_POR_DEFECTO = ''S'' then',
'    if :P213_TEL_SEQ_ID is null then',
'        CCCLIENT.sp_coleccion_telef_por_defecto(pi_telef_seq_id => TO_NUMBER(:P213_AUX));',
'    else',
'        CCCLIENT.sp_coleccion_telef_por_defecto(pi_telef_seq_id => TO_NUMBER(:P213_TEL_SEQ_ID));',
'    end if;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(47092628528156939)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'PR_CLOSE_DIALOG'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(47090096962156913)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(47089987891156912)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form Editar Tel\00E9fono')
);
wwv_flow_imp.component_end;
end;
/
