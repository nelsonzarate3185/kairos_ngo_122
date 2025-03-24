prompt --application/shared_components/user_interface/lovs/lov_sucursal_dist_caordtra
begin
--   Manifest
--     LOV_SUCURSAL_DIST_CAORDTRA
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
 p_id=>wwv_flow_imp.id(147226086824351717)
,p_lov_name=>'LOV_SUCURSAL_DIST_CAORDTRA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.cod_SUCURSAL||'' - ''||p.nombre descri, ',
'       p.direccion, ',
'       p.telefono, ',
'       p.cod_SUCURSAL,',
'       p.nombre',
'from BS_SUCURSAL_CLIENTE p',
'where p.cod_empresa= ''1''',
'and p.cod_cliente=:P370_COD_CLIENTE'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COD_SUCURSAL'
,p_display_column_name=>'DESCRI'
,p_default_sort_column_name=>'DESCRI'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
