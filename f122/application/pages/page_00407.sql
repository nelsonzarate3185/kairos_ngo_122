prompt --application/pages/page_00407
begin
--   Manifest
--     PAGE: 00407
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
 p_id=>407
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CCRRECNC'
,p_alias=>'CCRRECNC'
,p_step_title=>'CCRRECNC'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}',
'',
'function doDescarga(p_cod_cliente, p_cod_cobrador, p_cod_custodio, p_cod_empresa, p_cod_sucursal, p_fec_final, p_fec_inicial, ',
'                    p_nro_fin, p_nro_ini, p_ruta_archivo, p_ser_recibo, p_ver_det){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CCRECNCO.pdf?P_VER_DET=''+ p_ver_det+ ''&P_COD_EMPRESA=''+ p_cod_empresa',
'            + ''&P_COD_CLIENTE='' + p_cod_cliente + ''&P_NRO_FIN=''+ p_nro_fin + ''&P_COD_SUCURSAL=''+ p_cod_sucursal + ''&P_FEC_FINAL=''+ p_fec_final',
'            + ''&P_SER_RECIBO=''+ p_ser_recibo + ''&P_COD_CUSTODIO=''+ p_cod_custodio + ''&P_NRO_INI=''+ p_nro_ini + ''&P_FEC_INICIAL=''+ p_fec_inicial',
'            + ''&P_COD_COBRADOR='' + p_cod_cobrador + ''&P_RUTA_ARCHIVO=''+ p_ruta_archivo +''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20230313172820'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119724071922447823)
,p_plug_name=>' Reporte de Recibos NO Cobrados'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(119725314343447836)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119726594267447848)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(119724071922447823)
,p_button_name=>'BT_limpiar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Limpiar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(119725295664447835)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(119724071922447823)
,p_button_name=>'BT_EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119724188254447824)
,p_name=>'P407_COD_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(119724071922447823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119724267104447825)
,p_name=>'P407_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(119724071922447823)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal||'' - ''||descripcion D, cod_sucursal R ',
'from sucursales ',
'where cod_empresa = :P_COD_EMPRESA',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-seleccione-'
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
 p_id=>wwv_flow_imp.id(119724361929447826)
,p_name=>'P407_COD_COBRADOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(119724071922447823)
,p_prompt=>'Cobrador'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cobrador ||'' - ''|| ltrim(p.nombre) nombre, c.cod_cobrador R',
'from personas p, cc_cobradores c',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona ',
'order by nombre'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-seleccione-'
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
 p_id=>wwv_flow_imp.id(119724487743447827)
,p_name=>'P407_COD_CUSTODIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(119724071922447823)
,p_prompt=>'Custodio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_custodio||'' - ''||descripcion D, cod_custodio R ',
'from cc_custodios ',
'where cod_empresa = :P_COD_EMPRESA ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-seleccione-'
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
 p_id=>wwv_flow_imp.id(119724534188447828)
,p_name=>'P407_COD_CLIENTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(119724071922447823)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cliente||'' - ''|| nvl( p.nombre, p.nomb_fantasia ) nombre , c.cod_cliente R',
'from cc_clientes c, personas p ',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona ',
'order by nombre'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-seleccione-'
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
 p_id=>wwv_flow_imp.id(119724609739447829)
,p_name=>'P407_SER_RECIBO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(119724071922447823)
,p_prompt=>'Serie'
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
 p_id=>wwv_flow_imp.id(119724751770447830)
,p_name=>'P407_NRO_INI'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(119724071922447823)
,p_prompt=>'Nro. Rango inicial'
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
 p_id=>wwv_flow_imp.id(119724811876447831)
,p_name=>'P407_NRO_FIN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(119724071922447823)
,p_prompt=>'Nro. Rango Fin'
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
 p_id=>wwv_flow_imp.id(119724953923447832)
,p_name=>'P407_FEC_INICIAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(119724071922447823)
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
 p_id=>wwv_flow_imp.id(119725019158447833)
,p_name=>'P407_FEC_FINAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(119724071922447823)
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
 p_id=>wwv_flow_imp.id(119725124106447834)
,p_name=>'P407_USUARIO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(119724071922447823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119725451771447837)
,p_name=>'P407_CB_DET'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(119724071922447823)
,p_prompt=>'Ver Detalle'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119725572618447838)
,p_name=>'P407_DERECHOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(119725314343447836)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119725630044447839)
,p_name=>'P407_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(119725314343447836)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119725736944447840)
,p_name=>'P407_NOM_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(119725314343447836)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119725864205447841)
,p_name=>'P407_COD_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(119725314343447836)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119725910527447842)
,p_name=>'P407_NOM_FORMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(119725314343447836)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119726039967447843)
,p_name=>'P407_NOM_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(119725314343447836)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119726160650447844)
,p_name=>'P407_NOM_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(119725314343447836)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119726261521447845)
,p_name=>'P407_COD_USUARIO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(119725314343447836)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119726367274447846)
,p_name=>'P407_COD_IDIOMA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(119725314343447836)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(119726483732447847)
,p_name=>'P407_CODSISMENU'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(119725314343447836)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122748309827118003)
,p_name=>'P407_RUTA_ARCHIVO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(119725314343447836)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(119726676708447849)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(119726594267447848)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(119726739789447850)
,p_event_id=>wwv_flow_imp.id(119726676708447849)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P407_COD_COBRADOR,P407_COD_CUSTODIO,P407_COD_CLIENTE,P407_SER_RECIBO,P407_NRO_INI,P407_NRO_FIN,P407_FEC_INICIAL,P407_FEC_FINAL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(120168323149388502)
,p_name=>'DA_ES_NUMERO'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P407_NRO_INI,P407_NRO_FIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(120168444019388503)
,p_event_id=>wwv_flow_imp.id(120168323149388502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(122748163885118001)
,p_name=>'DA_EJECUTA_REPORTE'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(119725295664447835)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122748275274118002)
,p_event_id=>wwv_flow_imp.id(122748163885118001)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doDescarga(apex.item(''P407_COD_CLIENTE'').getValue(), apex.item(''P407_COD_COBRADOR'').getValue(), apex.item(''P407_COD_CUSTODIO'').getValue(), ',
'           apex.item(''P407_COD_EMPRESA'').getValue(),apex.item(''P407_COD_SUCURSAL'').getValue(), apex.item(''P407_FEC_FINAL'').getValue(), ',
'           apex.item(''P407_FEC_INICIAL'').getValue(), apex.item(''P407_NRO_FIN'').getValue(), apex.item(''P407_NRO_INI'').getValue()',
'           ,apex.item(''P407_RUTA_ARCHIVO'').getValue(),apex.item(''P407_SER_RECIBO'').getValue(),apex.item(''P407_CB_DET'').getValue());',
' '))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(120168226403388501)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--procedure Inicializa_Globales',
'begin',
'    begin',
'       --Almacena los valores en variables locales',
'        :P407_COD_USUARIO := NVL(:P_COD_USUARIO,USER );',
'        :P407_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'' );',
'        :P407_NOM_EMPRESA := NVL(:P407_NOM_EMPRESA,NULL );',
'        :P407_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'' );',
'        :P407_NOM_SUCURSAL := NVL(:P_NOM_SUCURSAL,NULL );',
'        :P407_COD_MODULO := NVL(:P_COD_MODULO,NULL);',
'    end;',
'    :P407_FEC_INICIAL := sysdate;',
'    :P407_FEC_FINAL := sysdate;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
