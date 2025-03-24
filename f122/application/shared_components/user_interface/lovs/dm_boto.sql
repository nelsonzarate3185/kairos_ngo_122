prompt --application/shared_components/user_interface/lovs/dm_boto
begin
--   Manifest
--     DM_BOTO
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
 p_id=>wwv_flow_imp.id(18287764341896146)
,p_lov_name=>'DM_BOTO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RV_LOW_VALUE,',
'       RV_MEANING',
'  FROM CG_REF_CODES',
' WHERE RV_DOMAIN = ''DM$BOTO''     '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'RV_LOW_VALUE'
,p_display_column_name=>'RV_MEANING'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
