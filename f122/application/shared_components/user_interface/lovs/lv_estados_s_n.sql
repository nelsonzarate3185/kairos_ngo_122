prompt --application/shared_components/user_interface/lovs/lv_estados_s_n
begin
--   Manifest
--     LV_ESTADOS_S/N
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
 p_id=>wwv_flow_imp.id(127070015180645387)
,p_lov_name=>'LV_ESTADOS_S/N'
,p_lov_query=>'.'||wwv_flow_imp.id(127070015180645387)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(127070318446645384)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'ACTIVO'
,p_lov_return_value=>'S'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(127070717808645383)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'INACTIVO'
,p_lov_return_value=>'N'
);
wwv_flow_imp.component_end;
end;
/
