prompt --application/pages/page_00399
begin
--   Manifest
--     PAGE: 00399
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
 p_id=>399
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CCRPLACO'
,p_alias=>'CCRPLACO'
,p_step_title=>'CCRPLACO'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}',
'',
'function doDescarga(p_cod_empresa, p_nro_recibo_desde,p_nro_recibo_hasta,p_cod_cliente,p_cod_cobrador,p_cod_cond_venta,p_cod_custodio,p_cod_sucursal,p_cod_vendedor,p_fec_ini,p_fec_final,p_mov_desde,p_mov_hasta){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CCPLACOB.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa + ''&P_NRO_RECIBO_DESDE='' + p_nro_recibo_desde + ''&P_NRO_RECIBO_HASTA=''+ p_nro_recibo_hasta  + ',
'            ''&P_COD_CLIENTE=''+ p_cod_cliente  + ''&P_COD_COBRADOR=''+ p_cod_cobrador  + ''&P_COD_CONDICION_VENTA=''+ p_cod_cond_venta  + ',
'            ''&P_COD_CUSTODIO=''+ p_cod_custodio  + ''&P_COD_SUCURSAL=''+ p_cod_sucursal  + ''&P_COD_VENDEDOR=''+ p_cod_vendedor  + ',
'            ''&P_FEC_INICIAL=''+ p_fec_ini + ''&P_FEC_FINAL=''+ p_fec_final + ''&P_NRO_MOVCAJ_DESDE=''+ p_mov_desde +',
'            ''&P_NRO_MOVCAJ_HASTA=''+ p_mov_hasta + ''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20231016093517'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117386131836966139)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119721872069447801)
,p_plug_name=>'Planilla de Cobros'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119723723159447820)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(119721872069447801)
,p_button_name=>'bt_limpiar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Limpiar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119723682830447819)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(119721872069447801)
,p_button_name=>'bt_ejecutar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117386206629966140)
,p_name=>'P399_DERECHOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(117386131836966139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117386329704966141)
,p_name=>'P399_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(117386131836966139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117386423946966142)
,p_name=>'P399_NOM_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(117386131836966139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117386594827966143)
,p_name=>'P399_COD_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(117386131836966139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117386630378966144)
,p_name=>'P399_COD_EMPRESA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(117386131836966139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117386778186966145)
,p_name=>'P399_NOM_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(117386131836966139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117386891912966146)
,p_name=>'P399_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(119721872069447801)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal||'' - ''||descripcion d, cod_sucursal r',
'from sucursales ',
'where cod_empresa = :P_COD_EMPRESA',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117386968849966147)
,p_name=>'P399_NOM_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(117386131836966139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117387013967966148)
,p_name=>'P399_COD_USUARIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(117386131836966139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117387126365966149)
,p_name=>'P399_COD_IDIOMA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(117386131836966139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117387249269966150)
,p_name=>'P399_CODSISMENU'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(117386131836966139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119721943901447802)
,p_name=>'P399_NOM_VENDEDOR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(119721872069447801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119722073813447803)
,p_name=>'P399_COD_CUSTODIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(119721872069447801)
,p_prompt=>'Custodio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_custodio||'' - ''||descripcion d , cod_custodio r ',
'from cc_custodios ',
'where cod_empresa = :P399_COD_EMPRESA',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119722138780447804)
,p_name=>'P399_NOM_CUSTODIO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(119721872069447801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119722291390447805)
,p_name=>'P399_COD_COBRADOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(119721872069447801)
,p_prompt=>'Cobrador'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cobrador ||'' - ''||nvl( p.nombre, p.nomb_fantasia ) nombre, c.cod_cobrador r',
'from personas p, cc_cobradores c ',
'where c.cod_empresa = :P_COD_EMPRESA ',
'and c.cod_persona = p.cod_persona',
' order by nombre'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119722311149447806)
,p_name=>'P399_COD_CLIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(119721872069447801)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_cliente||'' - ''||nvl( p.nombre, p.nomb_fantasia ) nombre, cod_cliente r',
'from cc_clientes c, personas p',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona ',
'order by nombre'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119722461600447807)
,p_name=>'P399_NOM_COBRADOR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(119721872069447801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119722585834447808)
,p_name=>'P399_NOM_CLIENTE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(119721872069447801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119722648099447809)
,p_name=>'P399_COD_VENDEDOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(119721872069447801)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.cod_vendedor ||'' - ''||ltrim( nvl( p.nombre, p.nomb_fantasia ) ) nombre, v.cod_vendedor r',
'from fv_vendedores v, personas p ',
'where v.cod_empresa = :P_COD_EMPRESA',
'and v.cod_persona = p.cod_persona order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119722746479447810)
,p_name=>'P399_COD_CONDICION_VENTA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(119721872069447801)
,p_prompt=>unistr('Condici\00F3 de Venta')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_condicion_venta||'' - ''||c.descripcion d, c.cod_condicion_venta r',
'from cc_condiciones_ventas c, vt_listas_precios_cab l ',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.estado = ''A'' ',
'and l.cod_empresa = c.cod_empresa ',
'and c.cod_lista_precio = l.cod_lista_precio'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119722818281447811)
,p_name=>'P399_NRO_RECIBO_DESDE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(119721872069447801)
,p_prompt=>'Nro Recibo Desde'
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
 p_id=>wwv_flow_imp.id(119722932283447812)
