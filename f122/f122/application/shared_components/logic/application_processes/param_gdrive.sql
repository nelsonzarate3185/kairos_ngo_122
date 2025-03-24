prompt --application/shared_components/logic/application_processes/param_gdrive
begin
--   Manifest
--     APPLICATION PROCESS: PARAM_GDRIVE
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
 p_id=>wwv_flow_imp.id(121316113435143607)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PARAM_GDRIVE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*:P_GDRIVE_ID := ''AKfycbwhoNafChmaXkhB8UAfnf8JCf4kgzO7VSqeIQAQC92Ybo7GLa-kqYX_4akxBxxt4OnnPw''; ',
':P_GDRIVE_FOLDER := ''1VNXow_RFl1samtPlQd2s8BhTDCmPAjSx'';*/',
'',
'',
':P_GDRIVE_ID := ''AKfycbyAip3co4cTlC-XdMTDraqoEhYqeBGZ1iI6E6B0dDJo1tb7q0lQC0Nw_dGpmptuuVOFow''; ',
':P_GDRIVE_FOLDER :=''1K1JYGTYv3BsL3O27vfhSkgjpEWD5kEYE'';'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
