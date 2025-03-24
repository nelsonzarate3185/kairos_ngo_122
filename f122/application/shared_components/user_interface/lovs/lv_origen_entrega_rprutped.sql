prompt --application/shared_components/user_interface/lovs/lv_origen_entrega_rprutped
begin
--   Manifest
--     LV_ORIGEN_ENTREGA_RPRUTPED
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
 p_id=>wwv_flow_imp.id(118435231642175352)
,p_lov_name=>'LV_ORIGEN_ENTREGA_RPRUTPED'
,p_lov_query=>'.'||wwv_flow_imp.id(118435231642175352)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(118435585367175353)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'SAN LORENZO'
,p_lov_return_value=>'SL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(118435927639175353)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'CDE'
,p_lov_return_value=>'CDE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(118436306733175353)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'ARTIGAS'
,p_lov_return_value=>'AR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(118436703367175353)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'STNGO'
,p_lov_return_value=>'STNGO'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(118437129494175354)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'OVIEDO'
,p_lov_return_value=>'OV'
);
wwv_flow_imp.component_end;
end;
/
