prompt --application/shared_components/user_interface/lovs/lv_tip_telefono_callasal
begin
--   Manifest
--     LV_TIP_TELEFONO_CALLASAL
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
 p_id=>wwv_flow_imp.id(128537947717116651)
,p_lov_name=>'LV_TIP_TELEFONO_CALLASAL'
,p_lov_query=>'.'||wwv_flow_imp.id(128537947717116651)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(128538285394116649)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Linea Directa'
,p_lov_return_value=>'D'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(128538606264116649)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Celular'
,p_lov_return_value=>'C'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(128539069818116648)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Fax'
,p_lov_return_value=>'F'
);
wwv_flow_imp.component_end;
end;
/
