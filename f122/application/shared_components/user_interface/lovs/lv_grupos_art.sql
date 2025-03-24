prompt --application/shared_components/user_interface/lovs/lv_grupos_art
begin
--   Manifest
--     LV_GRUPOS_ART
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
 p_id=>wwv_flow_imp.id(37018122510837925)
,p_lov_name=>'LV_GRUPOS_ART'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- 181 - VTRVTMVE',
'',
'SELECT COD_GRUPO_ART || '' - '' || DESCRIPCION D, COD_GRUPO_ART R',
'FROM ST_GRUPOS_ART',
'ORDER BY DESCRIPCION;',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
