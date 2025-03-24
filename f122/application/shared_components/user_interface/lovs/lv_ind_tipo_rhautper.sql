prompt --application/shared_components/user_interface/lovs/lv_ind_tipo_rhautper
begin
--   Manifest
--     LV_IND_TIPO_RHAUTPER
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
 p_id=>wwv_flow_imp.id(100855520346451831)
,p_lov_name=>'LV_IND_TIPO_RHAUTPER'
,p_lov_query=>'.'||wwv_flow_imp.id(100855520346451831)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(100855885609451832)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'PERMISO'
,p_lov_return_value=>'P'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(100856254253451833)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'VACACIONES'
,p_lov_return_value=>'V'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(100856632836451833)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'REPOSO'
,p_lov_return_value=>'R'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(100857026567451833)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'LICENCIAS Y/O BENEFICIOS'
,p_lov_return_value=>'L'
);
wwv_flow_imp.component_end;
end;
/
