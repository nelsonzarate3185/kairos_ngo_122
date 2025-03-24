prompt --application/pages/page_00221
begin
--   Manifest
--     PAGE: 00221
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
 p_id=>221
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CCCLIENT Editar Intereses'
,p_alias=>'CCCLIENT-EDITAR-INTERESES'
,p_page_mode=>'MODAL'
,p_step_title=>'CCCLIENT Editar Intereses'
,p_error_handling_function=>'APEX_ERROR_HANDLING'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20221130151942'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(149748163949557493)
,p_plug_name=>unistr('Formulario de Edici\00F3n')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select seq_id  interes_seq_id,',
'       c001 interes_cod_empresa,',
'       c002 interes_cod_cliente,',
'       c003 interes_cod_moneda,',
'       c004 interes_porc_interes,',
'       c049 interes_id_registro',
'    from APEX_COLLECTIONS',
'    where collection_name = ''COLEC_DATOS_INTERESES_CLIENTE'';'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51677459722120714)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(149748163949557493)
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
 p_id=>wwv_flow_imp.id(51663437271045206)
,p_name=>'P221_INTERES_SEQ_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(149748163949557493)
,p_item_source_plug_id=>wwv_flow_imp.id(149748163949557493)
,p_source=>'INTERES_SEQ_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51663542962045207)
,p_name=>'P221_INTERES_COD_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(149748163949557493)
,p_item_source_plug_id=>wwv_flow_imp.id(149748163949557493)
,p_source=>'INTERES_COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51663691657045208)
,p_name=>'P221_INTERES_COD_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(149748163949557493)
,p_item_source_plug_id=>wwv_flow_imp.id(149748163949557493)
,p_source=>'INTERES_COD_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51663793665045209)
,p_name=>'P221_INTERES_COD_MONEDA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(149748163949557493)
,p_item_source_plug_id=>wwv_flow_imp.id(149748163949557493)
,p_prompt=>'Moneda'
,p_source=>'INTERES_COD_MONEDA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MONEDAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion as d,',
'       cod_moneda r',
'  from monedas',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>6
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
 p_id=>wwv_flow_imp.id(51663887205045210)
,p_name=>'P221_INTERES_PORC_INTERES'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(149748163949557493)
,p_item_source_plug_id=>wwv_flow_imp.id(149748163949557493)
,p_prompt=>unistr('Porcentaje Inter\00E9s')
,p_source=>'INTERES_PORC_INTERES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'center'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51663904512045211)
,p_name=>'P221_INTERES_ID_REGISTRO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(149748163949557493)
,p_item_source_plug_id=>wwv_flow_imp.id(149748163949557493)
,p_source=>'INTERES_ID_REGISTRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51681477528120719)
,p_name=>'P221_AUX'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(149748163949557493)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(51684959537120726)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_ACTUALIZA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    if :P221_INTERES_COD_MONEDA IS NOT NULL AND :P221_INTERES_PORC_INTERES IS NOT NULL  then',
'            APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''COLEC_DATOS_INTERESES_CLIENTE'',',
'                P_SEQ   =>  TO_NUMBER(:P221_INTERES_SEQ_ID),',
'    			P_C001  =>  :P221_INTERES_COD_EMPRESA,',
'                P_C002  =>  :P221_INTERES_COD_CLIENTE,',
'                P_C003  =>  :P221_INTERES_COD_MONEDA,',
'                P_C004  =>  :P221_INTERES_PORC_INTERES,',
'                P_C049  =>  :P221_INTERES_ID_REGISTRO,',
'                p_c050  => ''U'');',
'    else ',
unistr('        RAISE_APPLICATION_ERROR(-20001,''P\00E1g. 220 - Debes completar los campos obligatorios '');'),
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        RAISE_APPLICATION_ERROR(-20001,''P\00E1g. 220 - ACTUALIZAR_COLECCION_INTERESES - Problemas en actualizaci\00F3n de intereses ''|| SQLERRM);'),
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P221_INTERES_SEQ_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(51685391394120726)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_AGREGA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    if :P221_INTERES_COD_MONEDA IS NOT NULL AND :P221_INTERES_PORC_INTERES IS NOT NULL  then',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''COLEC_DATOS_INTERESES_CLIENTE'',',
'    			P_C001  =>  :P_COD_EMPRESA,',
'                P_C002  =>  :P221_INTERES_COD_CLIENTE,',
'                P_C003  =>  :P221_INTERES_COD_MONEDA,',
'                P_C004  =>  :P221_INTERES_PORC_INTERES,',
'                P_C050  => ''I'');',
'            if :P221_INTERES_SEQ_ID IS NULL then',
'                select NVL(max(seq_id),0) INTO :P221_AUX from APEX_COLLECTIONS WHERE COLLECTION_NAME = ''COLEC_DATOS_INTERESES_CLIENTE''; ',
'            end if;',
'    else ',
unistr('        RAISE_APPLICATION_ERROR(-20000,''P\00E1g. 220 - Debes completar los campos obligatorios '');'),
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000,''P\00E1g. 220 - ACTUALIZAR_COLECCION_INTERESES - Problemas al agregar intereses ''|| SQLERRM);'),
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P221_INTERES_SEQ_ID'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(51685700970120727)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'PR_CLOSE_DIALOG'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(51684520194120722)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(149748163949557493)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Editar'
);
wwv_flow_imp.component_end;
end;
/
