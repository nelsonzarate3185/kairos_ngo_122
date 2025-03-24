prompt --application/shared_components/user_interface/lovs/lv_tipo_asist_smasisga
begin
--   Manifest
--     LV_TIPO_ASIST_SMASISGA
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
 p_id=>wwv_flow_imp.id(65705815907158191)
,p_lov_name=>'LV_TIPO_ASIST_SMASISGA'
,p_lov_query=>'.'||wwv_flow_imp.id(65705815907158191)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(65706135349158192)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'PRE-VENTA'
,p_lov_return_value=>'PSVTA'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(65706582615158193)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'RELEVAMIENTO POST VENTA'
,p_lov_return_value=>'RPVTA'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(65706945054158193)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('REPARACI\00D3N')
,p_lov_return_value=>'REPAR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(65707328559158193)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'MANTENIMIENTO'
,p_lov_return_value=>'MANT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(65707761384158193)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>unistr('REPARACI\00D3N Y MANTENIMIENTO')
,p_lov_return_value=>'REPMA'
);
wwv_flow_imp.component_end;
end;
/
