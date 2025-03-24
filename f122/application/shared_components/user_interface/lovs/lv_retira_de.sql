prompt --application/shared_components/user_interface/lovs/lv_retira_de
begin
--   Manifest
--     LV_RETIRA_DE
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
 p_id=>wwv_flow_imp.id(5853780271411104)
,p_lov_name=>'LV_RETIRA_DE'
,p_lov_query=>'.'||wwv_flow_imp.id(5853780271411104)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5854076986411106)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'ARTIGAS'
,p_lov_return_value=>'ARTIGAS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5854497577411107)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'CDE'
,p_lov_return_value=>'CDE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5854873379411107)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'SLO'
,p_lov_return_value=>'SLO'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(616664310833620753)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'OVIEDO'
,p_lov_return_value=>'OVIEDO'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(616664652949620763)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'CONCEPCION'
,p_lov_return_value=>'CONCEPCION'
);
wwv_flow_imp.component_end;
end;
/
