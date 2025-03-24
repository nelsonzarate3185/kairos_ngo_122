prompt --application/pages/page_00562
begin
--   Manifest
--     PAGE: 00562
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page(
 p_id=>562
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Inventar\00EDo de Art\00EDculos')
,p_alias=>unistr('INVENTAR\00CDO-DE-ART\00CDCULOS')
,p_step_title=>unistr('Inventar\00EDo de Art\00EDculos')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250116170952'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(179092454818755008)
,p_plug_name=>'STDIFINVAND_OT'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESC_SUCURSAL, COD_SUCURSAL, COD_ARTICULO, DESC_ART, to_number(CANTIDAD_SISTEMA)CANTIDAD_SISTEMA, C1 , to_number(CU)cu, COSTO_STOCK, NRO_COMPROBANTE,',
' SUCURSAL, COD_ART_CORTO,  SER_OT, NRO_OT, ENTRADA, SALIDA, COSTO_PROM, OBSERVACION, HORARIO, ZONA, COSTO_INVENTARIO, CANTIDAD_INVENTARIO, ESTADO_OT, FECHA_INGRESO, FECHA_CIERRE,',
' FECHA_ENTREGA, ANTIGUEDAD, GARANTIA_OT, UBICACION, CONDICION, DEPARTAMENTO, CIUDAD, TIPO_CIERE, SNC,   USUARIO, FEC_CARGA,  NRO_GARANTIA, CLIENTE, ORIGEN, ESTADO_SNC, ULTIMA_OT,',
' RESOLUCION, to_number(nvl(cu,0)-nvl(CANTIDAD_SISTEMA,0)) DIFERENCIA',
'  from ( select s.descripcion desc_sucursal, a.cod_encargado, S.cod_sucursal,GD.cod_articulo, a.descripcion desc_art,',
' 0 CANTIDAD_SISTEMA, nvl(cc.CANTIDAD, '''') C1, nvl(CC.CANTIDAD, '''') CU, NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)), 0) COSTO_STOCK,g.nro_comprobante, g.sucursal,',
'a.cod_Art_corto, GD.NRO_OT nro_ot_detalle, 0 entrada, 0 salida, a.costo_prom, g.observacion, CC.USUARIO  USUARIO_carga, CC.FECHA_CARGA HORARIO, CC.ZONA zONA, round(NVL(ROUND(round(a.costo_prom) *',
'  (SELECT SUM(E.CANTIDAD) FROM SM_INVENTARIO_DET E WHERE g.id_inventury = e.inventory_id and to_char(gd.nro_ot) = e.cod_articulo) ), 0)) COSTO_INVENTARIO, CC.CANTIDAD CANTIDAD_inventario,',
' es.ESTADO estado_ot, es.fec_comprobante fecha_ingreso, es.fec_cierre fecha_cierre, es.fec_entrega fecha_entrega, es.antiguedad_dias antiguedad, es.GARANTIA garantia_ot,',
' UBICACION ubicacion,  trim(replace(ES.CONDICION, chr(10), ''-'')) condicion, DEPARTAMENTO Departamento, CIUDAD Ciudad,',
' TIPO_CIERRE tipo_ciere, case when ( (select max(es1.nro_comprobante)  from vt_ordenes_trabajo es1',
'                 where es1.garantia_ot = es.numero_garantia',
'                   and es1.cod_empresa = g.cod_empresa',
'                   and es1.cod_articulo = es.cod_articulo',
'                   and es1.fec_comprobante > es.fec_comprobante)) is not null then ',
'                   (select   es2.nro_sol_conf',
'                   from estado_ord_trabajo es2 ',
'                   where es2.numero_garantia = es.numero_garantia',
'                   and es2.cod_articulo = es.cod_articulo',
'                   and  es2.nro_comprobante in (                  ( (select max(es1.nro_comprobante)',
'                  from vt_ordenes_trabajo es1',
'                 where es1.garantia_ot = es.numero_garantia',
'                   and es1.cod_empresa = g.cod_empresa',
'                   and es1.cod_articulo = es.cod_articulo',
'                   and es1.fec_comprobante > es.fec_comprobante)))) else ES.nro_sol_conf',
'                   end SNC, ''1'',ES.Ser_Comprobante SER_OT,ES.nro_comprobante NRO_OT,',
'               cc.usuario,cc.fecha_carga fec_carga, es.numero_garantia nro_garantia,',
'               ES.NOM_CLIENTE CLIENTE, ES.cod_origen ORIGEN,',
'               case when ( (select max(es1.nro_comprobante)',
'                  from vt_ordenes_trabajo es1',
'                 where es1.garantia_ot = es.numero_garantia',
'                   and es1.cod_empresa = g.cod_empresa',
'                   and es1.cod_articulo = es.cod_articulo',
'                   and es1.fec_comprobante > es.fec_comprobante)) is not null then ',
'                   (select  es2.estado_snc',
'                   from estado_ord_trabajo es2 ',
'                   where es2.numero_garantia = es.numero_garantia',
'                   and es2.cod_articulo = es.cod_articulo',
'                   and  es2.nro_comprobante in (',
'                   ( (select max(es1.nro_comprobante)',
'                  from vt_ordenes_trabajo es1',
'                 where es1.garantia_ot = es.numero_garantia',
'                   and es1.cod_empresa = g.cod_empresa',
'                   and es1.cod_articulo = es.cod_articulo',
'                   and es1.fec_comprobante > es.fec_comprobante)))) else ',
'                   es.ESTADO_snc   end  ESTADO_snc ,',
'               (select max(es1.nro_comprobante)',
'                  from vt_ordenes_trabajo es1',
'                 where es1.garantia_ot = es.numero_garantia',
'                   and es1.cod_empresa = g.cod_empresa',
'                   and es1.cod_articulo = es.cod_articulo',
'                   and es1.fec_comprobante > es.fec_comprobante) ultima_ot, CASE',
'  WHEN ES.tipo_cierre IN (''CERRADA SIN REPUESTOS'', ''CERRADA SIN SOLUCION'') AND ES.nro_sol_conf IS NOT NULL THEN''RENTA''WHEN  TO_NUMBER(TRUNC(SYSDATE)-ES.FEC_CIERRE)>180 AND',
'                      ES.FEC_CIERRE IS NOT NULL  AND ES.NRO_SOL_CONF IS NOT NULL THEN''DONACION''WHEN ES.tipo_cierre IN (''CERRADA REPARADA'') AND',
'                      ES.nro_sol_conf IS NOT NULL THEN''OFERTAS'' when es.cod_origen=''20'' and  ES.tipo_cierre IN',
'                      (''CERRADA SIN REPUESTOS'', ''CERRADA SIN SOLUCION'')  then ''RENTA''',
'                       when es.cod_origen=''20'' and  ES.tipo_cierre IN',
'                      (''CERRADA REPARADA'')  then ''OFERTA''',
'               END RESOLUCION ',
'        ',
'          from st_generacion_inventario     g,',
'               st_generacion_inventario_det gd,',
'               st_articulos                 a,',
'               sucursales                   s,',
'               SM_INVENTARIO_DET            cc,',
'               estado_ord_trabajo           es',
'         where G.cod_empresa = :P562_P_COD_EMPRESA',
'           AND G.TIP_COMPROBANTE = :P562_P_TIP_COMPROBANTE',
'           AND G.SER_COMPROBANTE = :P562_P_SER_COMPROBANTE',
'           and g.nro_comprobante = :P562_P_NRO_COMPROBANTE',
'           and g.cod_empresa = gd.cod_empresa',
'           and g.tip_comprobante = gd.tip_comprobante',
'           and g.ser_comprobante = gd.ser_comprobante',
'           and g.nro_comprobante = gd.nro_comprobante',
'           and G.cod_empresa = s.cod_empresa',
'           and g.cod_sucursal = s.cod_sucursal',
'           and GD.cod_empresa = a.cod_empresa',
'           and GD.cod_articulo = a.cod_articulo',
'           and gd.nro_comprobante = cc.INVENTORY_AREA',
'           AND NVL(INVENTARIOOT, ''N'') = ''S''',
'           and nvl(g.ind_inventario_cph,''N'')<>''S''',
'           and es.TIP_COMPROBANTE = ''ORT''',
'           AND ES.Ser_Comprobante || ES.nro_comprobante = CC.COD_ARTICULO',
'           and g.cod_sucursal not in (''248'')',
'           AND GD.COD_ARTICULO = CC.ITEMID',
'           UNION ALL                    ',
'        select s.descripcion desc_sucursal, a.cod_encargado, S.cod_sucursal, GD.cod_articulo,',
'               a.descripcion desc_art, 0 CANTIDAD_SISTEMA,',
'               nvl(cc.CANTIDAD, '''') C1, nvl(CC.CANTIDAD, '''') CU,',
'               NVL(ROUND(GD.COSTO /',
'                         decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'                   0) COSTO_STOCK,g.nro_comprobante, g.sucursal,',
'               a.cod_Art_corto,  GD.NRO_OT, 0  entrada, 0 salida, a.costo_prom,',
'               g.observacion, CC.USUARIO     USUARIO, CC.FECHA_CARGA HORARIO,',
'               CC.ZONA        ZONA,  round(NVL(ROUND(round(a.costo_prom) *',
'                               (SELECT SUM(E.CANTIDAD)',
'                                  FROM SM_INVENTARIO_DET E',
'                                 WHERE g.id_inventury = e.inventory_id',
'                                   and to_char(gd.nro_ot) = e.cod_articulo)  ),',
'                         0)) COSTO_INVENTARIO, CC.CANTIDAD CANTIDAD_inventario,',
'               es.ESTADO estado_ot, es.fec_comprobante fecha_ingreso,',
'               es.fec_cierre fecha_cierre,',
'               es.fec_entrega fecha_entrega,',
'               es.antiguedad_dias antiguedad,',
'               es.GARANTIA garantia_ot,',
'               UBICACION ubicacion,',
'               trim(replace(ES.CONDICION, chr(10), ''-'')) condicion,',
'               DEPARTAMENTO Departamento,',
'               CIUDAD Ciudad,',
'               TIPO_CIERRE tipo_ciere,  case when ( (select max(es1.nro_comprobante)',
'                  from vt_ordenes_trabajo@DBLINK_CPH es1',
'                 where es1.garantia_ot = es.numero_garantia',
'                   and es1.cod_empresa = g.cod_empresa',
'                   and es1.cod_articulo = es.cod_articulo',
'                   and es1.fec_comprobante > es.fec_comprobante)) is not null then ',
'                   (select   es2.nro_sol_conf',
'                   from estado_ord_trabajo@DBLINK_CPH es2 ',
'                   where es2.numero_garantia = es.numero_garantia',
'                   and es2.cod_articulo = es.cod_articulo',
'                   and  es2.nro_comprobante in (',
'                   ( (select max(es1.nro_comprobante)',
'                  from vt_ordenes_trabajo@DBLINK_CPH es1',
'                 where es1.garantia_ot = es.numero_garantia',
'                   and es1.cod_empresa = g.cod_empresa',
'                   and es1.cod_articulo = es.cod_articulo',
'                   and es1.fec_comprobante > es.fec_comprobante)))) else ',
'                   ES.nro_sol_conf',
'                   end SNC, ''1'',',
'               ES.Ser_Comprobante SER_OT,',
'               ES.nro_comprobante NRO_OT,',
'               cc.usuario,',
'               cc.fecha_carga,',
'               es.numero_garantia,',
'               ES.NOM_CLIENTE,',
'               ES.cod_origen,',
'               case when ( (select max(es1.nro_comprobante)',
'                  from vt_ordenes_trabajo@DBLINK_CPH es1',
'                 where es1.garantia_ot = es.numero_garantia',
'                   and es1.cod_empresa = g.cod_empresa',
'                   and es1.cod_articulo = es.cod_articulo',
'                   and es1.fec_comprobante > es.fec_comprobante)) is not null then ',
'                   (select  es2.estado_snc',
'                   from estado_ord_trabajo@DBLINK_CPH es2 ',
'                   where es2.numero_garantia = es.numero_garantia',
'                   and es2.cod_articulo = es.cod_articulo',
'                   and  es2.nro_comprobante in (',
'                   ( (select max(es1.nro_comprobante)',
'                  from vt_ordenes_trabajo@DBLINK_CPH es1',
'                 where es1.garantia_ot = es.numero_garantia',
'                   and es1.cod_empresa = g.cod_empresa',
'                   and es1.cod_articulo = es.cod_articulo',
'                   and es1.fec_comprobante > es.fec_comprobante))))',
'                   ',
'                   else ',
'                   es.ESTADO_snc ',
'                   end',
'                   ESTADO_snc ,',
'               (select max(es1.nro_comprobante)',
'                  from vt_ordenes_trabajo@DBLINK_CPH es1',
'                 where es1.garantia_ot = es.numero_garantia',
'                   and es1.cod_empresa = g.cod_empresa',
'                   and es1.cod_articulo = es.cod_articulo',
'                   and es1.fec_comprobante > es.fec_comprobante) ultima_ot,',
'               ',
'                 CASE',
'                 WHEN ES.tipo_cierre IN',
'                      (''CERRADA SIN REPUESTOS'', ''CERRADA SIN SOLUCION'') AND',
'                      ES.nro_sol_conf IS NOT NULL THEN',
'                  ''RENTA''',
'                  ',
'                 WHEN  TO_NUMBER(TRUNC(SYSDATE)-ES.FEC_CIERRE)>180 AND',
'                      ES.FEC_CIERRE IS NOT NULL  AND ES.NRO_SOL_CONF IS NOT NULL THEN',
'                  ''DONACION''',
'                  ',
'                   WHEN ES.tipo_cierre IN (''CERRADA REPARADA'') AND',
'                      ES.nro_sol_conf IS NOT NULL THEN',
'                  ''OFERTAS''',
'                  ',
'                  ',
'                  ',
'                  when es.cod_origen=''20'' and  ES.tipo_cierre IN',
'                      (''CERRADA SIN REPUESTOS'', ''CERRADA SIN SOLUCION'')  then ''RENTA''',
'                       when es.cod_origen=''20'' and  ES.tipo_cierre IN',
'                      (''CERRADA REPARADA'')  then ''OFERTA''',
'               END RESOLUCION ',
'        ',
'          from st_generacion_inventario     g,',
'               st_generacion_inventario_det gd,',
'               st_articulos@DBLINK_CPH                 a,',
'               sucursales@DBLINK_CPH                   s,',
'               SM_INVENTARIO_DET            cc,',
'               estado_ord_trabajo@DBLINK_CPH           es',
'         where G.cod_empresa = :P562_P_COD_EMPRESA',
'           AND G.TIP_COMPROBANTE = :P562_P_TIP_COMPROBANTE',
'           AND G.SER_COMPROBANTE = :P562_P_SER_COMPROBANTE',
'           and g.nro_comprobante = :P562_P_NRO_COMPROBANTE',
'           and g.cod_empresa = gd.cod_empresa',
'           and g.tip_comprobante = gd.tip_comprobante',
'           and g.ser_comprobante = gd.ser_comprobante',
'           and g.nro_comprobante = gd.nro_comprobante',
'           and G.cod_empresa = s.cod_empresa',
'           and g.cod_sucursal = s.cod_sucursal',
'           and GD.cod_empresa = a.cod_empresa',
'           and GD.cod_articulo = a.cod_articulo',
'           and gd.nro_comprobante = cc.INVENTORY_AREA',
'           AND NVL(INVENTARIOOT, ''N'') = ''S''',
'             AND NVL(G.IND_INVENTARIO_CPH, ''N'') = ''S''',
'           and es.TIP_COMPROBANTE = ''ORT''',
'           AND ES.Ser_Comprobante || ES.nro_comprobante = CC.COD_ARTICULO',
'           and g.cod_sucursal not in (''248'')',
'           AND GD.COD_ARTICULO = CC.ITEMID',
'        UNION ALL',
'        select s.descripcion desc_sucursal,',
'               a.cod_encargado,',
'               S.cod_sucursal,',
'               GD.cod_articulo,',
'               a.descripcion desc_art,',
'               0 CANTIDAD_SISTEMA,',
'               nvl(cc.CANTIDAD, '''') C1,',
'             ',
'               nvl(CC.CANTIDAD, '''') CU,',
'               NVL(ROUND(GD.COSTO /',
'                         decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'                   0) COSTO_STOCK,g.nro_comprobante, g.sucursal,',
'               a.cod_Art_corto,',
'               GD.NRO_OT,0 entrada,0 salida,               a.costo_prom,',
'               g.observacion, CC.USUARIO  ,',
'               CC.FECHA_CARGA HORARIO,               CC.ZONA   ZONA, ',
'               round(NVL(ROUND(round(a.costo_prom) *',
'                               (SELECT SUM(E.CANTIDAD)',
'                                  FROM SM_INVENTARIO_DET E',
'                                 WHERE g.id_inventury = e.inventory_id',
'                                   and to_char(gd.nro_ot) = e.cod_articulo)',
'                               ',
'                               ),',
'                         0)) COSTO_INVENTARIO,',
'               CC.CANTIDAD CANTIDAD_inventario,',
'               NULL,nULL ,',
'               NULL ,',
'               NULL fechaentrega,',
'               NULL ,',
'               NULL ,',
'               NULL ,',
'               NULL ,',
'               NULL ,',
'               NULL ,',
'               NULL ,',
'               NULL ,',
'               ''1'',',
'               NULL ,',
'               NULL ,',
'               cc.usuario,',
'               cc.fecha_carga,',
'               null nro_garantia,',
'               NULL CLIENTE,',
'               NULL ORIGEN,',
'               null estado_snc,',
'               null ultima_ot,',
'               ',
'               NULL RESOLUCION_OT',
'        ',
'          from st_generacion_inventario     g,',
'               st_generacion_inventario_det gd,',
'               st_articulos                 a,',
'               sucursales                   s,',
'               SM_INVENTARIO_DET            cc',
'         where G.cod_empresa = :P562_P_COD_EMPRESA',
'           AND G.TIP_COMPROBANTE = :P562_P_TIP_COMPROBANTE',
'           AND G.SER_COMPROBANTE = :P562_P_SER_COMPROBANTE',
'           and g.nro_comprobante = :P562_P_NRO_COMPROBANTE',
'           and g.cod_empresa = gd.cod_empresa',
'           and g.tip_comprobante = gd.tip_comprobante',
'           and g.ser_comprobante = gd.ser_comprobante',
'           and g.nro_comprobante = gd.nro_comprobante',
'           and G.cod_empresa = s.cod_empresa',
'           and g.cod_sucursal = s.cod_sucursal',
'           and GD.cod_empresa = a.cod_empresa',
'           and GD.cod_articulo = a.cod_articulo',
'           and gd.nro_comprobante = cc.INVENTORY_AREA',
'           AND NVL(INVENTARIOOT, ''N'') = ''S''',
'                      AND NVL(G.IND_INVENTARIO_CPH, ''N'') <>''S''',
'           and g.cod_sucursal not in (''248'')',
'              ',
'           AND GD.COD_ARTICULO = CC.COD_ARTICULO',
'           --CPH--',
'           UNION ALL',
'             select s.descripcion desc_sucursal,',
'               a.cod_encargado,',
'               S.cod_sucursal,',
'               GD.cod_articulo,',
'               a.descripcion desc_art,',
'               0 CANTIDAD_SISTEMA,',
'               nvl(cc.CANTIDAD, '''') C1,',
'          ',
'               nvl(CC.CANTIDAD, '''') CU,',
'               NVL(ROUND(GD.COSTO /',
'                         decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'                   0) COSTO_STOCK,',
'               ',
'               g.nro_comprobante,',
'               g.sucursal,',
'               a.cod_Art_corto,',
'               GD.NRO_OT,',
'               0                 entrada,',
'               ',
'               0             salida,',
'               a.costo_prom,',
'               g.observacion,',
'               ',
'               CC.USUARIO     USUARIO,',
'               CC.FECHA_CARGA HORARIO,',
'               CC.ZONA        ZONA,',
'               ',
'               round(NVL(ROUND(round(a.costo_prom) *',
'                               (SELECT SUM(E.CANTIDAD)',
'                                  FROM SM_INVENTARIO_DET E',
'                                 WHERE g.id_inventury = e.inventory_id',
'                                   and to_char(gd.nro_ot) = e.cod_articulo)',
'                               ',
'                               ),',
'                         0)) COSTO_INVENTARIO,',
'               CC.CANTIDAD CANTIDAD_inventario,',
'               NULL estado_ot,',
'               NULL fecha_ingreso,',
'               NULL fecha_cierre,',
'               NULL fecha_entrega,',
'               NULL antiguedad,',
'               NULL garantia_ot,',
'               NULL ubicacion,',
'               NULL condicion,',
'               NULL Departamento,',
'               NULL Ciudad,',
'               NULL tipo_cierRe,',
'               NULL SNC,',
'               ''1'',',
'               NULL SER_OT,',
'               NULL NRO_OT,',
'               cc.usuario,',
'               cc.fecha_carga,',
'               null nro_garantia,',
'               NULL CLIENTE,',
'               NULL ORIGEN,',
'               null estado_snc,',
'               null ultima_ot,',
'               ',
'               NULL RESOLUCION_OT',
'        ',
'          from st_generacion_inventario     g,',
'               st_generacion_inventario_det gd,',
'               st_articulos@DBLINK_CPH                 a,',
'               sucursales@DBLINK_CPH                   s,',
'               SM_INVENTARIO_DET            cc',
'         where G.cod_empresa = :P562_P_COD_EMPRESA',
'           AND G.TIP_COMPROBANTE = :P562_P_TIP_COMPROBANTE',
'           AND G.SER_COMPROBANTE = :P562_P_SER_COMPROBANTE',
'           and g.nro_comprobante = :P562_P_NRO_COMPROBANTE',
'           and g.cod_empresa = gd.cod_empresa',
'           and g.tip_comprobante = gd.tip_comprobante',
'           and g.ser_comprobante = gd.ser_comprobante',
'           and g.nro_comprobante = gd.nro_comprobante',
'           and G.cod_empresa = s.cod_empresa',
'           and g.cod_sucursal = s.cod_sucursal',
'           and GD.cod_empresa = a.cod_empresa',
'           and GD.cod_articulo = a.cod_articulo',
'           and gd.nro_comprobante = cc.INVENTORY_AREA',
'           AND NVL(INVENTARIOOT, ''N'') = ''S''',
'             AND NVL(G.IND_INVENTARIO_CPH, ''N'') = ''S''',
'           and g.cod_sucursal not in (''248'')              ',
'           AND GD.COD_ARTICULO = CC.COD_ARTICULO',
'           union all',
'        /* inventario 248*/',
'         select s.descripcion desc_sucursal,',
'               a.cod_encargado,',
'               S.cod_sucursal,',
'               GD.cod_articulo,',
'               a.descripcion desc_art,',
'               1 CANTIDAD_SISTEMA,',
'               nvl(cc.CANTIDAD, '''') C1,',
'          ',
'               nvl(CC.CANTIDAD, '''') CU,',
'               NVL(ROUND(GD.COSTO /',
'                         decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'                   0) COSTO_STOCK,',
'               g.nro_comprobante,',
'               g.sucursal,',
'               a.cod_Art_corto,',
'               GD.NRO_OT,',
'               0  entrada,',
'               ',
'              0 salida,',
'               a.costo_prom,',
'               g.observacion,',
'               ',
'               CC.USUARIO     USUARIO,',
'               CC.FECHA_CARGA HORARIO,',
'               CC.ZONA        ZONA,',
'               ',
'               round(NVL(ROUND(round(a.costo_prom) *',
'                               (SELECT SUM(E.CANTIDAD)',
'                                  FROM SM_INVENTARIO_DET E',
'                                 WHERE g.id_inventury = e.inventory_id',
'                                   and to_char(gd.nro_ot) = e.cod_articulo)',
'                               ',
'                               ),',
'                         0)) COSTO_INVENTARIO,',
'               CC.CANTIDAD CANTIDAD_inventario,',
'               es.ESTADO estado_ot,',
'               es.fec_comprobante fecha_ingreso,',
'               es.fec_cierre fecha_cierre,',
'               es.fec_entrega fecha_entrega,',
'               es.antiguedad_dias antiguedad,',
'               es.GARANTIA garantia_ot,',
'               UBICACION ubicacion,',
'               trim(replace(ES.CONDICION, chr(10), ''-'')) condicion,',
'               DEPARTAMENTO Departamento,',
'               CIUDAD Ciudad,',
'               TIPO_CIERRE tipo_ciere,',
'',
'               case when ( (select max(es1.nro_comprobante)',
'                  from vt_ordenes_trabajo es1',
'                 where es1.garantia_ot = es.numero_garantia',
'                   and es1.cod_empresa = g.cod_empresa',
'                   and es1.cod_articulo = es.cod_articulo',
'                   and es1.fec_comprobante > es.fec_comprobante)) is not null then ',
'                   (select   es2.nro_sol_conf',
'                   from estado_ord_trabajo es2 ',
'                   where es2.numero_garantia = es.numero_garantia',
'                   and es2.cod_articulo = es.cod_articulo',
'                   and  es2.nro_comprobante in (',
'                   ( (select max(es1.nro_comprobante)',
'                  from vt_ordenes_trabajo es1',
'                 where es1.garantia_ot = es.numero_garantia',
'                   and es1.cod_empresa = g.cod_empresa',
'                   and es1.cod_articulo = es.cod_articulo',
'                   and es1.fec_comprobante > es.fec_comprobante))))',
'                   ',
'                   else ',
'                   ES.nro_sol_conf',
'                   end SNC,',
'               ',
'               ',
'               ',
'               ''1'',',
'               ES.Ser_Comprobante SER_OT,',
'               ES.nro_comprobante NRO_OT,',
'               cc.usuario,',
'               cc.fecha_carga,',
'               es.numero_garantia,',
'               ES.NOM_CLIENTE,',
'               ES.cod_origen,',
'               case when ( (select max(es1.nro_comprobante)',
'                  from vt_ordenes_trabajo es1',
'                 where es1.garantia_ot = es.numero_garantia',
'                   and es1.cod_empresa = g.cod_empresa',
'                   and es1.cod_articulo = es.cod_articulo',
'                   and es1.fec_comprobante > es.fec_comprobante)) is not null then ',
'                   (select  es2.estado_snc',
'                   from estado_ord_trabajo es2 ',
'                   where es2.numero_garantia = es.numero_garantia',
'                   and es2.cod_articulo = es.cod_articulo',
'                   and  es2.nro_comprobante in (',
'                   ( (select max(es1.nro_comprobante)',
'                  from vt_ordenes_trabajo es1',
'                 where es1.garantia_ot = es.numero_garantia',
'                   and es1.cod_empresa = g.cod_empresa',
'                   and es1.cod_articulo = es.cod_articulo',
'                   and es1.fec_comprobante > es.fec_comprobante))))',
'                   ',
'                   else ',
'                   es.ESTADO_snc ',
'                   end',
'                   ESTADO_snc ,',
'               (select max(es1.nro_comprobante)',
'                  from vt_ordenes_trabajo es1',
'                 where es1.garantia_ot = es.numero_garantia',
'                   and es1.cod_empresa = g.cod_empresa',
'                   and es1.cod_articulo = es.cod_articulo',
'                   and es1.fec_comprobante > es.fec_comprobante) ultima_ot,',
'               ',
'                 CASE',
'                 WHEN ES.tipo_cierre IN',
'                      (''CERRADA SIN REPUESTOS'', ''CERRADA SIN SOLUCION'') AND',
'                      ES.nro_sol_conf IS NOT NULL THEN',
'                  ''RENTA''',
'                  ',
'                 WHEN  TO_NUMBER(TRUNC(SYSDATE)-ES.FEC_CIERRE)>180 AND',
'                      ES.FEC_CIERRE IS NOT NULL  AND ES.NRO_SOL_CONF IS NOT NULL THEN',
'                  ''DONACION''',
'                  ',
'                   WHEN ES.tipo_cierre IN (''CERRADA REPARADA'') AND',
'                      ES.nro_sol_conf IS NOT NULL THEN',
'                  ''OFERTAS''',
'                  ',
'                  ',
'                  ',
'                  when es.cod_origen=''20'' and  ES.tipo_cierre IN',
'                      (''CERRADA SIN REPUESTOS'', ''CERRADA SIN SOLUCION'')  then ''RENTA''',
'                       when es.cod_origen=''20'' and  ES.tipo_cierre IN',
'                      (''CERRADA REPARADA'')  then ''OFERTA''',
'               END RESOLUCION ',
'        ',
'          from st_generacion_inventario     g,',
'               st_generacion_inventario_det gd,',
'               st_articulos                 a,',
'               sucursales                   s,',
'               SM_INVENTARIO_DET            cc,',
'               estado_ord_trabajo           es',
'         where G.cod_empresa = :P562_P_COD_EMPRESA',
'           AND G.TIP_COMPROBANTE = :P562_P_TIP_COMPROBANTE',
'           AND G.SER_COMPROBANTE = :P562_P_SER_COMPROBANTE',
'           and g.nro_comprobante = :P562_P_NRO_COMPROBANTE',
'           and g.cod_empresa = gd.cod_empresa',
'           and g.tip_comprobante = gd.tip_comprobante',
'           and g.ser_comprobante = gd.ser_comprobante',
'           and g.nro_comprobante = gd.nro_comprobante',
'           and G.cod_empresa = s.cod_empresa',
'           and g.cod_sucursal = s.cod_sucursal',
'           and GD.cod_empresa = a.cod_empresa',
'           and GD.cod_articulo = a.cod_articulo',
'           and gd.nro_comprobante = cc.INVENTORY_AREA(+)',
'           AND NVL(INVENTARIOOT, ''N'') = ''S''',
'           and es.TIP_COMPROBANTE = ''ORT''',
'           AND gd.ser_ot || gd.nro_ot = CC.COD_ARTICULO(+)',
'           and gd.ser_ot=es.Ser_Comprobante',
'           and gd.nro_ot=es.nro_comprobante',
'           and g.cod_sucursal   in (''248'')',
'--           AND es.cod_articulo = CC.ITEMID(+)',
'           union all',
'           --248 cph',
'             /* inventario 248*/',
'         select s.descripcion desc_sucursal,',
'               a.cod_encargado,',
'               S.cod_sucursal,',
'               GD.cod_articulo,',
'               a.descripcion desc_art,',
'               1 CANTIDAD_SISTEMA,',
'               nvl(cc.CANTIDAD, '''') C1,',
'              ',
'               nvl(CC.CANTIDAD, '''') CU,',
'               NVL(ROUND(GD.COSTO /',
'                         decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'                   0) COSTO_STOCK,',
'               g.nro_comprobante,',
'               g.sucursal,',
'               a.cod_Art_corto,',
'               GD.NRO_OT,',
'               0  entrada,',
'               ',
'              0 salida,',
'               a.costo_prom,',
'               g.observacion,',
'               ',
'               CC.USUARIO     USUARIO,',
'               CC.FECHA_CARGA HORARIO,',
'               CC.ZONA        ZONA,',
'               ',
'               round(NVL(ROUND(round(a.costo_prom) *',
'                               (SELECT SUM(E.CANTIDAD)',
'                                  FROM SM_INVENTARIO_DET E',
'                                 WHERE g.id_inventury = e.inventory_id',
'                                   and to_char(gd.nro_ot) = e.cod_articulo)',
'                               ',
'                               ),',
'                         0)) COSTO_INVENTARIO,',
'               CC.CANTIDAD CANTIDAD_inventario,',
'               es.ESTADO estado_ot,',
'               es.fec_comprobante fecha_ingreso,',
'               es.fec_cierre fecha_cierre,',
'               es.fec_entrega fecha_entrega,',
'               es.antiguedad_dias antiguedad,',
'               es.GARANTIA garantia_ot,',
'               UBICACION ubicacion,',
'               trim(replace(ES.CONDICION, chr(10), ''-'')) condicion,',
'               DEPARTAMENTO Departamento,',
'               CIUDAD Ciudad,',
'               TIPO_CIERRE tipo_ciere,',
'',
'               case when ( (select max(es1.nro_comprobante)',
'                  from vt_ordenes_trabajo@dblink_cph es1',
'                 where es1.garantia_ot = es.numero_garantia',
'                   and es1.cod_empresa = g.cod_empresa',
'                   and es1.cod_articulo = es.cod_articulo',
'                   and es1.fec_comprobante > es.fec_comprobante)) is not null then ',
'                   (select   es2.nro_sol_conf',
'                   from estado_ord_trabajo@dblink_cph es2 ',
'                   where es2.numero_garantia = es.numero_garantia',
'                   and es2.cod_articulo = es.cod_articulo',
'                   and  es2.nro_comprobante in (',
'                   ( (select max(es1.nro_comprobante)',
'                  from vt_ordenes_trabajo@dblink_cph es1',
'                 where es1.garantia_ot = es.numero_garantia',
'                   and es1.cod_empresa = g.cod_empresa',
'                   and es1.cod_articulo = es.cod_articulo',
'                   and es1.fec_comprobante > es.fec_comprobante))))',
'                   ',
'                   else ',
'                   ES.nro_sol_conf',
'                   end SNC,',
'               ',
'               ',
'               ',
'               ''1'',',
'               ES.Ser_Comprobante SER_OT,',
'               ES.nro_comprobante NRO_OT,',
'               cc.usuario,',
'               cc.fecha_carga,',
'               es.numero_garantia,',
'               ES.NOM_CLIENTE,',
'               ES.cod_origen,',
'               case when ( (select max(es1.nro_comprobante)',
'                  from vt_ordenes_trabajo@dblink_cph es1',
'                 where es1.garantia_ot = es.numero_garantia',
'                   and es1.cod_empresa = g.cod_empresa',
'                   and es1.cod_articulo = es.cod_articulo',
'                   and es1.fec_comprobante > es.fec_comprobante)) is not null then ',
'                   (select  es2.estado_snc',
'                   from estado_ord_trabajo@dblink_cph es2 ',
'                   where es2.numero_garantia = es.numero_garantia',
'                   and es2.cod_articulo = es.cod_articulo',
'                   and  es2.nro_comprobante in (',
'                   ( (select max(es1.nro_comprobante)',
'                  from vt_ordenes_trabajo@dblink_cph es1',
'                 where es1.garantia_ot = es.numero_garantia',
'                   and es1.cod_empresa = g.cod_empresa',
'                   and es1.cod_articulo = es.cod_articulo',
'                   and es1.fec_comprobante > es.fec_comprobante))))',
'                   ',
'                   else ',
'                   es.ESTADO_snc ',
'                   end',
'                   ESTADO_snc ,',
'               (select max(es1.nro_comprobante)',
'                  from vt_ordenes_trabajo@dblink_cph es1',
'                 where es1.garantia_ot = es.numero_garantia',
'                   and es1.cod_empresa = g.cod_empresa',
'                   and es1.cod_articulo = es.cod_articulo',
'                   and es1.fec_comprobante > es.fec_comprobante) ultima_ot,',
'               ',
'                 CASE',
'                 WHEN ES.tipo_cierre IN',
'                      (''CERRADA SIN REPUESTOS'', ''CERRADA SIN SOLUCION'') AND',
'                      ES.nro_sol_conf IS NOT NULL THEN',
'                  ''RENTA''',
'                  ',
'                 WHEN  TO_NUMBER(TRUNC(SYSDATE)-ES.FEC_CIERRE)>180 AND',
'                      ES.FEC_CIERRE IS NOT NULL  AND ES.NRO_SOL_CONF IS NOT NULL THEN',
'                  ''DONACION''',
'                  ',
'                   WHEN ES.tipo_cierre IN (''CERRADA REPARADA'') AND',
'                      ES.nro_sol_conf IS NOT NULL THEN',
'                  ''OFERTAS'' when es.cod_origen=''20'' and  ES.tipo_cierre IN',
'                      (''CERRADA SIN REPUESTOS'', ''CERRADA SIN SOLUCION'')  then ''RENTA''',
'                       when es.cod_origen=''20'' and  ES.tipo_cierre IN',
'                      (''CERRADA REPARADA'')  then ''OFERTA''',
'               END RESOLUCION         ',
'          from st_generacion_inventario     g,',
'               st_generacion_inventario_det gd,',
'               st_articulos@dblink_cph                 a,',
'               sucursales@dblink_cph                   s,',
'               SM_INVENTARIO_DET            cc,',
'               estado_ord_trabajo@dblink_cph           es',
'         where G.cod_empresa = :P562_P_COD_EMPRESA',
'           AND G.TIP_COMPROBANTE = :P562_P_TIP_COMPROBANTE',
'           AND G.SER_COMPROBANTE = :P562_P_SER_COMPROBANTE',
'           and g.nro_comprobante = :P562_P_NRO_COMPROBANTE',
'           and g.cod_empresa = gd.cod_empresa',
'           and g.tip_comprobante = gd.tip_comprobante',
'           and g.ser_comprobante = gd.ser_comprobante',
'           and g.nro_comprobante = gd.nro_comprobante',
'           and G.cod_empresa = s.cod_empresa',
'           and g.cod_sucursal = s.cod_sucursal',
'           and GD.cod_empresa = a.cod_empresa',
'           and GD.cod_articulo = a.cod_articulo',
'           and gd.nro_comprobante = cc.INVENTORY_AREA(+)',
'           AND NVL(INVENTARIOOT, ''N'') = ''S''',
'           and es.TIP_COMPROBANTE = ''ORT''',
'           AND gd.ser_ot || gd.nro_ot = CC.COD_ARTICULO(+)',
'           and gd.ser_ot=es.Ser_Comprobante',
'           and gd.nro_ot=es.nro_comprobante',
'           and g.cod_sucursal   in (''248'')',
'         order by 1, 3 asc)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P562_P_COD_EMPRESA,P562_P_TIP_COMPROBANTE,P562_P_SER_COMPROBANTE,P562_P_NRO_COMPROBANTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'STDIFINVAND_OT'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(179092585534755009)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron registros'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>179092585534755009
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179092650260755010)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Desc Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179092864958755012)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179092979859755013)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179093009582755014)
,p_db_column_name=>'DESC_ART'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Desc Art'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179093107059755015)
,p_db_column_name=>'CANTIDAD_SISTEMA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cantidad Sistema'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179093260801755016)
,p_db_column_name=>'C1'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'C1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179094058141755024)
,p_db_column_name=>'CU'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cu'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179094179027755025)
,p_db_column_name=>'COSTO_STOCK'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Costo Stock'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179094241144755026)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179094312110755027)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179094439828755028)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179094518586755029)
,p_db_column_name=>'NRO_OT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Nro Ot'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179094692701755030)
,p_db_column_name=>'ENTRADA'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Entrada'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179094733991755031)
,p_db_column_name=>'SALIDA'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Salida'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179094806864755032)
,p_db_column_name=>'COSTO_PROM'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Costo Prom'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179094903148755033)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179095096636755034)
,p_db_column_name=>'USUARIO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179095231406755036)
,p_db_column_name=>'ZONA'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Zona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179095315829755037)
,p_db_column_name=>'COSTO_INVENTARIO'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Costo Inventario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179095459167755038)
,p_db_column_name=>'CANTIDAD_INVENTARIO'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Cantidad Inventario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179095529014755039)
,p_db_column_name=>'ESTADO_OT'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Estado Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179095649300755040)
,p_db_column_name=>'FECHA_INGRESO'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Fecha Ingreso'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179095777656755041)
,p_db_column_name=>'FECHA_CIERRE'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Fecha Cierre'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179095817851755042)
,p_db_column_name=>'FECHA_ENTREGA'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Fecha Entrega'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179095907751755043)
,p_db_column_name=>'ANTIGUEDAD'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Antiguedad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179096065830755044)
,p_db_column_name=>'GARANTIA_OT'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Garantia Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179096148145755045)
,p_db_column_name=>'UBICACION'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Ubicacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179096299968755046)
,p_db_column_name=>'CONDICION'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Condicion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179096339103755047)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179096476515755048)
,p_db_column_name=>'CIUDAD'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179096590640755049)
,p_db_column_name=>'TIPO_CIERE'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Tipo Ciere'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(179096630265755050)
,p_db_column_name=>'SNC'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Snc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(187367489929765324)
,p_db_column_name=>'SER_OT'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Ser Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(187367509307765325)
,p_db_column_name=>'HORARIO'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Horario'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(187367690936765326)
,p_db_column_name=>'FEC_CARGA'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Fec Carga'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(187367709649765327)
,p_db_column_name=>'NRO_GARANTIA'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Nro Garantia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(187367858555765328)
,p_db_column_name=>'CLIENTE'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(187367950634765329)
,p_db_column_name=>'ORIGEN'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Origen'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(187368044409765330)
,p_db_column_name=>'ESTADO_SNC'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Estado Snc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(187368164905765331)
,p_db_column_name=>'ULTIMA_OT'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Ultima Ot'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(187368232540765332)
,p_db_column_name=>'RESOLUCION'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Resolucion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(390606279588583019)
,p_db_column_name=>'DIFERENCIA'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Diferencia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(179163121283445030)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1791632'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'NRO_COMPROBANTE:COD_SUCURSAL:SUCURSAL:COD_ART_CORTO:COD_ARTICULO:DESC_ART:CANTIDAD_SISTEMA:CANTIDAD_INVENTARIO:DIFERENCIA:COSTO_INVENTARIO:USUARIO:FEC_CARGA:ZONA:OBSERVACION:SER_OT:NRO_OT:CLIENTE:ORIGEN:ESTADO_OT:FECHA_INGRESO:FECHA_CIERRE:FECHA_ENTR'
||'EGA:NRO_GARANTIA:ANTIGUEDAD:GARANTIA_OT:UBICACION:CONDICION:TIPO_CIERE:ULTIMA_OT:SNC:ESTADO_SNC:COSTO_PROM:RESOLUCION'
,p_sum_columns_on_break=>'CANTIDAD_SISTEMA:DIFERENCIA:CANTIDAD_INVENTARIO'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(394790057095943184)
,p_report_id=>wwv_flow_imp.id(179163121283445030)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DIFERENCIA'
,p_operator=>'<'
,p_expr=>'0'
,p_condition_sql=>' (case when ("DIFERENCIA" < to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# < #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#fd2929'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(394790457784943184)
,p_report_id=>wwv_flow_imp.id(179163121283445030)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DIFERENCIA'
,p_operator=>'>'
,p_expr=>'0'
,p_condition_sql=>' (case when ("DIFERENCIA" > to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#fbff18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(179143455400452801)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(187366682408765316)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(179092454818755008)
,p_button_name=>'Volver'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:556:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-long-arrow-left'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179143552184452802)
,p_name=>'P562_P_COD_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(179143455400452801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179143624528452803)
,p_name=>'P562_P_TIP_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(179143455400452801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179143734661452804)
,p_name=>'P562_P_SER_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(179143455400452801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179143892238452805)
,p_name=>'P562_P_NRO_COMPROBANTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(179143455400452801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
