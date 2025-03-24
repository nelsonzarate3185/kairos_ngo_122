prompt --application/shared_components/user_interface/lovs/lv_series_stenvio
begin
--   Manifest
--     LV_SERIES_STENVIO
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
 p_id=>wwv_flow_imp.id(79917641631793230)
,p_lov_name=>'LV_SERIES_STENVIO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tip_comprobante, ser_comprobante ',
'  from series_comprob s ',
' where s.tip_comprobante =:P323_TIP_ENVIO ',
'   and cod_empresa=:P_COD_EMPRESA'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'SER_COMPROBANTE'
,p_display_column_name=>'SER_COMPROBANTE'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'SER_COMPROBANTE'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(79918251607797759)
,p_query_column_name=>'TIP_COMPROBANTE'
,p_heading=>'Tipo'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(79918616193797759)
,p_query_column_name=>'SER_COMPROBANTE'
,p_heading=>'Serie'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
