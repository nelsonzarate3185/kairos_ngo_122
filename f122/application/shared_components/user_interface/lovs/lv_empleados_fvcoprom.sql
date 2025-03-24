prompt --application/shared_components/user_interface/lovs/lv_empleados_fvcoprom
begin
--   Manifest
--     LV_EMPLEADOS_FVCOPROM
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
 p_id=>wwv_flow_imp.id(51192362839414522)
,p_lov_name=>'LV_EMPLEADOS_FVCOPROM'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pe.nombre, em.cod_empleado ',
'  from rh_empleados em ,personas pe ',
' where em.cod_empresa = :P_COD_EMPRESA',
'   and em.cod_persona = pe.cod_persona ',
'   and nvl(em.activo, ''S'') = ''S'' ',
'order by pe.nombre',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'ST_GRUPOS'
,p_return_column_name=>'COD_EMPLEADO'
,p_display_column_name=>'NOMBRE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
