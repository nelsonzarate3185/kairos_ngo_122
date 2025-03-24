prompt --application/shared_components/user_interface/lovs/lv_usuario_caageven
begin
--   Manifest
--     LV_USUARIO_CAAGEVEN
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
 p_id=>wwv_flow_imp.id(76934081168442200)
,p_lov_name=>'LV_USUARIO_CAAGEVEN'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u.cod_usuario||'' - ''|| p.nombre D,',
'       u.cod_usuario R',
'  from usuarios u, personas p ',
' where cod_empresa = :p_cod_empresa',
'   and u.cod_persona = p.cod_persona;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(76969140247462582)
,p_query_column_name=>'R'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(76969566035462582)
,p_query_column_name=>'D'
,p_heading=>'Usuario'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
