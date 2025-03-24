prompt --application/shared_components/user_interface/lovs/lv_relaciones_stenvpe
begin
--   Manifest
--     LV_RELACIONES_STENVPE
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
 p_id=>wwv_flow_imp.id(93505156280723520)
,p_lov_name=>'LV_RELACIONES_STENVPE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.cod_unidad_rel ||'' - ''||u.descripcion D, r.cod_unidad_rel R',
'from st_relaciones r, st_unidades_medida u ',
'where r.cod_relacion_um =:P339_cod_relacion_um ',
'and r.cod_unidad_rel = u.cod_unidad_medida ',
'order by descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
wwv_flow_imp.component_end;
end;
/
