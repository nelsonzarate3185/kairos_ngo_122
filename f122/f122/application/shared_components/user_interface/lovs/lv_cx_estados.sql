prompt --application/shared_components/user_interface/lovs/lv_cx_estados
begin
--   Manifest
--     LV_CX_ESTADOS
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
 p_id=>wwv_flow_imp.id(982026788644398085)
,p_lov_name=>'LV_CX_ESTADOS'
,p_lov_query=>'.'||wwv_flow_imp.id(982026788644398085)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(982027059104398087)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Abierto'
,p_lov_return_value=>'A'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(982027408614398095)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Derivado'
,p_lov_return_value=>'D'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(982027809155398095)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Gestionado'
,p_lov_return_value=>'G'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(982028274853398098)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Rechazada'
,p_lov_return_value=>'R'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(982028624831398098)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Finalizada'
,p_lov_return_value=>'F'
);
wwv_flow_imp.component_end;
end;
/
