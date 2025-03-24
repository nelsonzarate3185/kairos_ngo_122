prompt --application/shared_components/user_interface/lovs/lv_encargado_startres
begin
--   Manifest
--     LV_ENCARGADO_STARTRES
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
 p_id=>wwv_flow_imp.id(910814649310202518)
,p_lov_name=>'LV_ENCARGADO_STARTRES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.cod_empleado || '' - '' || ltrim( p.nombre) D, ',
'       e.cod_empleado R',
'from rh_empleados e, personas p ',
'where e.cod_empresa = :P_COD_EMPRESA ',
'and e.cod_persona = p.cod_persona ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
wwv_flow_imp.component_end;
end;
/
