prompt --application/pages/page_00048
begin
--   Manifest
--     PAGE: 00048
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
 p_id=>48
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Carga de Visitas'
,p_alias=>'CARGA-DE-VISITAS'
,p_page_mode=>'MODAL'
,p_step_title=>'Carga de Visitas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250224122238'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73296774922114671)
,p_plug_name=>'Visita'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(219007703609111027)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(73296774922114671)
,p_button_name=>'Cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12347256144123465)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(73296774922114671)
,p_button_name=>'Crear'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12347641820123466)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(73296774922114671)
,p_button_name=>'Nuevo'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12348017990123466)
,p_name=>'P48_FECHA'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(73296774922114671)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12348434556123466)
,p_name=>'P48_COD_VENDEDOR'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(73296774922114671)
,p_item_default=>'P_COD_VENDEDOR'
,p_item_default_type=>'ITEM'
,p_prompt=>'Cod Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  P.NOMBRE||''-''||COD_VENDEDOR||''-'' NOMBRE,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=:p_cod_empresa',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I'''))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12348829278123466)
,p_name=>'P48_COD_CLIENTE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(73296774922114671)
,p_prompt=>'Codigo de Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre|| '' ''|| codigo_area|| '' ''|| num_telefono || '' ''||numero||'' ''||cod_cliente nombre, cod_cliente',
'from cc_clientes c, personas p, telef_personas pt, ident_personas pi ',
'where c.cod_empresa = :p_cod_empresa',
'and c.cod_persona = p.cod_persona',
'and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'and nvl(c.estado,''X'')  in( ''A'' ,''C'',''B'')',
'order by nombre'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
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
 p_id=>wwv_flow_imp.id(12349289569123466)
,p_name=>'P48_NOMBRE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(73296774922114671)
,p_prompt=>'Nombre'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12349677231123467)
,p_name=>'P48_COD_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(73296774922114671)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre, P.cod_SUCURSAL',
'',
'	from cc_clientes         c, BS_SUCURSAL_CLIENTE p',
'	where c.cod_empresa=:p_cod_empresa',
'	and c.cod_cliente=:P48_cod_cliente',
'	and c.cod_cliente=p.cod_cliente',
'    and c.cod_empresa=p.cod_empresa'))
,p_lov_cascade_parent_items=>'P48_COD_CLIENTE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12350016498123467)
,p_name=>'P48_DEPARTAMENTO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(73296774922114671)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select descripcion',
'		     , cod_provincia',
'		      from provincias ',
'where coD_PAIS=''PAR'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12350434719123467)
,p_name=>'P48_CIUDAD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(73296774922114671)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION ,DESCRIPCION  COD_CIUDAD',
'FROM CIUDADES ',
'WHERE COD_PAIS = ''PAR''',
'AND COD_PROVINCIA = :P48_DEPARTAMENTO'))
,p_lov_cascade_parent_items=>'P48_DEPARTAMENTO,P48_COD_SUCURSAL'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12350807226123467)
,p_name=>'P48_ASUNTO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(73296774922114671)
,p_prompt=>'Asunto'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION , DESCRIPCION  COD_MOTIVO',
' FROM FV_MOTIVO_VISITA_VENTAS ',
' WHERE COD_EMPRESA=''1''',
' AND ACTIVO=''S'' ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12351275751123467)
,p_name=>'P48_USUARIO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(73296774922114671)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12351614813123467)
,p_name=>'P48_COMENTARIO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(73296774922114671)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(219007482495111024)
,p_name=>'P48_NOMBRE__VENDEDOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(73296774922114671)
,p_prompt=>'Nombre'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(627198473772991307)
,p_name=>'P48_NRO_MOVIMIENTO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(73296774922114671)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12352072086123468)
,p_name=>'guardar_visita'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12347256144123465)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12352540245123468)
,p_event_id=>wwv_flow_imp.id(12352072086123468)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12353027402123468)
,p_event_id=>wwv_flow_imp.id(12352072086123468)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'VNOMBRE VARCHAR2(400);',
'VEXISTE VARCHAR2(60);',
'begin',
'BEGIN',
'SELECT P.NOMBRE',
' INTO VNOMBRE',
'FROM CC_CLIENTES  C, PERSONAS  P',
'WHERE C.COD_EMPRESA=:P_COD_EMPRESA',
'AND C.COD_PERSONA=P.COD_PERSONA',
'AND C.COD_CLIENTE=:P48_COD_CLIENTE;',
'EXCEPTION WHEN OTHERS THEN',
'VNOMBRE:= NULL;',
'END;',
'begin',
'select ''S''',
' INTO VEXISTE',
'from fv_hoja_ruta_vendedor  a',
'where cod_empresa=:P_COD_EMPRESA',
'and cod_cliente =:P48_COD_CLIENTE',
'AND FECHA = :P48_FECHA',
'AND ASUNTO = :P48_ASUNTO',
'AND COD_VENDEDOR=:P48_COD_VENDEDOR',
'and a.cod_sucursal_distribuidor= :P48_COD_SUCURSAL',
'AND ROWNUM=''1'';',
'EXCEPTION',
'WHEN OTHERS THEN ',
'VEXISTE:=''N'';',
'end;',
'IF VEXISTE<>''S'' THEN',
'BEGIN',
'insert into fv_hoja_ruta_vendedor (',
'COD_EMPRESA,',
'COD_VENDEDOR,',
'FECHA,',
'COD_CLIENTE,',
'NOM_CLIENTE,',
'DIA,',
'CIUDAD,',
'ASUNTO,',
'FECHA_ALTA,',
'COD_USUARIO,',
'COMENTARIO, cod_sucursal_distribuidor',
') values (:P_COD_EMPRESA,:P48_COD_VENDEDOR,:P48_fecha,:P48_COD_CLIENTE, VNOMBRE,null,',
'         :P48_CIUDAD, :P48_ASUNTO,SYSDATE, :P48_USUARIO,:P48_COMENTARIO ,:P48_COD_SUCURSAL);',
'         COMMIT;',
'                      apex_application.g_print_success_message := ''<span style="color:green">Visita cargada exitosamente!!.</span>'';  ',
'                      ',
'end;',
'',
'',
'',
'',
'END IF;',
'END;'))
,p_attribute_02=>'P48_FECHA,P48_COD_VENDEDOR,P48_COD_CLIENTE,P48_DEPARTAMENTO,P48_CIUDAD,P48_ASUNTO,P48_COMENTARIO,P48_USUARIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12353555840123468)
,p_event_id=>wwv_flow_imp.id(12352072086123468)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN :P48_COD_VENDEDOR:=NULL;',
':P48_COD_CLIENTE:=NULL;',
':P48_DEPARTAMENTO:=NULL;',
':P48_CIUDAD:=NULL;',
':P48_ASUNTO:=NULL;',
':P48_COMENTARIO :=NULL;',
'END;'))
,p_attribute_03=>'P48_COD_VENDEDOR,P48_COD_CLIENTE,P48_DEPARTAMENTO,P48_CIUDAD,P48_ASUNTO,P48_COMENTARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12354041095123469)
,p_event_id=>wwv_flow_imp.id(12352072086123468)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Guardado con Exito!!'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12354536478123469)
,p_event_id=>wwv_flow_imp.id(12352072086123468)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73296774922114671)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(219006809096111018)
,p_event_id=>wwv_flow_imp.id(12352072086123468)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12354901018123469)
,p_name=>'nombre'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P48_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12355401823123469)
,p_event_id=>wwv_flow_imp.id(12354901018123469)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_NOMBRE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre',
'from cc_clientes  c, personas  p',
'where c.cod_empresa = :p_cod_empresa',
'and c.cod_persona = p.cod_persona',
'',
'',
'and c.cod_cliente=:P48_COD_CLIENTE',
'AND ROWNUM=1',
'order by nombre'))
,p_attribute_07=>'P48_COD_CLIENTE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(219007520923111025)
,p_name=>'nombre_vendedor'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P48_COD_VENDEDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(219007615559111026)
,p_event_id=>wwv_flow_imp.id(219007520923111025)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_NOMBRE__VENDEDOR'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre',
'from fv_vendedores c, personas  p',
'where c.cod_empresa = :p_cod_empresa',
'and c.cod_persona = p.cod_persona',
'',
'and c.cod_vendedor=:P48_COD_vendedor',
'AND ROWNUM=1',
'order by nombre'))
,p_attribute_07=>'P48_COD_VENDEDOR'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12355833566123469)
,p_name=>'departamento'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P48_COD_SUCURSAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12356355440123469)
,p_event_id=>wwv_flow_imp.id(12355833566123469)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'select p.COD_PROVINCIA, P.COD_CIUDAD',
'INTO :P48_DEPARTAMENTO, :P48_CIUDAD',
'',
'	from cc_clientes          c, BS_SUCURSAL_CLIENTE  p ',
'	where c.cod_empresa=:p_cod_empresa',
'	and c.cod_cliente=:P48_cod_cliente',
'AND P.COD_SUCURSAL=:P48_COD_SUCURSAL',
'	and c.cod_persona=p.cod_persona',
'      ;',
'        exception',
'        when others then ',
'    begin ',
'select p.COD_PROVINCIA, P.COD_CIUDAD',
'INTO :P48_DEPARTAMENTO, :P48_CIUDAD',
'',
'	from cc_clientes          c, DIREC_PERSONAS  p ',
'	where c.cod_empresa=''1''',
'	and c.cod_cliente=:P48_cod_cliente',
' ',
'	and c.cod_persona=p.cod_persona',
'        AND ROWNUM=1',
'      ;',
'        exception',
'        when others then ',
'        null;',
'        end;',
'        end;'))
,p_attribute_02=>'P48_COD_CLIENTE,P48_COD_SUCURSAL'
,p_attribute_03=>'P48_DEPARTAMENTO,P48_CIUDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12356710810123470)
,p_name=>'New'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12347641820123466)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12357207688123470)
,p_event_id=>wwv_flow_imp.id(12356710810123470)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_COD_VENDEDOR,P48_COD_CLIENTE,P48_NOMBRE,P48_COD_SUCURSAL,P48_DEPARTAMENTO,P48_CIUDAD,P48_ASUNTO,P48_COMENTARIO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
':P48_COD_VENDEDOR:=NULL;',
':P48_COD_CLIENTE:=NULL;',
':P48_DEPARTAMENTO:=NULL;',
':P48_CIUDAD:=NULL;',
':P48_ASUNTO:=NULL;',
':P48_COMENTARIO :=NULL;',
'END;'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
