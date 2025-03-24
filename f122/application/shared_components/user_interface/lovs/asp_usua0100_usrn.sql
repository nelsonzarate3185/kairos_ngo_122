prompt --application/shared_components/user_interface/lovs/asp_usua0100_usrn
begin
--   Manifest
--     ASP$USUA0100.USRN
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
 p_id=>wwv_flow_imp.id(154890313090816971)
,p_lov_name=>'ASP$USUA0100.USRN'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'ASP$USUA0100'
,p_return_column_name=>'USRN'
,p_default_sort_column_name=>'USRN'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
