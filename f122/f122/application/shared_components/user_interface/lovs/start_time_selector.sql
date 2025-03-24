prompt --application/shared_components/user_interface/lovs/start_time_selector
begin
--   Manifest
--     START TIME SELECTOR
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(12390766410156593)
,p_lov_name=>'START TIME SELECTOR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(trunc(sysdate)+((i-1)/48),(''HH:MIam'')) d,',
'       to_char(trunc(sysdate)+((i-1)/48),(''HH:MIam'')) r',
'  from wwv_flow_dual100',
' where i < 49',
'order by i'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_imp.component_end;
end;
/
