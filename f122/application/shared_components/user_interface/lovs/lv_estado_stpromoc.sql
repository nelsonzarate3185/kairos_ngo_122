prompt --application/shared_components/user_interface/lovs/lv_estado_stpromoc
begin
--   Manifest
--     LV_ESTADO_STPROMOC
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
 p_id=>wwv_flow_imp.id(60882894299719406)
,p_lov_name=>'LV_ESTADO_STPROMOC'
,p_lov_query=>'.'||wwv_flow_imp.id(60882894299719406)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(60883103307719411)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'ACTIVO'
,p_lov_return_value=>'N'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(60883568658719412)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'INACTIVO'
,p_lov_return_value=>'D'
);
wwv_flow_imp.component_end;
end;
/
