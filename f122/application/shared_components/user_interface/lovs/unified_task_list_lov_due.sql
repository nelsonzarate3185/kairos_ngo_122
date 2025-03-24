prompt --application/shared_components/user_interface/lovs/unified_task_list_lov_due
begin
--   Manifest
--     UNIFIED_TASK_LIST.LOV.DUE
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
 p_id=>wwv_flow_imp.id(15818346174249005)
,p_lov_name=>'UNIFIED_TASK_LIST.LOV.DUE'
,p_lov_query=>'.'||wwv_flow_imp.id(15818346174249005)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15818611874249007)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Vencido'
,p_lov_return_value=>'|0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15819024447249023)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Hora siguiente'
,p_lov_return_value=>'0|1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15819448282249025)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Siguientes 24 horas'
,p_lov_return_value=>'1|24'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15819877007249025)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>unistr('Siguientes 7 d\00EDas')
,p_lov_return_value=>'24|168'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15820220507249025)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>unistr('Siguientes 30 d\00EDas')
,p_lov_return_value=>'168|720'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15820629653249028)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>unistr('M\00E1s de 30 d\00EDas')
,p_lov_return_value=>'720|'
);
wwv_flow_imp.component_end;
end;
/
