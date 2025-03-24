prompt --application/pages/page_00800
begin
--   Manifest
--     PAGE: 00800
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
 p_id=>800
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Visor PDF'
,p_alias=>'VISOR-PDF'
,p_step_title=>'Visor PDF'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
,p_last_updated_by=>'ANDRESDI'
,p_last_upd_yyyymmddhh24miss=>'20220915161747'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11643104098537422)
,p_plug_name=>'Principal'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="height:1080px"'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--<object',
'    data="&P801_URL."',
'    type="application/pdf"',
'    width="100%"',
'    height="100%"',
'>',
'    <iframe',
'        src="&P801_URL."',
'        width="100%"',
'        height="100%"',
'        style="border: none;"',
'    >',
'        <p>',
'            Your browser does not support PDFs.',
'           <!-- <a href="https://example.com/test.pdf%22%3EDownload the PDF</a> -->',
'        <!--</p>',
'    </iframe>',
'</object>-->',
'',
'<embed src="&P801_URL." type="application/pdf" width="100%" height="600px" />'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11643287311537423)
,p_name=>'P800_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11643104098537422)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
