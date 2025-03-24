prompt --application/pages/page_00356
begin
--   Manifest
--     PAGE: 00356
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
 p_id=>356
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'prueba_hector'
,p_alias=>'PRUEBA-HECTOR'
,p_step_title=>'prueba_hector'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'HSEGOVIA'
,p_last_upd_yyyymmddhh24miss=>'20230127095319'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99284679942806430)
,p_plug_name=>'Nuevo'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99337672287242013)
,p_plug_name=>unistr('Ruta de Navegaci\00F3n')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(40070279985263645)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(40189153869263678)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99284977474806433)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(99284679942806430)
,p_button_name=>'Ejecutar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Ejecutar'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99284760264806431)
,p_name=>'P356_RUC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(99284679942806430)
,p_prompt=>'Nuevo'
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
 p_id=>wwv_flow_imp.id(99284839339806432)
,p_name=>'P356_MENSAJE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(99284679942806430)
,p_prompt=>'Nuevo'
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
 p_id=>wwv_flow_imp.id(99285852344806442)
,p_name=>'P356_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(99284679942806430)
,p_prompt=>'Nuevo'
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
 p_id=>wwv_flow_imp.id(99285965314806443)
,p_name=>'P356_ESTADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(99284679942806430)
,p_prompt=>'Nuevo'
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
 p_id=>wwv_flow_imp.id(99286091956806444)
,p_name=>'P356_MENSAJE_ERRR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(99284679942806430)
,p_prompt=>'Nuevo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99285691554806440)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRUEBA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    vdatos varchar2(32000);',
'    vdirec varchar2(32000);',
'    v_detalle varchar2(10000);',
'    v_cabecera varchar2 (10000);',
'    vdatos_retorno varchar2(32000);',
'    p_json VARCHAR2(4000);',
'    p_datos VARCHAR2(4000);',
'     l_msj            VARCHAR2(4000);',
'    l_path           VARCHAR2(200);',
'    l_estado   VARCHAR2(200);',
'    nombre varchar2(1);',
'  begin',
'    declare',
'      t_http_req     utl_http.req;',
'      t_http_resp    utl_http.resp;',
'      t_request_body varchar2(30000); ',
'    begin',
'      begin',
'        vdirec := ''http://192.168.15.102:8080/efactura-py/api/consultas/consulta-ruc'';',
'      end;',
'      vdatos := ''{"ruc":["''||:P356_RUC||''"],',
'                "retornarRespuestaOriginal":"true"',
'                }'';',
'      p_json := ''{"ruc":["''||:P356_RUC||''"],',
'                "retornarRespuestaOriginal":"true"',
'                }'';',
'     ',
'     t_request_body:=VDATOS;  ',
'      t_http_req := utl_http.begin_request(vdirec, ''POST'', ''HTTP/1.1'');',
'      UTL_HTTP.set_header (t_http_req, ''Content-Type'', ''application/json'');',
'      ',
'      utl_http.set_header(t_http_req,',
'                          ''Content-Length'',',
'                          length(vdatos));',
'',
'     ',
'      utl_http.write_text(t_http_req, t_request_body);',
'      p_json:=t_request_body;',
'      dbms_output.put_line(''t_request_body: ''|| t_request_body );',
'      ',
'      t_http_resp := utl_http.get_response(t_http_req);',
'      utl_http.read_text(t_http_resp, p_datos);',
'      utl_http.end_response(t_http_resp);',
'    begin',
'      apex_json.parse(p_datos);',
'      :P356_MENSAJE := apex_json.get_varchar2(p_path => ''resultadoRuc[%d].ruc'',  p0 => 1);',
'      :P356_ESTADO := apex_json.get_varchar2(p_path => ''resultadoRuc[%d].descripcionEstadoRuc'',  p0 => 1);',
'      :P356_CLIENTE := apex_json.get_varchar2(p_path => ''resultadoRuc[%d].razonSocial'',  p0 => 1);',
'      :P356_MENSAJE_ERRR := apex_json.get_varchar2(p_path => ''resultadoRuc[%d].mensajeError'',  p0 => 1);',
'    end;',
'',
'    end;',
'  end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
