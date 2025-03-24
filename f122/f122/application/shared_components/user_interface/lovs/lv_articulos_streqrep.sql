prompt --application/shared_components/user_interface/lovs/lv_articulos_streqrep
begin
--   Manifest
--     LV_ARTICULOS_STREQREP
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
 p_id=>wwv_flow_imp.id(111099221869661752)
,p_lov_name=>'LV_ARTICULOS_STREQREP'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.cod_articulo||'' - ''||a.descripcion D, a.cod_articulo R,  a.cod_origen_art from st_articulos a ',
'where a.cod_empresa = ''1'' and ( a.estado is null or a.estado <> ''I'' ) ',
'and cod_rubro=''RE''  order by a.descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
wwv_flow_imp.component_end;
end;
/
