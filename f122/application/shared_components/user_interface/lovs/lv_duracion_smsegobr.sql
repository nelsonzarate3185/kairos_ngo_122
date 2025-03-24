prompt --application/shared_components/user_interface/lovs/lv_duracion_smsegobr
begin
--   Manifest
--     LV_DURACION_SMSEGOBR
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
 p_id=>wwv_flow_imp.id(63195116146413020)
,p_lov_name=>'LV_DURACION_SMSEGOBR'
,p_lov_query=>'.'||wwv_flow_imp.id(63195116146413020)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(63195401043413020)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'CORTO PLAZO'
,p_lov_return_value=>'CORTO PLAZO'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(63195875643413021)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'MEDIANO PLAZO'
,p_lov_return_value=>'MEDIANO PLAZO'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(63196296648413021)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'LARGO PLAZO'
,p_lov_return_value=>'LARGO PLAZO'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(63196666671413021)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'NN'
,p_lov_return_value=>'NN'
);
wwv_flow_imp.component_end;
end;
/
