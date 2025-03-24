prompt --application/shared_components/user_interface/lovs/lv_cod_linea_set_stliprst
begin
--   Manifest
--     LV_COD_LINEA_SET_STLIPRST
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
 p_id=>wwv_flow_imp.id(147225899150355687)
,p_lov_name=>'LV_COD_LINEA_SET_STLIPRST'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION , COD_LINEA',
'FROM st_linea_ST',
'WHERE COD_EMPRESA=:P_COD_EMPRESA',
'ORDER BY 1;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_LINEA'
,p_display_column_name=>'COD_LINEA'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'COD_LINEA'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(147226498104349640)
,p_query_column_name=>'COD_LINEA'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(147226841283349640)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
