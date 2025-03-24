prompt --application/shared_components/user_interface/lovs/lov_motivos_llamadas
begin
--   Manifest
--     LOV_MOTIVOS_LLAMADAS
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
 p_id=>wwv_flow_imp.id(161329884705169009)
,p_lov_name=>'LOV_MOTIVOS_LLAMADAS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_motivo, descripcion ',
'from ca_motivo_lla',
'where estado = ''S''',
'order by to_number(cod_motivo)'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_MOTIVO'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(161330721453158936)
,p_query_column_name=>'COD_MOTIVO'
,p_heading=>unistr('C\00F3d. Motivo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(161331107378158936)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>unistr('Descripci\00F3n')
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
