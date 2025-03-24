prompt --application/shared_components/user_interface/lovs/lv_cod_seccion_agenda3
begin
--   Manifest
--     LV_COD_SECCION_AGENDA3
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
 p_id=>wwv_flow_imp.id(148036595878846034)
,p_lov_name=>'LV_COD_SECCION_AGENDA3'
,p_lov_query=>'SELECT DISTINCT COD_SECCION, AREA FROM AGENDA'
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_SECCION'
,p_display_column_name=>'COD_SECCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'COD_SECCION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(148036902488843941)
,p_query_column_name=>'COD_SECCION'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(148037310869843941)
,p_query_column_name=>'AREA'
,p_heading=>'Area'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
