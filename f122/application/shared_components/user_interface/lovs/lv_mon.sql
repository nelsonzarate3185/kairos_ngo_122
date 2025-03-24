prompt --application/shared_components/user_interface/lovs/lv_mon
begin
--   Manifest
--     LV_MON
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
 p_id=>wwv_flow_imp.id(48424017769199997)
,p_lov_name=>'LV_MON'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select cod_moneda AS COD_MONEDA, descripcion AS MONEDA, siglas AS SIGNO, tipo_cambio_dia AS TIPO',
' from monedas ',
' order by descripcion;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_MONEDA'
,p_display_column_name=>'MONEDA'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(48425508653204223)
,p_query_column_name=>'COD_MONEDA'
,p_heading=>'COD'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(48448322283306461)
,p_query_column_name=>'SIGNO'
,p_heading=>'Signo'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(53056100909904771)
,p_query_column_name=>'MONEDA'
,p_heading=>'Moneda'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(48425952143204223)
,p_query_column_name=>'TIPO'
,p_heading=>'Tipo'
,p_display_sequence=>20
,p_data_type=>'NUMBER'
);
wwv_flow_imp.component_end;
end;
/
