prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 122
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(40213697902263687)
,p_group_name=>'Administration'
);
wwv_flow_imp.component_end;
end;
/
