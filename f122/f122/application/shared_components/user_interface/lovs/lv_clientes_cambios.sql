prompt --application/shared_components/user_interface/lovs/lv_clientes_cambios
begin
--   Manifest
--     LV_CLIENTES_CAMBIOS
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
 p_id=>wwv_flow_imp.id(142955458512447847)
,p_lov_name=>'LV_CLIENTES_CAMBIOS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c.cod_cliente ||'' - '' || nvl( ltrim(p.nombre), ltrim( p.nomb_fantasia ) ) D, ',
'                c.cod_cliente R',
'from cc_clientes c, personas p ',
'where c.cod_empresa = :p_cod_empresa ',
'and c.cod_persona = p.cod_persona ',
'and c.estado  NOT IN(''I'',''B'') ',
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
