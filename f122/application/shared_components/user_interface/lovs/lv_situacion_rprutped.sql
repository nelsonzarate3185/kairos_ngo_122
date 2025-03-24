prompt --application/shared_components/user_interface/lovs/lv_situacion_rprutped
begin
--   Manifest
--     LV_SITUACION_RPRUTPED
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
 p_id=>wwv_flow_imp.id(118439689158194803)
,p_lov_name=>'LV_SITUACION_RPRUTPED'
,p_lov_query=>'.'||wwv_flow_imp.id(118439689158194803)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(118439911026194804)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'FACTURACION PARCIAL'
,p_lov_return_value=>'FACT PARCIAL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(118440310655194804)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'SIN STOCK'
,p_lov_return_value=>'SIN STOCK'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(118440724218194804)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'STOCK PARCIAL'
,p_lov_return_value=>'STOCK PARCIAL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(118441162462194804)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'STOCK COMPLETO'
,p_lov_return_value=>'STOCK COMPLETO'
);
wwv_flow_imp.component_end;
end;
/
