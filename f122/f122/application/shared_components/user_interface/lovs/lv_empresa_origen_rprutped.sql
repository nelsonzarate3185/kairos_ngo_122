prompt --application/shared_components/user_interface/lovs/lv_empresa_origen_rprutped
begin
--   Manifest
--     LV_EMPRESA_ORIGEN_RPRUTPED
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
 p_id=>wwv_flow_imp.id(118437819905181516)
,p_lov_name=>'LV_EMPRESA_ORIGEN_RPRUTPED'
,p_lov_query=>'.'||wwv_flow_imp.id(118437819905181516)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(118438185580181516)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'NGO'
,p_lov_return_value=>'NGO'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(118438591488181517)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'CPH'
,p_lov_return_value=>'CPH'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(118438909265181517)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'GONZALITO'
,p_lov_return_value=>'GONZALITO'
);
wwv_flow_imp.component_end;
end;
/
