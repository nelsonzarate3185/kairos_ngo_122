prompt --application/shared_components/user_interface/lovs/lv_distribuidores_stprocan
begin
--   Manifest
--     LV_DISTRIBUIDORES_STPROCAN
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
 p_id=>wwv_flow_imp.id(157238591037568679)
,p_lov_name=>'LV_DISTRIBUIDORES_STPROCAN'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct P.NOMBRE,',
'       CA.COD_DISTRIBUIDOR',
'FROM ST_CANJEADOS_PROM_CAB CA, PERSONAS P, CC_CLIENTES C',
'where C.COD_EMPRESA = CA.COD_EMPRESA',
'and C.COD_CLIENTE = CA.COD_DISTRIBUIDOR',
'and C.COD_PERSONA = P.COD_PERSONA ;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_DISTRIBUIDOR'
,p_display_column_name=>'COD_DISTRIBUIDOR'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(157239151424559538)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(157239582473559537)
,p_query_column_name=>'COD_DISTRIBUIDOR'
,p_heading=>'Cod Distribuidor'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
