prompt --application/shared_components/user_interface/lovs/lv_motivos_caaprsnc
begin
--   Manifest
--     LV_MOTIVOS_CAAPRSNC
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
 p_id=>wwv_flow_imp.id(155377745750668708)
,p_lov_name=>'LV_MOTIVOS_CAAPRSNC'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select descripcion , cod_motivo',
'              ',
'               from problemas_conformidad',
'               where cod_empresa   = :P_cod_empresa'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_MOTIVO'
,p_display_column_name=>'COD_MOTIVO'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DESCRIPCION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(155496755931634231)
,p_query_column_name=>'COD_MOTIVO'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(155497106635634231)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
