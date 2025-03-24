prompt --application/pages/page_00118
begin
--   Manifest
--     PAGE: 00118
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
 p_id=>118
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Editar Direcci\00F3n')
,p_alias=>unistr('EDITAR-DIRECCI\00D3N')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Editar Direcci\00F3n')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_attributes=>'close: function(event, ui) {apex.navigation.dialog.close(true,{dialogPageId:118});}'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20221116163152'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25990948214875427)
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
 p_id=>wwv_flow_imp.id(25992036427875438)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(25990948214875427)
,p_button_name=>'BT_ACEPTAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991020354875428)
,p_name=>'P118_DIR_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25990948214875427)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991110788875429)
,p_name=>'P118_DIR_COD_DIRECCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(25990948214875427)
,p_prompt=>unistr('C\00F3digo')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991274809875430)
,p_name=>'P118_DIR_COD_PROVINCIA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(25990948214875427)
,p_prompt=>'Provincia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_PROVINCIA||'' - ''||DESCRIPCION D,',
'	   COD_PROVINCIA R',
'  FROM PROVINCIAS ',
' WHERE COD_PAIS = :P118_DIR_COD_PAIS ',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P118_DIR_COD_PAIS'
,p_ajax_items_to_submit=>'P118_DIR_COD_PAIS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991388043875431)
,p_name=>'P118_DIR_DETALLE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(25990948214875427)
,p_prompt=>'Detalle'
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
 p_id=>wwv_flow_imp.id(25991415934875432)
,p_name=>'P118_DIR_COD_BARRIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(25990948214875427)
,p_prompt=>'Barrio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_BARRIO||'' - ''||DESCRIPCION D, ',
'       COD_BARRIO R',
'  FROM BARRIOS ',
' WHERE COD_PAIS = :P118_DIR_COD_PAIS ',
'   AND COD_PROVINCIA = :P118_DIR_COD_PROVINCIA ',
'   AND COD_CIUDAD = :P118_DIR_COD_CIUDAD ',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P118_DIR_COD_PAIS,P118_DIR_COD_PROVINCIA,P118_DIR_COD_CIUDAD'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991529292875433)
,p_name=>'P118_DIR_TIP_DIRECCION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(25990948214875427)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Casa;C,Trabajo;T,Otro;O'
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
 p_id=>wwv_flow_imp.id(25991639601875434)
,p_name=>'P118_DIR_COD_PAIS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(25990948214875427)
,p_prompt=>unistr('Pa\00EDs')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PAISES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select descripcion',
'			, cod_pais',
'			    from paises'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991791160875435)
,p_name=>'P118_DIR_COD_CIUDAD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(25990948214875427)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_CIUDAD||'' - ''||DESCRIPCION D, ',
'		COD_CIUDAD R',
'   FROM CIUDADES ',
'  WHERE COD_PAIS = :P118_DIR_COD_PAIS ',
'    AND COD_PROVINCIA = :P118_DIR_COD_PROVINCIA ',
'  ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P118_DIR_COD_PAIS,P118_DIR_COD_PROVINCIA'
,p_ajax_items_to_submit=>'P118_DIR_COD_PAIS,P118_DIR_COD_PROVINCIA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25991883638875436)
,p_name=>'P118_DIR_CASILLA_CORREO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(25990948214875427)
,p_prompt=>'Casilla Correo'
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
 p_id=>wwv_flow_imp.id(25991935688875437)
,p_name=>'P118_DIR_CODIGO_POSTAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(25990948214875427)
,p_prompt=>unistr('C\00F3digo Postal')
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
 p_id=>wwv_flow_imp.id(25992152593875439)
