prompt --application/shared_components/user_interface/lovs/dm_sino
begin
--   Manifest
--     DM_SINO
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
 p_id=>wwv_flow_imp.id(40303239801928454)
,p_lov_name=>'DM_SINO'
,p_lov_query=>'.'||wwv_flow_imp.id(40303239801928454)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(40303558730928454)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'SI'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(40303915366928454)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'NO'
,p_lov_return_value=>'2'
);
wwv_flow_imp.component_end;
end;
/
