prompt --application/shared_components/user_interface/lovs/crm_motivo
begin
--   Manifest
--     CRM_MOTIVO
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
 p_id=>wwv_flow_imp.id(24154841655067951)
,p_lov_name=>'CRM_MOTIVO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION , COD_MOTIVO',
'FROM CRM_MOTIVO',
'WHERE ACTIVO = ''S''',
'AND COD_EMPRESA = :P_COD_EMPRESA',
'UNION ALL ',
'SELECT descripcion_referencia, to_char(cod_referencia)',
'FROM cx_referencias ',
'WHERE cod_empresa = :P_COD_EMPRESA',
'AND cod_tipo_referencia = 11',
'AND estado = ''A'''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'CRM_MOTIVO'
,p_return_column_name=>'COD_MOTIVO'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
