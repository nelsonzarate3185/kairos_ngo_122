prompt --application/shared_components/user_interface/lovs/lv_tipo
begin
--   Manifest
--     LV_TIPO
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
 p_id=>wwv_flow_imp.id(68197036483176971)
,p_lov_name=>'LV_TIPO'
,p_lov_query=>'.'||wwv_flow_imp.id(68197036483176971)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(68197379196176972)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Combustible'
,p_lov_return_value=>'C'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(68197694013176973)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Retail'
,p_lov_return_value=>'S'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(68198082137176973)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Grefran'
,p_lov_return_value=>'E'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(92926233972516550)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Biggie'
,p_lov_return_value=>'B'
);
wwv_flow_imp.component_end;
end;
/
