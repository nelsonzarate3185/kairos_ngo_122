prompt --application/shared_components/user_interface/lovs/lv_stock_bstipcom
begin
--   Manifest
--     LV_STOCK_BSTIPCOM
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
 p_id=>wwv_flow_imp.id(73083312247600926)
,p_lov_name=>'LV_STOCK_BSTIPCOM'
,p_lov_query=>'.'||wwv_flow_imp.id(73083312247600926)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(73083620661600926)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Suma'
,p_lov_return_value=>'S'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(73084041030600927)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Resta'
,p_lov_return_value=>'R'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(73084432399600927)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Suma y Resta'
,p_lov_return_value=>'A'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(73084879986600927)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Ninguno'
,p_lov_return_value=>'N'
);
wwv_flow_imp.component_end;
end;
/
