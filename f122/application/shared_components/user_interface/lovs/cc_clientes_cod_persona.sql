prompt --application/shared_components/user_interface/lovs/cc_clientes_cod_persona
begin
--   Manifest
--     CC_CLIENTES.COD_PERSONA
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
 p_id=>wwv_flow_imp.id(137210221811642088)
,p_lov_name=>'CC_CLIENTES.COD_PERSONA'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'CC_CLIENTES'
,p_return_column_name=>'COD_CLIENTE'
,p_display_column_name=>'COD_PERSONA'
,p_default_sort_column_name=>'COD_PERSONA'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
