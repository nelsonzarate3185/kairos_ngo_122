prompt --application/shared_components/user_interface/lovs/unified_task_list_lov_initiated
begin
--   Manifest
--     UNIFIED_TASK_LIST.LOV.INITIATED
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
 p_id=>wwv_flow_imp.id(15824092036249032)
,p_lov_name=>'UNIFIED_TASK_LIST.LOV.INITIATED'
,p_lov_query=>'.'||wwv_flow_imp.id(15824092036249032)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15824391561249034)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\00DAltima Hora')
,p_lov_return_value=>'|1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15824766512249034)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\00DAltimas 24 horas')
,p_lov_return_value=>'1|24'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15825191133249035)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('\00DAltimos 7 D\00EDas')
,p_lov_return_value=>'24|168'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15825544275249035)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>unistr('\00DAltimos 30 d\00EDas')
,p_lov_return_value=>'168|720'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15825945998249035)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>unistr('Antig\00FCedad superior a 30 d\00EDas')
,p_lov_return_value=>'720|'
);
wwv_flow_imp.component_end;
end;
/
