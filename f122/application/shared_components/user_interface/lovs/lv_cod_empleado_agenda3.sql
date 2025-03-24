prompt --application/shared_components/user_interface/lovs/lv_cod_empleado_agenda3
begin
--   Manifest
--     LV_COD_EMPLEADO_AGENDA3
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
 p_id=>wwv_flow_imp.id(148031143157903287)
,p_lov_name=>'LV_COD_EMPLEADO_AGENDA3'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.cod_empleado,',
'       p.cod_persona,',
'       nvl(p.nombre,p.nomb_fantasia) nombre,',
'       e.cod_seccion,',
'       p.direc_electronica,',
'       e.cod_sucursal',
'from inv.rh_empleados e,',
'     personas p',
'where e.cod_empresa=''1''',
'and   e.activo=''S''',
'and   e.cod_persona=p.cod_persona',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_EMPLEADO'
,p_display_column_name=>'COD_EMPLEADO'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'COD_EMPLEADO'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(148031795143898224)
,p_query_column_name=>'COD_EMPLEADO'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(148032107113898221)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
