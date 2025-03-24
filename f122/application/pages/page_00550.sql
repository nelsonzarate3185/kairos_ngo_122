prompt --application/pages/page_00550
begin
--   Manifest
--     PAGE: 00550
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
 p_id=>550
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Recibo de liquidacion de Salarios - RHRPLSAL'
,p_alias=>'RECIBO-DE-LIQUIDACION-DE-SALARIOS-RHRPLSAL'
,p_step_title=>'Recibo de liquidacion de Salarios - RHRPLSAL'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function doDescarga(p_cod_centro_pago,p_fecha_fin,p_tip_liquid,p_cod_empleado,p_nro_liquid,p_fecha_ini,p_fecha_parametro,p_cod_empresa,p_cod_categoria, p_cod_sucursal,p_cod_area,p_cod_departamento,p_cod_centro_costo,p_ind_firmado ){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/RHLIQDECREC.pdf?''',
'            + ''P_COD_CENTRO_PAGO='' + p_cod_centro_pago  + ''&P_FECHA_FIN='' + p_fecha_fin  + ''&P_TIP_LIQUID=''+ p_tip_liquid ',
'            + ''&P_COD_EMPLEADO=''+ p_cod_empleado + ''&P_NRO_LIQUID=''+ p_nro_liquid + ''&P_FECHA_INI=''+ p_fecha_ini',
'            + ''&P_FECHA_PARAMETRO=''+ p_fecha_parametro + ''&P_COD_EMPRESA=''+ p_cod_empresa + ''&P_COD_CATEGORIA=''+ p_cod_categoria ',
'            + ''&P_COD_SUCURSAL=''+ p_cod_sucursal + ''&P_COD_AREA='' + p_cod_area +''&P_COD_DEPARTAMENTO='' + p_cod_departamento',
'            +''&P_COD_CENTRO_COSTO='' + p_cod_centro_costo +''&P_IND_FIRMADO='' + p_ind_firmado',
'            +''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20230831143934'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(120170434884388523)
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
 p_id=>wwv_flow_imp.id(120171376050388532)
,p_plug_name=>'Recibo de liquidacion de Salarios '
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(120172735614388546)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(120171376050388532)
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
 p_id=>wwv_flow_imp.id(120170737610388526)
,p_name=>'P550_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(120170434884388523)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(120170815151388527)
,p_name=>'P550_COD_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(120171376050388532)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.descripcion d, s.cod_sucursal--, decode(s.estado, ''S'', ''Activo'', ''Inactivo'') estado',
'  from sucursales s',
' where s.cod_empresa = :P550_COD_EMPRESA',
'   and (s.cod_empresa, s.cod_sucursal ) in (select e.cod_empresa, e.cod_sucursal',
'                                          from rh_empleados e',
'                                         where e.cod_empresa = s.cod_empresa',
'                                           and e.cod_sucursal= s.cod_sucursal)',
'order by s.descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-seleccione -'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(120170904781388528)
,p_name=>'P550_COD_MODULO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(120170434884388523)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(120171056216388529)
,p_name=>'P550_COD_FORMA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(120170434884388523)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(120171193752388530)
,p_name=>'P550_COD_USUARIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(120170434884388523)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(120171434821388533)
,p_name=>'P550_ASEGURADOS_IPS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(120170434884388523)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(120171587884388534)
,p_name=>'P550_CONC_VACACIONES'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(120170434884388523)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(120171622539388535)
,p_name=>'P550_COD_EMPLEADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(120171376050388532)
,p_prompt=>'Empleado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  e.cod_empleado||''-''||ltrim( p.nombre) nombre, e.cod_empleado--, decode(activo, ''S'', ''Activo'', ''Inactivo'') estado ',
'from rh_empleados e, personas p ',
'where e.cod_empresa = :P550_COD_EMPRESA',
' and e.cod_persona = p.cod_persona ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(120171795696388536)
,p_name=>'P550_COD_AREA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(120171376050388532)
,p_prompt=>unistr('\00C1rea')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_area--, decode(ind_activo, ''S'', ''Activo'', ''Inactivo'') estado',
'from rh_areas',
'where cod_empresa = :P550_COD_EMPRESA',
'and cod_sucursal = :P550_COD_SUCURSAL',
'order by descripcion asc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P550_COD_SUCURSAL'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(120171851720388537)
,p_name=>'P550_COD_DEPARTAMENTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(120171376050388532)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_departamento--, decode(ind_activo, ''S'', ''Activo'', ''Inactivo'') estado',
'from rh_departamentos',
'where cod_empresa = :P550_COD_EMPRESA',
'and cod_sucursal = :P550_COD_SUCURSAL',
'and cod_area = :P550_COD_AREA',
'order by descripcion asc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P550_COD_SUCURSAL,P550_COD_AREA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(120171904299388538)
,p_name=>'P550_COD_CATEGORIA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(120171376050388532)
,p_prompt=>unistr('Categor\00EDa')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select descripcion, cod_categoria from rh_categorias_empleado order by 1'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(120172070043388539)
,p_name=>'P550_COD_CENTRO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(120171376050388532)
,p_prompt=>'Centro de pago'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select descripcion, cod_centro_pago from rh_centros_pagos order by descripcion'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(120172160325388540)
,p_name=>'P550_COD_CENTRO_COSTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(120171376050388532)
,p_prompt=>'Centro de Costo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_centro ',
'from co_centro_costos ',
'where cod_empresa = :P550_COD_EMPRESA',
'and cod_ejercicio=nvl(TO_CHAR(SYSDATE,''RRRR''),''2017'') order by 1'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(120172224563388541)
,p_name=>'P550_FECHA_INI'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(120171376050388532)
,p_prompt=>'Fecha Inicio'
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
 p_id=>wwv_flow_imp.id(120172384570388542)
,p_name=>'P550_FECHA_FIN'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(120171376050388532)
,p_prompt=>'Fecha fin'
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
 p_id=>wwv_flow_imp.id(120172463250388543)
,p_name=>'P550_FEC_PARAMETRO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(120171376050388532)
,p_prompt=>'Fecha recibo'
,p_post_element_text=>unistr('**En caso de no ingresarse la fecha del recibo, \00E9ste se imprime con fecha del \00FAltimo d\00EDa del mes en curso')
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>8
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
 p_id=>wwv_flow_imp.id(120172580880388544)
,p_name=>'P550_TIPO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(120171376050388532)
,p_prompt=>unistr('Tipo de liquidaci\00F3n')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CIERRE MENSUAL;M,ANTICIPO;A,ESPECIAL;E,COMPLEMENTO MENSUAL;C'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(120172603994388545)
,p_name=>'P550_IND_FIRMADO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(120171376050388532)
,p_prompt=>'Estado de firma'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:TODOS,RECIBOS FIRMADOS;S,RECIBOS PENDIENTES DE FIRMA;N'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(120172810780388547)
,p_name=>'P550_NRO_LIQUID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(120171376050388532)
,p_prompt=>unistr('Nro. Liquidaci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select --l.fec_liquid||'' - ''||l.ser_liquid||'' - ''||c.tip_liquid||'' - ''||l.nro_liquid d',
'c.anio||''-''||c.mes d',
',l.nro_liquid r',
'--c.mes        mes,',
'-- c.anio       anio',
'  from rh_cabecera_liq c, rh_liquidaciones l',
' where c.cod_empresa = :P550_COD_EMPRESA',
'   and (:P550_TIPO is null or c.tip_liquid = :P550_TIPO)',
'   and c.cod_empresa = l.cod_empresa',
'   and c.nro_liquid = l.nro_liquid',
'   and c.ser_liquid = l.ser_liquid',
'   and c.fec_liquid = l.fec_liquid',
'   and c.cod_empleado = :P550_COD_EMPLEADO',
' group by l.fec_liquid,',
'          l.nro_liquid,',
'          l.ser_liquid,',
'          c.tip_liquid,',
'          c.mes,',
'          c.anio',
' order by l.fec_liquid desc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P550_COD_EMPLEADO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(120173016607388549)
,p_name=>'DA_EJECUTAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(120172735614388546)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(120173115505388550)
,p_event_id=>wwv_flow_imp.id(120173016607388549)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doDescarga(apex.item(''P550_COD_CENTRO'').getValue(),apex.item(''P550_FECHA_FIN'').getValue()',
',apex.item(''P550_TIPO'').getValue(),apex.item(''P550_COD_EMPLEADO'').getValue()',
',apex.item(''P550_NRO_LIQUID'').getValue(),apex.item(''P550_FECHA_INI'').getValue()',
',apex.item(''P550_FEC_PARAMETRO'').getValue(),apex.item(''P550_COD_EMPRESA'').getValue()',
',apex.item(''P550_COD_CATEGORIA'').getValue(),apex.item(''P550_COD_SUCURSAL'').getValue()',
',apex.item(''P550_COD_AREA'').getValue(),apex.item(''P550_COD_DEPARTAMENTO'').getValue()',
',apex.item(''P550_COD_CENTRO_COSTO'').getValue(),apex.item(''P550_IND_FIRMADO'').getValue())'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(105124608885658920)
,p_name=>'DA_SELECCCIONA_EMPLEADO'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P550_COD_EMPLEADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105124773419658921)
,p_event_id=>wwv_flow_imp.id(105124608885658920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal, cod_area, cod_departamento, cod_categoria_emp, cod_centro_pago,',
'cod_centro_costo',
'into :P550_COD_SUCURSAL, :P550_COD_AREA, :P550_COD_DEPARTAMENTO, :P550_COD_CATEGORIA, :P550_COD_CENTRO,',
':P550_COD_CENTRO_COSTO',
'from rh_empleados e ',
'where e.cod_empresa = :P550_COD_EMPRESA and e.cod_empleado = :P550_COD_EMPLEADO;'))
,p_attribute_02=>'P550_COD_EMPRESA,P550_COD_EMPLEADO'
,p_attribute_03=>'P550_COD_SUCURSAL,P550_COD_AREA,P550_COD_CATEGORIA,P550_COD_DEPARTAMENTO,P550_COD_CENTRO,P550_COD_CENTRO_COSTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105124816122658922)
,p_event_id=>wwv_flow_imp.id(105124608885658920)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P550_NRO_LIQUID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(120170675333388525)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   :P550_COD_USUARIO := NVL(:P_COD_USUARIO,USER);',
'   :P550_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
'   :P550_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,NULL);',
'   :P550_COD_MODULO := NVL(:P_COD_MODULO,''RH'');   ',
'   :P550_ASEGURADOS_IPS := bs_busca_parametro (''RH'',''RH_ASEGURADOS_IPS'');',
'   :P550_CONC_VACACIONES := bs_busca_parametro (''RH'',''RH_CONC_VACACIONES'');',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
