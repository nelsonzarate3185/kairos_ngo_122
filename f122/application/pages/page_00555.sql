prompt --application/pages/page_00555
begin
--   Manifest
--     PAGE: 00555
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
 p_id=>555
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Listado de postulantes'
,p_alias=>'LISTADO-DE-POSTULANTES'
,p_step_title=>'Listado de postulantes'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20230630090333'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(172006073408781047)
,p_plug_name=>'Datos Postulante'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(175794408286694819)
,p_plug_name=>'LISTADO DE POSTULANTES'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(175763879607559692)
,p_plug_name=>'Listado de postulantes'
,p_parent_plug_id=>wwv_flow_imp.id(175794408286694819)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.cod_empresa,s.cod_area,cw.nombre_area,s.id_registro, s.fecha_creacion, s.nombre_contacto, s.email,s.celular, s.mensaje,',
'sys.dbms_lob.getlength(ad.archivo_adjunto) as Adjunto',
'       from SM_DATOS_CONTACTOS_WEB s ',
'       inner join sm_adjunto_contactos_web ad on ad.id_registro = s.id_registro and ad.cod_empresa = s.cod_empresa',
'       inner join sm_contactos_web cw on cw.cod_empresa = s.cod_empresa and s.cod_area = cw.cod_area',
'            and s.fecha_creacion> to_date(''01/06/2021'',''dd/mm/yyyy'') and s.id_registro is not null',
'            and sys.dbms_lob.getlength(ad.archivo_adjunto)>0;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Listado de postulantes'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(175763910355559692)
,p_name=>'Listado de postulantes'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'javascript:$s(''P555_ID_REGISTRO'',''#ID_REGISTRO#'');'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'OSCARGO'
,p_internal_uid=>175763910355559692
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175764388049559682)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175764764725559679)
,p_db_column_name=>'COD_AREA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('\00C1rea')
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(172005788548781044)
,p_db_column_name=>'NOMBRE_AREA'
,p_display_order=>12
,p_column_identifier=>'I'
,p_column_label=>unistr('\00C1rea')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175765198892559678)
,p_db_column_name=>'ID_REGISTRO'
,p_display_order=>22
,p_column_identifier=>'C'
,p_column_label=>'Id Registro'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175765592724559678)
,p_db_column_name=>'FECHA_CREACION'
,p_display_order=>32
,p_column_identifier=>'D'
,p_column_label=>unistr('Fecha Creaci\00F3n')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175765969965559678)
,p_db_column_name=>'NOMBRE_CONTACTO'
,p_display_order=>42
,p_column_identifier=>'E'
,p_column_label=>'Nombre del contacto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175766323699559678)
,p_db_column_name=>'EMAIL'
,p_display_order=>52
,p_column_identifier=>'F'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175766729225559677)
,p_db_column_name=>'CELULAR'
,p_display_order=>62
,p_column_identifier=>'G'
,p_column_label=>'Celular'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175767111106559677)
,p_db_column_name=>'MENSAJE'
,p_display_order=>72
,p_column_identifier=>'H'
,p_column_label=>'Mensaje'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175794648823694821)
,p_db_column_name=>'ADJUNTO'
,p_display_order=>82
,p_column_identifier=>'M'
,p_column_label=>'Adjunto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'DOWNLOAD:V_ADJUNTO_CONTACTOS_WEB:ARCHIVO_ADJUNTO:COD_EMPRESA:ID_REGISTRO::NOMBRE_ARCHIVO:::attachment:Descargar:'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(175767702800558297)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1757678'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE_AREA:FECHA_CREACION:NOMBRE_CONTACTO:EMAIL:CELULAR:MENSAJE:ADJUNTO:'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(172006118836781048)
,p_name=>'P555_ID_REGISTRO'
,p_item_sequence=>10
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(172006255636781049)
,p_name=>'P555_NOMBRE_POSTULANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(172006073408781047)
,p_prompt=>'Nombre del Postulante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(175794746203694822)
,p_name=>'P555_EMAIL_POSTULANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(172006073408781047)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(175794993303694824)
,p_name=>'P555_TELEFONO_POSTULANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(172006073408781047)
,p_prompt=>unistr('Tel\00E9fono')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(172006305700781050)
,p_name=>'DA_VER_DATOS'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P555_ID_REGISTRO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(175792773591694802)
,p_event_id=>wwv_flow_imp.id(172006305700781050)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'/*v_documento blob;',
'v_resultado clob;',
'v_texto varchar2(20000);',
'l_step PLS_INTEGER := 12000;*/ -- make sure you set a multiple of 3 not higher than 24573',
'',
'begin',
'    select s.nombre_contacto, s.email, s.celular',
'    into :P555_NOMBRE_POSTULANTE, :P555_EMAIL_POSTULANTE, :P555_TELEFONO_POSTULANTE',
'           from SM_DATOS_CONTACTOS_WEB s where s.id_registro = :P555_ID_REGISTRO;',
'    ',
'    --select p_base64.EncodeBlob(archivo_adjunto) into v_resultado from sm_adjunto_contactos_web where id_registro = :P555_ID_REGISTRO;',
'',
'    --Conversion de blob a clob para visualizar documento',
'    /*FOR i IN 0 .. trunc((DBMS_LOB.getlength(v_documento) - 1 ))/l_step LOOP',
'        --v_texto := v_texto || UTL_RAW.cast_to_varchar2(UTL_ENCODE.base64_encode(DBMS_LOB.substr(v_documento, l_step, i * l_step + 1)));',
'        v_texto := v_texto || UTL_RAW.cast_to_varchar2(UTL_ENCODE.base64_encode(DBMS_LOB.substr(v_documento, l_step, i * l_step + 1)));',
'    END LOOP;*/',
'    ',
'    --v_resultado := p_base64.EncodeBlob(pIP => v_documento);',
'    --:P555_DOCUMENTO := ''<object data="data:application/pdf;base64,''||v_resultado||''" type="application/pdf" width="100%" height="1000px"></object>'';',
'    --:P555_ARCHIVO := v_texto;',
'',
'',
'   --:P555_DOCUMENTO := ''<apex:page controller="ViewPdf"><iframe width="100%" height="1000px" src="data:application/pdf;base64,JVBERi0xLjcKCjEgMCBvYmogICUgZW50cnkgcG9pbnQKPDwKICAvVHlwZSAvQ2F0YWxvZwogIC9QYWdlcyAyIDAgUgo+PgplbmRvYmoKCjIgMCBvYmoKPDwKICA'
||'vVHlwZSAvUGFnZXMKICAvTWVkaWFCb3ggWyAwIDAgMjAwIDIwMCBdCiAgL0NvdW50IDEKICAvS2lkcyBbIDMgMCBSIF0KPj4KZW5kb2JqCgozIDAgb2JqCjw8CiAgL1R5cGUgL1BhZ2UKICAvUGFyZW50IDIgMCBSCiAgL1Jlc291cmNlcyA8PAogICAgL0ZvbnQgPDwKICAgICAgL0YxIDQgMCBSIAogICAgPj4KICA+PgogIC9Db250Z'
||'W50cyA1IDAgUgo+PgplbmRvYmoKCjQgMCBvYmoKPDwKICAvVHlwZSAvRm9udAogIC9TdWJ0eXBlIC9UeXBlMQogIC9CYXNlRm9udCAvVGltZXMtUm9tYW4KPj4KZW5kb2JqCgo1IDAgb2JqICAlIHBhZ2UgY29udGVudAo8PAogIC9MZW5ndGggNDQKPj4Kc3RyZWFtCkJUCjcwIDUwIFRECi9GMSAxMiBUZgooSGVsbG8sIHdvcmxkISk'
||'gVGoKRVQKZW5kc3RyZWFtCmVuZG9iagoKeHJlZgowIDYKMDAwMDAwMDAwMCA2NTUzNSBmIAowMDAwMDAwMDEwIDAwMDAwIG4gCjAwMDAwMDAwNzkgMDAwMDAgbiAKMDAwMDAwMDE3MyAwMDAwMCBuIAowMDAwMDAwMzAxIDAwMDAwIG4gCjAwMDAwMDAzODAgMDAwMDAgbiAKdHJhaWxlcgo8PAogIC9TaXplIDYKICAvUm9vdCAxIDAgU'
||'go+PgpzdGFydHhyZWYKNDkyCiUlRU9G" ></iframe></apex:page>'';',
'',
'end;'))
,p_attribute_02=>'P555_ID_REGISTRO'
,p_attribute_03=>'P555_NOMBRE_POSTULANTE,P555_EMAIL_POSTULANTE,P555_TELEFONO_POSTULANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(175793627082694811)
,p_event_id=>wwv_flow_imp.id(172006305700781050)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  l_blob         BLOB;',
'',
'  v_file_name varchar2(4000) := ''Input.pdf'';',
'',
'BEGIN',
'',
'    select archivo_adjunto into l_blob from sm_adjunto_contactos_web where id_registro = :P555_ID_REGISTRO;',
'',
'    dbms_output.put_line(''[2]'');',
'    sys.htp.init;',
'    sys.owa_util.mime_header(''application/pdf'',FALSE);',
'    sys.htp.p(''Content-length:''||sys.dbms_lob.getlength(l_blob));',
'    sys.htp.p(''Content-Disposition: attachment; filename="'' || V_FILE_NAME ||''"'');',
'    sys.htp.p(''Cache-Control: max-age=30'');',
'    sys.owa_util.http_header_close;',
'    --htmldb_application.g_unrecoverable_error := TRUE ;',
'    sys.wpg_docload.download_file(l_blob);',
'    apex_application.stop_apex_engine;',
'',
'    :P555_ARCHIVO := ''hola'';',
'',
'end;    '))
,p_attribute_02=>'P555_ID_REGISTRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_server_condition_expr1=>'P555_ID_REGISTRO'
,p_server_condition_expr2=>'100000'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(175792625997694801)
,p_event_id=>wwv_flow_imp.id(172006305700781050)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(172006073408781047)
);
wwv_flow_imp.component_end;
end;
/
