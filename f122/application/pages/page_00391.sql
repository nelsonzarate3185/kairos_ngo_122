prompt --application/pages/page_00391
begin
--   Manifest
--     PAGE: 00391
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
 p_id=>391
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'ventas_Movimientos'
,p_alias=>'VENTAS_MOVIMIENTOS'
,p_step_title=>'Movimientos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'HSEGOVIA'
,p_last_upd_yyyymmddhh24miss=>'20230216092820'
);
wwv_flow_imp.component_end;
end;
/
