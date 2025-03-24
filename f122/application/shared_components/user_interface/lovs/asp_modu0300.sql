prompt --application/shared_components/user_interface/lovs/asp_modu0300
begin
--   Manifest
--     ASP$MODU0300
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
 p_id=>wwv_flow_imp.id(18300263638952754)
,p_lov_name=>'ASP$MODU0300'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOMB || '' - ''|| PAGE_ID NOMB ,',
'       PAGE_ID, nomb nombre',
'  FROM INV.ASP$MODU0300',
' WHERE PAGE_ID IS NOT NULL',
'   AND DM$ACTI = 1',
'   AND APLI0100$ID = :P_APLI0100_ID'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'PAGE_ID'
,p_display_column_name=>'NOMB'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(110234524648441425)
,p_query_column_name=>'PAGE_ID'
,p_heading=>'Codigo'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(110234978451441427)
,p_query_column_name=>'NOMB'
,p_heading=>'Nomb'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(110235376441441427)
,p_query_column_name=>'NOMBRE'
,p_heading=>'Nombre'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
