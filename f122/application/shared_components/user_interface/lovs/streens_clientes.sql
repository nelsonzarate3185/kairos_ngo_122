prompt --application/shared_components/user_interface/lovs/streens_clientes
begin
--   Manifest
--     STREENS_CLIENTES
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
 p_id=>wwv_flow_imp.id(124490328871016621)
,p_lov_name=>'STREENS_CLIENTES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre d, c.cod_cliente r',
'from cc_clientes c, personas p ',
'where c.cod_empresa=:p_cod_empresa ',
'and c.cod_persona=p.cod_persona'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'D'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(124490718644024541)
,p_query_column_name=>'R'
,p_heading=>unistr('C\00F3digo Cliente')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(124491188561024541)
,p_query_column_name=>'D'
,p_heading=>'Cliente'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
