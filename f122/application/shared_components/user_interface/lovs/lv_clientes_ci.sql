prompt --application/shared_components/user_interface/lovs/lv_clientes_ci
begin
--   Manifest
--     LV_CLIENTES_CI
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
 p_id=>wwv_flow_imp.id(78493186749290733)
,p_lov_name=>'LV_CLIENTES_CI'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct i.numero R, ',
'                i.cod_ident, ',
'                p.nombre',
'  from cc_clientes c,',
'       personas p,',
'       ident_personas i',
' where c.cod_persona = p.cod_persona',
'   and p.cod_persona = i.cod_persona',
'   and c.cod_empresa = :p_cod_empresa',
' order by p.nombre',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'COD_IDENT'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(78495021880304785)
,p_query_column_name=>'R'
,p_heading=>unistr('N\00FAmero')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(78495490354304786)
,p_query_column_name=>'COD_IDENT'
,p_heading=>'Ident'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(78495884234304786)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
