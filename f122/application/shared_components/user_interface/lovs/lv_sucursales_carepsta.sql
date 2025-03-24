prompt --application/shared_components/user_interface/lovs/lv_sucursales_carepsta
begin
--   Manifest
--     LV_SUCURSALES_CAREPSTA
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
 p_id=>wwv_flow_imp.id(79621632628077608)
,p_lov_name=>'LV_SUCURSALES_CAREPSTA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.descripcion D, s.cod_sucursal R',
'  from sucursales s, st_sub_bloques sb',
' where s.cod_empresa = :P_COD_EMPRESA',
'   and s.cod_empresa=sb.cod_empresa',
'   and s.cod_sucursal=sb.cod_sucursal',
'group by  s.descripcion, s.cod_sucursal',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
wwv_flow_imp.component_end;
end;
/
