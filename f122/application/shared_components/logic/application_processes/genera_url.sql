prompt --application/shared_components/logic/application_processes/genera_url
begin
--   Manifest
--     APPLICATION PROCESS: GENERA_URL
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(71030787031080901)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GENERA_URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'   result varchar2(32767);',
'begin',
'  SELECT APEX_PAGE.GET_URL (p_application => 122,',
'            p_page   => P.NUM_PAGINA_APEX,',
'            p_items  => P.PARAMETROS_APEX,',
'            p_values => apex_application.g_x01 ) "URL"',
'    INTO result',
'    FROM BS_PROGRAMAS P',
'   WHERE P.NUM_PAGINA_APEX = apex_application.g_x02;',
'   --result:=apex_util.prepare_url(apex_application.g_x01);',
'   apex_json.open_object;',
'   apex_json.write(''success'', true);',
'   apex_json.write(''url'', result);',
'   apex_json.close_object;',
'exception',
' when others then',
'   apex_json.open_object;',
'   apex_json.write(''success'', false);',
'   apex_json.write(''message'', sqlerrm);',
'   apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_imp.component_end;
end;
/
