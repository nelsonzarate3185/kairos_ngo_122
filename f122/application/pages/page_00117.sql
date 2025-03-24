prompt --application/pages/page_00117
begin
--   Manifest
--     PAGE: 00117
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
 p_id=>117
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Editar Tel\00E9fono')
,p_alias=>unistr('EDITAR-TEL\00C9FONO')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Editar Tel\00E9fono')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'JOSEFINAGU'
,p_last_upd_yyyymmddhh24miss=>'20221104162315'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27350244885508040)
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
 p_id=>wwv_flow_imp.id(28303735488408603)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(27350244885508040)
,p_button_name=>'BT_ACEPTAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27350478443508042)
,p_name=>'P117_TEL_COD_AREA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(27350244885508040)
,p_prompt=>unistr('\00C1rea')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27350552478508043)
,p_name=>'P117_TEL_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27350244885508040)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27350613014508044)
,p_name=>'P117_TEL_TEL_UBICACION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(27350244885508040)
,p_prompt=>unistr('Ubicaci\00F3n')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Casa;C,Trabajo;T,Otro;O'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27350771080508045)
,p_name=>'P117_TEL_NUM_TELEFONO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(27350244885508040)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27350811293508046)
,p_name=>'P117_TEL_NOTA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(27350244885508040)
,p_prompt=>'Nota'
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
 p_id=>wwv_flow_imp.id(27350907589508047)
,p_name=>'P117_TEL_INTERNO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(27350244885508040)
,p_prompt=>'Interno'
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
 p_id=>wwv_flow_imp.id(27351059546508048)
,p_name=>'P117_TEL_POR_DEFECTO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(27350244885508040)
,p_prompt=>'Por defecto'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27351118984508049)
,p_name=>'P117_TEL_AUX_SEQ_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27350244885508040)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27351298738508050)
,p_name=>'P117_TEL_TIP_TELEFONO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(27350244885508040)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:L\00EDnea Directa;D,Celular;C,Fax;F')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28303585570408601)
,p_name=>'P117_TEL_PARA_INFORME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(27350244885508040)
,p_prompt=>'Factura'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28303617011408602)
,p_name=>'P117_TEL_COD_DIRECCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27350244885508040)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28305020139408616)
,p_name=>'P117_ROW_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(27350244885508040)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(31073629327852844)
,p_validation_name=>'VA_AREA_NOT_NULL'
,p_validation_sequence=>10
,p_validation=>'P117_TEL_COD_AREA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Debe ingresar un c\00F3digo de \00E1rea.')
,p_associated_item=>wwv_flow_imp.id(27350478443508042)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(31073712620852845)
,p_validation_name=>'VA_TEL_NOT_NULL'
,p_validation_sequence=>20
,p_validation=>'P117_TEL_NUM_TELEFONO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Debe ingresar un n\00FAmero de tel\00E9fono.')
,p_associated_item=>wwv_flow_imp.id(27350771080508045)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28304912260408615)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.ACTUALIZAR_COLECCION_TELEFONO (PI_TEL_AUX_SEQ_ID     => :P117_TEL_AUX_SEQ_ID,',
'										    PI_TEL_COD_PERSONA    => :P117_TEL_COD_PERSONA,',
'    									    PI_TEL_COD_AREA       => :P117_TEL_COD_AREA,',
'    									    PI_TEL_NUM_TELEFONO   => :P117_TEL_NUM_TELEFONO,',
'    									    PI_TEL_TIP_TELEFONO   => :P117_TEL_TIP_TELEFONO,',
'    									    PI_TEL_TEL_UBICACION  => :P117_TEL_TEL_UBICACION,',
'    									    PI_TEL_COD_DIRECCION  => :P117_TEL_COD_DIRECCION,',
'    									    PI_TEL_INTERNO		  => :P117_TEL_INTERNO,',
'    									    PI_TEL_NOTA		      => :P117_TEL_INTERNO,',
'    									    PI_TEL_POR_DEFECTO    => :P117_TEL_POR_DEFECTO,',
'    									    PI_TEL_PARA_INFORME   => :P117_TEL_PARA_INFORME,',
'    										PI_TEL_ROW_ID		  => :P117_ROW_ID);',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        APEX_DEBUG.ERROR(''P\00E1g. 117 - BSPERSON.ACTUALIZAR_COLECCION_TELEFONO - ''||SQLERRM);'),
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28305101986408617)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'PR_CLOSE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27350305525508041)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C001 COD_PERSONA,',
'       C002 CODIGO_AREA,',
'       C003 NUM_TELEFONO,',
'       C004 TIP_TELEFONO,',
'       C006 TEL_UBICACION,',
'       C008 NOTA,',
'       C009 POR_DEFECTO,',
'       C010 COD_DIRECCION,',
'       C011 PARA_INFORME,',
'       C013 ROW_ID,',
'       N001 INTERNO',
'  INTO :P117_TEL_COD_PERSONA,',
'       :P117_TEL_COD_AREA,',
'       :P117_TEL_NUM_TELEFONO,',
'       :P117_TEL_TIP_TELEFONO,',
'       :P117_TEL_TEL_UBICACION,',
'       :P117_TEL_NOTA,',
'       :P117_TEL_POR_DEFECTO,',
'       :P117_TEL_COD_DIRECCION,',
'       :P117_TEL_PARA_INFORME,',
'       :P117_ROW_ID,',
'       :P117_TEL_INTERNO',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_TELEFONO''',
'   AND SEQ_ID = :P117_TEL_AUX_SEQ_ID;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
