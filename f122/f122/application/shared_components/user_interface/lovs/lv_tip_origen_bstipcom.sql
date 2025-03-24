prompt --application/shared_components/user_interface/lovs/lv_tip_origen_bstipcom
begin
--   Manifest
--     LV_TIP_ORIGEN_BSTIPCOM
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
 p_id=>wwv_flow_imp.id(73086765071614449)
,p_lov_name=>'LV_TIP_ORIGEN_BSTIPCOM'
,p_lov_query=>'.'||wwv_flow_imp.id(73086765071614449)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(73087074398614450)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Factura'
,p_lov_return_value=>'F'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(73087496437614450)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Recibo'
,p_lov_return_value=>'R'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(73087872549614450)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Cheque'
,p_lov_return_value=>'H'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(73088294067614450)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Compra'
,p_lov_return_value=>'C'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(73088665127614450)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Ajuste Stock'
,p_lov_return_value=>'S'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(73089004827614450)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>unistr('Env\00EDo')
,p_lov_return_value=>'E'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(73089434560614450)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>unistr('D\00E9bito y Cr\00E9dito')
,p_lov_return_value=>'D'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(73089806805614451)
,p_lov_disp_sequence=>9
,p_lov_disp_value=>unistr('Pagar\00E9')
,p_lov_return_value=>'P'
);
wwv_flow_imp.component_end;
end;
/
