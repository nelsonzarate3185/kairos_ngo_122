prompt --application/shared_components/user_interface/lovs/lv_periodo
begin
--   Manifest
--     LV_PERIODO
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
 p_id=>wwv_flow_imp.id(38481290728066800)
,p_lov_name=>'LV_PERIODO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NUM_PERIODO||'' -  ''|| FEC_INICIAL ||''  al  ''||FEC_FINAL D,',
'	   FEC_INICIAL, FEC_FINAL,',
'	   NUM_PERIODO R',
'  FROM FV_PERIODOS_COMISION ',
' WHERE COD_EMPRESA = :P_COD_EMPRESA ',
' ORDER BY NUM_PERIODO DESC'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(38812702619657410)
,p_query_column_name=>'R'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(38813188058657410)
,p_query_column_name=>'D'
,p_heading=>'Periodo'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(38813543716657410)
,p_query_column_name=>'FEC_INICIAL'
,p_heading=>'Fecha Inicial'
,p_display_sequence=>30
,p_data_type=>'DATE'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(38813985413657411)
,p_query_column_name=>'FEC_FINAL'
,p_heading=>'Fecha Final'
,p_display_sequence=>40
,p_data_type=>'DATE'
);
wwv_flow_imp.component_end;
end;
/
