prompt --application/pages/page_00456
begin
--   Manifest
--     PAGE: 00456
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
 p_id=>456
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'RPLIQFOK'
,p_alias=>'RPLIQFOK'
,p_step_title=>'RPLIQFOK'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function descargaRPLIQFLETCHOF(p_cod_vehiculo, p_nro_planilla, p_repartidor, p_transportadora, p_fecha_ini, p_fecha_FIN, p_tipo){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/RPLIQFLETCHOF/rpliqfletchof.pdf?''',
'            + ''P_VEHICULO='' + p_cod_vehiculo + ''&P_NRO_PLANILLA='' + p_nro_planilla  + ''&P_REPARTIDOR=''+ p_repartidor ',
'            + ''&P_TRANSPORTADORA=''+ p_transportadora + ''&P_fecha_ini=''+ p_fecha_ini + ''&p_fecha_FIN=''+ p_fecha_FIN',
'            + ''&P_TIPO=''+ p_tipo+''&j_username=jasperadmin&j_password=jasperadmin'';',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'function descargaRPLIQFLEDET(p_cod_vehiculo, p_nro_planilla, p_repartidor, p_transportadora, p_fecha_ini, p_fecha_FIN, p_tipo, p_zona1, p_zona2){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/RPLIQFLEDET.pdf?''',
'            + ''P_ZONA1='' + p_zona1 + ''&P_TRANSPORTADORA=''+ p_transportadora ',
'            + ''&P_ZONA2='' + p_zona2  + ''&P_FECHA_FIN=''+ p_fecha_FIN',
'            + ''&P_TIPO=''+ p_tipo + ''&P_VEHICULO='' + p_cod_vehiculo ',
'            + ''&P_NRO_PLANILLA='' + p_nro_planilla  + ''&P_FECHA_INI=''+ p_fecha_ini ',
'            + ''&P_REPARTIDOR=''+ p_repartidor ',
'            + ''&j_username=jasperadmin&j_password=jasperadmin'';',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
' ',
'function descargaRPLIQFLETOT(p_cod_vehiculo, p_nro_planilla, p_repartidor, p_transportadora, p_fecha_ini, p_fecha_FIN, p_tipo){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/RPLIQFLETOT.pdf?''',
'            + ''P_VEHICULO='' + p_cod_vehiculo + ''&P_TRANSPORTADORA=''+ p_transportadora ',
'            + ''&P_NRO_PLANILLA='' + p_nro_planilla +''&P_fecha_ini=''+ p_fecha_ini ',
'            + ''&P_tipo=''+ p_tipo + ''&P_fecha_FIN=''+ p_fecha_FIN',
'            + ''&P_REPARTIDOR=''+ p_repartidor ',
'            + ''&j_username=jasperadmin&j_password=jasperadmin'';',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function descargaRPLIQFOK(p_cod_vehiculo, p_nro_planilla, p_repartidor, p_transportadora, p_fecha_ini, p_fecha_FIN, p_tipo){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/RPLIQFOK.pdf?''',
'            + ''P_TRANSPORTADORA=''+ p_transportadora ',
'            + ''&P_FECHA_FIN=''+ p_fecha_FIN',
'            + ''&P_TIPO=''+ p_tipo + ''&P_VEHICULO='' + p_cod_vehiculo ',
'            + ''&P_NRO_PLANILLA='' + p_nro_planilla +''&P_FECHA_INI=''+ p_fecha_ini             ',
'            + ''&P_REPARTIDOR=''+ p_repartidor ',
'            + ''&j_username=jasperadmin&j_password=jasperadmin'';',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20230330130850'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133529154167733715)
,p_plug_name=>'Planilla de Fletes Liquidados - RPLIQFOK'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(387929084796108532)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133532407024733748)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133529154167733715)
,p_button_name=>'BT_LIMPIAR_CAMPOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133530721280733731)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(133529154167733715)
,p_button_name=>'BT_EJEC_rpliqfleok'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133530892851733732)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(133529154167733715)
,p_button_name=>'BT_EJEC_rpliqfletchof'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133530996379733733)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(133529154167733715)
,p_button_name=>'BT_EJEC_rpliqfletot'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133531910973733743)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(133529154167733715)
,p_button_name=>'BT_EJEC_rpliqfledet'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133529255296733716)
,p_name=>'P456_P_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133529154167733715)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133529351585733717)
,p_name=>'P456_P_COD_VEHICULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133529154167733715)
,p_prompt=>'Vehiculo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_vehiculo ',
'from rp_vehiculos ',
'where cod_empresa = :P_COD_EMPRESA ',
'order by descripcion'))
,p_lov_display_null=>'YES'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133529434190733718)
,p_name=>'P456_P_COD_REPARTIDOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(133529154167733715)
,p_prompt=>'Repartidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre, r.cod_repartidor ',
'from personas p, rp_repartidores r ',
'where r.cod_persona = p.cod_persona ',
'and r.cod_empresa = :P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133529588141733719)
,p_name=>'P456_P_NOM_REPARTIDOR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(133529154167733715)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133529660101733720)
,p_name=>'P456_P_FEC_PLANILLA_DESDE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(133529154167733715)
,p_prompt=>'Fecha Desde'
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
 p_id=>wwv_flow_imp.id(133529786005733721)
,p_name=>'P456_P_FEC_PLANILLA_HASTA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(133529154167733715)
,p_prompt=>'Fecha Hasta'
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
 p_id=>wwv_flow_imp.id(133529870354733722)
,p_name=>'P456_P_NRO_PLANILLA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(133529154167733715)
,p_prompt=>unistr('N\00B0 Planilla')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133529976679733723)
,p_name=>'P456_P_TIPO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(133529154167733715)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:TRANSMAHAL;TRANSMAHAL,NGO;NGO,WINNER;WINNER,OTROS;OTROS,TODOS'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133530050183733724)
,p_name=>'P456_P_ZONA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(133529154167733715)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133530107290733725)
,p_name=>'P456_P_INFORME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(133529154167733715)
,p_prompt=>'Informe'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:General;GRAL,Por transportadora;TRANSP,Por Repartidor;REPART,Detallado;DET'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133530214666733726)
,p_name=>'P456_P_ZONA1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(133529154167733715)
,p_prompt=>'ZONA 1'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct descripcion,cod_zona_reparto',
'       ',
'FROM rp_zonas_reparto ',
'UNION ALL',
'SELECT ''TODOS'' descripcion,''TODOS'' cod_zona_reparto',
'FROM DUAL',
'ORDER BY 2 ASC',
';'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133530354018733727)
,p_name=>'P456_P_ZONA2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(133529154167733715)
,p_prompt=>'ZONA 2'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct descripcion,cod_zona_reparto',
'       ',
'FROM rp_zonas_reparto ',
'UNION ALL',
'SELECT ''TODOS'' descripcion,''TODOS'' cod_zona_reparto',
'FROM DUAL',
'ORDER BY 2 ASC',
';'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133530461049733728)
,p_name=>'P456_P_USUARIO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(133529154167733715)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133530513193733729)
,p_name=>'P456_P_NUEVO_REGIMEN'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(133529154167733715)
,p_prompt=>'Nuevo Regimen'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133530646361733730)
,p_name=>'P456_P_NOM_VEHICULO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(133529154167733715)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134208147706543909)
,p_name=>'P456_DERECHOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(387929084796108532)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134208945517543908)
,p_name=>'P456_COD_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(387929084796108532)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134209377132543908)
,p_name=>'P456_COD_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(387929084796108532)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134209774048543908)
,p_name=>'P456_NOM_FORMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(387929084796108532)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134210174902543907)
,p_name=>'P456_COD_MONEDA_BASE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(387929084796108532)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134210597824543907)
,p_name=>'P456_COD_EMPRESA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(387929084796108532)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134210913354543907)
,p_name=>'P456_NOM_EMPRESA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(387929084796108532)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134211350660543907)
,p_name=>'P456_COD_SUCURSAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(387929084796108532)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134211759300543907)
,p_name=>'P456_NOM_SUCURSAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(387929084796108532)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134212171158543907)
,p_name=>'P456_COD_USUARIO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(387929084796108532)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134212503233543906)
,p_name=>'P456_COD_IDIOMA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(387929084796108532)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134212926877543906)
,p_name=>'P456_CODSISMENU'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(387929084796108532)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137745338295873724)
,p_name=>'P456_URL'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(133529154167733715)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133531083435733734)
,p_name=>'da_informe'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P456_P_INFORME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133531376192733737)
,p_event_id=>wwv_flow_imp.id(133531083435733734)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(133530892851733732)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P456_P_INFORME'
,p_client_condition_expression=>'REPART'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133531645862733740)
,p_event_id=>wwv_flow_imp.id(133531083435733734)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(133530892851733732)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P456_P_INFORME'
,p_client_condition_expression=>'REPART'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133531424793733738)
,p_event_id=>wwv_flow_imp.id(133531083435733734)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(133530996379733733)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P456_P_INFORME'
,p_client_condition_expression=>'TRANSP'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133531726318733741)
,p_event_id=>wwv_flow_imp.id(133531083435733734)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(133530996379733733)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P456_P_INFORME'
,p_client_condition_expression=>'TRANSP'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133531221217733736)
,p_event_id=>wwv_flow_imp.id(133531083435733734)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(133530721280733731)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P456_P_INFORME'
,p_client_condition_expression=>'GRAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133531823852733742)
,p_event_id=>wwv_flow_imp.id(133531083435733734)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(133530721280733731)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P456_P_INFORME'
,p_client_condition_expression=>'GRAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133532080604733744)
,p_event_id=>wwv_flow_imp.id(133531083435733734)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(133531910973733743)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P456_P_INFORME'
,p_client_condition_expression=>'DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133532195063733745)
,p_event_id=>wwv_flow_imp.id(133531083435733734)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(133531910973733743)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P456_P_INFORME'
,p_client_condition_expression=>'DET'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133532530518733749)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(133532407024733748)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133532660635733750)
,p_event_id=>wwv_flow_imp.id(133532530518733749)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P456_P_NRO_PLANILLA,P456_P_COD_VEHICULO,P456_P_COD_REPARTIDOR,P456_P_FEC_PLANILLA_DESDE,P456_P_FEC_PLANILLA_HASTA,P456_P_TIPO,P456_P_INFORME,P456_P_ZONA1,P456_P_ZONA2,P456_P_NUEVO_REGIMEN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137744945189873720)
,p_name=>'DA_EJECT_RPLIQFLEOK'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(133530721280733731)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137745072608873721)
,p_event_id=>wwv_flow_imp.id(137744945189873720)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//descargaRPLIQFLETCHOF(p_cod_vehiculo, p_nro_planilla, p_repartidor, p_transportadora, p_fecha_ini, p_fecha_FIN, p_tipo)',
'descargaRPLIQFOK(apex.item(''P456_P_COD_VEHICULO'').getValue(),apex.item(''P456_P_NRO_PLANILLA'').getValue(),',
'                    apex.item(''P456_P_COD_REPARTIDOR'').getValue(),apex.item(''P456_P_TIPO'').getValue(),',
'                    apex.item(''P456_P_FEC_PLANILLA_DESDE'').getValue(),apex.item(''P456_P_FEC_PLANILLA_HASTA'').getValue(),',
'                    apex.item(''P456_P_TIPO'').getValue())'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137745465525873725)
,p_name=>'DA_EJECT_RPLIQFLETCHOF'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(133530892851733732)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137745690324873727)
,p_event_id=>wwv_flow_imp.id(137745465525873725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//descargaRPLIQFLETCHOF(p_cod_vehiculo, p_nro_planilla, p_repartidor, p_transportadora, p_fecha_ini, p_fecha_FIN, p_tipo)',
'descargaRPLIQFLETCHOF(apex.item(''P456_P_COD_VEHICULO'').getValue(),apex.item(''P456_P_NRO_PLANILLA'').getValue(),',
'                    apex.item(''P456_P_COD_REPARTIDOR'').getValue(),apex.item(''P456_P_TIPO'').getValue(),',
'                    apex.item(''P456_P_FEC_PLANILLA_DESDE'').getValue(),apex.item(''P456_P_FEC_PLANILLA_HASTA'').getValue(),',
'                    apex.item(''P456_P_TIPO'').getValue())'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137745794753873728)
,p_name=>'DA_EJECT_RPLIQFLEDET'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(133531910973733743)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137745966591873730)
,p_event_id=>wwv_flow_imp.id(137745794753873728)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'descargaRPLIQFLEDET(apex.item(''P456_P_COD_VEHICULO'').getValue(),apex.item(''P456_P_NRO_PLANILLA'').getValue(),',
'                    apex.item(''P456_P_COD_REPARTIDOR'').getValue(),apex.item(''P456_P_TIPO'').getValue(),',
'                    apex.item(''P456_P_FEC_PLANILLA_DESDE'').getValue(),apex.item(''P456_P_FEC_PLANILLA_HASTA'').getValue(),',
'                    apex.item(''P456_P_TIPO'').getValue(),apex.item(''P456_P_ZONA1'').getValue(),apex.item(''P456_P_ZONA2'').getValue())'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137746055944873731)
,p_name=>'DA_EJECT_RPLIQFLETOT'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(133530996379733733)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137746244758873733)
,p_event_id=>wwv_flow_imp.id(137746055944873731)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//descargaRPLIQFLETOT(p_cod_vehiculo, p_nro_planilla, p_repartidor, p_transportadora, p_fecha_ini, p_fecha_FIN, p_tipo)',
'descargaRPLIQFLETOT(apex.item(''P456_P_COD_VEHICULO'').getValue(),apex.item(''P456_P_NRO_PLANILLA'').getValue(),',
'                    apex.item(''P456_P_COD_REPARTIDOR'').getValue(),apex.item(''P456_P_TIPO'').getValue(),',
'                    apex.item(''P456_P_FEC_PLANILLA_DESDE'').getValue(),apex.item(''P456_P_FEC_PLANILLA_HASTA'').getValue(),',
'                    apex.item(''P456_P_TIPO'').getValue())'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133532247919733746)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P456_COD_USUARIO := NVL(:P_COD_USUARIO,USER);',
'    :P456_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
'    :P456_NOM_EMPRESA := NVL(:P_NOM_EMPRESA,NULL);',
'    :P456_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');',
'    :P456_NOM_SUCURSAL := NVL(:P_NOM_SUCURSAL,NULL);',
'    :P456_COD_MODULO := NVL(:P_COD_MODULO,NULL);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
