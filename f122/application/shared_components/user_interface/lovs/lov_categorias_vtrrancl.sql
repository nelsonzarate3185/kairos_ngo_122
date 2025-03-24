prompt --application/shared_components/user_interface/lovs/lov_categorias_vtrrancl
begin
--   Manifest
--     LOV_CATEGORIAS_VTRRANCL
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
 p_id=>wwv_flow_imp.id(52834408344380031)
,p_lov_name=>'LOV_CATEGORIAS_VTRRANCL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select cod_categoria, cod_categoria||'' - ''||descripcion descripcion',
'  from st_categorias'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CATEGORIA'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'COD_CATEGORIA'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(52834819197381390)
,p_query_column_name=>'COD_CATEGORIA'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(52835209350381390)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>unistr('C\00F3digo - Descripci\00F3n')
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
