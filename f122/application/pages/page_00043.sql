prompt --application/pages/page_00043
begin
--   Manifest
--     PAGE: 00043
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
 p_id=>43
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Detalle Presupuesto'
,p_alias=>'DETALLE-PRESUPUESTO'
,p_page_mode=>'MODAL'
,p_step_title=>'Detalle Presupuesto'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(40080790783263649)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20221123173021'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(100149385223511012)
,p_plug_name=>'<span style="display:none">Item</span>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'Style="background:#DCDCDC;width:100%;"'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12311092982995851)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(100149385223511012)
,p_button_name=>'Cancelar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12311489252995851)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(100149385223511012)
,p_button_name=>'Agregar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12327737005995865)
,p_branch_name=>'IR_A LA PAGINA_44'
,p_branch_action=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.::P39_COD_ARTICULO:&P43_COD_ARTICULO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(12311489252995851)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12311832055995851)
,p_name=>'P43_COD_LISTA_PRECIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(100149385223511012)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12312273457995852)
,p_name=>'P43_ID_PEDIDO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(100149385223511012)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12312605438995852)
,p_name=>'P43_COD_CLIENTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(100149385223511012)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12313068373995853)
,p_name=>'P43_COD_MONEDA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(100149385223511012)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12313475698995853)
,p_name=>'P43_SER_PEDIDO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(100149385223511012)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12313885180995853)
,p_name=>'P43_COD_CONDICION_VENTA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(100149385223511012)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12314231075995854)
,p_name=>'P43_NRO_PEDIDO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(100149385223511012)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12314639147995854)
,p_name=>'P43_COD_ART_CORTO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(100149385223511012)
,p_prompt=>'Cod Art Corto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12315055856995854)
,p_name=>'P43_COD_ARTICULO'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(100149385223511012)
,p_prompt=>'Codigo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.descripcion ||'' '' ||s.cod_articulo||'' '' ||S.COD_ART_CORTO DESCRIPCION ,s.cod_articulo',
'from st_articulos  s, st_existencia_art e, sucursal_zona  sz',
'where s.cod_empresa=''1''',
'and s.cod_empresa=e.cod_empresa',
'and s.cod_articulo=e.cod_articulo',
'and e.cod_sucursal=sz.cod_sucursal',
'AND COD_RUBRO=''PR''',
'',
'AND NVL(S.ESTADO,''A'') NOT IN (''I'',''N'')',
'AND S.PRECIO_BASE>0',
'and (s.COD_ART_CORTO = :P43_COD_ART_CORTO OR :P43_COD_ART_CORTO IS NULL)',
'',
'GROUP BY',
's.cod_articulo, s.descripcion, S.COD_ART_CORTO',
'ORDER BY DESCRIPCION '))
,p_lov_cascade_parent_items=>'P43_COD_ART_CORTO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12315459952995855)
,p_name=>'P43_DESC_ARTICULO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(100149385223511012)
,p_prompt=>'Descripcion'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12315896934995855)
,p_name=>'P43_CANTIDAD'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(100149385223511012)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_02=>'999999999999'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12316255908995855)
,p_name=>'P43_PRECIO_UNITARIO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(100149385223511012)
,p_prompt=>'Precio Unitario'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12316692957995855)
,p_name=>'P43_PORC_DESCUENTO'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(100149385223511012)
,p_prompt=>'Descuento %'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12317054432995856)
,p_name=>'P43_PORC_RECARGO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(100149385223511012)
,p_prompt=>'% Recargo'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_02=>'100'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12317490110995856)
,p_name=>'P43_TOTAL_IVA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(100149385223511012)
,p_prompt=>'Total Iva'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12317853792995856)
,p_name=>'P43_MONTO_TOTAL'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(100149385223511012)
,p_prompt=>'Monto Total'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12318247654995857)
,p_name=>'P43_TOTAL'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(100149385223511012)
,p_prompt=>'Total'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12318697810995857)
,p_name=>'P43_COD_IVA'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(100149385223511012)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12319022203995857)
,p_name=>'P43_PORC_IVA'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(100149385223511012)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12319493246995858)
,p_name=>'P43_DESCUENTO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(100149385223511012)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12319857273995858)
,p_name=>'P43_RECARGO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(100149385223511012)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12320375715995859)
,p_validation_name=>'ARTICULO_OBLIGATORIO'
,p_validation_sequence=>10
,p_validation=>'P43_COD_ARTICULO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Es Obligatorio la carga del codigo'
,p_associated_item=>wwv_flow_imp.id(12315055856995854)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12320774579995859)
,p_validation_name=>'VALIDA_CANTIDAD'
,p_validation_sequence=>20
,p_validation=>'P43_CANTIDAD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'La cantidad no puede ser Nula'
,p_associated_item=>wwv_flow_imp.id(12315896934995855)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12321138232995859)
,p_validation_name=>'VALIDA_DESCUENTO'
,p_validation_sequence=>30
,p_validation=>'P43_PORC_DESCUENTO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'El descuento no puede ser nulo'
,p_associated_item=>wwv_flow_imp.id(12316692957995855)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12321576658995860)
,p_validation_name=>'mayor_30'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P43_PORC_DESCUENTO>80 THEN',
'RETURN FALSE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'El descuento no puede ser mayor a 30%'
,p_associated_item=>wwv_flow_imp.id(12316692957995855)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12322274713995861)
,p_name=>'obtiene_articulo'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P43_COD_ART_CORTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12322756247995861)
,p_event_id=>wwv_flow_imp.id(12322274713995861)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_COD_ARTICULO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_ARTICULO',
'from st_articulos a where cod_empresa=''1''',
'and cod_Art_corto=:P43_COD_ART_CORTO',
'and rownum=1'))
,p_attribute_07=>'P43_COD_ART_CORTO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12323107470995862)
,p_name=>'OBTIENE_PRECIO'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P43_COD_ARTICULO'
,p_condition_element=>'P43_COD_ARTICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12323604170995862)
,p_event_id=>wwv_flow_imp.id(12323107470995862)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT PRECIO_web_APEX(:P43_COD_ARTICULO,',
'                         :P43_COD_CLIENTE,',
'                         :P43_COD_LISTA_PRECIO,',
'                         0) PROCESO',
'    INTO :P43_PRECIO_UNITARIO',
'    FROM DUAL;',
'  ',
'   ',
'   ',
'',
'  IF :P43_COD_ARTICULO = ''FLETE'' THEN',
'    begin',
'      select SUM(to_number(c007) + to_number(c008)) * 3 / 100',
'        INTO :P41_PRECIO_UNITARIO',
'        from apex_collections',
'       where collection_name = ''VT_PRESUPUESTO_DETALLE'';',
'    exception',
'      when others then',
'        :P43_PRECIO_UNITARIO := 0;',
'    end;',
'  ',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P43_COD_ARTICULO,P43_COD_CLIENTE,P43_COD_LISTA_PRECIO'
,p_attribute_03=>'P43_PRECIO_UNITARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12324065709995862)
,p_name=>'OBTIENE_DESCRIPCION'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P43_COD_ARTICULO'
,p_condition_element=>'P43_COD_ARTICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12324556146995862)
,p_event_id=>wwv_flow_imp.id(12324065709995862)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_DESC_ARTICULO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion',
'from st_articulos  a where cod_empresa=''1''',
'and cod_articulo=:P43_cod_Articulo',
'and rownum=1'))
,p_attribute_07=>'P43_COD_ARTICULO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12324951593995863)
,p_name=>'OBTIENE_DESCUENTO'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P43_CANTIDAD'
,p_condition_element=>'P43_CANTIDAD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12325443452995863)
,p_event_id=>wwv_flow_imp.id(12324951593995863)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_PORC_DESCUENTO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'',
'',
'nvl(f_descuento_tipo_cliente(:P43_cod_cliente, :P43_cod_condicion_venta,:P43_cod_lista_precio,:P43_cantidad ,:P43_cod_articulo, NULL),0)',
'',
'',
'descuento',
'',
'from dual',
''))
,p_attribute_07=>'P43_COD_LISTA_PRECIO,P43_COD_ARTICULO,P43_COD_CLIENTE,P43_COD_CONDICION_VENTA,P43_CANTIDAD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12325888803995863)
,p_name=>'obtiene_monto_total'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P43_PORC_DESCUENTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12326360977995864)
,p_event_id=>wwv_flow_imp.id(12325888803995863)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'VTIPO_IMPUESTO VARCHAR2(10);',
'VCOD_IVA VARCHAR2(10);',
'     vporc_iva       NUMBER;',
'     vfec_vigencia DATE;',
'     vporcentaje   NUMBER(8,2);',
'     vexento_ad varchar2(5);',
'     vregimen_turismo       varchar2(5);',
'     VDECIMALES NUMBER;',
'      vexenta_regimen number;',
'  vgravada_regimen       number;',
'  vtotal_regimen number;',
'  viva_regimen  number;',
'  vrecargo number;',
'  	vdescuento         NUMBER;',
'		',
'		viva_rec           NUMBER;',
'		viva_des           NUMBER;',
'		vunitario          number;',
'                VMONTO_TOTAL NUMBER;',
'                VTOTAL_IVA NUMBER;',
'                VTOTAL NUMBER;',
'		vunitario_c_iva    number;',
'		vmonto_total_c_iva number;',
'',
'BEGIN',
'IF :P43_COD_MONEDA=''1'' THEN ',
'VDECIMALES:=0; ELSE VDECIMALES:=2; END IF;',
'BEGIN',
'SELECT  NVL(TIPO_IMPUESTO,''G'')',
' INTO VTIPO_IMPUESTO',
'FROM CC_CLIENTES  C',
'WHERE C.COD_EMPRESA=''1''',
'AND C.COD_CLIENTE=:P43_COD_CLIENTE;',
'EXCEPTION WHEN OTHERS THEN',
'VTIPO_IMPUESTO:=''G'';',
'END;',
'',
'BEGIN',
'     select',
'     ',
'            a.cod_iva',
'       into vcod_iva',
'       from st_articulos  a, st_iva  i',
'      where a.cod_empresa = ''1''',
'        and a.cod_articulo = :P43_cod_articulo',
'        and a.cod_iva = i.cod_iva (+);',
'        EXCEPTION WHEN OTHERS THEN',
'        VCOD_IVA:=''1'';',
'END;',
'',
'',
'   BEGIN',
'     vporcentaje := vporc_iva;',
'     select round(nvl( porc_iva_venta,0) / 100,2), nvl(ind_exento_ad,''N''),',
'      nvl(ind_regimen_turismo,''N'')',
'       into  vporc_iva, vexento_ad,vregimen_turismo',
'       from st_iva  iva',
'      where iva.cod_iva = vcod_iva',
'        and iva.fec_vigencia <= sysdate ',
'      order by fec_vigencia desc;',
'      exception when others then null;',
'      end;',
'',
'IF nvl( VTIPO_IMPUESTO, ''G'' ) = ''E''   THEN',
'       vporcentaje := 0;',
'       vporc_iva := 0;',
'     END IF;',
'   ',
'      IF  NVL(vtipo_impuesto, ''G'' ) = ''T''  ',
'            AND  nvl(vregimen_turismo,''N'') = ''S''       THEN',
'       vporcentaje := round(1.5/100,3);',
'       vporc_iva := round(1.5/100,3);',
'      END IF;',
'',
'',
'	if nvl(Vporc_iva, 0) = 0 then',
'				vunitario := round(nvl(:P43_precio_unitario, 0),nvl(Vdecimales, 0));           ',
'		else		',
'				vunitario       := round(nvl(:P43_precio_unitario, 0) /(1 + (nvl(Vporc_iva, 0))), nvl(Vdecimales, 0));',
'				',
'		end if;',
'                ',
'                ',
'        vdescuento:= vunitario * :P43_CANTIDAD*(:P43_PORC_DESCUENTO/100);        ',
'        vrecargo:= NVL(vunitario * :P43_CANTIDAD*(:P43_PORC_recargo/100),0);        ',
'VMONTO_TOTAL :=(VUNITARIO*:P43_CANTIDAD)-nvl(vdescuento,0)+nvl(vrecargo,0);',
'VTOTAL_IVA:= VMONTO_TOTAL*VPORC_IVA;',
'	if :Vporc_iva in(round(1.5/100,3),round(1.5/100,2)) then',
'  vtotal_regimen :=nvl(vmonto_total, 0)+nvl(vtotal_iva, 0);',
'              vgravada_regimen:= nvl(vtotal_regimen,0)/1.1; ',
'              vexenta_regimen:=vgravada_regimen*85/100;',
'              vgravada_regimen:=vgravada_regimen-vexenta_regimen;',
'              viva_regimen:=  vgravada_regimen/10  ;    ',
'              ',
'             Vmonto_total :=round(nvl(vgravada_regimen,0)+nvl(vexenta_regimen,0),nvl(vdecimales, 0));',
'                             Vtotal_iva:=  round(nvl(viva_regimen, 0) ,nvl(vdecimales, 0));     ',
'                           ',
'                   ',
'END IF;',
':P43_DESCUENTO:=NVL(VDESCUENTO,0);',
':P43_PORC_IVA:=VPORC_IVA;',
':P43_RECARGO:=NVL(VRECARGO,0);',
':P43_COD_IVA:=VCOD_IVA;',
':P43_MONTO_TOTAL:= ROUND(VMONTO_TOTAL,nvl(vdecimales, 0));',
':P43_TOTAL_IVA := ROUND(VTOTAL_IVA,nvl(vdecimales, 0));',
':P43_TOTAL:= ROUND(VMONTO_TOTAL+VTOTAL_IVA,nvl(vdecimales, 0));',
'END;'))
,p_attribute_02=>'P43_COD_ARTICULO,P43_PORC_DESCUENTO,P43_CANTIDAD,P43_PRECIO_UNITARIO,P43_COD_MONEDA,P43_PORC_RECARGO'
,p_attribute_03=>'P43_TOTAL_IVA,P43_MONTO_TOTAL,P43_TOTAL,P43_COD_IVA,P43_PORC_IVA,P43_DESCUENTO,P43_RECARGO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12326707716995864)
,p_name=>'OBTIENE_MONTO_RECARGO'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P43_PORC_RECARGO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12327242494995864)
,p_event_id=>wwv_flow_imp.id(12326707716995864)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'VTIPO_IMPUESTO VARCHAR2(10);',
'VCOD_IVA VARCHAR2(10);',
'     vporc_iva       NUMBER;',
'     vfec_vigencia DATE;',
'     vporcentaje   NUMBER(8,2);',
'     vexento_ad varchar2(5);',
'     vregimen_turismo       varchar2(5);',
'     VDECIMALES NUMBER;',
'      vexenta_regimen number;',
'  vgravada_regimen       number;',
'  vtotal_regimen number;',
'  viva_regimen  number;',
'  vrecargo number;',
'  	vdescuento         NUMBER;',
'		',
'		viva_rec           NUMBER;',
'		viva_des           NUMBER;',
'		vunitario          number;',
'                VMONTO_TOTAL NUMBER;',
'                VTOTAL_IVA NUMBER;',
'                VTOTAL NUMBER;',
'		vunitario_c_iva    number;',
'		vmonto_total_c_iva number;',
'',
'BEGIN',
'IF :P43_COD_MONEDA=''1'' THEN ',
'VDECIMALES:=0; ELSE VDECIMALES:=2; END IF;',
'BEGIN',
'SELECT  NVL(TIPO_IMPUESTO,''G'')',
' INTO VTIPO_IMPUESTO',
'FROM CC_CLIENTES  C',
'WHERE C.COD_EMPRESA=''1''',
'AND C.COD_CLIENTE=:P43_COD_CLIENTE;',
'EXCEPTION WHEN OTHERS THEN',
'VTIPO_IMPUESTO:=''G'';',
'END;',
'',
'BEGIN',
'     select',
'     ',
'            a.cod_iva',
'       into vcod_iva',
'       from st_articulos  a, st_iva  i',
'      where a.cod_empresa = ''1''',
'        and a.cod_articulo = :P43_cod_articulo',
'        and a.cod_iva = i.cod_iva (+);',
'        EXCEPTION WHEN OTHERS THEN',
'        VCOD_IVA:=''1'';',
'END;',
'',
'',
'   BEGIN',
'     vporcentaje := vporc_iva;',
'     select round(nvl( porc_iva_venta,0) / 100,2), nvl(ind_exento_ad,''N''),',
'      nvl(ind_regimen_turismo,''N'')',
'       into  vporc_iva, vexento_ad,vregimen_turismo',
'       from st_iva  iva',
'      where iva.cod_iva = vcod_iva',
'        and iva.fec_vigencia <= sysdate ',
'      order by fec_vigencia desc;',
'      exception when others then null;',
'      end;',
'',
'IF nvl( VTIPO_IMPUESTO, ''G'' ) = ''E''   THEN',
'       vporcentaje := 0;',
'       vporc_iva := 0;',
'     END IF;',
'   ',
'      IF  NVL(vtipo_impuesto, ''G'' ) = ''T''  ',
'            AND  nvl(vregimen_turismo,''N'') = ''S''       THEN',
'       vporcentaje := round(1.5/100,3);',
'       vporc_iva := round(1.5/100,3);',
'      END IF;',
'',
'',
'	if nvl(Vporc_iva, 0) = 0 then',
'				vunitario := round(nvl(:P43_precio_unitario, 0),nvl(Vdecimales, 0));           ',
'		else		',
'				vunitario       := round(nvl(:P43_precio_unitario, 0) /(1 + (nvl(Vporc_iva, 0))), nvl(Vdecimales, 0));',
'				',
'		end if;',
'                ',
'                ',
'        vdescuento:= vunitario * :P43_CANTIDAD*(:P43_PORC_DESCUENTO/100);        ',
'        vrecargo:= NVL(vunitario * :P43_CANTIDAD*(:P43_PORC_recargo/100),0);        ',
'VMONTO_TOTAL :=(VUNITARIO*:P43_CANTIDAD)-nvl(vdescuento,0)+nvl(vrecargo,0);',
'VTOTAL_IVA:= VMONTO_TOTAL*VPORC_IVA;',
'	if :Vporc_iva in(round(1.5/100,3),round(1.5/100,2)) then',
'  vtotal_regimen :=nvl(vmonto_total, 0)+nvl(vtotal_iva, 0);',
'              vgravada_regimen:= nvl(vtotal_regimen,0)/1.1; ',
'              vexenta_regimen:=vgravada_regimen*85/100;',
'              vgravada_regimen:=vgravada_regimen-vexenta_regimen;',
'              viva_regimen:=  vgravada_regimen/10  ;    ',
'              ',
'             Vmonto_total :=round(nvl(vgravada_regimen,0)+nvl(vexenta_regimen,0),nvl(vdecimales, 0));',
'                             Vtotal_iva:=  round(nvl(viva_regimen, 0) ,nvl(vdecimales, 0));     ',
'                           ',
'                   ',
'END IF;',
':P43_DESCUENTO:=NVL(VDESCUENTO,0);',
':P43_PORC_IVA:=VPORC_IVA;',
':P43_RECARGO:=NVL(VRECARGO,0);',
':P43_COD_IVA:=VCOD_IVA;',
':P43_MONTO_TOTAL:= ROUND(VMONTO_TOTAL,nvl(vdecimales, 0));',
':P43_TOTAL_IVA := ROUND(VTOTAL_IVA,nvl(vdecimales, 0));',
':P43_TOTAL:= ROUND(VMONTO_TOTAL+VTOTAL_IVA,nvl(vdecimales, 0));',
'END;'))
,p_attribute_02=>'P43_COD_ARTICULO,P43_PORC_DESCUENTO,P43_CANTIDAD,P43_PRECIO_UNITARIO,P43_COD_MONEDA,P43_PORC_RECARGO'
,p_attribute_03=>'P43_TOTAL_IVA,P43_MONTO_TOTAL,P43_TOTAL,P43_COD_IVA,P43_PORC_IVA,P43_DESCUENTO,P43_RECARGO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12321808687995860)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'COLLECTION_CARGA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P43_PRECIO_UNITARIO IS NOT NULL AND :P43_CANTIDAD IS NOT NULL AND :P43_COD_ARTICULO IS NOT NULL THEN',
'declare',
'    l_order_id    number;',
'    l_order_id_det    number;',
'   VDATO VARCHAR2(600);',
'begin',
'     --create collections',
'    BEGIN',
'    SELECT MAX(seq_id)',
'     INTO l_order_id',
'    FROM apex_collections',
'    WHERE collection_name=''VT_PRESUPUESTO_DETALLE''',
'    AND ROWNUM=1;',
'    EXCEPTION WHEN OTHERS THEN ',
'     l_order_id := NULL ;',
'    END;',
'    ',
'        ',
'    IF l_order_id IS NULL THEN',
'  ',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PRESUPUESTO_CABECERA'');',
'  ',
'    ',
'    apex_collection.add_member(',
'            p_collection_name => ''VT_PRESUPUESTO_CABECERA'',',
'            p_c001            => :P43_SER_PEDIDO, ',
'            p_c002            => :P43_NRO_PEDIDO, ',
'            p_c003            => :P43_COD_CLIENTE,',
'            p_c004            => :P43_NOMBRE_CLIENTE,',
'            p_c005            => :P43_COD_SUCURSAL_DIST,',
'            p_c006            => :P43_LUGAR_ENTREGA,',
'            p_c007            => :P43_COD_VENDEDOR,',
'            p_c008            => :P43_COD_CONDICION_VENTA,',
'            p_c009            => :P43_COD_LISTA_PRECIO,',
'            p_c010            => :P43_ID_PEDIDO,',
'            p_c011            => :P43_cod_moneda,',
'            p_c012            => :P43_COD_FLETE,',
'            p_c013            => :P43_TIPO_ENTREGA,',
'            p_c014            => :P43_COMENTARIO,',
'            p_c015            => :P43_TIPO_CAMBIO,',
'            p_c016            => :P43_TIPO_CAMBIO_COMPRA   )  ;',
'        ',
'            ',
'    END IF;',
'    ',
'    ',
'IF  apex_collection.collection_exists(p_collection_name => ''VT_PRESUPUESTO_DETALLE'') then',
'NULL;',
'ELSE',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PRESUPUESTO_DETALLE'');',
'END IF;',
'',
'        apex_collection.add_member(',
'            p_collection_name => ''VT_PRESUPUESTO_DETALLE'',',
'            p_c001            => :P43_SER_PEDIDO, ',
'            p_c002            => :P43_NRO_PEDIDO, ',
'            p_c003            => :P43_COD_ARTICULO,',
'            p_c004            => :P43_CANTIDAD,',
'            p_c005            => :P43_PRECIO_UNITARIO,',
'            p_c006            => :P43_PORC_DESCUENTO,',
'            p_c007            => :P43_TOTAL_IVA,',
'            p_c008            => :P43_MONTO_TOTAL,',
'            p_c009            => :P43_TOTAL,',
'            p_c010            => NULL,',
'            p_c011            => NULL,',
'            p_c012            => 0,',
'                p_c013            => null,',
'                p_c014            => :P43_PORC_RECARGO ,',
'                p_c015            => :P43_DESCUENTO ,',
'                p_c016            => :P43_RECARGO ,',
'                p_c017            => :P43_COD_IVA ,',
'                p_c019            => :P43_PORC_IVA ',
'                                          ',
'                                          )  ;',
'                                          ',
' ',
' ',
'DECLARE CURSOR CCAB IS',
'SELECT COD_ARTICULO_PROMO, CANTIDAD_REGALO, DESCUENTO_PROMO,',
'',
'PRECIO_web(COD_ARTICULO_PROMO,:P43_COD_LISTA_PRECIO,  0        )precio_unitario,',
'',
'nvl(nvl(trunc(:P43_cantidad/nvl(CANTIDAD_MINIMA_COMPRA,1))*CANTIDAD_REGALO,:P43_cantidad),1)CANTIDAD, NRO_PROMO,',
'PRECIO_web(COD_ARTICULO_PROMO,:P43_COD_LISTA_PRECIO,  nvl(DESCUENTO_PROMO,   0  ))descuento_monto',
'',
'	FROM V_PROMOCIONES_APEX  a',
'	WHERE A.COD_ARTICULO = :P43_COD_ARTICULO',
'        AND COD_ARTICULO_PROMO IS NOT NULL',
'        AND DESCUENTO_PROMO>99',
'        AND NVL(CANTIDAD_MINIMA_COMPRA,1)<=:P43_CANTIDAD',
'         and nvl(DESCUENTO_PRODUCTO,nvl(:P43_porc_descuento,0))=nvl(:P43_porc_descuento,0)',
'         ',
'  ',
'        ;',
'        BEGIN',
'        FOR X IN CCAB LOOP',
'        ',
'        apex_collection.add_member(',
'            p_collection_name => ''VT_PRESUPUESTO_DETALLE'',',
'            p_c001            => :P43_SER_PEDIDO, ',
'            p_c002            => :P43_NRO_PEDIDO, ',
'            p_c003            => X.COD_ARTICULO_PROMO,',
'            p_c004            => X.CANTIDAD,',
'            p_c005            => X.PRECIO_UNITARIO,',
'            p_c006            => X.DESCUENTO_PROMO,',
'            p_c007            => 0,',
'            p_c008            => 0,',
'            p_c009            => 0,',
'            p_c010            => :P43_ID_PEDIDO,',
'            p_c011            => :P43_COD_ARTICULO,',
'            p_c012            => l_order_id_det,',
'            p_c013    => x.nro_promo,           ',
'                p_c014            =>  0,',
'                p_c015            => x.descuento_monto ,',
'                p_c016            => 0 ,',
'                p_c017            => :P43_COD_IVA ,',
'                p_c019            => :P43_PORC_IVA ',
'           ',
'                                          ',
'                                          )  ;',
'                                     ',
'        ',
'        END LOOP;',
'       ',
'',
'END;',
'',
'',
'',
'-------------COMBOS--------------------------',
'',
'  DECLARE CURSOR CCAB IS ',
'  select  D.cod_articulo, :P43_CANTIDAD CANTIDAD_REGALO,:P43_PORC_DESCUENTO DESCUENTO_PROMO,',
'',
'PRECIO_web(D.cod_articulo,:P43_COD_LISTA_PRECIO, 0       )precio_unitario,',
'1 CANTIDAD, NULL NRO_PROMO,',
'PRECIO_web(A.COD_ARTICULO,:P43_COD_LISTA_PRECIO,  nvl(:P43_PORC_DESCUENTO,   0  ))descuento_monto ',
'             ',
'             ',
'        from vt_combo_CAB  c,   vt_combo_det  d, st_articulos  a, st_articulos  a1',
'       where c.cod_empresa = ''1''',
'       and c.cod_empresa=d.cod_empResa',
'         and c.cod_combo=d.cod_combo ',
'         and d.cod_empresa=a.cod_empresa',
'         and d.cod_articulo=a.cod_articulo   ',
'         and d.cod_empresa=a1.cod_empresa',
'         and d.cod_articulo=a1.cod_articulo ',
'         and d.cod_articulo not in :P43_COD_ARTICULO  ',
'            and nvl(C.estado, ''S'') <> ''N''',
'            and c.cod_combo  in (select d1.cod_combo',
'            from vt_combo_det  d1',
'            where d1.cod_empresa=d.cod_empresa',
'            and d1.cod_articulo=:P43_COD_ARTICULO)',
'        ;',
'',
'VUNITARIO NUMBER;',
'  vgravada_regimen       number;',
'  vtotal_regimen number;',
'  viva_regimen  number;',
'  vrecargo number;',
'  	vdescuento         NUMBER;',
'        VDECIMALES NUMBER;',
'        VMONTO_TOTAL NUMBER;',
'                VTOTAL_IVA NUMBER;',
'                VTOTAL NUMBER;',
'                  vexenta_regimen number;',
'BEGIN ',
'FOR X IN CCAB LOOP',
'',
'',
'IF :P43_COD_MONEDA=''1'' THEN ',
'VDECIMALES:=0; ELSE VDECIMALES:=2; END IF;',
'',
'if nvl(:P43_porc_iva, 0) = 0 then',
'	vunitario := round(nvl(X.precio_unitario, 0),nvl(Vdecimales, 0));           ',
'else		',
'	vunitario       := round(nvl(X.precio_unitario, 0) /(1 + (nvl(:P43_porc_iva, 0))), nvl(Vdecimales, 0));',
'       end if;',
'',
'vdescuento:= vunitario * :P43_CANTIDAD*(:P43_PORC_DESCUENTO/100);        ',
'        vrecargo:= NVL(vunitario * :P43_CANTIDAD*(:P43_PORC_recargo/100),0);        ',
'VMONTO_TOTAL :=(VUNITARIO*:P43_CANTIDAD)-nvl(vdescuento,0)+nvl(vrecargo,0);',
'VTOTAL_IVA:= VMONTO_TOTAL*:P43_PORC_IVA;',
'	if :P43_porc_iva in(round(1.5/100,3),round(1.5/100,2)) then',
'  vtotal_regimen :=nvl(vmonto_total, 0)+nvl(vtotal_iva, 0);',
'              vgravada_regimen:= nvl(vtotal_regimen,0)/1.1; ',
'              vexenta_regimen:=vgravada_regimen*85/100;',
'              vgravada_regimen:=vgravada_regimen-vexenta_regimen;',
'              viva_regimen:=  vgravada_regimen/10  ;    ',
'              ',
'             Vmonto_total :=round(nvl(vgravada_regimen,0)+nvl(vexenta_regimen,0),nvl(vdecimales, 0));',
'                             Vtotal_iva:=  round(nvl(viva_regimen, 0) ,nvl(vdecimales, 0));     ',
'                           ',
'                   ',
'END IF;',
' ',
'',
'        apex_collection.add_member(',
'            p_collection_name => ''VT_PRESUPUESTO_DETALLE'',',
'            p_c001            => :P43_SER_PEDIDO, ',
'            p_c002            => :P43_NRO_PEDIDO, ',
'            p_c003            => X.COD_ARTICULO,',
'            p_c004            => :P43_CANTIDAD,',
'            p_c005            => X.PRECIO_UNITARIO,',
'            p_c006            => :P43_PORC_DESCUENTO,',
'            p_c007            => ROUND(VTOTAL_IVA,nvl(vdecimales, 0)),',
'            p_c008            => ROUND(VMONTO_TOTAL,nvl(vdecimales, 0)),',
'            p_c009            =>  ROUND(VMONTO_TOTAL+VTOTAL_IVA,nvl(vdecimales, 0)),',
'            p_c010            => :P43_ID_PEDIDO,',
'            p_c011            => NULL,',
'            p_c012            => 0,',
'                p_c013            => null,',
'                p_c014            => :P43_PORC_RECARGO ,',
'                p_c015            => :P43_DESCUENTO ,',
'                p_c016            => :P43_RECARGO ,',
'                p_c017            => :P43_COD_IVA ,',
'                p_c019            => :P43_PORC_IVA ',
'                                          ',
'                                          )  ;',
'                         ',
'END LOOP;',
'',
'',
'end;',
'',
'',
'',
'     ',
'end;',
' ',
'ELSE',
'   apex_application.g_print_success_message := ''<span style="color:red">Error en la insercion del articulo.</span>'';  ',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12311489252995851)
);
wwv_flow_imp.component_end;
end;
/
