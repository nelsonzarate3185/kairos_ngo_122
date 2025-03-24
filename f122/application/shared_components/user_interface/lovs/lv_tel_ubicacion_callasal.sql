prompt --application/shared_components/user_interface/lovs/lv_tel_ubicacion_callasal
begin
--   Manifest
--     LV_TEL_UBICACION_CALLASAL
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
 p_id=>wwv_flow_imp.id(128542101527109939)
,p_lov_name=>'LV_TEL_UBICACION_CALLASAL'
,p_lov_query=>'.'||wwv_flow_imp.id(128542101527109939)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(128542542879109938)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Casa'
,p_lov_return_value=>'C'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(128542920799109938)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Trabajo'
,p_lov_return_value=>'T'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(128543360314109938)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Otro'
,p_lov_return_value=>'O'
);
wwv_flow_imp.component_end;
end;
/
