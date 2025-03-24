prompt --application/pages/page_00128
begin
--   Manifest
--     PAGE: 00128
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
 p_id=>128
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Edici\00F3n de contacto')
,p_alias=>unistr('EDICI\00D3N-DE-CONTACTO')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Edici\00F3n de contacto')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'JOSEFINAGU'
,p_last_upd_yyyymmddhh24miss=>'20221031112434'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(57141494102278462)
,p_plug_name=>'EDICION'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28834024401869818)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(57141494102278462)
,p_button_name=>'BT_ACEPTAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28834428971869818)
,p_name=>'P128_CON_AUX_SEQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(57141494102278462)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28834820735869819)
,p_name=>'P128_ROW_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(57141494102278462)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28835264627869819)
,p_name=>'P128_CON_COD_PERSONA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(57141494102278462)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28835618077869819)
,p_name=>'P128_CON_NOM_CONTACTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(57141494102278462)
,p_prompt=>'Nombre'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28836030501869819)
,p_name=>'P128_CON_ASUNTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(57141494102278462)
,p_prompt=>'Asunto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28836400597869819)
,p_name=>'P128_CON_CARGO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(57141494102278462)
,p_prompt=>'Cargo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28836833675869819)
,p_name=>'P128_CON_TELEFONO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(57141494102278462)
,p_prompt=>unistr('Tel\00E9fono')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28838024680869820)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.ACTUALIZAR_COLECCION_CONTACTO (PI_CON_AUX_SEQ_ID      => :P128_CON_AUX_SEQ_ID,',
'    										PI_CON_COD_PERSONA     => :P128_CON_COD_PERSONA,',
'    									    PI_CON_NOMBRE_CONTACTO => :P128_CON_NOM_CONTACTO,',
'    									    PI_CON_ASUNTO   	   => :P128_CON_ASUNTO,',
'    									    PI_CON_CARGO  		   => :P128_CON_CARGO,',
'    									    PI_CON_TELEFONO  	   => :P128_CON_TELEFONO,',
'    										PI_ROW_ID			   => :P128_ROW_ID);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''PR_GUARDAR - BSPERSON.ACTUALIZAR_COLECCION_CONTACTO - ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28838433835869820)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'PR_CLOSE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28837608835869820)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT C001 COD_PERSONA,',
'           C002 NOM_CONTACTO,',
'           C003 ASUNTO,',
'           C004 CARGO,',
'           C005 TELEFONO,',
'           C007 ROW_ID',
'      INTO :P128_CON_COD_PERSONA,',
'           :P128_CON_NOM_CONTACTO,',
'           :P128_CON_ASUNTO,',
'           :P128_CON_CARGO,',
'           :P128_CON_TELEFONO,',
'           :P128_ROW_ID',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''COL_CONTACTO''',
'       AND SEQ_ID = :P128_CON_AUX_SEQ_ID;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        APEX_DEBUG.ERROR(''P\00E1g. 128 - PR_INIT - ''||SQLERRM);'),
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
