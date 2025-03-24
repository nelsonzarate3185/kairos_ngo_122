prompt --application/pages/page_00390
begin
--   Manifest
--     PAGE: 00390
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
 p_id=>390
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VENTAS'
,p_alias=>'VENTAS'
,p_step_title=>'VENTAS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20250104103442'
);
wwv_flow_imp.component_end;
end;
/
