prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
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
 p_id=>10
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Planilla de Caja'
,p_alias=>'PLANILLA-DE-CAJA'
,p_step_title=>'Planilla de Caja'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function doDescarga(',
'  p_cod_empresa,',
'  p_cod_sucursal,',
'  p_fec_inicial,',
'  p_fec_final,',
'  p_cod_usuario,',
'  p_tip_cambio,',
'  p_cod_moneda_us,',
'  p_cod_moneda_base,',
'  p_saldo_inicial,',
'  p_usuario_impresion,',
'  p_nro_habilitacion,',
'  p_fec_apertura,',
'  p_fec_cierre,',
'  p_val_a_dep,',
'  p_che_rch_rec,',
'  p_cambio_che',
') {',
'  var vURL =',
'    "https://ngosaeca.com.py/reportes/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports&reportUnit=%2Freports%2FVTPLACAJNGO&standAlone=true&j_username=jasperadmin&j_password=jasperadmin&output=pdf"+',
'    //"&REPORT_LOCALE=es_MX" +',
'    //"http://192.168.15.98:8080/reportes/rest_v2/reports/reports/VTPLACAJNGO.pdf?&j_username=jasperadmin&j_password=jasperadmin" +',
'    //"http://192.168.15.99:8080/reportes/rest_v2/reports/reports/VTPLACAJNGO.pdf?&j_username=jasperadmin&j_password=jasperadmin" +',
'    "&P_COD_EMPRESA=" +',
'    p_cod_empresa +',
'    "&P_COD_SUCURSAL=" +',
'    p_cod_sucursal +',
'    "&P_FEC_INICIAL=" +',
'    p_fec_inicial +',
'    "&P_FEC_FINAL=" +',
'    p_fec_final +',
'    "&P_COD_USUARIO=" +',
'    p_cod_usuario +',
'    "&P_TIP_CAMBIO=" +',
'    p_tip_cambio +',
'    "&P_COD_MONEDA_US=" +',
'    p_cod_moneda_us +',
'    "&P_COD_MONEDA_BASE=" +',
'    p_cod_moneda_base +',
'    "&P_SALDO_INICIAL=" +',
'    p_saldo_inicial +',
'    "&P_USUARIO_IMPRESION=" +',
'    p_usuario_impresion +',
'    "&P_NRO_HABILITACION=" +',
'    p_nro_habilitacion +',
'    "&P_FEC_APERTURA=" +',
'    p_fec_apertura +',
'    "&P_FEC_CIERRE=" +',
'    p_fec_cierre +',
'    "&P_VAL_A_DEP=" +',
'    p_val_a_dep +',
'    "&P_CHE_RCH_REC=" +',
'    p_che_rch_rec +',
'    "&P_CAMBIO_CHE=" +',
'    p_cambio_che;',
'',
'  console.log(vURL);',
'  //window.open(unescape(vURL.replace(/&amp;/g, "g")), "_blank");',
'  window.open(vURL, "_blank");',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#bt_ejecutar{',
'    width: 30%;',
'    margin-left: 35%;',
'    margin-top: 20px;',
'}',
'',
'.t-Form-fieldContainer:not(.js-show-label) .t-Form-labelContainer .t-Form-label {        ',
'    margin-top: -8px ;       ',
'    } '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'WVEGA'
,p_last_upd_yyyymmddhh24miss=>'20240911144638'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5966951887783223)
,p_plug_name=>'Planilla de Caja'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_display_column=>4
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5967763243783231)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(5966951887783223)
,p_button_name=>'BT_EJECUTAR'
,p_button_static_id=>'bt_ejecutar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CODIGO DEL BOTON EJECUTAR EN EL FORMS: ',
'',
'declare',
'	pl_id   ParamList; ',
'begin',
'',
'  pl_id := Get_Parameter_List(''tmpdata''); ',
'',
'  if not id_null(pl_id) then',
'     Destroy_Parameter_List( pl_id ); ',
'  end if; ',
'',
'  pl_id := Create_Parameter_List(''tmpdata''); ',
'  Add_Parameter(pl_id,''DESTYPE'',TEXT_PARAMETER,''Screen''); ',
'  Add_Parameter(pl_id,''PARAMFORM'',TEXT_PARAMETER,''NO''); ',
'  Add_Parameter(pl_id,''P_COD_EMPRESA'',TEXT_PARAMETER,:VARIABLES.COD_EMPRESA);',
'  Add_Parameter(pl_id,''P_COD_USUARIO'',TEXT_PARAMETER,:b_parametro.cod_usuario);  ',
'  add_parameter(pl_id,''MAXIMIZE'',TEXT_PARAMETER,''YES'');',
'  ',
'if nvl(:b_parametro.VER_DETALLE,''N'')=''S'' THEN',
'	Add_Parameter(pl_id,''P_FEC_INI'',TEXT_PARAMETER,TO_CHAR( :B_PARAMETRO.P_FECHA_INICIO,''DD/MM/YYYY'')); ',
'	Add_Parameter(pl_id,''P_FEC_FIN'',TEXT_PARAMETER,TO_CHAR( :B_PARAMETRO.P_FECHA_FIN,''DD/MM/YYYY'')); ',
'	Run_Product(REPORTS, ''vtplacajres'', ASYNCHRONOUS, RUNTIME, FILESYSTEM, pl_id, NULL); ',
'	ELSE',
'  Add_Parameter(pl_id,''P_FEC_INICIAL'',TEXT_PARAMETER,TO_CHAR( :B_PARAMETRO.FEC_INICIAL,''DD/MM/YYYY'')); ',
'  if :b_parametro.fec_inicial<to_date(''27/12/2012'',''DD/MM/YYYY'') then ',
'  	 Run_Product(REPORTS, ''vtplacaj'', ASYNCHRONOUS, RUNTIME, FILESYSTEM, pl_id, NULL); ',
'  	  elsif :b_parametro.fec_inicial<to_date(''01/08/2021'',''DD/MM/YYYY'') then ',
'  	 Run_Product(REPORTS, ''vtplacajnew02082021'', ASYNCHRONOUS, RUNTIME, FILESYSTEM, pl_id, NULL); ',
'  elsif :b_parametro.fec_inicial<to_date(''03/04/2016'',''DD/MM/YYYY'') then ',
'  	 Run_Product(REPORTS, ''vtplacajnew02042016'', ASYNCHRONOUS, RUNTIME, FILESYSTEM, pl_id, NULL); ',
'  elsif :b_parametro.fec_inicial<to_date(''26/01/2017'',''DD/MM/RRRR'') then ',
'  	 Run_Product(REPORTS, ''vtplacajnew0'', ASYNCHRONOUS, RUNTIME, FILESYSTEM, pl_id, NULL);  ',
'  else',
'  Run_Product(REPORTS, ''vtplacajnew'', ASYNCHRONOUS, RUNTIME, FILESYSTEM, pl_id, NULL); ',
'  end if;',
'  END IF;',
'end;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5967221614783226)
,p_name=>'P10_COD_USUARIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5966951887783223)
,p_prompt=>unistr('C\00F3digo de Usuario')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_USUARIOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--VTRPLACA',
'select cod_usuario R, cod_usuario|| '' - ''|| nombre D',
'from usuarios u, personas p',
'where   u.cod_persona=p.cod_persona',
' '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5967316002783227)
,p_name=>'P10_FEC_INICIAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5966951887783223)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5967423227783228)
,p_name=>'P10_VER_DETALLE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(5966951887783223)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5967576074783229)
,p_name=>'P10_P_FECHA_INICIAL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(5966951887783223)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5967691316783230)
,p_name=>'P10_P_FECHA_FINAL'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(5966951887783223)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10960857243152808)
,p_name=>'P10_COD_MONEDA_BASE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(5966951887783223)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10960942583152809)
,p_name=>'P10_COD_MONEDA_US'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(5966951887783223)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10961029156152810)
,p_name=>'P10_TIP_CAMBIO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(5966951887783223)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10961146056152811)
,p_name=>'P10_SALDO_INICIAL'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(5966951887783223)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10961247041152812)
,p_name=>'P10_COD_SUCURSAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(5966951887783223)
,p_prompt=>unistr('C\00F3digo de Sucursal')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUC.COD_SUCURSAL || '' - '' || SUC.DESCRIPCION SUCURSAL, SUC.COD_SUCURSAL CODIGO',
'FROM INV.SUCURSALES SUC',
'WHERE SUC.COD_EMPRESA = :P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10961412188152814)
,p_name=>'P10_COD_EMPRESA'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(5966951887783223)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10961624151152816)
,p_name=>'P10_AUX_EJECUTA_REPORTE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(5966951887783223)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10961776801152817)
,p_name=>'P10_AUX_MSJ'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(5966951887783223)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10962431659152824)
,p_name=>'P10_COD_USUARIO_VAR'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(5966951887783223)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14597758369343829)
,p_name=>'P10_AUX_TOTAL'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(5966951887783223)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68204809578225205)
,p_name=>'P10_FEC_INI_STR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(5966951887783223)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87681167508956330)
,p_name=>'P10_NRO_HABILITACION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5966951887783223)
,p_prompt=>unistr('Habilitaci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_HABILITACIONES_CAJA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT HAB.COD_SUCURSAL,',
'       HAB.NRO_HABILITACION,',
'       HAB.COD_USUARIO,',
'       HAB.FEC_HABILITACION,',
'       HAB.FEC_CIERRE',
'FROM   INV.CC_HABILITACIONES HAB',
'WHERE  HAB.COD_EMPRESA = :P_COD_EMPRESA',
'ORDER  BY HAB.FEC_HABILITACION DESC, HAB.COD_SUCURSAL',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87681283345956331)
,p_name=>'P10_FEC_FINAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5966951887783223)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87682321512956342)
,p_name=>'P10_APP_USER'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(5966951887783223)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87682462786956343)
,p_name=>'P10_NOM_USUARIO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5966951887783223)
,p_item_default=>'TODOS'
,p_prompt=>'Nombre de Usuario'
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
 p_id=>wwv_flow_imp.id(87682530258956344)
