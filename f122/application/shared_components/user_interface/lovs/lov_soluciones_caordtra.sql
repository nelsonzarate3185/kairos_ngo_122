prompt --application/shared_components/user_interface/lovs/lov_soluciones_caordtra
begin
--   Manifest
--     LOV_SOLUCIONES_CAORDTRA
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
 p_id=>wwv_flow_imp.id(256777445278658767)
,p_lov_name=>'LOV_SOLUCIONES_CAORDTRA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT p.cod_solucion||'' - ''||p.descripcion descripcion, p.cod_solucion, ''1'' t',
'  FROM ca_soluciones p, ca_soluciones_articulos a, st_articulos ar',
' WHERE p.cod_empresa = a.cod_empresa',
'   AND p.cod_solucion = a.cod_solucion',
'   AND ar.cod_empresa = p.cod_empresa',
'   AND nvl(p.estado, ''S'') <> ''N''',
'   AND ar.cod_articulo = :P370_COD_ARTICULO_OT',
'      ',
'   AND a.cod_articulo = :P370_COD_ARTICULO_OT',
'      ',
'   AND p.cod_empresa = :P_COD_EMPRESA',
'   AND a.cod_articulo = :P370_COD_ARTICULO_OT',
'      ',
'   AND ar.cod_categoria NOT IN',
'       (SELECT cps.cod_categoria',
'          FROM ca_categorias_pro_sol cps',
'         WHERE cps.cod_empresa = ar.cod_empresa',
'           AND cps.cod_categoria = ar.cod_categoria)',
'',
'UNION ALL',
'SELECT p.cod_solucion||'' - ''||p.descripcion  descripcion, p.cod_solucion, ''2''',
'  FROM ca_soluciones p, st_articulos ar',
' WHERE p.cod_empresa = :P_COD_EMPRESA',
'      ',
'   AND nvl(p.estado, ''S'') <> ''N''',
'   AND p.cod_solucion NOT IN',
'       nvl((SELECT a.cod_solucion',
'             FROM ca_soluciones_articulos a',
'            WHERE p.cod_empresa = a.cod_empresa',
'              AND p.cod_solucion = a.cod_solucion',
'                 ',
'              AND a.cod_articulo = :P370_COD_ARTICULO_OT),',
'           ''1'')',
'   AND p.cod_empresa = :P_COD_EMPRESA',
'      ',
'   AND nvl(p.estado, ''S'') <> ''N''',
'   AND ar.cod_empresa = p.cod_empresa',
'   AND ar.cod_articulo = :P370_COD_ARTICULO_OT',
'   AND ar.cod_categoria NOT IN',
'       (SELECT cps.cod_categoria',
'          FROM ca_categorias_pro_sol cps',
'         WHERE cps.cod_empresa = ar.cod_empresa',
'           AND cps.cod_categoria = ar.cod_categoria)',
'UNION ALL',
'SELECT p.cod_solucion||'' - ''||p.descripcion descripcion, p.cod_solucion, ''1'' t',
'  FROM ca_soluciones           p,',
'       ca_soluciones_articulos a,',
'       st_articulos            ar,',
'       ca_categorias_pro_sol   cps',
' WHERE p.cod_empresa = a.cod_empresa',
'   AND p.cod_solucion = a.cod_solucion',
'   AND ar.cod_empresa = p.cod_empresa',
'   AND nvl(p.estado, ''S'') <> ''N''',
'   AND ar.cod_articulo = :P370_COD_ARTICULO_OT',
'      ',
'   AND a.cod_articulo = :P370_COD_ARTICULO_OT',
'      ',
'   AND p.cod_empresa = :P_COD_EMPRESA',
'   AND a.cod_articulo = :P370_COD_ARTICULO_OT',
'      ',
'   AND cps.cod_empresa = ar.cod_empresa',
'   AND cps.cod_categoria = ar.cod_categoria',
'   AND cps.cod_solucion = p.cod_solucion',
'   --AND cps.cod_problema = :b_detalle_prob_gen.cod_problema',
' GROUP BY p.descripcion, p.cod_solucion',
'UNION ALL',
'SELECT p.cod_solucion||'' - ''||p.descripcion descripcion, p.cod_solucion, ''2''',
'  FROM ca_soluciones p, st_articulos ar, ca_categorias_pro_sol cps',
' WHERE p.cod_empresa = :P_COD_EMPRESA',
'      ',
'   AND nvl(p.estado, ''S'') <> ''N''',
'   AND p.cod_solucion NOT IN',
'       nvl((SELECT a.cod_solucion',
'             FROM ca_soluciones_articulos a',
'            WHERE p.cod_empresa = a.cod_empresa',
'              AND p.cod_solucion = a.cod_solucion',
'                 ',
'              AND a.cod_articulo = :P370_COD_ARTICULO_OT),',
'           ''1'')',
'   AND p.cod_empresa = :P_COD_EMPRESA',
'      ',
'   AND nvl(p.estado, ''S'') <> ''N''',
'   AND ar.cod_empresa = p.cod_empresa',
'   AND ar.cod_articulo = :P370_COD_ARTICULO_OT',
'      ',
'   AND cps.cod_empresa = ar.cod_empresa',
'   AND cps.cod_categoria = ar.cod_categoria',
'   AND cps.cod_solucion = p.cod_solucion',
'   --AND cps.cod_problema = :b_cabecera.cod_problema',
' GROUP BY p.descripcion, p.cod_solucion',
' ORDER BY 3, 1',
' ',
' '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COD_SOLUCION'
,p_display_column_name=>'DESCRIPCION'
);
wwv_flow_imp.component_end;
end;
/
