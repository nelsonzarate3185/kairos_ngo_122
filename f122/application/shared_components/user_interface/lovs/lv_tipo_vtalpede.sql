prompt --application/shared_components/user_interface/lovs/lv_tipo_vtalpede
begin
--   Manifest
--     LV_TIPO_VTALPEDE
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
 p_id=>wwv_flow_imp.id(9410519326581871)
,p_lov_name=>'LV_TIPO_VTALPEDE'
,p_lov_query=>'.'||wwv_flow_imp.id(9410519326581871)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(9410889831581871)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'PRODUCTOS'
,p_lov_return_value=>'PR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(9411268972581871)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'REPUESTOS'
,p_lov_return_value=>'RE'
);
wwv_flow_imp.component_end;
end;
/