,p_name=>'P10_NOM_SUCURSAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(5966951887783223)
,p_item_default=>'TODAS'
,p_prompt=>'Nombre de Sucursal'
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
 p_id=>wwv_flow_imp.id(255389347529796903)
,p_name=>'P10_FEC_FIN_STR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(5966951887783223)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(255389463310796904)
,p_name=>'P10_VAL_A_DEP'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(5966951887783223)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(255389545431796905)
,p_name=>'P10_CHE_RCH_REC'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(5966951887783223)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(255389612161796906)
,p_name=>'P10_CAMBIO_CHE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(5966951887783223)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10962393528152823)
,p_validation_name=>'VA_FEC_INICIAL'
,p_validation_sequence=>20
,p_validation=>'P10_FEC_INICIAL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe ingresar una fecha inicial.'
,p_associated_item=>wwv_flow_imp.id(5967316002783227)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(87681400744956333)
,p_validation_name=>'VA_FEC_FINAL'
,p_validation_sequence=>30
,p_validation=>'P10_FEC_FINAL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe ingresar una fecha inicial.'
,p_associated_item=>wwv_flow_imp.id(87681283345956331)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6279385850394101)
,p_name=>'DA_CHANGE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_VER_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6279452421394102)
,p_event_id=>wwv_flow_imp.id(6279385850394101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P10_VER_DETALLE = 1 THEN',
'    :P10_CHEQUEADO := ''SE MARCO'';',
'ELSE',
'    :P10_CHEQUEADO := ''NO SE MARCO'';',
'END IF;'))
,p_attribute_02=>'P10_VER_DETALLE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10960604098152806)
,p_name=>'DA_EJECUTA_REPORTE'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5967763243783231)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(501088610229307701)
,p_event_id=>wwv_flow_imp.id(10960604098152806)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var spinner = apex.util.showSpinner();',
'document.getElementById(''bt_ejecutar'').disabled = true;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10961366729152813)
,p_event_id=>wwv_flow_imp.id(10960604098152806)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_id_param varchar2(300) := :APP_USER||TO_CHAR(SYSDATE, ''YYYYMMDDHH24MISS'');',
'BEGIN',
'   -- Inserta parametro para utilizar en la vista --',
'    DELETE INV.CC_PARAM_PLAN_CAJA WHERE COD_USUARIO = :APP_USER;',
'    ---',
'    INSERT INTO INV.CC_PARAM_PLAN_CAJA(ID_PARAM, COD_USUARIO, P_FEC_INICIO, P_FEC_FIN ) values ',
'                                      (v_id_param, :APP_USER, TO_DATE(:P10_FEC_INICIAL, ''DD/MM/YYYY''), TO_DATE(:P10_FEC_FINAL, ''DD/MM/YYYY''));',
'    COMMIT;',
'   ------------------------------------------------ ',
'',
'  :P10_AUX_MSJ := NULL;',
'  INV.VTRPLACA.BEFOREREPORT(P_COD_EMPRESA => :P10_COD_EMPRESA,',
'                            P_COD_MONEDA_BASE => :P10_COD_MONEDA_BASE,',
'                            P_COD_MONEDA_US => :P10_COD_MONEDA_US,',
'                            P_TIP_CAMBIO => :P10_TIP_CAMBIO,',
'                            P_FEC_INICIAL => TO_DATE(:P10_FEC_INICIAL, ''DD/MM/YYYY''),--TO_CHAR(TO_DATE(:P10_FEC_INICIAL, ''DD/MM/YYYY''), ''DD/MM/YYYY''),',
'                            P_FEC_FINAL => TO_DATE(:P10_FEC_FINAL, ''DD/MM/YYYY''),',
'                            P_SALDO_INICIAL => :P10_SALDO_INICIAL,',
'                            P_COD_USUARIO => :P10_COD_USUARIO,',
'                            P_COD_SUCURSAL => :P10_COD_SUCURSAL,',
'                            P_VAL_A_DEP => :P10_VAL_A_DEP,',
'                            P_CHE_RCH_REC => :P10_CHE_RCH_REC,',
'                            P_CAMBIO_CHE => :P10_CAMBIO_CHE);',
'',
'  :P10_AUX_EJECUTA_REPORTE := 1;',
'  /*:P10_AUX_TOTAL           := INV.VTRPLACA.OBTENER_TOTAL(P_COD_MONEDA_BASE => :P10_COD_MONEDA_BASE,',
'                                                         P_COD_MONEDA_US => :P10_COD_MONEDA_US,',
'                                                         P_TIP_CAMBIO => :P10_TIP_CAMBIO,',
'                                                         P_COD_EMPRESA => :P10_COD_EMPRESA,',
'                                                         P_FEC_INICIAL => TO_CHAR(TO_DATE(:P10_FEC_INICIAL,',
'                                                                                           ''DD/MM/YYYY''),',
'                                                                                   ''DD/MM/YYYY''),',
'                                                         P_COD_SUCURSAL => :P10_COD_SUCURSAL,',
'                                                         P_COD_USUARIO => :P10_COD_USUARIO,',
'                                                         P_COD_USUARIO_VAR => :P10_COD_USUARIO_VAR,',
'                                                         P_SALDO_INICIAL => :P10_SALDO_INICIAL);*/',
unistr('  :P10_AUX_MSJ             := ''El reporte se encuentra en ejecuci\00F3n.'';'),
'  :P10_FEC_INI_STR         := TO_CHAR(TO_DATE(:P10_FEC_INICIAL, ''DD/MM/YYYY''),',
'                                      ''DD/MM/YYYY'');',
'  :P10_FEC_FIN_STR         := TO_CHAR(TO_DATE(:P10_FEC_FINAL, ''DD/MM/YYYY''),',
'                                      ''DD/MM/YYYY'');',
'  --COMMIT;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    :P10_AUX_EJECUTA_REPORTE := 2;',
unistr('    :P10_AUX_MSJ             := ''Ocurri\00F3 un error al recuperar los par\00E1metros '' ||'),
'                                SQLERRM;',
'END;',
''))
,p_attribute_02=>'P10_COD_EMPRESA,P10_FEC_INICIAL,P10_COD_USUARIO,P10_COD_SUCURSAL,P10_FEC_FINAL'
,p_attribute_03=>'P10_AUX_TOTAL,P10_AUX_MSJ,P10_AUX_EJECUTA_REPORTE,P10_COD_MONEDA_BASE,P10_COD_MONEDA_US,P10_TIP_CAMBIO,P10_SALDO_INICIAL,P10_FEC_INI_STR,P10_FEC_FIN_STR,P10_VAL_A_DEP,P10_CHE_RCH_REC,P10_CAMBIO_CHE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10960753906152807)
,p_event_id=>wwv_flow_imp.id(10960604098152806)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doDescarga(',
'  apex.item("P10_COD_EMPRESA").getValue(),',
'  apex.item("P10_COD_SUCURSAL").getValue(),',
'  apex.item("P10_FEC_INI_STR").getValue(),',
'  apex.item("P10_FEC_FIN_STR").getValue(),',
'  apex.item("P10_COD_USUARIO").getValue(),',
'  apex.item("P10_TIP_CAMBIO").getValue(),',
'  apex.item("P10_COD_MONEDA_US").getValue(),',
'  apex.item("P10_COD_MONEDA_BASE").getValue(),',
'  apex.item("P10_SALDO_INICIAL").getValue(),',
'  apex.item("P10_APP_USER").getValue(),',
'  apex.item("P10_NRO_HABILITACION").getValue(),',
'  apex.item("P10_FEC_INICIAL").getValue(),',
'  apex.item("P10_FEC_FINAL").getValue(),',
'  apex.item("P10_VAL_A_DEP").getValue(),',
'  apex.item("P10_CHE_RCH_REC").getValue(),',
'  apex.item("P10_CAMBIO_CHE").getValue()',
');',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P10_AUX_EJECUTA_REPORTE'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(501088723213307702)
,p_event_id=>wwv_flow_imp.id(10960604098152806)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();',
'document.getElementById(''bt_ejecutar'').disabled = false;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(87682839873956347)
,p_name=>'DA_NOM_SUCURSAL'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_COD_SUCURSAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(87682978197956348)
,p_event_id=>wwv_flow_imp.id(87682839873956347)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT SUC.DESCRIPCION SUCURSAL',
'  INTO   :P10_NOM_SUCURSAL',
'  FROM   INV.SUCURSALES SUC',
'  WHERE  SUC.COD_EMPRESA = :P_COD_EMPRESA',
'  AND    COD_SUCURSAL = :P10_COD_SUCURSAL;',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    :P10_COD_SUCURSAL := NULL;',
'    :P10_NOM_SUCURSAL := ''TODAS'';',
'    RAISE_APPLICATION_ERROR(-20000, ''No se ha encontrado la sucursal'');',
'  WHEN OTHERS THEN',
'    :P10_COD_SUCURSAL := NULL;',
'    :P10_NOM_SUCURSAL := ''TODAS'';',
'    RAISE_APPLICATION_ERROR(-20099,',
'                            ''Error al buscar la sucursal. '' || SQLERRM);',
'END;',
''))
,p_attribute_02=>'P10_COD_SUCURSAL,P_COD_EMPRESA'
,p_attribute_03=>'P10_NOM_SUCURSAL,P10_COD_SUCURSAL'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P10_COD_SUCURSAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(87683027010956349)
,p_event_id=>wwv_flow_imp.id(87682839873956347)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P10_NOM_SUCURSAL := ''TODAS'';'
,p_attribute_03=>'P10_NOM_SUCURSAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P10_COD_SUCURSAL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(87681888215956337)
,p_name=>'DA_COMPLETAR_FORM'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_NRO_HABILITACION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(87681937025956338)
,p_event_id=>wwv_flow_imp.id(87681888215956337)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT HAB.COD_SUCURSAL, HAB.COD_USUARIO, HAB.FEC_HABILITACION, NVL(HAB.FEC_CIERRE, HAB.FEC_HABILITACION)',
'    INTO :P10_COD_SUCURSAL, :P10_COD_USUARIO, :P10_FEC_INICIAL, :P10_FEC_FINAL',
'    FROM INV.CC_HABILITACIONES HAB',
'    WHERE HAB.COD_EMPRESA = :P_COD_EMPRESA',
'    AND HAB.NRO_HABILITACION = :P10_NRO_HABILITACION;',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        RAISE_APPLICATION_ERROR(-20099, ''Error al buscar la habilitaci\00F3n de caja. '' || SQLERRM);'),
'END;'))
,p_attribute_02=>'P10_NRO_HABILITACION,P_COD_EMPRESA'
,p_attribute_03=>'P10_COD_SUCURSAL,P10_COD_USUARIO,P10_FEC_INICIAL,P10_FEC_FINAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(87683118037956350)
,p_name=>'DA_NOM_USUARIO'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_COD_USUARIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255389128157796901)
,p_event_id=>wwv_flow_imp.id(87683118037956350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P10_COD_USUARIO := UPPER(:P10_COD_USUARIO);',
'',
'  SELECT NVL(P.NOMB_FANTASIA, P.NOMBRE)',
'  INTO   :P10_NOM_USUARIO',
'  FROM   USUARIOS U, PERSONAS P',
'  WHERE  U.COD_PERSONA = P.COD_PERSONA',
'  AND    U.COD_USUARIO = :P10_COD_USUARIO;',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    :P10_COD_USUARIO := NULL;',
'    :P10_NOM_USUARIO := ''TODOS'';',
'    RAISE_APPLICATION_ERROR(-20000, ''No se ha encontrado el usuario'');',
'  WHEN OTHERS THEN',
'    :P10_COD_USUARIO := NULL;',
'    :P10_NOM_USUARIO := ''TODOS'';',
'    RAISE_APPLICATION_ERROR(-20099,',
'                            ''Error al buscar el usuario. '' || SQLERRM);',
'END;',
''))
,p_attribute_02=>'P10_COD_USUARIO'
,p_attribute_03=>'P10_NOM_USUARIO,P10_COD_USUARIO'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P10_COD_USUARIO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255389249376796902)
,p_event_id=>wwv_flow_imp.id(87683118037956350)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P10_NOM_USUARIO := ''TODOS'';'
,p_attribute_03=>'P10_NOM_USUARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P10_COD_USUARIO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(501088800582307703)
,p_name=>'DA_FEC_INI'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_FEC_INICIAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(501088923579307704)
,p_event_id=>wwv_flow_imp.id(501088800582307703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var sourceValue = apex.item("P10_FEC_INICIAL").getValue();',
'apex.item("P10_FEC_FINAL").setValue(sourceValue);',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10962123949152821)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR_SESSION'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10961522895152815)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P10_COD_EMPRESA := nvl(:P_COD_EMPRESA, ''1'');',
':P10_COD_USUARIO_VAR := nvl(:P_COD_USUARIO, :APP_USER);',
':P10_APP_USER := :APP_USER;',
':P10_FEC_INICIAL := TRUNC(SYSDATE);',
':P10_FEC_FINAL := TRUNC(SYSDATE);'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
