prompt --application/shared_components/user_interface/lovs/streens_articulos
begin
--   Manifest
--     STREENS_ARTICULOS
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
 p_id=>wwv_flow_imp.id(124496500588038827)
,p_lov_name=>'STREENS_ARTICULOS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(cod_art_corto,cod_articulo)||'' -''||descripcion descripcion,cod_art_corto, cod_articulo',
'from st_articulos ',
'where cod_empresa = :p_cod_empresa ',
'order by descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_ARTICULO'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(124496970793047449)
,p_query_column_name=>'COD_ARTICULO'
,p_heading=>unistr('C\00F3digo Art\00EDculo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(124497374140047449)
,p_query_column_name=>'COD_ART_CORTO'
,p_heading=>unistr('C\00F3digo Art.Corto')
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(124497772607047449)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>unistr('Art\00EDculo')
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
