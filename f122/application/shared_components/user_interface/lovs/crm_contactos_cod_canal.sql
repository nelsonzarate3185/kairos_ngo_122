prompt --application/shared_components/user_interface/lovs/crm_contactos_cod_canal
begin
--   Manifest
--     CRM_CONTACTOS.COD_CANAL
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
 p_id=>wwv_flow_imp.id(15848516104307703)
,p_lov_name=>'CRM_CONTACTOS.COD_CANAL'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'CRM_CONTACTOS'
,p_query_where=>'COD_EMPRESA = :P_COD_EMPRESA'
,p_return_column_name=>'ID_CASO'
,p_display_column_name=>'COD_CANAL'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'COD_CANAL'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
