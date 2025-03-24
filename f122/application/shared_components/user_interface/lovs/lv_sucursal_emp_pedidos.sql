prompt --application/shared_components/user_interface/lovs/lv_sucursal_emp_pedidos
begin
--   Manifest
--     LV_SUCURSAL_EMP_PEDIDOS
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
 p_id=>wwv_flow_imp.id(136512815899455292)
,p_lov_name=>'LV_SUCURSAL_EMP_PEDIDOS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.descripcion || '' - '' || s.cod_sucursal d, ',
'        s.cod_sucursal r',
' from sucursales s',
' where s.cod_empresa = :p461_cod_empresa',
' and s.cod_sucursal in (select e.cod_sucursal',
'                         from rh_empleados e',
'                         where e.cod_Empresa  = s.cod_empresa',
'                         and e.cod_sucursal = s.cod_sucursal)',
' order by descripcion',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
wwv_flow_imp.component_end;
end;
/
