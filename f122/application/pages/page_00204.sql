prompt --application/pages/page_00204
begin
--   Manifest
--     PAGE: 00204
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
 p_id=>204
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('CCCLIENT Editar Direcci\00F3n')
,p_alias=>unistr('CCCLIENT-EDITAR-DIRECCI\00D3N')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('CCCLIENT Editar Direcci\00F3n')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_attributes=>'close: function(event, ui) {apex.navigation.dialog.close(true,{dialogPageId:118});}'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20221213150411'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69884995221043220)
,p_plug_name=>'EDICION'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID DIR_SEQ_ID,',
'               C001 DIR_COD_PERSONA,',
'               C002 DIR_COD_DIRECCION,',
'               C003 DIR_TIP_DIRECCION,',
'               C005 DIR_CODIGO_POSTAL,',
'               C006 DIR_DETALLE,',
'               C007 DIR_COD_PAIS,',
'               C009 DIR_COD_PROVINCIA,',
'               C011 DIR_COD_CIUDAD,',
'               C013 DIR_COD_BARRIO,',
'               C015 DIR_POR_DEFECTO,',
'               C016 DIR_CASILLA_CORREO,',
'               C017 DIR_CONTROL,',
'               C018 DIR_ROW_ID',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COLEC_DATOS_CLIENTE_DIRECCIONES'''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43894600813167794)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_button_name=>'BT_ACEPTAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44043773976366330)
,p_name=>'P204_DIR_SEQ_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_item_source_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_source=>'DIR_SEQ_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44043894061366331)
,p_name=>'P204_DIR_COD_DIRECCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_item_source_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_source=>'DIR_COD_DIRECCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44043957947366332)
,p_name=>'P204_DIR_TIP_DIRECCION'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_item_source_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_prompt=>'Tipo'
,p_source=>'DIR_TIP_DIRECCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Casa;C,Trabajo;T,Otro;O'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44044028118366333)
,p_name=>'P204_DIR_CODIGO_POSTAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_item_source_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_prompt=>unistr('C\00F3digo Postal')
,p_source=>'DIR_CODIGO_POSTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44044189039366334)
,p_name=>'P204_DIR_DETALLE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_item_source_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_prompt=>'Detalle'
,p_source=>'DIR_DETALLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>10
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44044273543366335)
,p_name=>'P204_DIR_COD_PAIS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_item_source_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_prompt=>unistr('Pa\00EDs')
,p_source=>'DIR_COD_PAIS'
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
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(44044302996366336)
,p_name=>'P204_DIR_COD_PROVINCIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_item_source_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_prompt=>'Provincia'
,p_source=>'DIR_COD_PROVINCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select descripcion, cod_provincia from provincias where cod_pais = :P204_DIR_COD_PAIS;'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P204_DIR_COD_PAIS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(44044492849366337)
,p_name=>'P204_DIR_COD_CIUDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_item_source_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_prompt=>'Ciudad'
,p_source=>'DIR_COD_CIUDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select descripcion, cod_ciudad from ciudades where cod_pais = :P204_DIR_COD_PAIS and cod_provincia = :P204_DIR_COD_PROVINCIA;'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P204_DIR_COD_PAIS,P204_DIR_COD_PROVINCIA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(44044575512366338)
,p_name=>'P204_DIR_COD_BARRIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_item_source_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_prompt=>'Barrio'
,p_source=>'DIR_COD_BARRIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_barrio from barrios where cod_pais = :P204_DIR_COD_PAIS and cod_provincia = :P204_DIR_COD_PROVINCIA',
'    and cod_ciudad = :P204_DIR_COD_CIUDAD;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P204_DIR_COD_PAIS,P204_DIR_COD_PROVINCIA,P204_DIR_COD_CIUDAD'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(44044600965366339)
,p_name=>'P204_DIR_POR_DEFECTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_item_source_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_prompt=>'Por Defecto'
,p_source=>'DIR_POR_DEFECTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-top-md'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44044732241366340)
,p_name=>'P204_DIR_CASILLA_CORREO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_item_source_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_prompt=>'Casilla Correo'
,p_source=>'DIR_CASILLA_CORREO'
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
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44044899214366341)
,p_name=>'P204_DIR_CONTROL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_item_source_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_source=>'DIR_CONTROL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44044919433366342)
,p_name=>'P204_DIR_ROW_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_item_source_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_source=>'DIR_ROW_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44045042378366343)
,p_name=>'P204_DIR_COD_PERSONA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_item_source_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_source=>'DIR_COD_PERSONA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44045605818366349)
,p_name=>'P204_AUX'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(69884995221043220)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(58322104936298823)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_ACTUALIZA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''COLEC_DATOS_CLIENTE_DIRECCIONES'',',
'                                            P_SEQ   =>  TO_NUMBER(:P204_DIR_SEQ_ID),',
'    										P_C001  =>  :P204_DIR_COD_PERSONA,',
'                                            P_C002  =>  :P204_DIR_COD_DIRECCION,',
'                                            P_C003  =>  :P204_DIR_TIP_DIRECCION,',
'                                            P_C005  =>  :P204_DIR_CODIGO_POSTAL,',
'                                            P_C006 	=>  :P204_DIR_DETALLE,',
'    									    P_C007  =>  :P204_DIR_COD_PAIS,',
'    									    P_C009  =>  :P204_DIR_COD_PROVINCIA,',
'    									    P_C011  =>  :P204_DIR_COD_CIUDAD,',
'    									    P_C013  =>  :P204_DIR_COD_BARRIO,',
'    									    P_C015  =>  :P204_DIR_POR_DEFECTO,',
'    									    P_C016  =>  :P204_DIR_CASILLA_CORREO,',
'                                            P_C017  => ''U'',',
'                                            P_C018  =>  :P204_DIR_ROW_ID);',
'',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000,''P\00E1g. 204 - ACTUALIZAR_COLECCION_DIRECCION - Problemas en actualizaci\00F3n de la direcci\00F3n. ''|| SQLERRM);'),
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(43894600813167794)
,p_process_when=>'P204_DIR_SEQ_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(58322215641298824)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_AGREGA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P102_DIR_TIP_DIRECCION IS NOT NULL AND :P102_DIR_DETALLE IS NULL THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000,''Debe cargar la direcci\00F3n del cliente.'');'),
'    END IF;',
'    select NVL(max(to_number(c002)),0)+1 INTO :P204_DIR_COD_DIRECCION ',
'        from APEX_COLLECTIONS WHERE COLLECTION_NAME = ''COLEC_DATOS_CLIENTE_DIRECCIONES'';',
'        ',
'    APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''COLEC_DATOS_CLIENTE_DIRECCIONES'',',
'    										P_C001  =>  :P204_DIR_COD_PERSONA,',
'                                            P_C002  =>  :P204_DIR_COD_DIRECCION,',
'                                            P_C003  =>  :P204_DIR_TIP_DIRECCION,',
'                                            P_C005  =>  :P204_DIR_CODIGO_POSTAL,',
'                                            P_C006 	=>  :P204_DIR_DETALLE,',
'    									    P_C007  =>  :P204_DIR_COD_PAIS,',
'    									    P_C009  =>  :P204_DIR_COD_PROVINCIA,',
'    									    P_C011  =>  :P204_DIR_COD_CIUDAD,',
'    									    P_C013  =>  :P204_DIR_COD_BARRIO,',
'    									    P_C015  =>  :P204_DIR_POR_DEFECTO,',
'    									    P_C016  =>  :P204_DIR_CASILLA_CORREO,',
'                                            P_C017  =>  ''I'',',
'                                            P_C018  =>  :P204_DIR_ROW_ID);',
'                                            ',
'  if :P204_DIR_SEQ_ID IS NULL then',
'        select NVL(max(seq_id),0) INTO :P204_AUX from APEX_COLLECTIONS WHERE COLLECTION_NAME = ''COLEC_DATOS_CLIENTE_DIRECCIONES''; ',
'    end if; ',
'    ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(43894600813167794)
,p_process_when=>'P204_DIR_SEQ_ID'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(58322364900298825)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_POR_DEFECTO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P204_DIR_POR_DEFECTO = ''S'' then',
'    if :P204_DIR_SEQ_ID is null then',
'        CCCLIENT.sp_coleccion_dir_por_defecto(pi_dir_seq_id => TO_NUMBER(:P204_AUX));',
'    else',
'        CCCLIENT.sp_coleccion_dir_por_defecto(pi_dir_seq_id => TO_NUMBER(:P204_DIR_SEQ_ID));',
'    end if;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(43901878450167800)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'PR_CLOSE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(43894600813167794)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44043605465366329)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(69884995221043220)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form CCCLIENT Editar Direcci\00F3n')
);
wwv_flow_imp.component_end;
end;
/
