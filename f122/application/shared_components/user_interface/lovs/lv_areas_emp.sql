prompt --application/shared_components/user_interface/lovs/lv_areas_emp
begin
--   Manifest
--     LV_AREAS_EMP
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
 p_id=>wwv_flow_imp.id(136535551869422453)
,p_lov_name=>'LV_AREAS_EMP'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct rh.descripcion || '' - ''  || rh.cod_area d,',
'                rh.cod_area r',
' from rh_areas rh, CP_ORD_PEDIDOS_CAB  c ',
' where rh.cod_empresa = :p_cod_empresa',
' and c.cod_sucursal = :p461_cod_sucursal;'))
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
