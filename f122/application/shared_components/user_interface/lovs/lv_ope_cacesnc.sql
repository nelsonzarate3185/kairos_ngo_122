prompt --application/shared_components/user_interface/lovs/lv_ope_cacesnc
begin
--   Manifest
--     LV_OPE_CACESNC  
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
 p_id=>wwv_flow_imp.id(156780423059104386)
,p_lov_name=>'LV_OPE_CACESNC  '
,p_lov_query=>'.'||wwv_flow_imp.id(156780423059104386)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(156780708042104385)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'CAMBIO'
,p_lov_return_value=>'CMB'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(156781171207104385)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'NOTA CREDITO'
,p_lov_return_value=>'NCR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(156782432548087751)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'TRASLADO'
,p_lov_return_value=>'TRA'
);
wwv_flow_imp.component_end;
end;
/
