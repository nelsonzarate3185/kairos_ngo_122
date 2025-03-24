prompt --application/shared_components/user_interface/lovs/lv_motivos_ent_sal_caentsal
begin
--   Manifest
--     LV_MOTIVOS_ENT_SAL_CAENTSAL
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
 p_id=>wwv_flow_imp.id(91531990363776197)
,p_lov_name=>'LV_MOTIVOS_ENT_SAL_CAENTSAL'
,p_lov_query=>'select cod_motivo_ent_sal r, cod_motivo_ent_sal||'' - ''||descripcion d from st_motivo_ent_sal'
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
