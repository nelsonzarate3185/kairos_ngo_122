prompt --application/shared_components/user_interface/lovs/lv_ind_descuento_rhautper
begin
--   Manifest
--     LV_IND_DESCUENTO_RHAUTPER
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
 p_id=>wwv_flow_imp.id(100857313860464625)
,p_lov_name=>'LV_IND_DESCUENTO_RHAUTPER'
,p_lov_query=>'.'||wwv_flow_imp.id(100857313860464625)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(100857665017464625)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'NO'
,p_lov_return_value=>'N'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(100858073464464625)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'SI'
,p_lov_return_value=>'S'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(100858470044464625)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'<Pendiente>'
,p_lov_return_value=>'<Pendiente>'
);
wwv_flow_imp.component_end;
end;
/
