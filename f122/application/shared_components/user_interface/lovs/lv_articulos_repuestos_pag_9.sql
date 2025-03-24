prompt --application/shared_components/user_interface/lovs/lv_articulos_repuestos_pag_9
begin
--   Manifest
--     LV_ARTICULOS_REPUESTOS_PAG_9
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
 p_id=>wwv_flow_imp.id(107692641761261938)
,p_lov_name=>'LV_ARTICULOS_REPUESTOS_PAG_9'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_articulo||'' - ''||descripcion DESCRIPCION, ',
'         cod_articulo CODIGO,  ',
'                  ',
'          A.COD_ORIGEN_ART, A.COD_ALTERNO ',
'    FROM st_articulos  A',
'   WHERE cod_empresa = ''1''--:p_cod_empresa ',
'     AND ( estado is null or estado <> ''I'' )',
'     AND COD_RUBRO=''RE''',
'    ORDER BY descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'CODIGO'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(107693818457283396)
,p_query_column_name=>'CODIGO'
,p_heading=>unistr('C\00F3digo')
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(107693492026283395)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>unistr('Descripci\00F3n')
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(107695456737283396)
,p_query_column_name=>'COD_ORIGEN_ART'
,p_heading=>unistr('C\00F3d. Origen Art')
,p_display_sequence=>60
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(107695818045283396)
,p_query_column_name=>'COD_ALTERNO'
,p_heading=>unistr('C\00F3d. Alterno')
,p_display_sequence=>70
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
