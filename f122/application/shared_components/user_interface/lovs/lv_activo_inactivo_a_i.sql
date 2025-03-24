prompt --application/shared_components/user_interface/lovs/lv_activo_inactivo_a_i
begin
--   Manifest
--     LV_ACTIVO_INACTIVO_A_I
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
 p_id=>wwv_flow_imp.id(69267901002556200)
,p_lov_name=>'LV_ACTIVO_INACTIVO_A_I'
,p_lov_query=>'.'||wwv_flow_imp.id(69267901002556200)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(69268276473556201)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'ACTIVO'
,p_lov_return_value=>'A'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(69268630303556202)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'INACTIVO'
,p_lov_return_value=>'I'
);
wwv_flow_imp.component_end;
end;
/
