prompt --application/pages/page_00195
begin
--   Manifest
--     PAGE: 00195
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
 p_id=>195
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Run Report Presupuesto Venta'
,p_alias=>'RUN-REPORT-PRESUPUESTO-VENTA'
,p_page_mode=>'NON_MODAL'
,p_step_title=>'Run Report Presupuesto Venta'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_media_type=>'application/pdf'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'11'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20221118141004'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45641637560589567)
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
'  vserie VARCHAR2(50);',
'  vnro VARCHAR2(50);',
'BEGIN',
'',
'  BEGIN',
'    SELECT c002, c003',
'     INTO Vserie, vnro',
'    FROM apex_collections',
'    WHERE collection_name=''PRESUPUESTO_VENTAS''',
'    AND ROWNUM=1;',
'    EXCEPTION WHEN OTHERS THEN ',
'    ',
'       VSERIE:=''A'';',
'    VNRO:=''1'';',
'    END;',
'  ',
'vcName:=''VT_PRESUPUESTO'';',
'lParams(1).vcName:=''P_SER_COMPROBANTE'';',
'    lParams(1).vcValue:=VSERIE;',
'    lParams(2).vcName:=''P_NRO_COMPROBANTE'';',
'    lParams(2).vcValue:=VNRO;',
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
