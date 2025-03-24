prompt --application/shared_components/user_interface/lovs/lv_articulos_stliprst2
begin
--   Manifest
--     LV_ARTICULOS_ STLIPRST2
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
 p_id=>wwv_flow_imp.id(147266674242077633)
,p_lov_name=>'LV_ARTICULOS_ STLIPRST2'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.descripcion, a.cod_articulo, a.cod_art_corto',
'from st_articulos a',
'where a.cod_empresa= :P_cod_empresa',
'and a.cod_rubro=''PR'''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_ARTICULO'
,p_display_column_name=>'COD_ARTICULO'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DESCRIPCION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(147267055548062831)
,p_query_column_name=>'COD_ARTICULO'
,p_heading=>'Articulo'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(147267456235062831)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
