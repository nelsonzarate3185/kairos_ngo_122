prompt --application/shared_components/user_interface/lovs/lv_motivo_ent_sal_stentsal
begin
--   Manifest
--     LV_MOTIVO_ENT_SAL_STENTSAL
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
 p_id=>wwv_flow_imp.id(154466674064867163)
,p_lov_name=>'LV_MOTIVO_ENT_SAL_STENTSAL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_motivo_ent_sal, ',
'       descripcion ',
'  from st_motivo_ent_sal ',
'  order by descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_MOTIVO_ENT_SAL'
,p_display_column_name=>'COD_MOTIVO_ENT_SAL'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(154468177889863902)
,p_query_column_name=>'COD_MOTIVO_ENT_SAL'
,p_heading=>'Cod Motivo Ent Sal'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(154468523372863901)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
