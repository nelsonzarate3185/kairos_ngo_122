prompt --application/shared_components/user_interface/lovs/lov_sucursal_cod
begin
--   Manifest
--     LOV_SUCURSAL_COD
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
 p_id=>wwv_flow_imp.id(10765557050450931)
,p_lov_name=>'LOV_SUCURSAL_COD'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_SUCURSAL||''-''||DESCRIPCION d,',
'       COD_SUCURSAL r',
'  FROM SUCURSALES',
'WHERE COD_EMPRESA = :P_COD_EMPRESA'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'SUCURSALES'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'R'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
