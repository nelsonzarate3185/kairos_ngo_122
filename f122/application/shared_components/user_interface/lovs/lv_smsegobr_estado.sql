prompt --application/shared_components/user_interface/lovs/lv_smsegobr_estado
begin
--   Manifest
--     LV_SMSEGOBR_ESTADO
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
 p_id=>wwv_flow_imp.id(63078483405874160)
,p_lov_name=>'LV_SMSEGOBR_ESTADO'
,p_lov_query=>'.'||wwv_flow_imp.id(63078483405874160)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(63078722637874164)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Creado'
,p_lov_return_value=>'N'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(63079189321874166)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Presupuesto Enviado'
,p_lov_return_value=>'P'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(63079555463874167)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Aprobado'
,p_lov_return_value=>'C'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(63079989217874167)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Rechazado'
,p_lov_return_value=>'R'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(63080302400874167)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Anulado'
,p_lov_return_value=>'A'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(63080784146874167)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Finalizado'
,p_lov_return_value=>'F'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(63081197583874167)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'Todos'
,p_lov_return_value=>'T'
);
wwv_flow_imp.component_end;
end;
/
