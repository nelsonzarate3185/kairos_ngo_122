prompt --application/shared_components/user_interface/lovs/lv_agente_call_cccrecli
begin
--   Manifest
--     LV_AGENTE_CALL_CCCRECLI
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
 p_id=>wwv_flow_imp.id(42080435904343410)
,p_lov_name=>'LV_AGENTE_CALL_CCCRECLI'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.cod_empleado||'' - ''||ltrim( p.nombre) d, ',
'       e.cod_empleado r',
'  from rh_empleados e, personas p ',
' where e.cod_empresa = :P_COD_EMPRESA',
'   and nvl( p.es_fisica, ''N'' ) = ''S'' ',
'   and e.cod_persona = p.cod_persona ',
'   AND NVL(e.activo,''S'')=''S'' ',
'order by 1'))
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
