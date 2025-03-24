prompt --application/shared_components/user_interface/lovs/lov_existencias_presu
begin
--   Manifest
--     LOV_EXISTENCIAS_PRESU
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
 p_id=>wwv_flow_imp.id(261462034715352937)
,p_lov_name=>'LOV_EXISTENCIAS_PRESU'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal,nvl(sum(cant_dispon),0)cant_dispon ',
' from st_existencia_art',
'where COD_EMPRESA = :P_COD_EMPRESA',
'and CANT_DISPON  > 0',
'and cod_articulo = nvl(:P342_COD_ARTICULO_ADD, :P327_COD_ARTICULO)',
'group by cod_sucursal'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_SUCURSAL'
,p_display_column_name=>'CANT_DISPON'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'COD_SUCURSAL'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(261462964839347485)
,p_query_column_name=>'COD_SUCURSAL'
,p_heading=>'Sucursal'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(261463331644347484)
,p_query_column_name=>'CANT_DISPON'
,p_heading=>'Cant Dispon'
,p_display_sequence=>20
,p_data_type=>'NUMBER'
);
wwv_flow_imp.component_end;
end;
/
