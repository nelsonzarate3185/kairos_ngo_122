prompt --application/shared_components/user_interface/lovs/lv_custodios
begin
--   Manifest
--     LV_CUSTODIOS
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
 p_id=>wwv_flow_imp.id(30820581861995845)
,p_lov_name=>'LV_CUSTODIOS'
,p_lov_query=>'select descripcion||'' - ''||cod_custodio DESCRIPCION, cod_custodio from cc_custodios where cod_empresa =''1''order by descripcion'
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CUSTODIO'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
