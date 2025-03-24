prompt --application/shared_components/user_interface/lovs/lvcustodiossal
begin
--   Manifest
--     LVCUSTODIOSSAL
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
 p_id=>wwv_flow_imp.id(112269228658581892)
,p_lov_name=>'LVCUSTODIOSSAL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_custodio||'' - ''||c.descripcion D, c.cod_custodio R',
'from usuarios_custodios u, cc_custodios c ',
'where u.cod_empresa = :P_COD_EMPRESA',
'and u.cod_usuario = :P375_COD_USUARIO ',
'and u.cod_empresa = c.cod_empresa ',
'and u.cod_custodio = c.cod_custodio ',
'and u.cod_custodio <> :P375_COD_CUSTODIO',
'union all ',
'select c.cod_custodio||'' - ''||c.descripcion D, c.cod_custodio R',
'from cc_custodios c ',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_custodio = :P375_COD_CUSTODIO',
'order by 1'))
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
