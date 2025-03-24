prompt --application/shared_components/user_interface/lovs/lov_corporacion_vtrrancl
begin
--   Manifest
--     LOV_CORPORACION_VTRRANCL
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
 p_id=>wwv_flow_imp.id(52828770534320222)
,p_lov_name=>'LOV_CORPORACION_VTRRANCL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_corporacion, cod_corporacion||'' - ''||descripcion descripcion',
'  from cc_corporaciones',
' where cod_empresa = :P230_COD_EMPRESA'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CORPORACION'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'COD_CORPORACION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(52829176495321845)
,p_query_column_name=>'COD_CORPORACION'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(52829574651321845)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>unistr('C\00F3digo - Descripci\00F3n')
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
