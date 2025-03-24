prompt --application/shared_components/user_interface/lovs/lv_monedas_bstipcam
begin
--   Manifest
--     LV_MONEDAS_BSTIPCAM
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
 p_id=>wwv_flow_imp.id(75941381114967344)
,p_lov_name=>'LV_MONEDAS_BSTIPCAM'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_moneda||'' - ''||descripcion d,',
'       cod_moneda r',
'  from monedas',
' --order by d',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'ST_GRUPOS'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
