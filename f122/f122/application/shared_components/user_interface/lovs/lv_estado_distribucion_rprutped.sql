prompt --application/shared_components/user_interface/lovs/lv_estado_distribucion_rprutped
begin
--   Manifest
--     LV_ESTADO_DISTRIBUCION_RPRUTPED
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
 p_id=>wwv_flow_imp.id(118422946123024905)
,p_lov_name=>'LV_ESTADO_DISTRIBUCION_RPRUTPED'
,p_lov_query=>'.'||wwv_flow_imp.id(118422946123024905)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(118423236274024906)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'PENDIENTE RUTA'
,p_lov_return_value=>'PENDIENTE RUTA'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(118423683926024907)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'EN REPARTO'
,p_lov_return_value=>'EN REPARTO'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(118424050704024907)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'EN GARANTIA'
,p_lov_return_value=>'EN GARANTIA'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(118424412375024907)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'EN PREPARACION'
,p_lov_return_value=>'EN PREPARACION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(118424898831024907)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'EN FACTURACION'
,p_lov_return_value=>'EN FACTURACION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(118425244168024907)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'PENDIENTE'
,p_lov_return_value=>'PENDIENTE'
);
wwv_flow_imp.component_end;
end;
/
