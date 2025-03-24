prompt --application/pages/page_00510
begin
--   Manifest
--     PAGE: 00510
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
 p_id=>510
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Registro de Entregas de Ots en Garantia - CASALOTS'
,p_alias=>'REGISTRO-DE-ENTREGAS-DE-OTS-EN-GARANTIA-CASALOTS'
,p_step_title=>'Registro de Entregas de Ots en Garantia '
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'AIBANEZ'
,p_last_upd_yyyymmddhh24miss=>'20230425091200'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(152744573514079007)
,p_plug_name=>'Registro de Salida de Ordenes de Trabajo'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(152745417401079016)
,p_plug_name=>'Info'
,p_parent_plug_id=>wwv_flow_imp.id(152744573514079007)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(152745039137079012)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(152744573514079007)
,p_button_name=>'BT_SALIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Salir'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152744038580079002)
,p_name=>'P510_COD_MODULO'
,p_item_sequence=>990
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152744266178079004)
,p_name=>'P510_COD_USUARIO'
,p_item_sequence=>1000
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152744362392079005)
,p_name=>'P510_COD_SUCURSAL'
,p_item_sequence=>1010
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152744467039079006)
,p_name=>'P510_COD_EMPRESA'
,p_item_sequence=>1020
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152744615194079008)
,p_name=>'P510_OT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(152744573514079007)
,p_prompt=>unistr('N\00FAmero de OT')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'    select TIP_COMPROBANTE ||'' - '' ||nro_comprobante D,',
'            nro_comprobante R',
'    from VT_ORDENES_TRABAJO',
'    where cod_empresa = :P_COD_EMPRESA;',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152744717206079009)
,p_name=>'P510_COD_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(152745417401079016)
,p_prompt=>'Producto'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152744899463079010)
,p_name=>'P510_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(152745417401079016)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152744957995079011)
,p_name=>'P510_MENSAJE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(152745417401079016)
,p_prompt=>'Mensaje'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152745161033079013)
,p_name=>'DA_OT'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P510_OT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152745252809079014)
,p_event_id=>wwv_flow_imp.id(152745161033079013)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'	vgarantia varchar2(60);',
'	verror EXCEPTION;',
'    v_producto varchar2(200);',
'BEGIN',
'',
'	SELECT S.COD_ARTICULO || '' - '' ||S.DESCRIPCION, V.NOM_CLIENTE, ind_garantia',
'	  INTO :P510_COD_ARTICULO,',
'	        :P510_CLIENTE,',
'            vgarantia',
'	FROM VT_ORDENES_TRABAJO V, ST_ARTICULOS S',
'	WHERE V.COD_EMPRESA= :P510_COD_EMPRESA',
'	AND V.TIP_COMPRoBANTE=''ORT''',
'	AND V.SER_COMPROBANTE=''A''',
'	AND V.NRO_COMPROBANTE=:P510_OT',
'	AND V.COD_EMPRESA=S.COD_EMPRESA',
'	AND V.COD_aRTICULO=S.COD_ARTICULO',
'	  and nvl(ind_retirado,''N'')<>''S''',
'	  and nvl(ind_garantia,''N'')=''S''',
'            AND NVL(V.IND_ENTREGA,''N'')<>''S'';',
'            if nvl(vgarantia,''N'')<>''S'' THEN',
'            	RAISE VERROR;',
'            	ELSE',
'            SP_ENTREGA_OR(:P510_OT, :P510_MENSAJE ) ;',
'END IF;',
'     ',
'            ',
'    EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'',
unistr('            :P510_COD_ARTICULO:= ''No se ha encontrado informaci\00F3n.'';'),
'            :P510_MENSAJE:= ''Sin datos.'';',
'            :P510_CLIENTE:= ''Sin datos.'';',
'',
'    WHEN VERROR THEN',
'            	:P510_COD_ARTICULO:=null;',
'	            :P510_ot:=null;',
'        ',
'    when others then ',
'            SP_ENTREGA_OR(:P510_OT, :P510_MENSAJE ) ;',
'            :P510_COD_ARTICULO:=null;',
'            :P510_ot:=null;',
'            :P510_CLIENTE:=null;',
'            apex_debug.error(''Error en la busqueda ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P510_OT,P510_COD_EMPRESA'
,p_attribute_03=>'P510_COD_ARTICULO,P510_CLIENTE,P510_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152745585507079017)
,p_name=>'DA_SALIR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(152745039137079012)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152746195371079023)
,p_event_id=>wwv_flow_imp.id(152745585507079017)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(152744573514079007)
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152745675892079018)
,p_event_id=>wwv_flow_imp.id(152745585507079017)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P510_COD_ARTICULO := null;',
':P510_CLIENTE := null ;',
':P510_MENSAJE := null;'))
,p_attribute_03=>'P510_COD_ARTICULO,P510_CLIENTE,P510_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(152745721459079019)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(152743902034079001)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P510_cod_usuario  := :P_cod_usuario  ;',
':P510_cod_empresa  := :P_cod_empresa  ;',
':P510_cod_sucursal := :P_cod_sucursal ;',
':P510_cod_modulo   := :P_cod_modulo   ;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
