prompt --application/shared_components/user_interface/lovs/lv_origenes_ots_sol
begin
--   Manifest
--     LV_ORIGENES_OTS_SOL
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
 p_id=>wwv_flow_imp.id(12823326561539009)
,p_lov_name=>'LV_ORIGENES_OTS_SOL'
,p_lov_query=>'.'||wwv_flow_imp.id(12823326561539009)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(12823712204539009)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'TALLER'
,p_lov_return_value=>'T'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(12824162358539010)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'RECEPCION'
,p_lov_return_value=>'R'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(12824596158539011)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'INGRESO'
,p_lov_return_value=>'I'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(12824995559539011)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'TODOS'
,p_lov_return_value=>'TD'
);
wwv_flow_imp.component_end;
end;
/
