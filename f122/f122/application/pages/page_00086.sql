prompt --application/pages/page_00086
begin
--   Manifest
--     PAGE: 00086
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
 p_id=>86
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Run Report'
,p_alias=>'RUN-REPORT'
,p_page_mode=>'NON_MODAL'
,p_step_title=>'Run Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_media_type=>'application/pdf'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'11'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240916114629'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13828292110422803)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Run report and show result'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  vcName  VARCHAR2(200);',
' ',
'  lParams PK_JRXML2PDF_REPGEN.tParamList;',
'  bl BLOB;',
'  VCLIENTE VARCHAR2(100);',
'  vfecha_ini date;',
'  vfecha_fin date;',
'   vfecha_ini_emi date; ',
'   vfecha_fin_emi date;',
'  vtipo varchar2(200);',
'  vcheques varchar2(100):=''N'';',
'  vempresa varchar2(200);',
'BEGIN',
'',
'  BEGIN',
'    SELECT c002,c003, c004, c005, c006, c007, c008,:p_cod_empresa',
'     INTO VCLIENTE,vfecha_ini, vfecha_fin,vtipo, vcheques, vfecha_ini_emi, vfecha_fin_emi, vempresa',
'    FROM apex_collections',
'    WHERE collection_name=''PARAMETERS''',
'    AND ROWNUM=1;',
'    EXCEPTION WHEN OTHERS THEN ',
'     VCLIENTE := ''8032'' ;',
'    END;',
'    if vempresa=''18'' then',
'IF vtipo = ''C'' THEN',
'vcName:=''CTACTEBH'';',
'elsif vtipo = ''V'' THEN ',
'vcName:=''CTACTEBH1'';',
'elsif vtipo = ''S'' THEN ',
'vcName:=''CTACTEBH2'';',
'end if;',
'    else',
'   IF vtipo = ''C'' THEN',
'vcName:=''CTACTE'';',
'elsif vtipo = ''V'' THEN ',
'vcName:=''CTACTE1'';',
'elsif vtipo = ''S'' THEN ',
'vcName:=''CTACTE2'';',
'elsif vtipo = ''CPH'' THEN ',
'vcName:=''CTACTECPH'';',
'elsif vtipo = ''CPH2'' THEN ',
'vcName:=''CTACTE_CPH1'';',
'elsif vtipo = ''CPH3'' THEN ',
'vcName:=''CTACTE2_CPH'';',
'end if;',
'end if;',
'',
'lParams(1).vcName:=''P_COD_CLIENTE'';',
'    lParams(1).vcValue:=VCLIENTE;',
'    ',
'    ',
'   lParams(2).vcName:=''P_FECHA_INI'';',
'    lParams(2).vcValue:=vfecha_ini;',
'    ',
'    lParams(3).vcName:=''P_FECHA_FIN'';',
'    lParams(3).vcValue:=vfecha_fin;',
'    ',
'    lParams(4).vcName:=''P_IND_CHEQUES'';',
'    lParams(4).vcValue:=vcheques;',
'    ',
'    ',
'   lParams(5).vcName:=''P_FECHA_INI_EMI'';',
'    lParams(5).vcValue:=vfecha_ini_emi;',
'    ',
'    lParams(6).vcName:=''P_FECHA_FIN_EMI'';',
'    lParams(6).vcValue:=vfecha_fin_emi;',
'    ',
'  bl :=PK_JRXML2PDF_REPGEN.FK_RUN(i_vcName =>vcName,',
'                                  i_lParams=>lParams);',
'  ',
'  PK_JRXML2PDF_REPGEN.PR_SHOW_REPORT(bl);',
'  APEX_APPLICATION.STOP_APEX_ENGINE;',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
