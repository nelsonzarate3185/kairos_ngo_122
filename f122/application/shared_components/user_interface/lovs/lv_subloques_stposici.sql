prompt --application/shared_components/user_interface/lovs/lv_subloques_stposici
begin
--   Manifest
--     LV_SUBLOQUES_STPOSICI
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
 p_id=>wwv_flow_imp.id(218470936572623743)
,p_lov_name=>'LV_SUBLOQUES_STPOSICI'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_SUB_bloque, COD_SUB_BLOQUE      ',
'',
'      from st_sub_bloques',
'     where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :p636_cod_sucursal',
'       and cod_bloque = :p636_cod_bloque',
'',
' '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_SUB_BLOQUE'
,p_display_column_name=>'COD_SUB_BLOQUE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(218471658327626406)
,p_query_column_name=>'COD_SUB_BLOQUE'
,p_heading=>'Codigo'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(218472072304626407)
,p_query_column_name=>'DESC_SUB_BLOQUE'
,p_heading=>unistr('Descripci\00F3n')
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
