prompt --application/shared_components/user_interface/lovs/lv_origen_setup_callapen
begin
--   Manifest
--     LV_ORIGEN_SETUP_CALLAPEN
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
 p_id=>wwv_flow_imp.id(79577597305975571)
,p_lov_name=>'LV_ORIGEN_SETUP_CALLAPEN'
,p_lov_query=>'.'||wwv_flow_imp.id(79577597305975571)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(79577844770975571)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'WHIRLPOOL SET UP'
,p_lov_return_value=>'27'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(79578284457975571)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'TOKYO SET UP'
,p_lov_return_value=>'31'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(79578678474975572)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'FITNES'
,p_lov_return_value=>'25'
);
wwv_flow_imp.component_end;
end;
/
