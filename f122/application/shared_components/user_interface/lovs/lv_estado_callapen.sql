prompt --application/shared_components/user_interface/lovs/lv_estado_callapen
begin
--   Manifest
--     LV_ESTADO_CALLAPEN
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
 p_id=>wwv_flow_imp.id(79314747396721683)
,p_lov_name=>'LV_ESTADO_CALLAPEN'
,p_lov_query=>'.'||wwv_flow_imp.id(79314747396721683)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(79315058570721685)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Pendiente Vendedor'
,p_lov_return_value=>'PENDIENTE_VENDEDOR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(79315426045721685)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Visita Rechazada'
,p_lov_return_value=>'VISITA_RECHAZADA'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(79315821035721686)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Visita Aceptada'
,p_lov_return_value=>'VISITA_ACEPTADA'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(79316212699721686)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Volver a Llamar'
,p_lov_return_value=>'VOLVER_A_LLAMAR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(79316636245721686)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Visita Realizada'
,p_lov_return_value=>'VISITA_REALIZADA'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(79317073431721686)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>unistr('Ense\00F1anza de Uso')
,p_lov_return_value=>unistr('ENSE\00D1ANZA_USO')
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(79317420201721686)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'Confirmado'
,p_lov_return_value=>'CONFIRMADO'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(79317886394721686)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'Anulado'
,p_lov_return_value=>'ANULADO'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(79318261335721686)
,p_lov_disp_sequence=>9
,p_lov_disp_value=>'Pendiente Factura'
,p_lov_return_value=>'PENDIENTE_FACTURA'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(79318615034721687)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Pendiente Cliente'
,p_lov_return_value=>'PENDIENTE_CLIENTE'
);
wwv_flow_imp.component_end;
end;
/
