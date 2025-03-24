prompt --application/shared_components/user_interface/lovs/lov_campania_cod
begin
--   Manifest
--     LOV_CAMPANIA_COD
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
 p_id=>wwv_flow_imp.id(24078331552950405)
,p_lov_name=>'LOV_CAMPANIA_COD'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.COD_CAMPANIA||''-''||C.DESCRIPCION D,',
'       C.COD_CAMPANIA R ',
' FROM CRM_CAMPANIA C ',
'WHERE C.COD_EMPRESA = ''1''--:P_COD_EMPRESA',
'  AND C.ACTIVO = ''S'''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'R'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
