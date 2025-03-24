prompt --application/shared_components/user_interface/lovs/lv_stas_filtrados
begin
--   Manifest
--     LV_STAS_FILTRADOS
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
 p_id=>wwv_flow_imp.id(812838127178675828)
,p_lov_name=>'LV_STAS_FILTRADOS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH ',
'consulta1 AS (',
'    SELECT',
'        p.nombre nombre,',
'        c.cod_proveedor,',
'        ''1- LOCALIDAD-CATEGORIA'' tipo,',
'        1 orden',
'    FROM',
'        cm_proveedores c,',
'        personas p,',
'        direc_personas d,',
'        st_articulos s,',
'        inv.cc_clientes_rubros cr,',
'        inv.cc_clientes cl',
'    WHERE',
'        c.cod_empresa = ''1''',
'        AND c.ind_servicio_tecnico = ''STA''',
'        AND c.cod_persona = p.cod_persona',
'        AND c.cod_persona = d.cod_persona',
'        AND nvl(c.estado, ''A'') NOT IN (''I'')',
'        AND nvl(cr.activo, ''N'') NOT IN (''N'')',
'        AND cr.cod_empresa = c.cod_empresa',
'        AND cr.cod_division = s.cod_division',
'        AND s.cod_articulo IN (:p730_cod_articulo_ot, :p730_cod_articulo_ot_call)',
'        AND (:p730_departamento = d.cod_provincia)',
'        AND (:p730_ciudad = d.cod_ciudad)',
'        AND cl.cod_empresa = c.cod_empresa',
'        AND cl.cod_persona = c.cod_persona',
'        AND cl.cod_empresa = cr.cod_empresa',
'        AND cl.cod_cliente = cr.cod_cliente',
'        AND c.asignable_ot = ''S''',
'    GROUP BY',
'        p.nombre,',
'        c.cod_proveedor',
'),',
'consulta2 AS (',
'    SELECT',
'        p.nombre nombre,',
'        c.cod_proveedor,',
'        ''2- POR ZONA DE COBERTURA-CATEGORIA'' tipo,',
'        2 orden',
'    FROM',
'        cm_proveedores c,',
'        personas p,',
'        st_articulos s,',
'        inv.ca_cobertura_localidad loc,',
'        inv.cc_clientes_rubros cr,',
'        inv.cc_clientes cl',
'    WHERE',
'        c.cod_empresa = ''1''',
'        AND c.ind_servicio_tecnico = ''STA''',
'        AND c.cod_persona = p.cod_persona',
'        AND nvl(c.estado, ''A'') NOT IN (''I'')',
'        AND nvl(loc.ind_activo, ''A'') NOT IN (''N'')',
'        AND nvl(cr.activo, ''N'') NOT IN (''N'')',
'        AND cr.cod_empresa = c.cod_empresa',
'        AND cr.cod_division = s.cod_division',
'        AND loc.cod_empresa = c.cod_empresa',
'        AND loc.cod_proveedor = c.cod_proveedor',
'        AND loc.cod_pais = ''PAR''',
'        AND s.cod_articulo IN (:p730_cod_articulo_ot, :p730_cod_articulo_ot_call)',
'        AND (nvl(:p730_departamento, ''X'') = nvl(loc.cod_departamento, nvl(:p730_departamento, ''X'')))',
'        AND (nvl(:p730_ciudad, ''X'') = nvl(loc.cod_ciudad, nvl(:p730_ciudad, ''X'')))',
'        AND cl.cod_empresa = c.cod_empresa',
'        AND cl.cod_persona = c.cod_persona',
'        AND cl.cod_empresa = cr.cod_empresa',
'        AND cl.cod_cliente = cr.cod_cliente',
'        AND c.asignable_ot = ''S''',
'    GROUP BY',
'        p.nombre,',
'        c.cod_proveedor',
'),',
'consulta3 AS (',
'    SELECT',
'        p.nombre nombre,',
'        c.cod_proveedor,',
'        ''3- TODOS STA'' tipo,',
'        3 orden',
'    FROM',
'        cm_proveedores c,',
'        personas p,',
'        cc_clientes cc',
'    WHERE',
'        c.cod_empresa = ''1''',
'        AND c.cod_persona = p.cod_persona',
'        AND c.asignable_ot = ''S''',
'        AND p.cod_persona = cc.cod_persona',
'        AND cc.cod_empresa = c.cod_empresa',
'        AND cc.tip_cliente IN(''28'', ''77'')',
'    GROUP BY',
'        p.nombre,',
'        c.cod_proveedor',
')',
'SELECT * FROM consulta1',
'UNION ALL',
'SELECT * FROM consulta2',
'WHERE NOT EXISTS (SELECT 1 FROM consulta1)',
'UNION ALL',
'SELECT * FROM consulta3',
'WHERE NOT EXISTS (SELECT 1 FROM consulta1) AND NOT EXISTS (SELECT 1 FROM consulta2)',
'ORDER BY 4 ASC, 1 ASC;',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_PROVEEDOR'
,p_display_column_name=>'NOMBRE'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'ORDEN'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
