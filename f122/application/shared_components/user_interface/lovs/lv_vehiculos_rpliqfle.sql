prompt --application/shared_components/user_interface/lovs/lv_vehiculos_rpliqfle
begin
--   Manifest
--     LV_VEHICULOS_RPLIQFLE
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
 p_id=>wwv_flow_imp.id(137816261158191763)
,p_lov_name=>'LV_VEHICULOS_RPLIQFLE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, ',
'       cod_vehiculo ',
'  from rp_vehiculos ',
' where cod_empresa = :P_COD_EMPRESA',
'   and nvl(Activo,''S'') = ''S''',
'order by descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_VEHICULO'
,p_display_column_name=>'COD_VEHICULO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(137865111204186761)
,p_query_column_name=>'COD_VEHICULO'
,p_heading=>'Cod Vehiculo'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(137816964361191760)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>unistr('C\00F3digo - Descripci\00F3n')
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
