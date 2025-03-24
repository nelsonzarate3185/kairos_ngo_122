prompt --application/shared_components/data_loads/forma_de_cobro
begin
--   Manifest
--     DATA LOAD: Forma de cobro
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(20972541915807687)
,p_name=>'Forma de cobro'
,p_format=>'CSV'
,p_encoding=>'iso-8859-1'
,p_csv_enclosed=>'"'
,p_has_header_row=>true
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(20972865263807715)
,p_data_profile_id=>wwv_flow_imp.id(20972541915807687)
,p_name=>'C006'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>true
,p_selector_type=>'NAME'
,p_selector=>'C11481677'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(20973189153807716)
,p_data_profile_id=>wwv_flow_imp.id(20972541915807687)
,p_name=>'C007'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'C001_002_0010513'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(20973425499807716)
,p_data_profile_id=>wwv_flow_imp.id(20972541915807687)
,p_name=>'N004'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'C10414'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(20973758059807716)
,p_data_profile_id=>wwv_flow_imp.id(20972541915807687)
,p_name=>'C008'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'C1'
);
wwv_flow_imp_shared.create_load_table(
 p_id=>wwv_flow_imp.id(20973903684807716)
,p_name=>'Forma de cobro'
,p_static_id=>'Forma_de_cobro'
,p_target_type=>'COLLECTION'
,p_collection_name=>'COL_FORMA_COBRO'
,p_data_profile_id=>wwv_flow_imp.id(20972541915807687)
,p_loading_method=>'APPEND'
,p_commit_interval=>200
,p_error_handling=>'ABORT'
,p_skip_validation=>'N'
);
wwv_flow_imp.component_end;
end;
/
