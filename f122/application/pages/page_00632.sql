prompt --application/pages/page_00632
begin
--   Manifest
--     PAGE: 00632
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
 p_id=>632
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Adjunto Solicitud Capacitaciones'
,p_alias=>'VER-ADJUNTO-SOLICITUD-CAPACITACIONES'
,p_page_mode=>'MODAL'
,p_step_title=>'Adjunto Solicitud Capacitaciones'
,p_reload_on_submit=>'A'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'MBLANCO'
,p_last_upd_yyyymmddhh24miss=>'20230929115420'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(215198730387001305)
,p_name=>'P632_NRO_SOLICITUD'
,p_item_sequence=>940
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(215198821418001306)
,p_name=>'P632_MIMETYPE'
,p_item_sequence=>950
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(215198947349001307)
,p_name=>'P632_NOMBRE_ADJUNTO'
,p_item_sequence=>960
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(215199052285001308)
,p_name=>'DA_VISUALIZAR'
,p_event_sequence=>10
,p_condition_element=>'P632_NRO_SOLICITUD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(215199102777001309)
,p_event_id=>wwv_flow_imp.id(215199052285001308)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'VISUALIZAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(215198674161001304)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_PREVISUALIZAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_blob_content  blob;',
'  v_mime_type     varchar2(500);',
'  v_filename      varchar2(500);',
'',
'BEGIN',
'    SELECT SOLICITUD_CAPACITACIONES.FN_GET_BLOB_FROM_FILE(P_DIR => ''UPLOAD_IMAGE_CAP'',',
'                                                          P_FILE_NAME  => a.nombre_archivo ) adjunto  ',
'    INTO v_blob_content                                                                                     ',
'    FROM RH_SOLICITUDES_CAPACITACION a ',
'    WHERE a.cod_empleado = :P_COD_EMPLEADO ',
'    AND a.NRO_SOLICITUD = :P632_NRO_SOLICITUD;',
'',
'  sys.HTP.init;',
'  sys.OWA_UTIL.mime_header(:P632_MIMETYPE, FALSE);',
'  sys.HTP.p(''Content-Length: '' || DBMS_LOB.getlength(v_blob_content));',
'  sys.HTP.p(''Content-Disposition: filename="'' || :P632_NOMBRE_ADJUNTO || ''"'');',
'  sys.OWA_UTIL.http_header_close;',
'',
'  sys.WPG_DOCLOAD.download_file(v_blob_content);',
'  apex_application.stop_apex_engine;',
'EXCEPTION',
'  WHEN apex_application.e_stop_apex_engine THEN',
'    apex_debug.error(''error descarga ''||sqlerrm);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'VISUALIZAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
