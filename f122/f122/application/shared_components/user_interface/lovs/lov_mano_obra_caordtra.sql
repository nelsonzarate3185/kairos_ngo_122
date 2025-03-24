prompt --application/shared_components/user_interface/lovs/lov_mano_obra_caordtra
begin
--   Manifest
--     LOV_MANO_OBRA_CAORDTRA
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
 p_id=>wwv_flow_imp.id(264706104501498893)
,p_lov_name=>'LOV_MANO_OBRA_CAORDTRA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.descripcion, cod_articulo',
'  FROM st_articulos a, vt_origenes t',
' WHERE a.cod_empresa = :P_COD_EMPRESA',
'   AND cod_rubro = ''MO''',
'   AND t.cod_origen = :P402_ORIGEN',
'   AND t.cod_empresa = a.cod_empresa',
'   AND t.origen = ''STNGO''',
'   AND a.tipo_mo = t.origen',
'   AND nvl(a.ind_particular, ''X'') <> nvl(:P402_GARANTIA, ''Z'')',
'   AND tipo_mo IS NOT NULL',
'   AND nvl(cod_marca, :P402_MARCA) = :P402_MARCA',
'   AND nvl(estado, ''S'') NOT IN (''I'', ''N'')',
'   AND (cod_linea = nvl((SELECT aa.cod_linea',
'                        ',
'                          FROM st_articulos aa',
'                         WHERE aa.cod_empresa = :P_COD_EMPRESA',
'                           AND aa.cod_articulo = :P402_COD_ARTICULO_OT),',
'                        cod_linea))',
'',
'UNION ALL',
'SELECT a.descripcion, cod_articulo',
'  FROM st_articulos a, vt_origenes t',
' WHERE a.cod_empresa = :P_COD_EMPRESA',
'   AND cod_rubro = ''MO''',
'   AND t.cod_origen = :P402_ORIGEN',
'   AND t.cod_empresa = a.cod_empresa',
'   AND t.origen = ''STNGO''',
'   AND nvl(cod_marca, :P402_MARCA) = :P402_MARCA',
'   AND nvl(a.ind_particular, ''X'') <> nvl(:P402_GARANTIA, ''Z'')',
'   AND a.tipo_mo = t.origen',
'   AND nvl(estado, ''S'') NOT IN (''I'', ''N'')',
'      ',
'   AND (cod_categoria =',
'       nvl((SELECT aa.cod_categoria',
'            ',
'              FROM st_articulos aa',
'             WHERE aa.cod_empresa = :P_COD_EMPRESA',
'               AND aa.cod_articulo = :P402_COD_ARTICULO_OT),',
'            cod_categoria))',
'   AND a.cod_linea IS NULL',
'   AND tipo_mo IS NOT NULL',
'   AND nvl(cod_marca, :P402_MARCA) = :P402_MARCA',
'',
'UNION ALL',
'SELECT a.descripcion, cod_articulo',
'  FROM st_articulos a, vt_origenes t',
' WHERE a.cod_empresa = :P_COD_EMPRESA',
'   AND cod_rubro = ''MO''',
'   AND t.cod_origen = :P402_ORIGEN',
'   AND t.cod_empresa = a.cod_empresa',
'   AND t.origen = ''STNGO''',
'   AND nvl(cod_marca, :P402_MARCA) = :P402_MARCA',
'   AND nvl(a.ind_particular, ''X'') <> nvl(:P402_GARANTIA, ''Z'')',
'   AND a.tipo_mo = t.origen',
'   AND nvl(estado, ''S'') NOT IN (''I'', ''N'')',
'      ',
'   AND (cod_familia = nvl((SELECT aa.cod_familia',
'                          ',
'                            FROM st_articulos aa',
'                           WHERE aa.cod_empresa = :P_COD_EMPRESA',
'                             AND aa.cod_articulo = :P402_COD_ARTICULO_OT),',
'                          cod_familia))',
'   AND a.cod_linea IS NULL',
'   AND a.cod_categoria IS NULL',
'   AND tipo_mo IS NOT NULL',
'   AND nvl(cod_marca, :P402_MARCA) = :P402_MARCA',
'',
'UNION ALL',
'SELECT a.descripcion, cod_articulo',
'  FROM st_articulos a, vt_origenes t',
' WHERE a.cod_empresa = :P_COD_EMPRESA',
'   AND cod_rubro = ''MO''',
'   AND nvl(estado, ''S'') NOT IN (''I'', ''N'')',
'   AND t.cod_origen = :P402_ORIGEN',
'   AND t.cod_empresa = a.cod_empresa',
'   AND t.origen = ''STNGO''',
'   AND nvl(a.ind_particular, ''X'') <> nvl(:P402_GARANTIA, ''Z'')',
'   AND a.tipo_mo = ''STNGO''',
'   AND tipo_mo IS NOT NULL',
'   AND cod_categoria IS NULL',
'   AND a.cod_linea IS NULL',
'   AND a.cod_familia IS NULL',
'   AND nvl(cod_marca, :P402_MARCA) = :P402_MARCA',
'UNION ALL',
'SELECT a.descripcion, cod_articulo',
'  FROM st_articulos a, vt_origenes t',
' WHERE a.cod_empresa = :P_COD_EMPRESA',
'   AND cod_rubro = ''MO''',
'   AND nvl(estado, ''S'') NOT IN (''I'', ''N'')',
'   AND t.cod_origen = :P402_ORIGEN',
'   AND t.cod_empresa = a.cod_empresa',
'   AND nvl(t.origen, ''X'') NOT IN ''STNGO''',
'   AND a.tipo_mo NOT IN ''STNGO''',
'   AND tipo_mo IS NOT NULL',
'   AND nvl(cod_marca, :P402_MARCA) = :P402_MARCA',
'   UNION ALL ',
' SELECT a.descripcion, a.cod_articulo FROM st_articulos a',
' WHERE a.cod_empresa = :P_COD_EMPRESA',
' AND a.cod_articulo = ''109''',
'   ;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_ARTICULO'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DESCRIPCION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(264706584907496520)
,p_query_column_name=>'COD_ARTICULO'
,p_heading=>'Cod_articulo'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(264706922131496520)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
