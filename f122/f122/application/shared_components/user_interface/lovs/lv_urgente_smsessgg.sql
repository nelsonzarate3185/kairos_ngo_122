prompt --application/shared_components/user_interface/lovs/lv_urgente_smsessgg
begin
--   Manifest
--     LV_URGENTE_SMSESSGG
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
 p_id=>wwv_flow_imp.id(65748835490428324)
,p_lov_name=>'LV_URGENTE_SMSESSGG'
,p_lov_query=>'.'||wwv_flow_imp.id(65748835490428324)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(65749115742428325)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Baja'
,p_lov_return_value=>'B'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(65749598167428325)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Media'
,p_lov_return_value=>'M'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(65749987364428325)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Alta'
,p_lov_return_value=>'A'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(65750372073428325)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Todos'
,p_lov_return_value=>'T'
);
wwv_flow_imp.component_end;
end;
/
