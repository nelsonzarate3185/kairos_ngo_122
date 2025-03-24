prompt --application/shared_components/user_interface/lovs/lv_vale_stprocan
begin
--   Manifest
--     LV_VALE_STPROCAN
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
 p_id=>wwv_flow_imp.id(157267898514923232)
,p_lov_name=>'LV_VALE_STPROCAN'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct C.DESCRIPCION,',
'       C.COD_CLIENTE_VALE',
'from VT_CLIENTES_VALES C, ST_CANJEADOS_PROM_CAB CA',
'where c.cod_empresa =  CA.cod_empresa',
'and c.COD_CLIENTE_VALE = CA.COD_CLIENTE_VALE'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CLIENTE_VALE'
,p_display_column_name=>'COD_CLIENTE_VALE'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'COD_CLIENTE_VALE'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(157268505419921450)
,p_query_column_name=>'COD_CLIENTE_VALE'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(157268915345921449)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
