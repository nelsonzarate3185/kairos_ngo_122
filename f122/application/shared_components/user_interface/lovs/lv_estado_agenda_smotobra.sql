prompt --application/shared_components/user_interface/lovs/lv_estado_agenda_smotobra
begin
--   Manifest
--     LV_ESTADO_AGENDA_SMOTOBRA
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
 p_id=>wwv_flow_imp.id(68621087078088632)
,p_lov_name=>'LV_ESTADO_AGENDA_SMOTOBRA'
,p_lov_query=>'.'||wwv_flow_imp.id(68621087078088632)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(68621360608088632)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'AGENDADO'
,p_lov_return_value=>'A'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(68621734708088633)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'VISITADO'
,p_lov_return_value=>'V'
);
wwv_flow_imp.component_end;
end;
/
