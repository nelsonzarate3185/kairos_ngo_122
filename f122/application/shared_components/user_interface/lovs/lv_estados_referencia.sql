prompt --application/shared_components/user_interface/lovs/lv_estados_referencia
begin
--   Manifest
--     LV_ESTADOS_REFERENCIA
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
 p_id=>wwv_flow_imp.id(622142802032185901)
,p_lov_name=>'LV_ESTADOS_REFERENCIA'
,p_lov_query=>'.'||wwv_flow_imp.id(622142802032185901)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(622143149356185904)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Activo'
,p_lov_return_value=>'A'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(622143517269185905)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Inactivo'
,p_lov_return_value=>'I'
);
wwv_flow_imp.component_end;
end;
/
