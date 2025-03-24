prompt --application/shared_components/user_interface/lovs/lv_tecnicos_ot_sol
begin
--   Manifest
--     LV_TECNICOS_OT_SOL
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
 p_id=>wwv_flow_imp.id(12825555845539011)
,p_lov_name=>'LV_TECNICOS_OT_SOL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_PROVEEDOR ,NOMB_PROVEEDOR nombre,1 ORDEN',
'from cm_proveedores a',
'where cod_empresa= :P_COD_EMPRESA',
'and a.ind_servicio_tecnico=''STNGO''',
'AND ESTADO=''A''',
'AND A.CANTIDAD_OTS>0',
' ',
'',
' union all',
' SELECT ''T'' codigo_rapido,''TODOS'' nombre,2',
'FROM dual',
'ORDER BY 3 desc, 2 asc',
'',
' ',
'',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_PROVEEDOR'
,p_display_column_name=>'NOMBRE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(12825999131539012)
,p_query_column_name=>'ORDEN'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(12826317037539012)
,p_query_column_name=>'COD_PROVEEDOR'
,p_heading=>'Cod Proveedor'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(12826728740539012)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
