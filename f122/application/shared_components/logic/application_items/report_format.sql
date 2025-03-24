prompt --application/shared_components/logic/application_items/report_format
begin
--   Manifest
--     APPLICATION ITEM: REPORT_FORMAT
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(54394534649761211)
,p_name=>'REPORT_FORMAT'
,p_protection_level=>'N'
,p_escape_on_http_output=>'N'
);
wwv_flow_imp.component_end;
end;
/
