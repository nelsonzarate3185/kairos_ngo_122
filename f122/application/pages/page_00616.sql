prompt --application/pages/page_00616
begin
--   Manifest
--     PAGE: 00616
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
 p_id=>616
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Carga de Notas de Credito'
,p_alias=>'CARGA-DE-NOTAS-DE-CREDITO1'
,p_step_title=>'Carga de Notas de Credito'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'FCARDOZO'
,p_last_upd_yyyymmddhh24miss=>'20230921110258'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(210432172174211404)
,p_plug_name=>'Carga de Notas de Credito'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp.component_end;
end;
/
