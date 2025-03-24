prompt --application/shared_components/user_interface/lovs/lov_habilitaciones_caja
begin
--   Manifest
--     LOV_HABILITACIONES_CAJA
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
 p_id=>wwv_flow_imp.id(499135556691333227)
,p_lov_name=>'LOV_HABILITACIONES_CAJA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT HAB.COD_SUCURSAL,',
'       HAB.NRO_HABILITACION,',
'       HAB.COD_USUARIO,',
'       HAB.FEC_HABILITACION,',
'       HAB.FEC_CIERRE',
'FROM   INV.CC_HABILITACIONES HAB',
'WHERE  HAB.COD_EMPRESA = :P_COD_EMPRESA',
'ORDER  BY HAB.FEC_HABILITACION DESC, HAB.COD_SUCURSAL',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'NRO_HABILITACION'
,p_display_column_name=>'NRO_HABILITACION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(499136376951340861)
,p_query_column_name=>'NRO_HABILITACION'
,p_heading=>unistr('Nro. Habilitaci\00F3n')
,p_display_sequence=>10
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(499136742294340866)
,p_query_column_name=>'COD_SUCURSAL'
,p_heading=>'Sucursal'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(499137155193340866)
,p_query_column_name=>'COD_USUARIO'
,p_heading=>'Usuario'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(499137539919340866)
,p_query_column_name=>'FEC_HABILITACION'
,p_heading=>'Fecha Apertura'
,p_display_sequence=>40
,p_data_type=>'DATE'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(499137942133340866)
,p_query_column_name=>'FEC_CIERRE'
,p_heading=>'Fecha Cierre'
,p_display_sequence=>50
,p_data_type=>'DATE'
);
wwv_flow_imp.component_end;
end;
/
