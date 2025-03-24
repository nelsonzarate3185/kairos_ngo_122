prompt --application/pages/page_00557
begin
--   Manifest
--     PAGE: 00557
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
 p_id=>557
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'DESCARGA PDF'
,p_alias=>'DESCARGA-PDF'
,p_step_title=>'DESCARGA PDF'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'10'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20230628181041'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(175793718310694812)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  l_blob         BLOB;',
'',
'  v_file_name varchar2(4000) := ''Input.pdf'';',
'',
'BEGIN',
'    IF :P557_ID_REGISTRO IS NOT NULL THEN',
'        select archivo_adjunto into l_blob from sm_adjunto_contactos_web where id_registro = :P557_ID_REGISTRO;',
'        sys.htp.init;',
'        sys.owa_util.mime_header(''application/pdf'',FALSE);',
'        sys.htp.p(''Content-length:''||sys.dbms_lob.getlength(l_blob));',
'        sys.htp.p(''Content-Disposition: attachment; filename="'' || V_FILE_NAME ||''"'');',
'        sys.htp.p(''Cache-Control: max-age=30'');',
'        sys.owa_util.http_header_close;',
'        --htmldb_application.g_unrecoverable_error := TRUE ;',
'        sys.wpg_docload.download_file(l_blob);',
'        apex_application.stop_apex_engine;',
'    END IF;',
'end;    '))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(175793849898694813)
,p_name=>'P557_ID_REGISTRO'
,p_item_sequence=>10
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Registro'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp.component_end;
end;
/
