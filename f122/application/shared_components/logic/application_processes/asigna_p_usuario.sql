prompt --application/shared_components/logic/application_processes/asigna_p_usuario
begin
--   Manifest
--     APPLICATION PROCESS: asigna_p_usuario
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
 p_id=>wwv_flow_imp.id(40364736376202426)
,p_process_sequence=>1
,p_process_point=>'AFTER_LOGIN'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'asigna_p_usuario'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT ID',
'      INTO :P_USUA0100_ID',
'      FROM INV.ASP$USUA0100',
'     WHERE USRN = :APP_USER;',
'',
'    /*SELECT ROLE0100$ID',
'      INTO :P_ROLE0100_ID',
'      FROM INV.ASP$USUA0130',
'     WHERE USUA0100$ID = :P_USUA0100_ID;*/',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
