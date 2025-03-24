prompt --application/shared_components/user_interface/lovs/lvvendedores
begin
--   Manifest
--     LVVENDEDORES
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
 p_id=>wwv_flow_imp.id(41122753967041381)
,p_lov_name=>'LVVENDEDORES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT v.cod_vendedor||'' - ''||nvl( v.descripcion, p.nombre ) L, ',
'         v.cod_vendedor V, p.nombre',
'    FROM fv_vendedores v, personas p ',
'   WHERE v.cod_empresa = :p_cod_empresa ',
'     AND v.cod_persona = p.cod_persona ',
'     AND v.estado = ''A'' ',
'ORDER BY 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'V'
,p_display_column_name=>'L'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(103361507536754425)
,p_query_column_name=>'V'
,p_heading=>'Nombre'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(103361962584754425)
,p_query_column_name=>'L'
,p_heading=>'Codigo'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(103362388020754425)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
