prompt --application/shared_components/user_interface/lovs/pill_display_as1
begin
--   Manifest
--     PILL_DISPLAY_AS1
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
 p_id=>wwv_flow_imp.id(45685243586622878)
,p_lov_name=>'PILL_DISPLAY_AS1'
,p_lov_query=>'.'||wwv_flow_imp.id(45685243586622878)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(45685612182622880)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Cards View'
,p_lov_return_value=>'CARDS'
,p_lov_template=>'<span class="t-Icon fa fa-cards" title="#DISPLAY_VALUE#"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(45686009779622881)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Report View'
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<span class="t-Icon fa fa-reorder" title="#DISPLAY_VALUE#"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(45686472156622881)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Customizable Grid'
,p_lov_return_value=>'GRID'
,p_lov_template=>'<span class="t-Icon fa fa-table" title="#DISPLAY_VALUE#"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp.component_end;
end;
/