,p_name=>'P399_NRO_RECIBO_HASTA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(119721872069447801)
,p_prompt=>'Nro Recibo Hasta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119723045839447813)
,p_name=>'P399_NRO_MOVCAJ_DESDE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(119721872069447801)
,p_prompt=>'Nro. Mov. Caja desde'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119723127853447814)
,p_name=>'P399_NRO_MOVCAJ_HASTA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(119721872069447801)
,p_prompt=>'Nro. Mov. Caja hasta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119723204221447815)
,p_name=>'P399_FEC_INICIAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(119721872069447801)
,p_prompt=>'Fecha Inicial'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119723315908447816)
,p_name=>'P399_FEC_FINAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(119721872069447801)
,p_prompt=>'Fecha Final'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119723423327447817)
,p_name=>'P399_USUARIO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(119721872069447801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119723525375447818)
,p_name=>'P399_DESC_CONDICION'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(119721872069447801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119723833646447821)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(119723723159447820)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119723985911447822)
,p_event_id=>wwv_flow_imp.id(119723833646447821)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P399_COD_CUSTODIO,P399_COD_COBRADOR,P399_COD_CLIENTE,P399_COD_VENDEDOR,P399_COD_CONDICION_VENTA,P399_NRO_RECIBO_HASTA,P399_NRO_RECIBO_DESDE,P399_NRO_MOVCAJ_DESDE,P399_NRO_MOVCAJ_HASTA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124046771185908726)
,p_name=>'EXEC_REPORT'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(119723682830447819)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124047026020908729)
,p_event_id=>wwv_flow_imp.id(124046771185908726)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'BEGIN',
'INV.CCPLACOB.pr_setear_vbles_ctx(p_fech_inicial => :P399_FEC_INICIAL,',
'                                 p_fech_final => :P399_FEC_FINAL,',
'                                 p_cod_sucursal => :P399_COD_SUCURSAL,',
'                                 p_nro_recibo_desde => :P399_NRO_RECIBO_DESDE,',
'                                 p_nro_recibo_hasta => :P399_NRO_RECIBO_HASTA,',
'                                 p_nro_movcaj_desde => :P399_NRO_MOVCAJ_DESDE,',
'                                 p_nro_movcaj_hasta => :P399_NRO_MOVCAJ_HASTA,',
'                                 p_cod_cobrador => :P399_COD_COBRADOR,',
'                                 p_cod_custodio => :P399_COD_CUSTODIO,',
'                                 p_cod_cliente => :P399_COD_CLIENTE,',
'                                 p_cod_cond_venta => :P399_COD_CONDICION_VENTA,',
'                                 p_cod_vendedor => :P399_COD_VENDEDOR);',
'END;',
' '))
,p_attribute_02=>'P399_FEC_INICIAL,P399_FEC_FINAL,P399_COD_SUCURSAL,P399_NRO_RECIBO_DESDE,P399_NRO_RECIBO_HASTA,P399_NRO_MOVCAJ_DESDE,P399_NRO_MOVCAJ_HASTA,P399_COD_COBRADOR,P399_COD_CUSTODIO,P399_COD_CLIENTE,P399_COD_CONDICION_VENTA,P399_COD_VENDEDOR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124046818101908727)
,p_event_id=>wwv_flow_imp.id(124046771185908726)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doDescarga(apex.item(''P_COD_EMPRESA'').getValue(), apex.item(''P399_NRO_RECIBO_DESDE'').getValue(),apex.item(''P399_NRO_RECIBO_HASTA'').getValue(), apex.item(''P399_COD_CLIENTE'').getValue()',
', apex.item(''P399_COD_COBRADOR'').getValue(), apex.item(''P399_COD_CONDICION_VENTA'').getValue(), apex.item(''P399_COD_CUSTODIO'').getValue()',
', apex.item(''P399_COD_SUCURSAL'').getValue(), apex.item(''P399_COD_VENDEDOR'').getValue(), apex.item(''P399_FEC_INICIAL'').getValue()',
', apex.item(''P399_FEC_FINAL'').getValue(), apex.item(''P399_NRO_MOVCAJ_DESDE'').getValue(), apex.item(''P399_NRO_MOVCAJ_HASTA'').getValue());'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(117386043120966138)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--INICIALIZA_GLOBALES* (Cuerpo del Procedimiento)',
'begin',
'    ',
'    :P399_COD_USUARIO := NVL(:P_COD_USUARIO,USER );',
'    :P399_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'' );',
'    :P399_NOM_EMPRESA := NVL(:P_NOM_EMPRESA,NULL );',
'    :P399_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'' );',
'    :P399_NOM_SUCURSAL := NVL(:P_NOM_SUCURSAL,NULL );',
'    :P399_COD_MODULO := NVL(:P_COD_MODULO,''CC'' );',
' ',
'    :P399_FEC_INICIAL := sysdate;',
'    :P399_FEC_FINAL := sysdate;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
