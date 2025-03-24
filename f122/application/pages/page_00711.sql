prompt --application/pages/page_00711
begin
--   Manifest
--     PAGE: 00711
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
 p_id=>711
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'REP - Venta Perdida'
,p_alias=>'REP-VENTA-PERDIDA'
,p_page_mode=>'MODAL'
,p_step_title=>'Venta Perdida'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  ',
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: #e9ffbf !important;',
'   border-color: #8f0000 !important;',
'}',
'',
'.apex-item-select,  .apex-item-text , .apex-item-textarea , .apex-item-group, .display_only {',
'  border-color: #b4c6dd !important;',
'  background-color: #f8f6ea !important;',
'}',
'',
'',
'#PARAM{    ',
'  background-color: #487ab8  !important;',
'} ',
'',
' #sinstock{ background-color: #f8c4bc;}',
'',
'',
'.t-Body-content{',
'   background-color:  #d0e0f783!important;}',
'',
'',
'',
'  .tabla_color   td.t-Report-cell , .t-Form-label  {',
'  color: #003a85  !important;',
'  border-color: #003a85 !important;',
'}',
'',
'  th.t-Report-colHead,  th.t-Report-colHead a{',
'  background-color:  #fff6a4  !important;',
'  color: #003a85  !important;',
'  border-color: #487ab8;',
'}',
'',
' .a-IRR-header{',
'      background-color: #fff6a4  !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
'',
'  .a-IRR-headerLink{',
'    background-color: #fff6a4  !important;',
'	  color: #003a85 !important;    }',
'   ',
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td {',
'    border: 1px solid #003a85b7 !important;',
'}',
''))
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding'
,p_page_component_map=>'02'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20240404145555'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(258578951569502854)
,p_plug_name=>'Registro de Venta Perdida'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(248697270778554621)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(258578951569502854)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(248697672657554621)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(258578951569502854)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Registrar'
,p_button_position=>'CREATE'
,p_button_execute_validations=>'N'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(185086572425060733)
,p_name=>'P711_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(258578951569502854)
,p_use_cache_before_default=>'NO'
,p_source=>'ID_REGISTRO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(185086718194060735)
,p_name=>'P711_CANTIDAD'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(258578951569502854)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cantidad'
,p_source=>'CANTIDAD'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_imp.id(248698437163554624)
,p_name=>'P711_CODIGO_PIEZA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(258578951569502854)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Codigo Pieza'
,p_source=>'COD_REPUESTO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'	ST_ARTICULOS.COD_ARTICULO || '' - '' || ST_ARTICULOS.DESCRIPCION AS DESCRIPCION,',
'	ST_ARTICULOS.COD_ARTICULO AS COD_ARTICULO',
'FROM',
'	ST_ARTICULOS ST_ARTICULOS',
'WHERE',
'	ST_ARTICULOS.COD_RUBRO = ''RE''',
'	AND ST_ARTICULOS.cod_empresa = 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>300
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(248698824061554624)
,p_name=>'P711_DESCRIPCION_REPUESTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(258578951569502854)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descripcion Repuesto'
,p_source=>'DESCRIPCION_REPUESTO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(248699229177554624)
,p_name=>'P711_CODIGO_CLIENTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(258578951569502854)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Codigo Cliente'
,p_source=>'CODIGO_CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'	CC_CLIENTES.COD_CLIENTE || ''-'' || PERSONAS.NOMBRE AS DESCRIPCION,',
'	CC_CLIENTES.COD_CLIENTE AS CODIGO',
'FROM',
'	CC_CLIENTES CC_CLIENTES,',
'	PERSONAS PERSONAS ,',
'	IDENT_PERSONAS IDENT_PERSONAS',
'WHERE',
'	PERSONAS.COD_PERSONA = CC_CLIENTES.COD_PERSONA',
'	--AND CC_CLIENTES.ESTADO = ''A''',
'	AND IDENT_PERSONAS.COD_PERSONA = CC_CLIENTES.COD_PERSONA',
'	AND CC_CLIENTES.COD_EMPRESA = ''1''',
'	--AND COD_IDENT = ''RUC'''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(248699667107554625)
,p_name=>'P711_NOMBRE_CLIENTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(258578951569502854)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre Cliente'
,p_source=>'NOMBRE_CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>600
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(248700055232554625)
,p_name=>'P711_TELEFONO_CLIENTE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(258578951569502854)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Telefono Cliente'
,p_source=>'TELEFONO_CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(248700403215554625)
,p_name=>'P711_DIRECCION_CLIENTE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(258578951569502854)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Direccion del Cliente'
,p_source=>'DIRECCION_CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>600
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(248700868927554625)
,p_name=>'P711_CODIGO_PRODUCTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(258578951569502854)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Codigo del Producto'
,p_source=>'CODIGO_PRODUCTO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'	ST_ARTICULOS.COD_ARTICULO || ''-'' || ST_ARTICULOS.DESCRIPCION AS DESCRIPCION,',
'	ST_ARTICULOS.COD_ARTICULO AS COD_ARTICULO',
'FROM',
'	ST_ARTICULOS ST_ARTICULOS',
'WHERE',
'	ST_ARTICULOS.COD_RUBRO = ''PR''',
'	AND cod_art_corto IS NOT NULL',
'	AND NVL(ESTADO, ''N'') NOT IN (',
'		''I'', ''N''',
'	)'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(248701250424554625)
,p_name=>'P711_DESCRIPCION_PRODUCTO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(258578951569502854)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descripcion o Modelo del Producto'
,p_source=>'DESCRIPCION_PRODUCTO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(248701614508554626)
,p_name=>'P711_COMENTARIO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(258578951569502854)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comentario'
,p_source=>'COMENTARIO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>600
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(248702056816554626)
,p_name=>'P711_IMAGEN'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(258578951569502854)
,p_use_cache_before_default=>'NO'
,p_source=>'IMAGEN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(627197931466991302)
,p_name=>'P711_ORIGEN'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(258578951569502854)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SALON'
,p_source=>'ORIGEN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(627198079763991303)
,p_name=>'P711_COD_USUARIO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(258578951569502854)
,p_use_cache_before_default=>'NO'
,p_item_default=>'P_COD_USUARIO'
,p_item_default_type=>'ITEM'
,p_source=>'COD_USUARIO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(185086849666060736)
,p_name=>'Setear descripcion repuesto'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P711_CODIGO_PIEZA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(185086905164060737)
,p_event_id=>wwv_flow_imp.id(185086849666060736)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P711_DESCRIPCION_REPUESTO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select a.descripcion from st_articulos a where a.cod_empresa = 1 and a.cod_articulo = :P711_CODIGO_PIEZA'
,p_attribute_07=>'P711_CODIGO_PIEZA'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(185087017066060738)
,p_name=>'setear_nombre_cliente'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P711_CODIGO_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(185087198541060739)
,p_event_id=>wwv_flow_imp.id(185087017066060738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P711_NOMBRE_CLIENTE,P711_DIRECCION_CLIENTE,P711_TELEFONO_CLIENTE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'	a.nombre, ',
'	c.DETALLE AS direccion, ',
'	d.CODIGO_AREA ||d.NUM_TELEFONO as telefono',
'FROM',
'	personas a,',
'	cc_clientes b, ',
'	DIREC_PERSONAS c, ',
'	TELEF_PERSONAS d',
'WHERE',
'	a.cod_persona = b.cod_persona',
'	AND b.cod_empresa = 1',
'	AND a.COD_PERSONA = c.COD_PERSONA ',
'	AND a.COD_PERSONA = d.COD_PERSONA ',
'	AND d.POR_DEFECTO = ''S''',
'  and c.por_defecto=''S''',
'and b.cod_cliente = :P711_CODIGO_CLIENTE'))
,p_attribute_07=>'P711_CODIGO_CLIENTE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(185087288317060740)
,p_name=>'da_setear_descripcion_producto'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P711_CODIGO_PRODUCTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(185087373451060741)
,p_event_id=>wwv_flow_imp.id(185087288317060740)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P711_DESCRIPCION_PRODUCTO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'	a.descripcion',
'	FROM ',
'	st_articulos a ',
'	WHERE a.cod_empresa = 1',
'	AND a.cod_rubro = ''PR''',
'	AND a.COD_ARTICULO = :P711_CODIGO_PRODUCTO'))
,p_attribute_07=>'P711_CODIGO_PRODUCTO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(185086649843060734)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from ST_REPUESTOS_VENTA_PERDIDA'
,p_attribute_02=>'ST_REPUESTOS_VENTA_PERDIDA'
,p_attribute_03=>'P711_ID'
,p_attribute_04=>'ID_REGISTRO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(627197882259991301)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'	:P711_COD_USUARIO := :P_COD_USUARIO;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(248702816715554627)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of ST_REPUESTOS_VENTA_PERDIDA'
,p_attribute_02=>'ST_REPUESTOS_VENTA_PERDIDA'
,p_attribute_03=>'ID_REGISTRO'
,p_attribute_04=>'ID_REGISTRO'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
