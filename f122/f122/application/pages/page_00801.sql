prompt --application/pages/page_00801
begin
--   Manifest
--     PAGE: 00801
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
 p_id=>801
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Prueba de Visor'
,p_alias=>'PRUEBA-DE-VISOR'
,p_step_title=>'Prueba de Visor'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'ANDRESDI'
,p_last_upd_yyyymmddhh24miss=>'20220915161833'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11643389791537424)
,p_plug_name=>'Principal'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12459049943009617)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(40070279985263645)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(40189153869263678)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11643813318537429)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11643389791537424)
,p_button_name=>'PR_IMPRIMIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Imprimir'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7779978948592903)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11643389791537424)
,p_button_name=>'New'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'New'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11644074888537431)
,p_branch_name=>'BR_PARAMETRO'
,p_branch_action=>'f?p=&APP_ID.:800:&SESSION.::&DEBUG.:800:P800_URL:&P801_URL.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11643751879537428)
,p_name=>'P801_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11643389791537424)
,p_prompt=>'Url'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11643555716537426)
,p_name=>'DA_PRUEBA'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11643606085537427)
,p_event_id=>wwv_flow_imp.id(11643555716537426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/VTCNDPRT.pdf?''',
'            + ''P_COD_EMPRESA='' + ''1'' + ''&P_TIP_COMPROBANTE='' +  ''FCR''  + ''&P_SER_COMPROBANTE=''+ ''C1''  + ''&P_NRO_COMPROBANTE=''+ 189909;',
'',
'apex.item(''P801_URL'').setValue(vURL);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7779795407592901)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11643813318537429)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7779879570592902)
,p_event_id=>wwv_flow_imp.id(7779795407592901)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.open(encodeURI(apex.item(''P801_URL'').getValue()), ''_blank'');',
''))
);
wwv_flow_imp.component_end;
end;
/
