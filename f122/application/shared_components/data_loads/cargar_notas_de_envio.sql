prompt --application/shared_components/data_loads/cargar_notas_de_envio
begin
--   Manifest
--     DATA LOAD: Cargar notas de envio
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
 p_id=>wwv_flow_imp.id(95537844837286798)
,p_name=>'Cargar notas de envio'
,p_format=>'CSV'
,p_encoding=>'iso-8859-1'
,p_csv_enclosed=>'"'
,p_has_header_row=>true
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(95538160086286838)
,p_data_profile_id=>wwv_flow_imp.id(95537844837286798)
,p_name=>'C001'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'COD_ARTICULO'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(95538418909286839)
,p_data_profile_id=>wwv_flow_imp.id(95537844837286798)
,p_name=>'C002'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'NRO_LOTE'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(95538716152286839)
,p_data_profile_id=>wwv_flow_imp.id(95537844837286798)
,p_name=>'C003'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'CANT_DISPON'
);
wwv_flow_imp_shared.create_load_table(
 p_id=>wwv_flow_imp.id(95538977438286839)
,p_name=>'Cargar notas de envio'
,p_static_id=>'Cargar_notas_de_envio'
,p_target_type=>'COLLECTION'
,p_collection_name=>'COL_NOTAS_CSV'
,p_data_profile_id=>wwv_flow_imp.id(95537844837286798)
,p_loading_method=>'APPEND'
,p_commit_interval=>200
,p_error_handling=>'ABORT'
,p_skip_validation=>'N'
);
wwv_flow_imp.component_end;
end;
/
