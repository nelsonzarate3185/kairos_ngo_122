prompt --application/shared_components/user_interface/lovs/lv_estados_solicitud
begin
--   Manifest
--     LV_ESTADOS_SOLICITUD
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
 p_id=>wwv_flow_imp.id(789699747210287236)
,p_lov_name=>'LV_ESTADOS_SOLICITUD'
,p_lov_query=>'.'||wwv_flow_imp.id(789699747210287236)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(789700026199287242)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'PENDIENTE'
,p_lov_return_value=>'PENDIENTE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(789700464565287243)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'SOLICITADO'
,p_lov_return_value=>'SOLICITADO'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(789700869426287243)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'RECHAZADO'
,p_lov_return_value=>'RECHAZADO'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(789701231846287244)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'RECIBIDO'
,p_lov_return_value=>'RECIBIDO'
);
wwv_flow_imp.component_end;
end;
/
