prompt --application/shared_components/user_interface/lovs/lv_empleados_rhautper
begin
--   Manifest
--     LV_EMPLEADOS_RHAUTPER
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
 p_id=>wwv_flow_imp.id(100839336615272773)
,p_lov_name=>'LV_EMPLEADOS_RHAUTPER'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT em.cod_empleado || '' - '' || ltrim(pe.nombre) D, ',
'       em.cod_empleado R',
'  from rh_empleados em,',
'       personas pe',
' where em.cod_empresa = :P_COD_EMPRESA',
'   and em.cod_persona = pe.cod_persona ',
'   and nvl(em.activo, ''N'') = ''S''',
'   /*and (nvl(:P_359_IND_VISUALIZA_TODO, ''N'') = ''S'' ',
'        OR (em.cod_empresa, em.cod_empleado) IN (select e.cod_empresa, e.cod_empleado',
'                                                 from rh_empleados e',
'                                                where e.cod_empresa = em.cod_empresa',
'                                                  and e.cod_empleado= em.cod_empleado',
'                                                  and e.cod_persona in (select u.cod_persona',
'                                                                          from usuarios u',
'                                                                          where u.cod_persona = e.cod_persona',
'                                                                           and u.cod_usuario = :P_COD_USUARIO)))',
' order by pe.nombre asc*/      '))
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
