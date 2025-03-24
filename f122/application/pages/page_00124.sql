prompt --application/pages/page_00124
begin
--   Manifest
--     PAGE: 00124
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
 p_id=>124
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Edici\00F3n de Garante')
,p_alias=>unistr('EDICI\00D3N-DE-GARANTE')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Edici\00F3n de Garante')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'JOSEFINAGU'
,p_last_upd_yyyymmddhh24miss=>'20221102152337'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(57391703443846478)
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
 p_id=>wwv_flow_imp.id(28789948622307747)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(57391703443846478)
,p_button_name=>'BT_ACEPTAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28790329530307748)
,p_name=>'P124_GAR_AUX_SEQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(57391703443846478)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28790758238307749)
,p_name=>'P124_GAR_ROW_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(57391703443846478)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28791124714307749)
,p_name=>'P124_GAR_COD_PERSONA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(57391703443846478)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28791513156307749)
,p_name=>'P124_GAR_COD_PERSONA_REF'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(57391703443846478)
,p_prompt=>unistr('C\00F3digo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_GARANTES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_PERSONA||'' - ''||LTRIM( RTRIM( NVL( NOMBRE, NOMB_FANTASIA ) ) ) NOMBRE,',
'	   COD_PERSONA ',
'  FROM PERSONAS ',
' WHERE ES_FISICA = ''S'' ',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28820653580754619)
,p_name=>'P124_GAR_NOMBRE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(57391703443846478)
,p_prompt=>'Nombre'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28820739859754620)
,p_name=>'P124_GAR_NACIONALIDAD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(57391703443846478)
,p_prompt=>'Nacionalidad'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28820856159754621)
,p_name=>'P124_GAR_FEC_NACIMIENTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(57391703443846478)
,p_prompt=>'Fec. Nacimiento'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28820954208754622)
,p_name=>'P124_GAR_CEDULA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(57391703443846478)
,p_prompt=>unistr('C\00E9dula')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28821056901754623)
,p_name=>'P124_GAR_CARGO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(57391703443846478)
,p_prompt=>'Cargo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28821227784754625)
,p_name=>'DA_OBTENER_DATOS'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P124_GAR_COD_PERSONA_REF'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28821356244754626)
,p_event_id=>wwv_flow_imp.id(28821227784754625)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.OBTENER_DATOS_RESP_GARANTE (PI_COD_PERSONA_REF => :P124_GAR_COD_PERSONA_REF,',
'    								     PO_NOMBRE 	   	    => :P124_GAR_NOMBRE,',
'    								     PO_FEC_VENCIMIENTO => :P124_GAR_FEC_NACIMIENTO,',
'    								     PO_NACIONALIDAD 	=> :P124_GAR_NACIONALIDAD,',
'    								     PO_CARGO 		    => :P124_GAR_CARGO,',
'    								     PO_CEDULA 		    => :P124_GAR_CEDULA);',
'END;'))
,p_attribute_02=>'P124_GAR_COD_PERSONA_REF'
,p_attribute_03=>'P124_GAR_NOMBRE,P124_GAR_FEC_NACIMIENTO,P124_GAR_NACIONALIDAD,P124_GAR_CARGO,P124_GAR_CEDULA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28791998604307750)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.ACTUALIZAR_COLLECION_RESP (PI_NOM_COL               => ''COL_GARANTE'',',
'                                        PI_RESP_COD_PERSONA 	 => :P124_GAR_COD_PERSONA,',
'									    PI_RESP_COD_PERSONA_REF  => :P124_GAR_COD_PERSONA_REF,',
'									    PI_RESP_AUX_SEQ_ID		 => :P124_GAR_AUX_SEQ_ID,',
'									    PI_RESP_ROW_ID		     => :P124_GAR_ROW_ID);',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        APEX_DEBUG.ERROR(''P\00E1g. 124 - PR_GUARDAR - ''||SQLERRM);'),
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28792344982307750)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'PR_CLOSE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28821185547754624)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT C001 COD_PERSONA,',
'           C002 COD_PERSONA_REF,',
'           C003 NOMBRE,',
'           C004 FEC_NACIMIENTO,',
'           C005 NACIONALIDAD,',
'           C006 CEDULA,',
'           C007 CARGO,',
'           C009 ROW_ID',
'      INTO :P124_GAR_COD_PERSONA,',
'           :P124_GAR_COD_PERSONA_REF,',
'           :P124_GAR_NOMBRE,',
'           :P124_GAR_FEC_NACIMIENTO,',
'           :P124_GAR_NACIONALIDAD,',
'           :P124_GAR_CEDULA,',
'           :P124_GAR_CARGO,',
'           :P124_GAR_ROW_ID',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''COL_GARANTE''',
'       AND SEQ_ID = :P124_GAR_AUX_SEQ_ID;',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        APEX_DEBUG.ERROR(''P\00E1g. 124 - PR_INIT - ''||SQLERRM);'),
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
