prompt --application/pages/page_00053
begin
--   Manifest
--     PAGE: 00053
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
 p_id=>53
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Gastos'
,p_alias=>'GASTOS'
,p_page_mode=>'MODAL'
,p_step_title=>'Gastos'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_IMAGES#inputmask.js',
'#APP_IMAGES#imask.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function getLocation() {',
'var x=document.getElementById("geoError");',
'if (navigator.geolocation) {',
'navigator.geolocation.getCurrentPosition(',
' function setPosition(position) {',
'// x.innerHTML="setPosition:"+position.coords.latitude;',
' $s("P53_LATITUDE" , position.coords.latitude);',
'$s("P53_LONGITUDE", position.coords.longitude);',
' }',
',function (error)',
'{',
'switch(error.code) ',
'{',
'case error.PERMISSION_DENIED:',
'x.innerHTML="User denied the request for Geolocation."',
'break;',
'case error.POSITION_UNAVAILABLE:',
'x.innerHTML="Location information is unavailable."',
'break;',
'case error.TIMEOUT:',
'x.innerHTML="The request to get user location timed out."',
'break;',
'case error.UNKNOWN_ERROR:',
'x.innerHTML="An unknown error occurred."',
'break;',
'}',
'}    ',
',{timeout:10000});',
'x.innerHTML="Success";',
'}',
'else',
'x.innerHTML="Geolocation is not supported by this browser.";',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Inputmask("decimal", {',
'    radixPoint: '','',',
'    inputtype: "text"',
'}).mask("P35_IMPORTE");',
'',
'',
' ',
'',
'',
'',
'',
'var numberMask = new IMask (',
'document.getElementById(''P35_NRO_FACTURA''),{',
'mask: ''000-000-0000000'',',
'lazy: false',
'}',
');',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#map {',
' height: 100%;',
'}',
'#mapp .t-Region-body {',
' height: 600px !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'02'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230906111532'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(84737085797107240)
,p_plug_name=>'Ubicacion'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<a id="geoError"></a>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(84776719858819554)
,p_plug_name=>'Gastos'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12505463212505806)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(84776719858819554)
,p_button_name=>'Enviar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Enviar'
,p_button_position=>'BELOW_BOX'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(258023957599182504)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(84737085797107240)
,p_button_name=>'New'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'New'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12502709313505804)
,p_name=>'P53_LATITUDE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(84737085797107240)
,p_prompt=>'Latitude'
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
 p_id=>wwv_flow_imp.id(12503159258505804)
,p_name=>'P53_LONGITUDE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(84737085797107240)
,p_prompt=>'Longitud'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(12503541723505804)
,p_name=>'P53_ACCURACY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(84737085797107240)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12503934608505805)
,p_name=>'P53_ERROR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(84737085797107240)
,p_prompt=>'Error'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(12504385945505805)
,p_name=>'P53_DEPARTAMENTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(84737085797107240)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.DESCRIPCION, P.COD_PROVINCIA',
'FROM PROVINCIAS P',
'WHERE COD_PAIS = ''PAR'''))
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
 p_id=>wwv_flow_imp.id(12504701521505805)
,p_name=>'P53_CIUDAD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(84737085797107240)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION , COD_CIUDAD',
'FROM CIUDADES ',
'WHERE COD_PAIS = ''PAR''',
'AND COD_PROVINCIA = :P53_DEPARTAMENTO'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P53_DEPARTAMENTO'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12505829585505806)
,p_name=>'P53_NOMBRE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(84776719858819554)
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
 p_id=>wwv_flow_imp.id(12506223957505806)
,p_name=>'P53_ID_CARGA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(84776719858819554)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Transaccion'
,p_source=>'ID_CARGA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12506639347505806)
,p_name=>'P53_ID_VOUCHER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(84776719858819554)
,p_prompt=>'Id Voucher'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION, ID_VOUCHER from cp_voucher_cabecera A',
'where A.cod_EMPRESA=''1''',
'AND COD_EMPLEADO=:P53_EMPLEADO',
'AND trunc(SYSDATE) BETWEEN FECHA_INICIO AND FECHA_FIN',
'and nvl(ESTADO,''S'')<>''N''',
'group by descripcion, id_voucher',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P53_EMPLEADO'
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
 p_id=>wwv_flow_imp.id(12507071099505807)
