prompt --application/pages/page_00119
begin
--   Manifest
--     PAGE: 00119
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
 p_id=>119
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Edici\00F3n de documentos')
,p_alias=>unistr('EDICI\00D3N-DE-DOCUMENTOS')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Edici\00F3n de documentos')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'JOSEFINAGU'
,p_last_upd_yyyymmddhh24miss=>'20221030201851'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28308042777408646)
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
 p_id=>wwv_flow_imp.id(28599853017538707)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(28308042777408646)
,p_button_name=>'BT_ACEPTAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28308245714408648)
,p_name=>'P119_DOC_AUX_SEQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(28308042777408646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28308420159408650)
,p_name=>'P119_ROW_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(28308042777408646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28599235784538701)
,p_name=>'P119_DOC_NUMERO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(28308042777408646)
,p_prompt=>unistr('N\00FAmero')
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
 p_id=>wwv_flow_imp.id(28599336042538702)
,p_name=>'P119_DOC_COD_IDENT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(28308042777408646)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_IDENTIFICACIONES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION, ',
'	   COD_IDENT ',
'  FROM IDENTIFICACIONES '))
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
 p_id=>wwv_flow_imp.id(28599426969538703)
,p_name=>'P119_DOC_DV_AGENTE_INF'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(28308042777408646)
,p_prompt=>'DV agente inf.'
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
 p_id=>wwv_flow_imp.id(28599551246538704)
,p_name=>'P119_DOC_NUMERO_AGENTE_INF'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(28308042777408646)
,p_prompt=>unistr('N\00FAmero agente inf.')
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
 p_id=>wwv_flow_imp.id(28599649458538705)
,p_name=>'P119_DOC_FEC_VENCIMIENTO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(28308042777408646)
,p_prompt=>'Vencimiento'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28599965562538708)
,p_name=>'P119_DOC_COD_PERSONA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(28308042777408646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28600116962538710)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.ACTUALIZAR_COLECCION_DOCUMENTO (PI_DOC_AUX_SEQ_ID 	   => :P119_DOC_AUX_SEQ_ID,',
'                                             PI_DOC_COD_PERSONA    => :P119_DOC_COD_PERSONA,',
'										     PI_DOC_COD_IDENT 	   => :P119_DOC_COD_IDENT,',
'										     PI_DOC_NUMERO		   => :P119_DOC_NUMERO,',
'										     PI_DOC_NRO_AGENTE_INF => :P119_DOC_NUMERO_AGENTE_INF,',
'										     PI_DOC_DV_AGENTE_INF  => :P119_DOC_DV_AGENTE_INF,',
'										     PI_DOC_FEC_VENC	   => :P119_DOC_FEC_VENCIMIENTO,',
'										     PI_DOC_ROW_ID		   => :P119_ROW_ID);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''PR_GUARDAR - BSPERSON.ACTUALIZAR_COLECCION_DOCUMENTO - ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28600278658538711)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'PR_CLOSE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28600036916538709)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT C001 COD_PERSONA,',
'           C002 COD_IDENT,',
'           C004 NUMERO,',
'           C005 NUMERO_AGENTE_INF,',
'           C006 DV_AGENTE_INF,',
'           D001 FEC_VENCIMIENTO,',
'           C008 ROW_ID',
'      INTO :P119_DOC_COD_PERSONA,',
'           :P119_DOC_COD_IDENT,',
'           :P119_DOC_NUMERO,',
'           :P119_DOC_NUMERO_AGENTE_INF,',
'           :P119_DOC_DV_AGENTE_INF,',
'           :P119_DOC_FEC_VENCIMIENTO,',
'           :P119_ROW_ID',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''COL_DOCUMENTO''',
'       AND SEQ_ID = :P119_DOC_AUX_SEQ_ID;',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        APEX_DEBUG.ERROR(''P\00E1g. 119 - PR_INIT - ''||SQLERRM);'),
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
