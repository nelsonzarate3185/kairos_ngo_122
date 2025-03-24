prompt --application/shared_components/user_interface/lovs/lov_articulos_cppcom
begin
--   Manifest
--     LOV_ARTICULOS_CPPCOM
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
 p_id=>wwv_flow_imp.id(133228736772611269)
,p_lov_name=>'LOV_ARTICULOS_CPPCOM'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo, descripcion ',
'from cp_articulos ',
'WHERE COD_EMPRESA  = ''1''',
'order by descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_ARTICULO'
,p_display_column_name=>'COD_ARTICULO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(133229899246606817)
,p_query_column_name=>'COD_ARTICULO'
,p_heading=>unistr('C\00F3digo Art\00EDculo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(133230186992606816)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>unistr('Descripci\00F3n  Art\00EDculo')
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
