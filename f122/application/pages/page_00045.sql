prompt --application/pages/page_00045
begin
--   Manifest
--     PAGE: 00045
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
 p_id=>45
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Detalle Recibo'
,p_alias=>'DETALLE-RECIBO'
,p_page_mode=>'MODAL'
,p_step_title=>'Detalle Recibo'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(40080790783263649)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240924112334'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101476694343988593)
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
 p_id=>wwv_flow_imp.id(11442811618004827)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(101476694343988593)
,p_button_name=>'Cancelar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11443267260004827)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(101476694343988593)
,p_button_name=>'Agregar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11454854051004833)
,p_branch_name=>'IR_A LA PAGINA44'
,p_branch_action=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(11443267260004827)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11443699035004828)
,p_name=>'P45_COD_LISTA_PRECIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(101476694343988593)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11444088022004828)
,p_name=>'P45_COD_CUSTODIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(101476694343988593)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11444480943004828)
,p_name=>'P45_ID_PEDIDO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(101476694343988593)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11444891772004828)
,p_name=>'P45_COD_CLIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(101476694343988593)
,p_prompt=>'CLIENTE'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11445236998004828)
,p_name=>'P45_COD_MONEDA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(101476694343988593)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11445687477004829)
,p_name=>'P45_SER_PEDIDO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(101476694343988593)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11446006163004829)
,p_name=>'P45_COD_CONDICION_VENTA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(101476694343988593)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11446448333004829)
,p_name=>'P45_NRO_PEDIDO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(101476694343988593)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11446876453004829)
,p_name=>'P45_NUMERO_FACTURA_REF'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(101476694343988593)
,p_prompt=>'Numero Factura Ref'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select distinct   nvl(nro_valor,nro_comprobante)||'' - ''||ser_comprobante||'' - ''||tipo_comprobante Descripcion, nro_comprobante Codigo',
'       ',
'      from cc_saldos c',
'     where cod_empresa      = ''1''',
' AND SALDO_CUOTA<>0',
'       and cod_cliente      = :P45_COD_CLIENTE',
'    and c.saldo_cuota - nvl(c.rec_pendientes, 0) <>0',
'    and :P45_EMPRESA_ORIGEN=''NGO''',
'        union all',
'         select distinct   nvl(nro_valor,nro_comprobante)||'' - ''||ser_comprobante||'' - ''||tipo_comprobante Descripcion, nro_comprobante Codigo',
'       ',
'      from cc_saldos@dblink_cph c',
'     where cod_empresa      = ''1''',
' AND SALDO_CUOTA<>0',
'       and cod_cliente      = :P45_COD_CLIENTE',
'    and c.saldo_cuota - nvl(c.rec_pendientes, 0) <>0',
'    and :P45_EMPRESA_ORIGEN=''CPH''',
'     ',
''))
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11447295003004829)
,p_name=>'P45_SERIE_FACTURA_REF'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(101476694343988593)
,p_prompt=>'Serie Factura'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select DISTINCT SER_COMPROBANTE D, SER_COMPROBANTE C',
'       ',
'      from cc_saldos',
'     where cod_empresa      = ''1'' ',
'       and cod_cliente      = :P45_COD_CLIENTE',
'        AND nro_comprobaNte=:P45_NUMERO_FACTURA_REF        ',
'       AND SALDO_CUOTA<>0 ',
'        and :P45_EMPRESA_ORIGEN=''NGO''',
'        UNION ALL',
'        select DISTINCT SER_COMPROBANTE D, SER_COMPROBANTE C',
'       ',
'      from cc_saldos@DBLINK_CPH',
'     where cod_empresa      = ''1'' ',
'       and cod_cliente      = :P45_COD_CLIENTE',
'        AND nro_comprobaNte=:P45_NUMERO_FACTURA_REF        ',
'       AND SALDO_CUOTA<>0 ',
'        and :P45_EMPRESA_ORIGEN=''CPH''',
'       UNION ALL',
'       SELECT :P45_SERIE_REC, :P45_SERIE_REC',
'       FROM DUAL'))
,p_lov_cascade_parent_items=>'P45_COD_CLIENTE,P45_NUMERO_FACTURA_REF'
,p_ajax_items_to_submit=>'P45_COD_CLIENTE,P45_NUMERO_FACTURA_REF'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11447630196004829)
,p_name=>'P45_TIPO_FACTURA_REF'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(101476694343988593)
,p_prompt=>'Tipo Comprobante'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   a.tip_comprobante D,a.tip_comprobante C',
'from tipos_comprobantes a',
'where cod_empresa=''1''',
'and A.TIP_COMPROBANTE IN (''FCR'',''NCR'',''PG'',''REC'',''CHE'',''CH'')',
''))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11448066960004830)
,p_name=>'P45_NRO_CUOTA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(101476694343988593)
,p_prompt=>'Nro Cuota'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NRO_CUOTA D, NRO_CUOTA C',
'       ',
'      from cc_saldos',
'     where cod_empresa      = ''1''',
' AND SALDO_CUOTA<>0',
'       and cod_cliente      = :P45_COD_CLIENTE',
'            AND TIPO_COMPROBANTE=:P45_TIPO_FACTURA_REF',
'       AND SER_COMPROBANTE = :P45_SERIE_FACTURA_REF',
'       AND NRO_COMPROBANTE = :P45_NUMERO_FACTURA_REF',
'       and :P45_EMPRESA_ORIGEN=''NGO''',
'     ',
'       union all',
'select NRO_CUOTA D, NRO_CUOTA C',
'       ',
'      from cc_saldos@dblink_cph',
'     where cod_empresa      = ''1''',
' AND SALDO_CUOTA<>0',
'       and cod_cliente      = :P45_COD_CLIENTE',
'            AND TIPO_COMPROBANTE=:P45_TIPO_FACTURA_REF',
'       AND SER_COMPROBANTE = :P45_SERIE_FACTURA_REF',
'       AND NRO_COMPROBANTE = :P45_NUMERO_FACTURA_REF',
'       and :P45_EMPRESA_ORIGEN=''CPH'''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P45_TIPO_FACTURA_REF'
,p_ajax_items_to_submit=>'P45_TIPO_FACTURA_REF,P45_SERIE_FACTURA_REF,P45_NUMERO_FACTURA_REF,P45_COD_CLIENTE'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11448435103004830)
,p_name=>'P45_IMPORTE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(101476694343988593)
,p_prompt=>'Importe'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11448800247004830)
,p_name=>'P45_SERIE_REC'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(101476694343988593)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11449221172004830)
,p_name=>'P45_EMPRESA_ORIGEN'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(101476694343988593)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12524475763514406)
,p_name=>'P45_TIP_CAMBIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(101476694343988593)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11449730451004831)
,p_validation_name=>'serie_OBLIGATORIO'
,p_validation_sequence=>10
,p_validation=>'P45_SERIE_FACTURA_REF'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Es Obligatorio la carga del codigo'
,p_associated_item=>wwv_flow_imp.id(11447295003004829)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11450117719004831)
,p_validation_name=>'VALIDA_importe'
,p_validation_sequence=>30
,p_validation=>'P45_IMPORTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'El importe no puede ser nulo'
,p_associated_item=>wwv_flow_imp.id(11448435103004830)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11451395674004831)
,p_validation_name=>'valida_saldo'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select SALDO_CUOTA       ',
'      from cc_saldos',
'     where cod_empresa      = ''1''',
'       AND SALDO_CUOTA<>0',
'       and cod_cliente      = :P45_COD_CLIENTE',
'       AND TIPO_COMPROBANTE=:P45_TIPO_FACTURA_REF',
'       AND SER_COMPROBANTE = :P45_SERIE_FACTURA_REF',
'       AND NRO_COMPROBANTE = :P45_NUMERO_FACTURA_REF',
'       AND NRO_CUOTA = :P45_NRO_CUOTA ',
'       and saldo_cuota>=:P45_IMPORTE',
'         and :P45_EMPRESA_ORIGEN=''NGO''',
'         UNION ALL',
'           select SALDO_CUOTA       ',
'      from cc_saldos',
'     where cod_empresa      = ''18''',
'       AND SALDO_CUOTA<>0',
'       and cod_cliente      = :P45_COD_CLIENTE',
'       AND TIPO_COMPROBANTE=:P45_TIPO_FACTURA_REF',
'       AND SER_COMPROBANTE = :P45_SERIE_FACTURA_REF',
'       AND NRO_COMPROBANTE = :P45_NUMERO_FACTURA_REF',
'       AND NRO_CUOTA = :P45_NRO_CUOTA ',
'       and saldo_cuota>=:P45_IMPORTE',
'         and :P45_EMPRESA_ORIGEN=''BH''',
'         UNION ALL',
'         select SALDO_CUOTA       ',
'      from cc_saldos@DBLINK_CPH',
'     where cod_empresa      = ''1''',
'       AND SALDO_CUOTA<>0',
'       and cod_cliente      = :P45_COD_CLIENTE',
'       AND TIPO_COMPROBANTE=:P45_TIPO_FACTURA_REF',
'       AND SER_COMPROBANTE = :P45_SERIE_FACTURA_REF',
'       AND NRO_COMPROBANTE = :P45_NUMERO_FACTURA_REF',
'       AND NRO_CUOTA = :P45_NRO_CUOTA ',
'       and saldo_cuota>=:P45_IMPORTE',
'         and :P45_EMPRESA_ORIGEN=''CPH''',
'       UNION ALL',
'       select 1',
'       from  dual ',
'       WHERE ''REC''=:P45_TIPO_FACTURA_REF'))
,p_validation_type=>'EXISTS'
,p_error_message=>'El importe a cobrar no puede ser mayor al saldo'
,p_associated_item=>wwv_flow_imp.id(11448435103004830)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11450507154004831)
,p_validation_name=>'da_factura'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P45_TIPO_FACTURA_REF=''REC'' THEN RETURN TRUE;',
'ELSIF   :P45_TIPO_FACTURA_REF IS NOT NULL  AND :P45_NUMERO_FACTURA_REF IS NOT NULL  THEN RETURN TRUE;',
'ELSE RETURN FALSE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Error.. detalle'
,p_associated_item=>wwv_flow_imp.id(11446876453004829)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11450988720004831)
,p_validation_name=>'va_cuota'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'vexiste varchar2(1):=''N'';',
'begin ',
' select ''S'' ',
'       INTO VEXISTE',
'      from cc_saldos',
'     where cod_empresa      = ''1''',
' AND SALDO_CUOTA<>0',
'       and cod_cliente      = :P45_COD_CLIENTE',
'       AND TIPO_COMPROBANTE=:P45_TIPO_FACTURA_REF',
'       AND SER_COMPROBANTE = :P45_SERIE_FACTURA_REF',
'       AND NRO_COMPROBANTE = :P45_NUMERO_FACTURA_REF',
'       AND NRO_CUOTA = :P45_NRO_CUOTA ',
'       and :P45_EMPRESA_ORIGEN=''NGO''',
'       UNION ALL',
'       select ''S''      ',
'      from cc_saldos@DBLINK_CPH',
'     where cod_empresa      = ''1''',
' AND SALDO_CUOTA<>0',
'       and cod_cliente      = :P45_COD_CLIENTE',
'       AND TIPO_COMPROBANTE=:P45_TIPO_FACTURA_REF',
'       AND SER_COMPROBANTE = :P45_SERIE_FACTURA_REF',
'       AND NRO_COMPROBANTE = :P45_NUMERO_FACTURA_REF',
'       AND NRO_CUOTA = :P45_NRO_CUOTA ',
'       and :P45_EMPRESA_ORIGEN=''CPH'';',
'       RETURN TRUE;',
'       EXCEPTION WHEN OTHERS THEN',
'       if :P45_TIPO_FACTURA_REF=''REC'' AND :P45_NUMERO_FACTURA_REF IS NULL THEN',
'       null;',
'       ELSE',
'       RETURN FALSE;',
'       END IF;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'No existe la cuota a Pagar'
,p_associated_item=>wwv_flow_imp.id(11448066960004830)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11452090354004831)
,p_name=>'New'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_IMPORTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11452558322004832)
,p_event_id=>wwv_flow_imp.id(11452090354004831)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P45_TIPO_FACTURA_REF =''REC'' AND :P45_NUMERO_FACTURA_REF IS NULL THEN',
':P45_SERIE_FACTURA_REF:=:P45_SERIE_REC;',
'END IF;'))
,p_attribute_02=>'P45_TIPO_FACTURA_REF,P45_NUMERO_FACTURA_REF'
,p_attribute_03=>'P45_SERIE_FACTURA_REF'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11452989728004832)
,p_name=>'da_obtiene_factura'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_NUMERO_FACTURA_REF'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11453483365004832)
,p_event_id=>wwv_flow_imp.id(11452989728004832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  select ',
'       tipo_comprobante, ser_comprobante, min(nro_cuota)',
'       into :P45_TIPO_FACTURA_REF,:P45_SERIE_FACTURA_REF,:P45_NRO_CUOTA',
'      from cc_saldos c',
'     where cod_empresa      = ''1''',
' AND SALDO_CUOTA<>0',
'       and cod_cliente      = :P45_COD_CLIENTE',
'       AND nro_comprobante=:P45_NUMERO_FACTURA_REF      ',
'       and :P45_EMPRESA_ORIGEN=''NGO''',
'        GROUP BY  tipo_comprobante, ser_comprobante',
'       UNION ALL',
'       select ',
'       tipo_comprobante, ser_comprobante, min(nro_cuota)',
'       ',
'      from cc_saldos c',
'     where cod_empresa      = ''18''',
' AND SALDO_CUOTA<>0',
'       and cod_cliente      = :P45_COD_CLIENTE',
'       AND nro_comprobante=:P45_NUMERO_FACTURA_REF      ',
'       and :P45_EMPRESA_ORIGEN=''BH''',
'        GROUP BY  tipo_comprobante, ser_comprobante',
'       UNION ALL',
'  select ',
'       tipo_comprobante, ser_comprobante, min(nro_cuota)',
'      ',
'      from cc_saldos@dblink_cph c',
'     where cod_empresa      = ''1''',
' AND SALDO_CUOTA<>0',
'       and cod_cliente      = :P45_COD_CLIENTE',
'       AND nro_comprobante=:P45_NUMERO_FACTURA_REF       ',
'       and :P45_EMPRESA_ORIGEN=''CPH''',
'        GROUP BY  tipo_comprobante, ser_comprobante;             ',
'        ',
'end;'))
,p_attribute_02=>'P45_COD_CLIENTE,P45_NUMERO_FACTURA_REF,P45_EMPRESA_ORIGEN'
,p_attribute_03=>'P45_TIPO_FACTURA_REF,P45_SERIE_FACTURA_REF,P45_NRO_CUOTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11453879809004832)
,p_name=>'OBTIENE_importe'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_NUMERO_FACTURA_REF,P45_NRO_CUOTA'
,p_condition_element=>'P45_NUMERO_FACTURA_REF'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11454300101004832)
,p_event_id=>wwv_flow_imp.id(11453879809004832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P45_IMPORTE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
' select  c.saldo_cuota - nvl(c.rec_pendientes, 0) saldo',
'      from cc_saldos c',
'     where cod_empresa      = ''1''',
' AND SALDO_CUOTA<>0',
'       and cod_cliente      = :P45_COD_CLIENTE',
'       AND TIPO_COMPROBANTE=:P45_TIPO_FACTURA_REF',
'       AND SER_COMPROBANTE = :P45_SERIE_FACTURA_REF',
'       AND NRO_COMPROBANTE = :P45_NUMERO_FACTURA_REF',
'       AND NRO_CUOTA = :P45_NRO_CUOTA ',
'and  c.saldo_cuota - nvl(c.rec_pendientes, 0) <>0',
'and :P45_EMPRESA_ORIGEN=''NGO''',
'UNION ALL',
' select  c.saldo_cuota - nvl(c.rec_pendientes, 0) saldo',
'      from cc_saldos c',
'     where cod_empresa      = ''18''',
' AND SALDO_CUOTA<>0',
'       and cod_cliente      = :P45_COD_CLIENTE',
'       AND TIPO_COMPROBANTE=:P45_TIPO_FACTURA_REF',
'       AND SER_COMPROBANTE = :P45_SERIE_FACTURA_REF',
'       AND NRO_COMPROBANTE = :P45_NUMERO_FACTURA_REF',
'       AND NRO_CUOTA = :P45_NRO_CUOTA ',
'and  c.saldo_cuota - nvl(c.rec_pendientes, 0) <>0',
'and :P45_EMPRESA_ORIGEN=''BH''',
'union all ',
' select  c.saldo_cuota - nvl(c.rec_pendientes, 0) saldo',
'      from cc_saldos@dblink_cph c',
'     where cod_empresa      = ''1''',
' AND SALDO_CUOTA<>0',
'       and cod_cliente      = :P45_COD_CLIENTE',
'       AND TIPO_COMPROBANTE=:P45_TIPO_FACTURA_REF',
'       AND SER_COMPROBANTE = :P45_SERIE_FACTURA_REF',
'       AND NRO_COMPROBANTE = :P45_NUMERO_FACTURA_REF',
'       AND NRO_CUOTA = :P45_NRO_CUOTA ',
'and  c.saldo_cuota - nvl(c.rec_pendientes, 0) <>0',
'and :P45_EMPRESA_ORIGEN=''CPH'''))
,p_attribute_07=>'P45_TIPO_FACTURA_REF,P45_SERIE_FACTURA_REF,P45_NUMERO_FACTURA_REF,P45_NRO_CUOTA,P45_COD_CLIENTE,P45_EMPRESA_ORIGEN'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11451626002004831)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'COLLECTION_CARGA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P45_COD_CLIENTE IS NOT NULL AND :P45_IMPORTE IS NOT NULL AND :P45_TIPO_FACTURA_REF IS NOT NULL THEN',
'declare',
'    l_order_id    number;',
'    l_order_id_det    number;',
'    ',
'begin',
'     --create collections',
'    BEGIN',
'    SELECT MAX(seq_id)',
'     INTO l_order_id',
'    FROM apex_collections',
'    WHERE collection_name=''CC_RECIBOS''',
'    AND ROWNUM=1;',
'    EXCEPTION WHEN OTHERS THEN ',
'     l_order_id := NULL ;',
'    END;',
'    IF l_order_id IS NULL THEN',
'  ',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''CC_RECIBOS'');',
'   -- apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''CC_DETALLE_RECIBOS'');',
'    ',
'    apex_collection.add_member(',
'            p_collection_name => ''CC_RECIBOS'',',
'            p_c001            => null, ',
'            p_c002            => null, ',
'            p_c003            => :P45_COD_CLIENTE,',
'            p_c004            => null,',
'            p_c005            => null,',
'            p_c006            => :P45_COD_CUSTODIO, ',
'            p_c007            => :P45_cod_moneda,           ',
'            p_c008            => null,',
'            p_c009            => :P45_TIP_CAMBIO   )  ;',
'        ',
'            ',
'    END IF;',
'    ',
'    ',
'',
'',
'        apex_collection.add_member(',
'            p_collection_name => ''CC_DETALLE_RECIBOS'',',
'            p_c001            => :P45_COD_CLIENTE, ',
'            p_c002            => :P45_TIPO_FACTURA_REF, ',
'            p_c003            => :P45_SERIE_FACTURA_REF,',
'            p_c004            => :P45_NUMERO_FACTURA_REF,',
'            p_c005            => NVL(:P45_NRO_CUOTA,1),',
'            p_c006            => :P45_IMPORTE   )  ; ',
'end;',
'',
'ELSE',
'   apex_application.g_print_success_message := ''<span style="color:red">Error en la insercion del articulo.</span>'';  ',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11443267260004827)
);
wwv_flow_imp.component_end;
end;
/
