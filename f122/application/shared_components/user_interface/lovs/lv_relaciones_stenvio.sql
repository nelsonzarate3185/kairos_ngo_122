prompt --application/shared_components/user_interface/lovs/lv_relaciones_stenvio
begin
--   Manifest
--     LV_RELACIONES_STENVIO
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
 p_id=>wwv_flow_imp.id(81105903760665806)
,p_lov_name=>'LV_RELACIONES_STENVIO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u.cod_unidad_medida||'' - ''|| u.descripcion d, r.cod_relacion_um, r.cod_unidad_rel R',
'from st_relaciones r, st_unidades_medida u ',
'where r.cod_relacion_um =:P323_COD_RELACION_UM',
'and r.cod_unidad_rel = u.cod_unidad_medida ',
'order by descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(81108928848670606)
,p_query_column_name=>'R'
,p_heading=>'Uni.'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(93053813713528040)
,p_query_column_name=>'D'
,p_heading=>'D'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(81109739273670607)
,p_query_column_name=>'COD_RELACION_UM'
,p_heading=>'Rel.'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
