prompt --application/shared_components/logic/application_processes/recupera_blob
begin
--   Manifest
--     APPLICATION PROCESS: recupera_blob
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
 p_id=>wwv_flow_imp.id(177704658627955574)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'recupera_blob'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vBlob blob;',
'vmimetype varchar2(500);',
'vfilename varchar2(500);',
'vdirname varchar2(500);',
'BEGIN    ',
'    	vmimetype :=:P552_mymetype;',
'        vfilename :=:P552_file_name;',
'        vdirname  :=:P552_dir_name;',
'',
'    vBlob:=inv.IMAGENES_APEX.fn_get_blob_from_file(vdirname,vfilename); ',
'',
'  	owa_util.mime_header(vmimetype ,false);',
'	htp.p(''Content-length: ''|| dbms_lob.getlength(vBlob) );',
'	owa_util.http_header_close;',
'	wpg_docload.download_file(vBlob);',
'    apex_application.stop_apex_engine;',
'',
'    ',
'exception',
' when others then ',
'	NULL;',
' end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'USER_IS_NOT_PUBLIC_USER'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_imp.component_end;
end;
/
