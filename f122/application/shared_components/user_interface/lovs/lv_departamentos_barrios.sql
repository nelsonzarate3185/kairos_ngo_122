prompt --application/shared_components/user_interface/lovs/lv_departamentos_barrios
begin
--   Manifest
--     LV_DEPARTAMENTOS_BARRIOS
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
 p_id=>wwv_flow_imp.id(132311115031483930)
,p_lov_name=>'LV_DEPARTAMENTOS_BARRIOS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT',
'	p.cod_provincia ||'' - ''|| p.Descripcion D,',
'	p.COD_PROVINCIA R',
'from provincias p, barrios B',
'where p.cod_pais = B.cod_pais',
'and p.cod_provincia = B.cod_provincia',
'and p.cod_pais = :P444_PAIS'))
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
