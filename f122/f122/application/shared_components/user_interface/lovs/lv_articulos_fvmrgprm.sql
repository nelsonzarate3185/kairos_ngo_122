prompt --application/shared_components/user_interface/lovs/lv_articulos_fvmrgprm
begin
--   Manifest
--     LV_ARTICULOS_FVMRGPRM
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
 p_id=>wwv_flow_imp.id(54914658328374962)
,p_lov_name=>'LV_ARTICULOS_FVMRGPRM'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo,',
'       cod_art_corto, ',
'       TRIM(descripcion)descripcion  ',
'  from st_articulos ',
' where cod_empresa = :P_COD_EMPRESA',
'   and nvl( estado, ''S'' ) <> ''N'' ',
'   and cod_rubro=''PR''',
' order by cod_articulo,descripcion',
'',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_ARTICULO'
,p_display_column_name=>'COD_ART_CORTO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54964289354597665)
,p_query_column_name=>'COD_ARTICULO'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54964607901597666)
,p_query_column_name=>'COD_ART_CORTO'
,p_heading=>'Cod. Art. Corto'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(54965018224597666)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>unistr('Descripci\00F3n')
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
