prompt --application/shared_components/logic/application_computations/report_base_url
begin
--   Manifest
--     APPLICATION COMPUTATION: REPORT_BASE_URL
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(54389716457732150)
,p_computation_sequence=>10
,p_computation_item=>'REPORT_BASE_URL'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT valor FROM PARAMETROS_GENERALES s',
'where s.parametro = ''REPORT_BASE_URL'''))
);
wwv_flow_imp.component_end;
end;
/
