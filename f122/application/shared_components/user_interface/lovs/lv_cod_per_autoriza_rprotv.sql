prompt --application/shared_components/user_interface/lovs/lv_cod_per_autoriza_rprotv
begin
--   Manifest
--     LV_COD_PER_AUTORIZA_RPROTV
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
 p_id=>wwv_flow_imp.id(136436788480038331)
,p_lov_name=>'LV_COD_PER_AUTORIZA_RPROTV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_PER_AUTORIZA',
'FROM RP_ORD_TRAB_CAB'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COD_PER_AUTORIZA'
,p_display_column_name=>'COD_PER_AUTORIZA'
,p_default_sort_column_name=>'COD_PER_AUTORIZA'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
