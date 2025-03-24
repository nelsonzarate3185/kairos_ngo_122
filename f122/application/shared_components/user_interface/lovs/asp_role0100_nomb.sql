prompt --application/shared_components/user_interface/lovs/asp_role0100_nomb
begin
--   Manifest
--     ASP$ROLE0100.NOMB
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
 p_id=>wwv_flow_imp.id(40299376716893237)
,p_lov_name=>'ASP$ROLE0100.NOMB'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID V,',
'       nvl(descripcion_rol,nomb)||''(''||nomb||'')'' L',
'FROM ASP$ROLE0100',
'ORDER BY nomb     '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'V'
,p_display_column_name=>'L'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
