prompt --application/shared_components/user_interface/lovs/lv_urgente_static_streqped
begin
--   Manifest
--     LV_URGENTE_STATIC_STREQPED
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
 p_id=>wwv_flow_imp.id(111001082418321971)
,p_lov_name=>'LV_URGENTE_STATIC_STREQPED'
,p_lov_query=>'.'||wwv_flow_imp.id(111001082418321971)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(111001371885321971)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'BAJA'
,p_lov_return_value=>'B'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(111001796709321972)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'MEDIA'
,p_lov_return_value=>'M'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(111002100788321972)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'ALTA'
,p_lov_return_value=>'A'
);
wwv_flow_imp.component_end;
end;
/