,p_name=>'P53_COD_GASTO'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(84776719858819554)
,p_prompt=>'Tipo Gasto'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CON.DESCRIPCION, CON.COD_CONCEPTO ',
'from cp_voucher A, CP_WALLETS_CONCEPTOS CON,',
'cp_voucher_cabecera vc',
'where vc.cod_EMPRESA=''1''',
'AND vc.COD_EMPLEADO=:P53_EMPLEADO',
'and a.cod_empresa=vc.cod_empresa',
'and a.id_voucher=vc.id_voucher',
'',
'AND trunc(SYSDATE) BETWEEN vc.FECHA_INICIO AND vc.FECHA_FIN',
'AND ID_WALLET = CON.COD_CONCEPTO',
'AND CON.COD_EMPRESA=A.COD_EMPRESA',
'and vc.id_voucher=:P53_ID_VOUCHER'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P53_EMPLEADO,P53_ID_VOUCHER'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12507415584505807)
,p_name=>'P53_IMPORTE_ASIGNADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(84776719858819554)
,p_prompt=>'Importe Asignado'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12507810130505807)
,p_name=>'P53_IMPORTE_EJECUTADO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(84776719858819554)
,p_prompt=>'Importe Ejecutado'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12508293135505807)
,p_name=>'P53_PROVEEDOR'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(84776719858819554)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  nvl(NOM_RAZ_SOC_PROV,p.nombre)|| i.numero nombre, pr.cod_proveedor ',
'from personas p,cm_proveedores pr, ident_personas i',
'where pr.cod_empresa= ''1''',
'and p.cod_persona = i.cod_persona',
'and pr.cod_persona = p.cod_persona ',
'and pr.cod_persona = p.cod_persona',
'AND PR.ESTADO <> ''I''',
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
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12508616082505807)
,p_name=>'P53_NRO_FACTURA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(84776719858819554)
,p_prompt=>'Nro Factura'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(12509075682505808)
,p_name=>'P53_FECHA_FACTURA'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(84776719858819554)
,p_prompt=>'Fecha Factura'
,p_placeholder=>unistr('DIA/MES/A\00D1O')
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12509415975505808)
,p_name=>'P53_IMPORTE'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(84776719858819554)
,p_prompt=>'Importe'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style=''color:red;text-align: right;font-size: 20px;'''
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12509833277505808)
,p_name=>'P53_COMENTARIO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(84776719858819554)
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
 p_id=>wwv_flow_imp.id(12510249049505808)
,p_name=>'P53_EMPLEADO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(84776719858819554)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12510698079505808)
,p_name=>'P53_USUARIO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(84776719858819554)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12511025161505809)
,p_name=>'P53_FILE'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(84776719858819554)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Adjuntar Factura'
,p_source=>'ARCHIVO_ADJUNTO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIMETYPE'
,p_attribute_03=>'FILENAME'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_12=>'NATIVE'
,p_attribute_15=>'100000'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12511493771505809)
,p_name=>'P53_MIMETYPE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(84776719858819554)
,p_use_cache_before_default=>'NO'
,p_source=>'MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12511855859505809)
,p_name=>'P53_FILENAME'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(84776719858819554)
,p_use_cache_before_default=>'NO'
,p_source=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12513836371505811)
,p_name=>'Geolocation'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12514326949505811)
,p_event_id=>wwv_flow_imp.id(12513836371505811)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'getLocation();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12514705650505811)
,p_name=>'recupera_empleado'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12515228800505812)
,p_event_id=>wwv_flow_imp.id(12514705650505811)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select COD_EMPLEADO, p.nombre',
' INTO :P53_EMPLEADO, :P53_NOMBRE',
'from rh_empleados e, usuarios u, personas p',
'where e.cod_empresa=''1''',
'and e.cod_empresa=u.cod_empresa',
'and e.cod_persona=u.cod_persona',
'and u.cod_usuario=:P_COD_USUARIO',
'and u.cod_persona=p.cod_persona',
'and e.activo=''S'';',
'EXCEPTION WHEN OTHERS THEN',
':P53_EMPLEADO:=''687'';',
'end;'))
,p_attribute_02=>'P_COD_USUARIO'
,p_attribute_03=>'P53_EMPLEADO,P53_NOMBRE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12515623949505812)
,p_name=>'RECUPERA_IMPORTE'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P53_COD_GASTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12516130844505812)
,p_event_id=>wwv_flow_imp.id(12515623949505812)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'begin',
'select TO_CHAR(monto,''999G999G990'') ',
'into :P53_IMPORTE_ASIGNADO from cp_voucher A',
'where A.cod_EMPRESA=''1''',
'AND COD_EMPLEADO=:P53_EMPLEADO',
'AND :P53_ID_VOUCHER=ID_VOUCHER',
'AND ID_WALLET=:P53_cod_gasto',
'AND TRUNC(SYSDATE) BETWEEN FECHA_INICIO AND FECHA_FIN;',
'exception when others then :P53_IMPORTE_ASIGNADO:=0;',
'',
'end;',
'',
'begin',
'select TO_CHAR(sum(monto) ,''999G999G990'') ',
'into :P53_importe_ejecutado from cp_GASTOS_APP A',
'where A.cod_EMPRESA=''1''',
'AND COD_EMPLEADO=:P53_EMPLEADO',
'AND :P53_ID_VOUCHER=ID_VOUCHER',
'AND ID_WALLET=:P53_cod_gasto',
';',
'exception when others then ',
':P53_importe_ejecutado:=0;',
'end;',
'',
'',
'',
'end;'))
,p_attribute_02=>'P53_ID_VOUCHER,P53_COD_GASTO,P53_EMPLEADO'
,p_attribute_03=>'P53_IMPORTE_ASIGNADO,P53_IMPORTE_EJECUTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(258023795626182502)
,p_name=>'ubicar'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(258023957599182504)
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(258023828815182503)
,p_event_id=>wwv_flow_imp.id(258023795626182502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'getLocation();',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12512653607505810)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'guarda_gasto'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vdatos varchar2(4000);',
'VID NUMBER;',
'begin',
'  -- Call the procedure',
'  sp_crea_gastos(p_id_voucher => :p53_id_voucher,',
'                 p_id_wallet => :p53_COD_GASTO,',
'                 p_cod_departamento => :p53_Departamento,',
'                 p_cod_ciudad => :p53_ciudad,',
'                 p_latitud => :p53_latitudE,',
'                 p_longitud => :p53_longitudE,',
'                 p_distrito => :p53_departamento,',
'                 p_cod_proveedor => :p53_proveedor,',
'                 p_tipo_comprobante => ''FACTURA'',',
'                 p_numero_comprobante => :p53_nRO_FACTURA,',
'                 p_fecha_emision => :p53_fecha_FACTURA,',
'                 p_monto => :p53_IMPORTE,',
'                 p_id_imagen => null,',
'                 p_comentario => :p53_comentario,',
'                 p_creado_por => :P53_EMPLEADO,',
'                 p_fecha_alta => SYSDATE,',
'                 p_actualizado_por => :P53_USUARIO,',
'                 p_fecha_actualizacion => SYSDATE,',
'                 p_id => NULL,',
'                 p_accion => ''I'',',
'                 p_public_id => :p53_id_voucher,',
'                 p_id_generado => VID,',
'                 pdatos => vdatos);',
'                 :P53_id_carga:=VID;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error en la insercion'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12505463212505806)
,p_process_success_message=>'Gasto Creado'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12512236967505810)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'GUARDA_IMAGEN'
,p_attribute_02=>'CP_ADJUNTO_GASTOS'
,p_attribute_03=>'P53_ID_CARGA'
,p_attribute_04=>'ID_CARGA'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12505463212505806)
,p_process_success_message=>'OK'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12513005119505810)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT_BDNGO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*BEGIN INSERT INTO CP_ADJUNTO_GASTOS  (COD_EMPRESA,',
'ID_CARGA,',
'COMENTARIO,',
'HORA,',
'FECHA,',
'COD_USUARIO,',
'ARCHIVO_ADJUNTO,',
'MIMETYPE,',
'FILENAME,',
'CREATED_DATE',
')',
'SELECT COD_EMPRESA,',
'ID_CARGA,',
'COMENTARIO,',
'HORA,',
'FECHA,',
'COD_USUARIO,',
'ARCHIVO_ADJUNTO,',
'MIMETYPE,',
'FILENAME,',
'CREATED_DATE FROM CP_ADJUNTO_GASTOS;',
'exception',
'when others then ',
'null;',
'END;*/null;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12513481459505811)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Cierra'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12505463212505806)
);
wwv_flow_imp.component_end;
end;
/
