prompt --application/shared_components/user_interface/lovs/lv_estado_smasisga
begin
--   Manifest
--     LV_ESTADO_SMASISGA
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
 p_id=>wwv_flow_imp.id(123829768422115961)
,p_lov_name=>'LV_ESTADO_SMASISGA'
,p_lov_query=>'.'||wwv_flow_imp.id(123829768422115961)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(123830053686115965)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'CREADO'
,p_lov_return_value=>'CREA'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(123830437588115966)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'COORDINADO'
,p_lov_return_value=>'COORD'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(123830892185115967)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'PROCESADO'
,p_lov_return_value=>'PROC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(123831231921115967)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'FINALIZADO'
,p_lov_return_value=>'FINAL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(123831626416115967)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'CANCELADO'
,p_lov_return_value=>'CANCEL'
);
wwv_flow_imp.component_end;
end;
/
