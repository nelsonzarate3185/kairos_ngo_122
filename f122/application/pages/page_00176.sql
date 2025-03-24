prompt --application/pages/page_00176
begin
--   Manifest
--     PAGE: 00176
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
 p_id=>176
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CCDESCLI - Descuentos a Clientes (Modal)'
,p_alias=>'CCDESCLI-DESCUENTOS-A-CLIENTES-MODAL'
,p_page_mode=>'MODAL'
,p_step_title=>'Descuento a Cliente'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20221125150807'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36258304028335712)
,p_plug_name=>unistr('Formulario de edici\00F3n de datos')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SEQ_ID ,',
'       c001 cod_empresa,',
'       c002 cod_cliente,',
'       c003 cod_persona,',
'       c004 cod_division,',
'       c005 cod_marca,',
'       c006 cod_condicion_venta,',
'       n001 porc_descuento,',
'       c049 id_registro',
'         from APEX_COLLECTIONS ',
'           where COLLECTION_NAME = ''COLEC_CC_DESCUENTO_CLIENTE''',
'            order by SEQ_ID desc'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36259534537335724)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(36258304028335712)
,p_button_name=>'BTN_ACTUALIZAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Actualizar'
,p_button_position=>'CHANGE'
,p_confirm_message=>'Confirmas que quieres actualizar los datos para luego registrarlos.'
,p_button_condition=>'P176_SEQ_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-window-edit'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37882017653696737)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(36258304028335712)
,p_button_name=>'BTN_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36259625073335725)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(36258304028335712)
,p_button_name=>'BTN_AGREGAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Agregar'
,p_button_position=>'CREATE'
,p_confirm_message=>'Confirmas que quieres agregar nuevos datos para luego registrarlos'
,p_button_condition=>'P176_SEQ_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-window-new'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36258517230335714)
,p_name=>'P176_SEQ_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36258304028335712)
,p_item_source_plug_id=>wwv_flow_imp.id(36258304028335712)
,p_source=>'SEQ_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36258677675335715)
,p_name=>'P176_COD_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(36258304028335712)
,p_item_source_plug_id=>wwv_flow_imp.id(36258304028335712)
,p_source=>'COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36258744807335716)
,p_name=>'P176_COD_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(36258304028335712)
,p_item_source_plug_id=>wwv_flow_imp.id(36258304028335712)
,p_prompt=>'Cliente'
,p_source=>'COD_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_cliente||'' - ''||nombre D, ',
'         cod_cliente R',
'    FROM cc_clientes c, personas p',
'   WHERE c.cod_empresa = :P_COD_EMPRESA ',
'     AND c.cod_persona = p.cod_persona ',
'     AND nvl(c.estado,''X'') = ''A'' ',
'ORDER BY nombre;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_read_only_when=>'P176_COD_CLIENTE'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_imp.id(36258852780335717)
,p_name=>'P176_COD_PERSONA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(36258304028335712)
,p_item_source_plug_id=>wwv_flow_imp.id(36258304028335712)
,p_source=>'COD_PERSONA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36258939488335718)
,p_name=>'P176_COD_DIVISION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(36258304028335712)
,p_item_source_plug_id=>wwv_flow_imp.id(36258304028335712)
,p_prompt=>unistr('Divisi\00F3n')
,p_source=>'COD_DIVISION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DIVISION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESC_DIVISION, COD_DIVISION FROM ST_DIVISION_ARTICULOS',
'WHERE ESTADO=''A''',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>8
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
 p_id=>wwv_flow_imp.id(36259078319335719)
,p_name=>'P176_COD_MARCA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(36258304028335712)
,p_item_source_plug_id=>wwv_flow_imp.id(36258304028335712)
,p_prompt=>'Marca'
,p_source=>'COD_MARCA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MARCAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca||'' - ''||descripcion D, cod_marca R',
'from st_marcas',
'order by descripcion;'))
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
 p_id=>wwv_flow_imp.id(36259145042335720)
