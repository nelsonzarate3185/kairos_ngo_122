prompt --application/shared_components/user_interface/lovs/lv_estado_rpfacmas
begin
--   Manifest
--     LV_ESTADO_RPFACMAS
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
 p_id=>wwv_flow_imp.id(109068508478705805)
,p_lov_name=>'LV_ESTADO_RPFACMAS'
,p_lov_query=>'.'||wwv_flow_imp.id(109068508478705805)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(109068832805705806)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Pendiente'
,p_lov_return_value=>'P'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(109069272946705807)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Facturados'
,p_lov_return_value=>'F'
);
wwv_flow_imp.component_end;
end;
/
