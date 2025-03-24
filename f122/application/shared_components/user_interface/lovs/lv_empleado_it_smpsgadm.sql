prompt --application/shared_components/user_interface/lovs/lv_empleado_it_smpsgadm
begin
--   Manifest
--     LV_EMPLEADO_IT_SMPSGADM
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
 p_id=>wwv_flow_imp.id(67773774708094277)
,p_lov_name=>'LV_EMPLEADO_IT_SMPSGADM'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre D,p.cod_persona  R',
'  from rh_empleados e, personas p ',
' where e.cod_empresa = :P_COD_EMPRESA ',
'   and e.cod_persona = p.cod_persona ',
'   and nvl(e.activo, ''S'') = ''S'' ',
'order by nombre'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'R'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(67774285398097356)
,p_query_column_name=>'R'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(67774677116097357)
,p_query_column_name=>'D'
,p_heading=>'Nombre'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