,p_name=>'P176_COD_CONDICION_VENTA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(36258304028335712)
,p_item_source_plug_id=>wwv_flow_imp.id(36258304028335712)
,p_prompt=>unistr('Condici\00F3n de Venta')
,p_source=>'COD_CONDICION_VENTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CONDICION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_condicion_venta||'' - ''||descripcion D, ',
'       cod_condicion_venta R',
'  FROM cc_condiciones_ventas ',
' WHERE cod_empresa=:P_COD_EMPRESA;',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>9
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
 p_id=>wwv_flow_imp.id(36259201383335721)
,p_name=>'P176_PORC_DESCUENTO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(36258304028335712)
,p_item_source_plug_id=>wwv_flow_imp.id(36258304028335712)
,p_prompt=>'% Descuento'
,p_source=>'PORC_DESCUENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36259307904335722)
,p_name=>'P176_ID_REGISTRO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(36258304028335712)
,p_item_source_plug_id=>wwv_flow_imp.id(36258304028335712)
,p_source=>'ID_REGISTRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36259761621335726)
,p_name=>'DA_ActualizarRegistro'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(36259534537335724)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36259810057335727)
,p_event_id=>wwv_flow_imp.id(36259761621335726)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.update_member(p_collection_name => ''COLEC_CC_DESCUENTO_CLIENTE'',',
'                                  p_seq  => :P176_SEQ_ID,',
'                                  p_c001 => :P176_COD_EMPRESA,',
'                                  p_c002 => :P176_COD_CLIENTE,',
'                                  p_c003 => :P176_COD_PERSONA,',
'                                  p_c004 => :P176_COD_DIVISION,',
'                                  p_c005 => :P176_COD_MARCA,',
'                                  p_c006 => :P176_COD_CONDICION_VENTA,',
'                                  p_n001 => :P176_PORC_DESCUENTO,',
'                                  p_c049 => :P176_ID_REGISTRO,',
'                                  p_c050 => ''U'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P176_SEQ_ID,P176_COD_EMPRESA,P176_COD_CLIENTE,P176_COD_PERSONA,P176_COD_DIVISION,P176_COD_MARCA,P176_COD_CONDICION_VENTA,P176_PORC_DESCUENTO,P176_ID_REGISTRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36259974460335728)
,p_name=>'DA_AgregarRegistro'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(36259625073335725)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36260094003335729)
,p_event_id=>wwv_flow_imp.id(36259974460335728)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.add_member(p_collection_name => ''COLEC_CC_DESCUENTO_CLIENTE'',',
'                                  p_c001 => :P_COD_EMPRESA,',
'                                  p_c002 => :P176_COD_CLIENTE,',
'                                  p_c003 => :P176_COD_PERSONA,',
'                                  p_c004 => :P176_COD_DIVISION,',
'                                  p_c005 => :P176_COD_MARCA,',
'                                  p_c006 => :P176_COD_CONDICION_VENTA,',
'                                  p_n001 => :P176_PORC_DESCUENTO,',
'                                  p_c049 => :P176_ID_REGISTRO,',
'                                  p_c050 => ''I'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P176_SEQ_ID,P176_COD_CLIENTE,P176_COD_PERSONA,P176_COD_DIVISION,P176_COD_MARCA,P176_COD_CONDICION_VENTA,P176_PORC_DESCUENTO,P176_ID_REGISTRO,P_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36260996431335738)
,p_name=>'DA_DATO_PERSONA'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P176_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36261066129335739)
,p_event_id=>wwv_flow_imp.id(36260996431335738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cli.cod_persona INTO :P176_COD_PERSONA',
'from cc_clientes cli where cli.cod_cliente = :P176_COD_CLIENTE and cli.cod_empresa = :P_COD_EMPRESA;'))
,p_attribute_02=>'P176_COD_CLIENTE,P_COD_EMPRESA'
,p_attribute_03=>'P176_COD_PERSONA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37882154100696738)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(37882017653696737)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37882218465696739)
,p_event_id=>wwv_flow_imp.id(37882154100696738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36260139385335730)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Pro_Actualizado'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36258488052335713)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(36258304028335712)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form CCDESCLI - Descuentos a Clientes (Modal)'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48937633887377218)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INI_PERSONA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cli.cod_persona INTO :P176_COD_PERSONA',
'from cc_clientes cli where cli.cod_cliente = :P176_COD_CLIENTE and cli.cod_empresa = :P_COD_EMPRESA;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
