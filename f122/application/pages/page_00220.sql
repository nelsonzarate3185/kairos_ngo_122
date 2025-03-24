prompt --application/pages/page_00220
begin
--   Manifest
--     PAGE: 00220
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
 p_id=>220
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CCCLIENT Editar Garantias'
,p_alias=>'CCCLIENT-EDITAR-GARANTIAS'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Editor de Garant\00EDas')
,p_error_handling_function=>'APEX_ERROR_HANDLING'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20221213145241'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98071282324436784)
,p_plug_name=>unistr('Formulario de Edici\00F3n')
,p_region_template_options=>'#DEFAULT#:i-h240:t-Region--removeHeader:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select seq_id  gar_seq_id,',
'       c001 gar_cod_empresa,',
'       c002 gar_cod_cliente,',
'       c003 gar_tip_garantia,',
'       c004 gar_fecha,',
'       c005 gar_cod_moneda,',
'       c006 gar_monto,',
'       c007 gar_estado,',
'       c049 gar_id_registro',
'    from APEX_COLLECTIONS where collection_name = ''COLEC_DATOS_GARANTIA_CLIENTE'';'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50981854336279879)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(98071282324436784)
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
 p_id=>wwv_flow_imp.id(48938691894377228)
,p_name=>'P220_GAR_SEQ_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(98071282324436784)
,p_item_source_plug_id=>wwv_flow_imp.id(98071282324436784)
,p_source=>'GAR_SEQ_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48938716379377229)
,p_name=>'P220_GAR_COD_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(98071282324436784)
,p_item_source_plug_id=>wwv_flow_imp.id(98071282324436784)
,p_source=>'GAR_COD_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48938807681377230)
,p_name=>'P220_GAR_TIP_GARANTIA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(98071282324436784)
,p_item_source_plug_id=>wwv_flow_imp.id(98071282324436784)
,p_prompt=>'Tipo'
,p_source=>'GAR_TIP_GARANTIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tip_garantia from cc_clientes_garantia where cod_empresa = :P_COD_EMPRESA',
'group by tip_garantia;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(48938958932377231)
,p_name=>'P220_GAR_FECHA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(98071282324436784)
,p_item_source_plug_id=>wwv_flow_imp.id(98071282324436784)
,p_prompt=>'Fecha'
,p_source=>'GAR_FECHA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48939049891377232)
,p_name=>'P220_GAR_COD_MONEDA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(98071282324436784)
,p_item_source_plug_id=>wwv_flow_imp.id(98071282324436784)
,p_prompt=>'Moneda'
,p_source=>'GAR_COD_MONEDA'
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
,p_begin_on_new_line=>'N'
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(48939119595377233)
,p_name=>'P220_GAR_MONTO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(98071282324436784)
,p_item_source_plug_id=>wwv_flow_imp.id(98071282324436784)
,p_prompt=>'Monto'
,p_source=>'GAR_MONTO'
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
 p_id=>wwv_flow_imp.id(48939246457377234)
,p_name=>'P220_GAR_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(98071282324436784)
,p_item_source_plug_id=>wwv_flow_imp.id(98071282324436784)
,p_prompt=>'Estado'
,p_source=>'GAR_ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:FIRMADA;F,PENDIENTE;P,NO REQUIERE FIRMAR;NF'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(48939336764377235)
,p_name=>'P220_GAR_COD_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(98071282324436784)
,p_item_source_plug_id=>wwv_flow_imp.id(98071282324436784)
,p_source=>'GAR_COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48940661581377248)
,p_name=>'P220_GAR_ID_REGISTRO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(98071282324436784)
,p_item_source_plug_id=>wwv_flow_imp.id(98071282324436784)
,p_source=>'GAR_ID_REGISTRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50986222991279888)
,p_name=>'P220_AUX'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(98071282324436784)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50990016695279897)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_ACTUALIZA_GAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    if :P220_GAR_TIP_GARANTIA IS NOT NULL AND :P220_GAR_FECHA IS NOT NULL AND :P220_GAR_ESTADO IS NOT NULL',
'        AND :P220_GAR_COD_MONEDA IS NOT NULL then',
'            APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''COLEC_DATOS_GARANTIA_CLIENTE'',',
'                P_SEQ   =>  TO_NUMBER(:P220_GAR_SEQ_ID),',
'    			P_C001  =>  :P220_GAR_COD_EMPRESA,',
'                P_C002  =>  :P220_GAR_COD_CLIENTE,',
'                P_C003  =>  :P220_GAR_TIP_GARANTIA,',
'                P_C004  =>  :P220_GAR_FECHA,',
'                P_C005  =>  :P220_GAR_COD_MONEDA,',
'                P_C006 	=>  :P220_GAR_MONTO,',
'    		    P_C007  =>  :P220_GAR_ESTADO,',
'                p_c049  =>  :P220_GAR_ID_REGISTRO,',
'                p_c048  =>  :P_COD_USUARIO,',
'                p_c050  => ''U'');',
'    else ',
unistr('        RAISE_APPLICATION_ERROR(-20001,''P\00E1g. 220 - Debes completar los campos obligatorios '');'),
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        RAISE_APPLICATION_ERROR(-20001,''P\00E1g. 220 - ACTUALIZAR_COLECCION_GARANTIAS - Problemas en actualizaci\00F3n de garant\00EDas ''|| SQLERRM);'),
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P220_GAR_SEQ_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50990456936279898)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_AGREGA_GAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    if :P220_GAR_TIP_GARANTIA IS NOT NULL AND :P220_GAR_FECHA IS NOT NULL AND :P220_GAR_ESTADO IS NOT NULL',
'        AND :P220_GAR_COD_MONEDA IS NOT NULL then',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''COLEC_DATOS_GARANTIA_CLIENTE'',',
'    			P_C001  =>  :P_COD_EMPRESA,',
'                P_C002  =>  :P220_GAR_COD_CLIENTE,',
'                P_C003  =>  :P220_GAR_TIP_GARANTIA,',
'                P_C004  =>  :P220_GAR_FECHA,',
'                P_C005  =>  :P220_GAR_COD_MONEDA,',
'                P_C006 	=>  :P220_GAR_MONTO,',
'    		    P_C007  =>  :P220_GAR_ESTADO,',
'                P_C048  =>  :P_COD_USUARIO,',
'                P_C050  => ''I'');',
'            if :P220_GAR_SEQ_ID IS NULL then',
'                select NVL(max(seq_id),0) INTO :P220_AUX from APEX_COLLECTIONS WHERE COLLECTION_NAME = ''COLEC_DATOS_GARANTIA_CLIENTE''; ',
'            end if;',
'    else ',
unistr('        RAISE_APPLICATION_ERROR(-20000,''P\00E1g. 220 - Debes completar los campos obligatorios '');'),
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000,''P\00E1g. 220 - ACTUALIZAR_COLECCION_GARANTIAS - Problemas al agregar garant\00EDas ''|| SQLERRM);'),
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P220_GAR_SEQ_ID'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50990898325279898)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'PR_CLOSE_DIALOG'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50989655712279892)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(98071282324436784)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Editar'
);
wwv_flow_imp.component_end;
end;
/
