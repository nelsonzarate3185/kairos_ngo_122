prompt --application/shared_components/data_loads/articulos_stgeinmo
begin
--   Manifest
--     DATA LOAD: articulos_stgeinmo
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
 p_id=>wwv_flow_imp.id(180161244759608738)
,p_name=>'articulos_stgeinmo'
,p_format=>'CSV'
,p_encoding=>'iso-8859-1'
,p_csv_enclosed=>'"'
,p_has_header_row=>true
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(180161549148608736)
,p_data_profile_id=>wwv_flow_imp.id(180161244759608738)
,p_name=>'C001'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'COD_ART_'
);
wwv_flow_imp_shared.create_load_table(
 p_id=>wwv_flow_imp.id(180161790065608736)
,p_name=>'articulos_stgeinmo'
,p_static_id=>'articulos_stgeinmo'
,p_target_type=>'COLLECTION'
,p_collection_name=>'COL_AUX_STGEINMO'
,p_data_profile_id=>wwv_flow_imp.id(180161244759608738)
,p_loading_method=>'APPEND'
,p_commit_interval=>200
,p_error_handling=>'ABORT'
,p_skip_validation=>'N'
);
wwv_flow_imp.component_end;
end;
/
