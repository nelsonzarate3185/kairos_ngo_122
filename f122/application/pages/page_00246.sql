prompt --application/pages/page_00246
begin
--   Manifest
--     PAGE: 00246
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
 p_id=>246
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CCCLIENT Editar Documentos'
,p_alias=>'CCCLIENT-EDITAR-DOCUMENTOS'
,p_page_mode=>'MODAL'
,p_step_title=>'CCCLIENT Editar Documentos'
,p_error_handling_function=>'APEX_ERROR_HANDLING'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'HSEGOVIA'
,p_last_upd_yyyymmddhh24miss=>'20230127151600'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(209179139358610049)
,p_plug_name=>unistr('Formulario de Edici\00F3n')
,p_region_template_options=>'#DEFAULT#:i-h240:t-Region--removeHeader:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select seq_id  documento_seq_id,',
'       c001 documento_cod_persona,',
'       c002 documento_cod_ident,',
'       c003 documento_numero,',
'       c004 documento_fec_vencimiento,',
'       c049 documento_id_registro',
'    from APEX_COLLECTIONS',
'    where collection_name = ''COLEC_DATOS_IDENT_PERSONAS'';'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59431545961052557)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(209179139358610049)
,p_button_name=>'BTL_ACEPTAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_confirm_message=>unistr('\00BFSeguro que quieres actualizar los datos?')
,p_confirm_style=>'information'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58322400048298826)
,p_name=>'P246_DOCUMENTO_COD_PERSONA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(209179139358610049)
,p_item_source_plug_id=>wwv_flow_imp.id(209179139358610049)
,p_source=>'DOCUMENTO_COD_PERSONA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58322600589298828)
,p_name=>'P246_DOCUMENTO_NUMERO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(209179139358610049)
,p_item_source_plug_id=>wwv_flow_imp.id(209179139358610049)
,p_prompt=>unistr('N\00FAmero')
,p_source=>'DOCUMENTO_NUMERO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58322733668298829)
,p_name=>'P246_DOCUMENTO_FEC_VENCIMIENTO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(209179139358610049)
,p_item_source_plug_id=>wwv_flow_imp.id(209179139358610049)
,p_prompt=>'Vencimiento'
,p_source=>'DOCUMENTO_FEC_VENCIMIENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58322879523298830)
,p_name=>'P246_DOCUMENTO_ID_REGISTRO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(209179139358610049)
,p_item_source_plug_id=>wwv_flow_imp.id(209179139358610049)
,p_source=>'DOCUMENTO_ID_REGISTRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58322951977298831)
,p_name=>'P246_DOCUMENTO_SEQ_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(209179139358610049)
,p_item_source_plug_id=>wwv_flow_imp.id(209179139358610049)
,p_source=>'DOCUMENTO_SEQ_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58323004007298832)
,p_name=>'P246_DOCUMENTO_COD_IDENT'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(209179139358610049)
,p_item_source_plug_id=>wwv_flow_imp.id(209179139358610049)
,p_prompt=>'Tipo'
,p_source=>'DOCUMENTO_COD_IDENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_IDENTI_CCCLIENT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_ident ',
'from identificaciones order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59434306375052560)
,p_name=>'P246_AUX'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(209179139358610049)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(99775839865177709)
,p_validation_name=>'Valida RUC'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'    vdatos2 varchar2(5000);',
'    v_descripcion_estado VARCHAR2(500);',
'    v_estado    VARCHAR2(5000);',
'    v_nombre    VARCHAR2(5000);',
'  begin',
'  :P0_MENSAJE_VALIDACION  := NULL;',
'  IF  :P246_DOCUMENTO_NUMERO IS NOT NULL AND :P246_DOCUMENTO_COD_IDENT = ''RUC'' THEN ',
'    declare',
'      t_http_req     utl_http.req;',
'      t_http_resp    utl_http.resp;',
'      t_request_body varchar2(30000); ',
'    begin',
'      begin',
'        vdirec := ''http://192.168.15.102:8080/efactura-py/api/consultas/consulta-ruc'';',
'      end;',
'      vdatos := ''{"ruc":["''||:P246_DOCUMENTO_NUMERO||''"],',
'                "retornarRespuestaOriginal":"true"',
'                }'';',
'      p_json := ''{"ruc":["''||:P246_DOCUMENTO_NUMERO||''"],',
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
unistr('        vdatos2:=replace(p_datos,''\00D1'',''\005Cu00D1'');'),
unistr('         vdatos2:=replace(p_datos,''\00F3'',''\005Cu00F3'');'),
unistr('         vdatos2:=replace(p_datos,''\00E1'',''\005Cu00E1'');'),
unistr('        vdatos2:=replace(p_datos,''\00E1'',''\005Cu00E1'');'),
unistr('        vdatos2:=replace(p_datos,''\00F3'',''\005Cu00F3'');'),
unistr('        vdatos2:=replace(p_datos,''\00F3'',''\005Cu00F3'');'),
unistr('        vdatos2:=replace(p_datos,''\00F3'',''\005Cu00F3'');   '),
'        ',
'      apex_json.parse(vdatos2);',
'      v_estado := apex_json.get_varchar2(p_path => ''resultadoRuc[%d].codigoRespuesta'',  p0 => 1);',
'      v_nombre := apex_json.get_varchar2(p_path => ''resultadoRuc[%d].razonSocial'',  p0 => 1);',
'      :P0_MENSAJE_VALIDACION := convert(replace(apex_json.get_varchar2(p_path => ''resultadoRuc[%d].mensajeError'',  p0 => 1),''"'',''''), ''WE8MSWIN1252'', ''UTF8'');',
'      v_descripcion_estado := apex_json.get_varchar2(p_path => ''resultadoRuc[%d].descripcionEstadoRuc'',  p0 => 1);',
'         IF v_estado = ''EXISTE'' and v_descripcion_estado <> ''ACTIVO'' THEN ',
unistr('                RETURN ''El n\00FAmero de Ruc est\00E1 ''|| v_descripcion_estado;'),
'                v_nombre := null;',
'        ELSIF :P92_ESTADO  <> ''EXISTE'' OR :P0_MENSAJE_VALIDACION IS NOT NULL then ',
unistr('            RETURN ''El n\00FAmero de Ruc ingresado no existe'';'),
'       END IF;',
'    end;',
'',
'    end;',
'    END IF;',
'  end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99775618010177707)
,p_name=>'Verifica RUC'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P246_DOCUMENTO_NUMERO'
,p_condition_element=>'P246_DOCUMENTO_COD_IDENT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'RUC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99775780975177708)
,p_event_id=>wwv_flow_imp.id(99775618010177707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'    vdatos2 varchar2(5000);',
'    v_descripcion_estado VARCHAR2(500);',
'    v_estado    VARCHAR2(5000);',
'    v_nombre    VARCHAR2(5000);',
'  begin',
'  :P0_MENSAJE_VALIDACION  := NULL;',
'  IF  :P246_DOCUMENTO_NUMERO IS NOT NULL THEN ',
'    declare',
'      t_http_req     utl_http.req;',
'      t_http_resp    utl_http.resp;',
'      t_request_body varchar2(30000); ',
'    begin',
'      begin',
'        vdirec := ''http://192.168.15.102:8080/efactura-py/api/consultas/consulta-ruc'';',
'      end;',
'      vdatos := ''{"ruc":["''||:P246_DOCUMENTO_NUMERO||''"],',
'                "retornarRespuestaOriginal":"true"',
'                }'';',
'      p_json := ''{"ruc":["''||:P246_DOCUMENTO_NUMERO||''"],',
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
unistr('        vdatos2:=replace(p_datos,''\00D1'',''\005Cu00D1'');'),
unistr('         vdatos2:=replace(p_datos,''\00F3'',''\005Cu00F3'');'),
unistr('         vdatos2:=replace(p_datos,''\00E1'',''\005Cu00E1'');'),
unistr('        vdatos2:=replace(p_datos,''\00E1'',''\005Cu00E1'');'),
unistr('        vdatos2:=replace(p_datos,''\00F3'',''\005Cu00F3'');'),
unistr('        vdatos2:=replace(p_datos,''\00F3'',''\005Cu00F3'');'),
unistr('        vdatos2:=replace(p_datos,''\00F3'',''\005Cu00F3'');   '),
'        ',
'      apex_json.parse(vdatos2);',
'      v_estado := apex_json.get_varchar2(p_path => ''resultadoRuc[%d].codigoRespuesta'',  p0 => 1);',
'      v_nombre := apex_json.get_varchar2(p_path => ''resultadoRuc[%d].razonSocial'',  p0 => 1);',
'      :P0_MENSAJE_VALIDACION := convert(replace(apex_json.get_varchar2(p_path => ''resultadoRuc[%d].mensajeError'',  p0 => 1),''"'',''''), ''WE8MSWIN1252'', ''UTF8'');',
'      v_descripcion_estado := apex_json.get_varchar2(p_path => ''resultadoRuc[%d].descripcionEstadoRuc'',  p0 => 1);',
'         IF v_estado = ''EXISTE'' and v_descripcion_estado <> ''ACTIVO'' THEN ',
unistr('                :P0_MENSAJE_VALIDACION := ''El n\00FAmero de Ruc est\00E1 ''|| v_descripcion_estado;'),
'                v_nombre := null;',
'        ELSIF :P92_ESTADO  <> ''EXISTE'' OR :P0_MENSAJE_VALIDACION IS NOT NULL then ',
unistr('            :P0_MENSAJE_VALIDACION  := ''El n\00FAmero de Ruc ingresado no existe'';'),
'       END IF;',
'    end;',
'',
'    end;',
'    END IF;',
'  end;',
''))
,p_attribute_02=>'P246_DOCUMENTO_NUMERO'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59436957759052563)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_ACTUALIZA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''COLEC_DATOS_IDENT_PERSONAS'',',
'        P_SEQ   =>  TO_NUMBER(:P246_DOCUMENTO_SEQ_ID),',
'		P_C001  =>  :P246_DOCUMENTO_COD_PERSONA,',
'        P_C002  =>  :P246_DOCUMENTO_COD_IDENT,',
'        P_C003  =>  :P246_DOCUMENTO_NUMERO,',
'        P_C004  =>  :P246_DOCUMENTO_FEC_VENCIMIENTO,',
'        P_C049  =>  :P246_DOCUMENTO_ID_REGISTRO,',
'        p_c050  => ''U'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        RAISE_APPLICATION_ERROR(-20001,''P\00E1g. 246 - ACTUALIZAR_COLECCION_DOCUMENTOS - Problemas en actualizaci\00F3n de documentos ''|| SQLERRM);'),
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P246_DOCUMENTO_SEQ_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59437378157052563)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_AGREGA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''COLEC_DATOS_IDENT_PERSONAS'',',
'		P_C001  =>  :P246_DOCUMENTO_COD_PERSONA,',
'        P_C002  =>  :P246_DOCUMENTO_COD_IDENT,',
'        P_C003  =>  :P246_DOCUMENTO_NUMERO,',
'        P_C004  =>  :P246_DOCUMENTO_FEC_VENCIMIENTO,',
'        P_C050  => ''I'');',
'    if :P246_DOCUMENTO_SEQ_ID IS NULL then',
'        select NVL(max(seq_id),0) INTO :P246_AUX from APEX_COLLECTIONS WHERE COLLECTION_NAME = ''COLEC_DATOS_IDENT_PERSONAS''; ',
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000,''P\00E1g. 220 - ACTUALIZAR_COLECCION_INTERESES - Problemas al agregar intereses ''|| SQLERRM);'),
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P246_DOCUMENTO_SEQ_ID'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59437748696052563)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'PR_CLOSE_DIALOG'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59436575221052561)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(209179139358610049)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Editar'
);
wwv_flow_imp.component_end;
end;
/
