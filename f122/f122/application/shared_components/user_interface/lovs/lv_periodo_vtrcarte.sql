prompt --application/shared_components/user_interface/lovs/lv_periodo_vtrcarte
begin
--   Manifest
--     LV_PERIODO_VTRCARTE
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
 p_id=>wwv_flow_imp.id(43402049626068318)
,p_lov_name=>'LV_PERIODO_VTRCARTE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWNUM PERIODO, ',
'    to_char(FECHA_INICIO,''DD/MM/YYYY'')FECHA_INICIO, ',
'    to_char(FECHA_FIN,''DD/MM/YYYY'')FECHA_FIN',
'FROM (',
'select DISTINCT  ',
'    FECHA_INICIO, ',
'    FECHA_FIN',
'from VT_CARTERA_CLIENTES_DET where cod_empresa=:p_cod_empresa)'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'PERIODO'
,p_display_column_name=>'PERIODO'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'PERIODO'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(43747591015913290)
,p_query_column_name=>'PERIODO'
,p_heading=>'Periodo'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(43747996887913291)
,p_query_column_name=>'FECHA_INICIO'
,p_heading=>'Fecha Inicio'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(43748322476913291)
,p_query_column_name=>'FECHA_FIN'
,p_heading=>'Fecha Fin'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