,p_name=>'P118_DIR_AUX_SEQ_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(25990948214875427)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25992331680875441)
,p_name=>'P118_DIR_POR_DEFECTO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(25990948214875427)
,p_prompt=>'Por Defecto'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27349196030508029)
,p_name=>'P118_DESC_TIP_DIRECCION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(25990948214875427)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27349208964508030)
,p_name=>'P118_CONTROL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(25990948214875427)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27349327914508031)
,p_name=>'P118_ROW_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(25990948214875427)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25992560988875443)
,p_name=>'DA_ACTUALIZA_DIRECCION'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25992036427875438)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25992680706875444)
,p_event_id=>wwv_flow_imp.id(25992560988875443)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.ACTUALIZAR_COLECCION_DIRECCION(PI_DIR_AUX_SEQ_ID     =>  TO_NUMBER(:P118_DIR_AUX_SEQ_ID),',
'    										PI_DIR_COD_PERSONA    =>  :P118_DIR_COD_PERSONA,',
'    									    PI_DIR_COD_PAIS       =>  :P118_DIR_COD_PAIS,',
'    									    PI_DIR_COD_PROVINCIA  =>  :P118_DIR_COD_PROVINCIA,',
'    									    PI_DIR_COD_CIUDAD     =>  :P118_DIR_COD_CIUDAD,',
'    									    PI_DIR_COD_BARRIO     =>  :P118_DIR_COD_BARRIO,',
'    									    PI_DIR_COD_DIRECCION  =>  :P118_DIR_COD_DIRECCION,',
'    									    PI_DIR_TIP_DIRECCION  =>  :P118_DIR_TIP_DIRECCION,',
'    									    PI_DIR_CODIGO_POSTAL  =>  :P118_DIR_CODIGO_POSTAL,',
'    									    PI_DIR_DETALLE 	      =>  :P118_DIR_DETALLE,',
'    									    PI_DIR_POR_DEFECTO    =>  :P118_DIR_POR_DEFECTO,',
'    									    PI_DIR_CASILLA_CORREO =>  :P118_DIR_CASILLA_CORREO,',
'                                            PI_DIR_ROW_ID         =>  :P118_ROW_ID);',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000,''P\00E1g. 118 - ACTUALIZAR_COLECCION_DIRECCION - Problemas en actualizaci\00F3n de la direcci\00F3n. ''|| SQLERRM);'),
'END;'))
,p_attribute_02=>'P118_DIR_AUX_SEQ_ID,P118_DIR_COD_PERSONA,P118_DIR_COD_PAIS,P118_DIR_COD_PROVINCIA,P118_DIR_COD_CIUDAD,P118_DIR_COD_BARRIO,P118_DIR_COD_DIRECCION,P118_DIR_TIP_DIRECCION,P118_DIR_CODIGO_POSTAL,P118_DIR_DETALLE,P118_DIR_POR_DEFECTO,P118_DIR_CASILLA_CORR'
||'EO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25992798993875445)
,p_event_id=>wwv_flow_imp.id(25992560988875443)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27349561672508033)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_ACTUALIZAR_COLECCION_DIRECCION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.ACTUALIZAR_COLECCION_DIRECCION(PI_DIR_AUX_SEQ_ID     =>  TO_NUMBER(:P118_DIR_AUX_SEQ_ID),',
'    										PI_DIR_COD_PERSONA    =>  :P118_DIR_COD_PERSONA,',
'    									    PI_DIR_COD_PAIS       =>  :P118_DIR_COD_PAIS,',
'    									    PI_DIR_COD_PROVINCIA  =>  :P118_DIR_COD_PROVINCIA,',
'    									    PI_DIR_COD_CIUDAD     =>  :P118_DIR_COD_CIUDAD,',
'    									    PI_DIR_COD_BARRIO     =>  :P118_DIR_COD_BARRIO,',
'    									    PI_DIR_COD_DIRECCION  =>  :P118_DIR_COD_DIRECCION,',
'    									    PI_DIR_TIP_DIRECCION  =>  :P118_DIR_TIP_DIRECCION,',
'    									    PI_DIR_CODIGO_POSTAL  =>  :P118_DIR_CODIGO_POSTAL,',
'    									    PI_DIR_DETALLE 	      =>  :P118_DIR_DETALLE,',
'    									    PI_DIR_POR_DEFECTO    =>  :P118_DIR_POR_DEFECTO,',
'    									    PI_DIR_CASILLA_CORREO =>  :P118_DIR_CASILLA_CORREO,',
'                                            PI_DIR_ROW_ID         =>  :P118_ROW_ID);',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        APEX_DEBUG.ERROR(''P\00E1g. 118 - ACTUALIZAR_COLECCION_DIRECCION -''|| SQLERRM);'),
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(25992036427875438)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27349727955508035)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'PR_CLOSE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(25992036427875438)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25992215636875440)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P118_DIR_AUX_SEQ_ID IS NOT NULL THEN',
'        SELECT C002 COD_DIRECCION,',
'               C003 TIP_DIRECCION,',
'               C004 DESC_TIP_DIRECCION,',
'               C005 CODIGO_POSTAL,',
'               C006 DETALLE,',
'               C007 COD_PAIS,',
'               C009 COD_PROVINCIA,',
'               C011 COD_CIUDAD,',
'               C013 COD_BARRIO,',
'               C015 POR_DEFECTO,',
'               C016 CASILLA_CORREO,',
'               C017 CONTROL,',
'               C018 ROW_ID',
'          INTO :P118_DIR_COD_DIRECCION,',
'               :P118_DIR_TIP_DIRECCION,',
'               :P118_DESC_TIP_DIRECCION,',
'               :P118_DIR_CODIGO_POSTAL,',
'               :P118_DIR_DETALLE,',
'               :P118_DIR_COD_PAIS,',
'               :P118_DIR_COD_PROVINCIA,',
'               :P118_DIR_COD_CIUDAD,',
'               :P118_DIR_COD_BARRIO,',
'               :P118_DIR_POR_DEFECTO,',
'               :P118_DIR_CASILLA_CORREO,',
'               :P118_CONTROL,',
'               :P118_ROW_ID',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COL_DIRECCION''',
'           AND SEQ_ID = :P118_DIR_AUX_SEQ_ID;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000,SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
