prompt --application/shared_components/user_interface/lovs/lv_estados_pedidos
begin
--   Manifest
--     LV_ESTADOS _PEDIDOS
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
 p_id=>wwv_flow_imp.id(138326226457490470)
,p_lov_name=>'LV_ESTADOS _PEDIDOS'
,p_lov_query=>'.'||wwv_flow_imp.id(138326226457490470)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(138326501235490469)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'PENDIENTE'
,p_lov_return_value=>'P'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(138326922487490468)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'APROBADO'
,p_lov_return_value=>'A'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(138327379005490468)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'RECHAZADO'
,p_lov_return_value=>'R'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(138327736882490468)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'PROCESADO'
,p_lov_return_value=>'C'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(138328179477490468)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'ANULADO'
,p_lov_return_value=>'N'
);
wwv_flow_imp.component_end;
end;
/
