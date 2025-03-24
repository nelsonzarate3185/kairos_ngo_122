prompt --application/shared_components/user_interface/lovs/lv_zona_fvproemp
begin
--   Manifest
--     LV_ZONA_FVPROEMP
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
 p_id=>wwv_flow_imp.id(63171072382195925)
,p_lov_name=>'LV_ZONA_FVPROEMP'
,p_lov_query=>'.'||wwv_flow_imp.id(63171072382195925)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(63171305099195928)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'INTERIOR'
,p_lov_return_value=>'I'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(63171746692195928)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'CAPITAL'
,p_lov_return_value=>'C'
);
wwv_flow_imp.component_end;
end;
/
