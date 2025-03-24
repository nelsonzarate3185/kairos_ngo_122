prompt --application/shared_components/user_interface/lovs/lv_saldos_bstipcom
begin
--   Manifest
--     LV_SALDOS_BSTIPCOM
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
 p_id=>wwv_flow_imp.id(73075621198595210)
,p_lov_name=>'LV_SALDOS_BSTIPCOM'
,p_lov_query=>'.'||wwv_flow_imp.id(73075621198595210)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(73075931683595212)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Suma'
,p_lov_return_value=>'S'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(73076354735595213)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Resta'
,p_lov_return_value=>'R'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(73076736879595213)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Ninguno'
,p_lov_return_value=>'N'
);
wwv_flow_imp.component_end;
end;
/
