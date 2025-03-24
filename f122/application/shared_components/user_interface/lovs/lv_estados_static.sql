prompt --application/shared_components/user_interface/lovs/lv_estados_static
begin
--   Manifest
--     LV_ESTADOS_STATIC
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
 p_id=>wwv_flow_imp.id(14542484931107810)
,p_lov_name=>'LV_ESTADOS_STATIC'
,p_lov_query=>'.'||wwv_flow_imp.id(14542484931107810)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14542730779107817)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Pendiente'
,p_lov_return_value=>'P'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14543119313107819)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Cobrado'
,p_lov_return_value=>'C'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14543525183107819)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Reenvio'
,p_lov_return_value=>'D'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14543975128107819)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Firma Boleta'
,p_lov_return_value=>'F'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14544389157107819)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Anulado'
,p_lov_return_value=>'A'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14558561638396082)
,p_lov_disp_sequence=>15
,p_lov_disp_value=>'Con Recibo'
,p_lov_return_value=>'R'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14558852826397438)
,p_lov_disp_sequence=>25
,p_lov_disp_value=>'Devuelta'
,p_lov_return_value=>'N'
);
wwv_flow_imp.component_end;
end;
/
