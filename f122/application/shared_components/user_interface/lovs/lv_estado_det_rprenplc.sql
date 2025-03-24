prompt --application/shared_components/user_interface/lovs/lv_estado_det_rprenplc
begin
--   Manifest
--     LV_ESTADO_DET_RPRENPLC
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
 p_id=>wwv_flow_imp.id(132415033272965825)
,p_lov_name=>'LV_ESTADO_DET_RPRENPLC'
,p_lov_query=>'.'||wwv_flow_imp.id(132415033272965825)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(132415363162965824)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'PENDIENTE'
,p_lov_return_value=>'P'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(132415773234965824)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'FACTURA FIRMADA'
,p_lov_return_value=>'F'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(132416195084965824)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'COBRADA'
,p_lov_return_value=>'C'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(132416431788965824)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'CON RECIBO'
,p_lov_return_value=>'R'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(132416887692965824)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'REENVIO'
,p_lov_return_value=>'D'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(132417282370965823)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'ANULADA'
,p_lov_return_value=>'A'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(132417619796965823)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'CAMBIO'
,p_lov_return_value=>'B'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(161580125326663009)
,p_lov_disp_sequence=>17
,p_lov_disp_value=>'DEVUELTO'
,p_lov_return_value=>'N'
);
wwv_flow_imp.component_end;
end;
/
