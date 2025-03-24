prompt --application/shared_components/user_interface/lovs/lv_barrio_cagesvis
begin
--   Manifest
--     LV_BARRIO_CAGESVIS
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
 p_id=>wwv_flow_imp.id(129394575095038784)
,p_lov_name=>'LV_BARRIO_CAGESVIS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, ',
'       cod_barrio ',
'  from barrios ',
' where cod_pais = ''PAR''',
'   AND COD_PROVINCIA=''11''',
'   and (cod_ciudad = :P434_COD_CIUDAD or :P434_COD_CIUDAD is null)',
'order by descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_BARRIO'
,p_display_column_name=>'COD_BARRIO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(129436967626032309)
,p_query_column_name=>'COD_BARRIO'
,p_heading=>'Cod Barrio'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(129437330346032309)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
