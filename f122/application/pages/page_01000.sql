prompt --application/pages/page_01000
begin
--   Manifest
--     PAGE: 01000
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
 p_id=>1000
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Informe'
,p_alias=>'INFORME'
,p_step_title=>'Informe'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'  $(''.t-Footer'').remove()',
'})',
''))
,p_step_template=>wwv_flow_imp.id(40085302490263650)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250319101548'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54299974349918020)
,p_plug_name=>'Informe'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<iframe src="&P1000_URL." style="width: 100%; height: 92vh"></iframe>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54300087535918021)
,p_name=>'P1000_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54299974349918020)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54300279409918023)
,p_process_sequence=>10
,p_process_point=>'BEFORE_FOOTER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Elimina ruta de la colecci\00F3n')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_id NUMBER;',
'BEGIN',
'    BEGIN',
'        SELECT seq_id',
'          INTO v_id',
'          FROM apex_collections',
'         WHERE collection_name = ''REPORT_URL''',
'           AND ROWNUM = 1;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            :P1000_URL:= NULL;',
'        WHEN OTHERS THEN',
'            :P1000_URL := NULL;',
'    END;',
'',
'    apex_collection.delete_member(p_collection_name => ''REPORT_URL'',',
'                                  p_seq             => v_id);',
'    :P1000_URL := NULL;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;    ',
'END;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54300171999918022)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Obtiene ruta de la colecci\00F3n')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT C001',
'    INTO :P1000_URL',
'    FROM APEX_COLLECTIONS',
'   WHERE COLLECTION_NAME = ''REPORT_URL''',
'     AND ROWNUM = 1;',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    :P1000_URL := NULL;',
'  WHEN OTHERS THEN',
'    :P1000_URL := NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
