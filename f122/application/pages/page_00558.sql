prompt --application/pages/page_00558
begin
--   Manifest
--     PAGE: 00558
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
 p_id=>558
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'INVENTARIOS DE ARTICULOS'
,p_alias=>'INVENTARIOS-DE-ARTICULOS'
,p_step_title=>'INVENTARIOS DE ARTICULOS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250127105326'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(178664648472406633)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(179223131768092329)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(178647914917544601)
,p_plug_name=>'PARAMETROS'
,p_parent_plug_id=>wwv_flow_imp.id(179223131768092329)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(178650252441544624)
,p_plug_name=>'STDIVFAVAND'
,p_parent_plug_id=>wwv_flow_imp.id(179223131768092329)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'DESC_SUCURSAL,	COD_ENCARGADO	,COD_SUCURSAL,	COD_ARTICULO,	DESC_ART,	CANTIDAD_SISTEMA	,C1	,C2,	C3,	C4,	C5,	C6,	C7,	C8,	CU,  COSTO_STOCK,',
'  NRO_COMPROBANTE  ,SUCURSAL,  COD_ART_CORTO  ,NRO_OT  ,ENTRADA  SALIDA  ,COSTO_PROM,  OBSERVACION  ,USUARIO  ,HORARIO,  ZONA  ,COSTO_INVENTARIO  ,',
'  CANTIDAD_INVENTARIO  ,OBSERVACION_DETALLE,  CLASIFICACION_REPUESTOS_ABC,  LOTE_1,  LOTE_2,  ORDEN  ,CORRESPONDE_BLOQUE,',
'  cu-CANTIDAD_SISTEMA DIFERENCIA, zona_almacenada,',
'  case when cu-CANTIDAD_SISTEMA>0 THEN ''Diferencia Positiva''',
'   when cu-CANTIDAD_SISTEMA<0 THEN ''Diferencia Negativa''',
'   when cu-CANTIDAD_SISTEMA=0 THEN ''Sin Diferencia''',
'   else ''Sin Conteo Registrado'' end tipo_diferencia, comentario_diferencia observacion_diferencia,',
'   tipo_diferencia tipo_diferencia_cargada,tipo_inventario,area_inventario,ubicacion_inventario,ind_reincidente reincidente,',
'   COSTO_INVENTARIO - (COSTO_STOCK * CANTIDAD_SISTEMA)Diferencia_Monto,',
'    (COSTO_STOCK * CANTIDAD_SISTEMA) total_sistema,COSTO_INVENTARIO total_inventario',
'',
'',
'',
'',
' FROM (  ',
'   select s.descripcion desc_sucursal,',
'       a.cod_encargado,',
'       S.cod_sucursal,',
'       GD.cod_articulo,',
'       a.descripcion desc_art,',
'       GD.CANTIDAD CANTIDAD_SISTEMA,',
'       (cc.conteo1) C1,',
'       (cc.conteo2) C2,',
'       (cc.conteo3) C3,',
'       (cc.conteo4) C4,',
'       (cc.conteo5) C5,',
'       (cc.conteo6) C6,',
'       (cc.conteo7) C7,',
'       (cc.conteo8) C8,',
'       ((nvl(conteo1,',
'                nvl(conteo2,',
'                    nvl(conteo3,',
'                        nvl(conteo4,',
'                            nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))',
'           ) CU,',
' ',
'       NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'           0) COSTO_STOCK,',
' ',
'       g.nro_comprobante,',
'       g.sucursal,',
'       a.cod_Art_corto,',
'       GD.NRO_OT,',
'       0 entrada,',
'       0 salida,',
'       a.costo_prom,',
'       g.observacion',
'',
',',
'',
'       (SELECT MAX(E.USUARIO)',
'          FROM SM_INVENTARIO_DET E',
'         WHERE g.id_inventury = e.inventory_id',
'           and gd.cod_articulo = e.cod_articulo) USUARIO,',
'           ',
'       (SELECT MAX(E.Fecha_Carga)',
'          FROM SM_INVENTARIO_DET E',
'         WHERE g.id_inventury = e.inventory_id',
'           and gd.cod_articulo = e.cod_articulo) HORARIO,',
'       NVL(',
'        F_INVENTARIO_ZONAS(GD.cod_articulo  ,',
'                                          G.id_inventury),',
'       ',
'       (SELECT MAX(E.ZONA)',
'          FROM SM_INVENTARIO_DET E',
'         WHERE g.id_inventury = e.inventory_id',
'           and gd.cod_articulo = e.cod_articulo)) ZONA',
',',
'       round(NVL(ROUND(round(NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'           0)) *                       ',
'                       (SELECT SUM(E.CANTIDAD)',
'                          FROM SM_INVENTARIO_DET E',
'                         WHERE g.id_inventury = e.inventory_id',
'                           and gd.cod_articulo = e.cod_articulo)',
'                       ',
'                       ),',
'                 0)) COSTO_INVENTARIO,',
'       ((nvl(conteo1,',
'                nvl(conteo2,',
'                    nvl(conteo3,',
'                        nvl(conteo4,',
'                            nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))',
'          ) CANTIDAD_inventario, GD.OBSERVACION OBSERVACION_DETALLE, CLASIFICACION_REPUESTOS_ABC ,',
'                (select min(ex.nro_lote)',
'           from st_existencia_art ex',
'           where ex.cod_empresa=a.cod_empresa',
'           and ex.cod_articulo=a.cod_articulo',
'           and ex.cod_sucursal=g.cod_sucursal',
'           and ex.cant_dispon>=0)lote_1,',
'            (select max(ex.nro_lote)',
'           from st_existencia_art ex',
'           where ex.cod_empresa=a.cod_empresa',
'           and ex.cod_articulo=a.cod_articulo',
'           and ex.cod_sucursal=g.cod_sucursal',
'           and ex.cant_dispon>=0)lote_2,''1'' ORDEN,',
'             ubicacion_real(gd.cod_articulo,g.cod_sucursal,null)  zona_almacenada,',
'           NVL((SELECT  ''SI''',
'          FROM SM_INVENTARIO_DET E, ST_POSICIONES P, ST_BLOQUE_PRODUCTOS BL',
'         WHERE g.Nro_Comprobante = e.inventory_id',
'           and gd.cod_articulo = e.cod_articulo',
'                 and e.cod_articulo=bl.cod_articulo',
'           and p.cod_empresa=g.cod_empresa',
'           and p.cod_sucursal=g.cod_sucursal',
'           AND E.ZONA=P.COD_POSICION      ',
'            AND BL.COD_EMPRESA=G.COD_EMPRESA',
'            AND BL.COD_SUCURSAL=G.COD_SUCURSAL',
'            AND BL.COD_BLOQUE=P.COD_BLOQUE',
'            AND BL.COD_SUB_BLOQUE=P.COD_SUB_BLOQUE',
'              and (p.cod_sub_bloque=:P558_P_sub_bloque or :P558_P_sub_bloque is null)',
'            and ( p.cod_bloque= :P558_P_BLOQUE or :P558_P_BLOQUE is null) ',
'             ',
'            AND ROWNUM=1',
'            ) ,''NO'')CORRESPONDE_BLOQUE',
'',
',',
'',
'(select descripcion from CO_TIPO_DIFERENCIA td where cod_tipo_diferencia=gd.tipo_diferencia)tipo_diferencia, ',
'              gd.comentario_diferencia,gd.ind_reincidente,',
'(select descripcion from CO_tipo_inventario ti',
'where ti.cod_empresa= g.cod_empresa',
'and ti.cod_tipo_inventario=g.TIPO_INVENTARIO)tipo_inventario,',
'',
'(select   rh.descripcion from rh_areas rh',
'where rh.cod_empresa= g.COD_EMPRESA',
'and cod_sucursal=''01''',
'and rh.cod_area=g.AREA_RESPONSABLE)area_inventario,',
'(SELECT  DESCRIPCION ',
'FROM CO_ubicacion_inventario ui',
'WHERE ui.COD_EMPRESA = g.COD_EMPRESA',
'and ui.cod_ubicacion=UBICACION_INVENTARIO)ubicacion_inventario ',
'           ',
'             ',
'  from st_generacion_inventario     g,',
'       st_generacion_inventario_det gd,',
'       st_articulos                 a,',
'       sucursales                   s,',
'       st_conteo_inventario         cc ',
' where G.cod_empresa = :p_cod_empresa',
'   AND G.TIP_COMPROBANTE = :P558_P_TIP_COMPROBANTE',
'   AND G.SER_COMPROBANTE = :P558_P_SER_COMPROBANTE',
'   and g.nro_comprobante = :P558_P_NRO_COMPROBANTE',
'     and :P558_EJECUTAR=''S''',
'     and :P558_EJECUTAR_REPORTE_1=''1''',
'   and g.cod_empresa = gd.cod_empresa',
'   and g.tip_comprobante = gd.tip_comprobante',
'   and g.ser_comprobante = gd.ser_comprobante',
'   and g.nro_comprobante = gd.nro_comprobante',
'   and G.cod_empresa = s.cod_empresa',
'   and g.cod_sucursal = s.cod_sucursal',
'   and GD.cod_empresa = a.cod_empresa',
'   and GD.cod_articulo = a.cod_articulo',
'   and gd.cod_empresa = cc.cod_empresa(+)',
'   and gd.tip_comprobante = cc.tip_comprobante(+)',
'   and gd.ser_comprobante = cc.ser_comprobante(+)',
'   and gd.nro_comprobante = cc.nro_comprobante(+)',
'   and gd.cod_articulo = cc.cod_articulo(+)',
'   AND NVL(INVENTARIOOT, ''N'') <> ''S'' ',
' AND gd.COD_ARTICULO IN (SELECT E.COD_ARTICULO',
'          FROM SM_INVENTARIO_DET E, ST_POSICIONES P',
'         WHERE g.id_inventury = e.inventory_id',
'           and gd.cod_articulo = e.cod_articulo',
'           and p.cod_empresa=g.cod_empresa',
'           and p.cod_sucursal=g.cod_sucursal',
'           AND E.ZONA=P.COD_POSICION',
'             and (p.cod_sub_bloque=:P558_P_sub_bloque or :P558_P_sub_bloque is null)',
'            and ( p.cod_bloque= :P558_P_BLOQUE or :P558_P_BLOQUE is null)',
'            union all',
'            select b.cod_articulo ',
'            from     ST_BLOQUE_PRODUCTOS b',
'            where    gd.cod_empresa=b.cod_empresa',
'   and gd.cod_articulo=b.cod_articulo',
'   and g.cod_sucursal=b.cod_sucursal',
'   and ( b.cod_bloque= :P558_P_BLOQUE or :P558_P_BLOQUE is null)',
'   and (b.cod_sub_bloque=:P558_P_sub_bloque or :P558_P_sub_bloque is null)',
'   union ALL ',
'   SELECT ub.cod_articulo ',
'   from st_ubic_articulos ub ',
'   where ub.cod_empresa=gd.cod_empresa ',
'   and ub.cod_sucursal=g.cod_sucursal',
'    and ub.cod_articulo=gd.cod_articulo',
'     and ( ub.cod_bloque= :P558_P_BLOQUE or :P558_P_BLOQUE is null)',
'   and (ub.cod_sub_bloque=:P558_P_sub_bloque or :P558_P_sub_bloque is null)',
'   )  ',
'      and cod_rubro   in (''RE'',''PR'',''MUE'')   ',
'    and (  :P558_P_BLOQUE is not null',
'     or   :P558_P_sub_bloque is not null) ',
'union all',
'select s.descripcion desc_sucursal,',
'       a.cod_encargado,',
'       S.cod_sucursal,',
'       GD.cod_articulo,',
'       a.descripcion desc_art,',
'       GD.CANTIDAD CANTIDAD_SISTEMA,',
'       (cc.conteo1) C1,',
'       (cc.conteo2) C2,',
'       (cc.conteo3) C3,',
'       (cc.conteo4) C4,',
'       (cc.conteo5) C5,',
'       (cc.conteo6) C6,',
'       (cc.conteo7) C7,',
'       (cc.conteo8) C8,',
'       ((nvl(conteo1,',
'                nvl(conteo2,',
'                    nvl(conteo3,',
'                        nvl(conteo4,',
'                            nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))) CU,',
'   ',
'       NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'           0) COSTO_STOCK,',
' ',
'       g.nro_comprobante,',
'       g.sucursal,',
'       a.cod_Art_corto,',
'       GD.NRO_OT,',
'       0 entrada,',
'       0 salida,',
'       a.costo_prom,',
'       g.observacion',
'',
',',
'',
'       NVL((SELECT MAX(E.USUARIO)',
'          FROM SM_INVENTARIO_DET E',
'         WHERE g.id_inventury = e.inventory_id',
'           and gd.cod_articulo = e.cod_articulo),',
'           (SELECT MAX(E.USUARIO)',
'          FROM SM_INVENTARIO_DET E',
'         WHERE g.id_inventury = e.inventory_id',
'           and gd.cod_articulo = e.itemid)) USUARIO,',
'       nvl((SELECT MAX(E.Fecha_Carga)',
'          FROM SM_INVENTARIO_DET E',
'         WHERE g.id_inventury = e.inventory_id',
'           and gd.cod_articulo = e.cod_articulo),',
'           (SELECT MAX(E.Fecha_Carga)',
'          FROM SM_INVENTARIO_DET E',
'         WHERE g.id_inventury = e.inventory_id',
'           and gd.cod_articulo = e.itemid)) HORARIO,',
'  NVL(',
'        F_INVENTARIO_ZONAS(GD.cod_articulo  ,',
'                                          G.id_inventury),',
'       ',
'       NVL((SELECT MAX(E.ZONA)',
'          FROM SM_INVENTARIO_DET E',
'         WHERE g.id_inventury = e.inventory_id',
'           and gd.cod_articulo = e.cod_articulo),',
'           (SELECT MAX(E.ZONA)',
'          FROM SM_INVENTARIO_DET E',
'         WHERE g.id_inventury = e.inventory_id',
'           and gd.cod_articulo = e.itemid)',
'           )',
'           ',
'           ) ZONA',
',',
'       round(NVL(ROUND(round(NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'           0)) *                       ',
'                      ',
'       ',
'        (SELECT SUM(E.CANTIDAD)',
'                          FROM SM_INVENTARIO_DET E',
'                         WHERE g.id_inventury = e.inventory_id',
'                           and gd.cod_articulo = e.cod_articulo)',
'                       ',
'                       ),',
'                 0)) COSTO_INVENTARIO,',
'       ((nvl(conteo1,',
'                nvl(conteo2,',
'                    nvl(conteo3,',
'                        nvl(conteo4,',
'                            nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))',
'           ) CANTIDAD_inventario, GD.OBSERVACION OBSERVACION_DETALLE,CLASIFICACION_REPUESTOS_ABC, ',
'                (select min(ex.nro_lote)',
'           from st_existencia_art ex',
'           where ex.cod_empresa=a.cod_empresa',
'           and ex.cod_articulo=a.cod_articulo',
'           and ex.cod_sucursal=g.cod_sucursal',
'           and ex.cant_dispon>=0)lote_1,',
'            (select max(ex.nro_lote)',
'           from st_existencia_art ex',
'           where ex.cod_empresa=a.cod_empresa',
'           and ex.cod_articulo=a.cod_articulo',
'           and ex.cod_sucursal=g.cod_sucursal',
'           and ex.cant_dispon>=0)lote_2,''2'', ',
'                        ubicacion_real(gd.cod_articulo,g.cod_sucursal,null)  zona_almacenada,',
'            NVL((SELECT  ''SI''',
'          FROM SM_INVENTARIO_DET E, ST_POSICIONES P, ST_BLOQUE_PRODUCTOS BL',
'         WHERE g.Nro_Comprobante = e.inventory_id',
'           and gd.cod_articulo = e.cod_articulo',
'                 and e.cod_articulo=bl.cod_articulo',
'           and p.cod_empresa=g.cod_empresa',
'           and p.cod_sucursal=g.cod_sucursal',
'           AND E.ZONA=P.COD_POSICION      ',
'            AND BL.COD_EMPRESA=G.COD_EMPRESA',
'            AND BL.COD_SUCURSAL=G.COD_SUCURSAL',
'            AND BL.COD_BLOQUE=P.COD_BLOQUE',
'            AND BL.COD_SUB_BLOQUE=P.COD_SUB_BLOQUE',
'              and (p.cod_sub_bloque=:P558_P_sub_bloque or :P558_P_sub_bloque is null)',
'            and ( p.cod_bloque= :P558_P_BLOQUE or :P558_P_BLOQUE is null) ',
'             AND ROWNUM=1',
'            ) ,''NO'')CORRESPONDE_BLOQUE ',
',',
'',
'(select descripcion from CO_TIPO_DIFERENCIA td where cod_tipo_diferencia=gd.tipo_diferencia)tipo_diferencia, ',
'              gd.comentario_diferencia,gd.ind_reincidente,',
'(select descripcion from CO_tipo_inventario ti',
'where ti.cod_empresa= g.cod_empresa',
'and ti.cod_tipo_inventario=g.TIPO_INVENTARIO)tipo_inventario,',
'',
'(select   DESCRIPCION from rh_areas rh',
'where rh.cod_empresa= g.COD_EMPRESA',
'and cod_sucursal=''01''',
'and rh.cod_area=g.AREA_RESPONSABLE)area_inventario,',
'(SELECT  DESCRIPCION ',
'FROM CO_ubicacion_inventario ui',
'WHERE ui.COD_EMPRESA = g.COD_EMPRESA',
'and ui.cod_ubicacion=UBICACION_INVENTARIO)ubicacion_inventario ',
'  from st_generacion_inventario     g,',
'       st_generacion_inventario_det gd,',
'       st_articulos                 a,',
'       sucursales                   s,',
'       st_conteo_inventario         cc',
' where G.cod_empresa = :p_cod_empresa',
'   AND G.TIP_COMPROBANTE = :P558_P_TIP_COMPROBANTE',
'   AND G.SER_COMPROBANTE = :P558_P_SER_COMPROBANTE',
'   and g.nro_comprobante = :P558_P_NRO_COMPROBANTE',
'   and :P558_EJECUTAR=''S''',
'   and :P558_EJECUTAR_REPORTE_1=''1''',
'   and g.cod_empresa = gd.cod_empresa',
'   and g.tip_comprobante = gd.tip_comprobante',
'   and g.ser_comprobante = gd.ser_comprobante',
'   and g.nro_comprobante = gd.nro_comprobante',
'   and G.cod_empresa = s.cod_empresa',
'   and g.cod_sucursal = s.cod_sucursal',
'   and GD.cod_empresa = a.cod_empresa',
'   and GD.cod_articulo = a.cod_articulo',
'   and gd.cod_empresa = cc.cod_empresa(+)',
'   and gd.tip_comprobante = cc.tip_comprobante(+)',
'   and gd.ser_comprobante = cc.ser_comprobante(+)',
'   and gd.nro_comprobante = cc.nro_comprobante(+)',
'   and gd.cod_articulo = cc.cod_articulo(+)   ',
'   and   :P558_P_BLOQUE is null',
'   and  :P558_P_sub_bloque is null',
'   and (gd.cod_articulo=:P558_P_COD_ARTICULO_HAS or :P558_P_COD_ARTICULO_HAS is null) ',
'',
'UNION ALL',
'/* BESTHOME*/',
'',
'select s.descripcion desc_sucursal,',
'       a.cod_encargado,',
'       S.cod_sucursal,',
'       GD.cod_articulo,',
'       a.descripcion desc_art,',
'       GD.CANTIDAD CANTIDAD_SISTEMA,',
'       (cc.conteo1) C1,',
'       (cc.conteo2) C2,',
'       (cc.conteo3) C3,',
'       (cc.conteo4) C4,',
'       (cc.conteo5) C5,',
'       (cc.conteo6) C6,',
'       (cc.conteo7) C7,',
'       (cc.conteo8) C8,',
'       ((nvl(conteo1,',
'                nvl(conteo2,',
'                    nvl(conteo3,',
'                        nvl(conteo4,',
'                            nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))) CU,',
'     nvl(a.costo_prom,0) COSTO_STOCK,',
' ',
'       g.nro_comprobante,',
'       g.sucursal,',
'       a.cod_Art_corto,',
'       GD.NRO_OT,',
'       0 entrada,',
'       0 salida,',
'       a.costo_prom,',
'       g.observacion',
'',
',',
'',
'      F_INVENTARIO_ZONAS(GD.cod_articulo  ,',
'                                          G.id_inventury,''USUARIO'')  USUARIO,',
'      ',
'  (SELECT MAX(E.Fecha_Carga)',
'          FROM SM_INVENTARIO_DET E',
'         WHERE g.id_inventury = e.inventory_id',
'           and gd.cod_articulo = e.cod_articulo)  HORARIO,',
'  ',
'          F_INVENTARIO_ZONAS(GD.cod_articulo  ,',
'                                          G.id_inventury) ZONA',
',',
'       round(NVL(ROUND(round(NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'           0)) *                       ',
'                      ',
'       ',
'        (SELECT SUM(E.CANTIDAD)',
'                          FROM SM_INVENTARIO_DET E',
'                         WHERE g.id_inventury = e.inventory_id',
'                           and gd.cod_articulo = e.cod_articulo)',
'                       ',
'                       ),',
'                 0)) COSTO_INVENTARIO,',
'       ((nvl(conteo1,',
'                nvl(conteo2,',
'                    nvl(conteo3,',
'                        nvl(conteo4,',
'                            nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))',
'           ) CANTIDAD_inventario, GD.OBSERVACION OBSERVACION_DETALLE,CLASIFICACION_REPUESTOS_ABC, ',
'                null lote_1,',
'            null lote_2,''2'', ',
'                        ubicacion_real(gd.cod_articulo,g.cod_sucursal,null)  zona_almacenada,',
'            NVL((SELECT  ''SI''',
'          FROM SM_INVENTARIO_DET E, ST_POSICIONES P, ST_BLOQUE_PRODUCTOS BL',
'         WHERE g.Nro_Comprobante = e.inventory_id',
'           and gd.cod_articulo = e.cod_articulo',
'                 and e.cod_articulo=bl.cod_articulo',
'           and p.cod_empresa=g.cod_empresa',
'           and p.cod_sucursal=g.cod_sucursal',
'           AND E.ZONA=P.COD_POSICION      ',
'            AND BL.COD_EMPRESA=G.COD_EMPRESA',
'            AND BL.COD_SUCURSAL=G.COD_SUCURSAL',
'            AND BL.COD_BLOQUE=P.COD_BLOQUE',
'            AND BL.COD_SUB_BLOQUE=P.COD_SUB_BLOQUE',
'              and (p.cod_sub_bloque=:P558_P_sub_bloque or :P558_P_sub_bloque is null)',
'            and ( p.cod_bloque= :P558_P_BLOQUE or :P558_P_BLOQUE is null) ',
'             AND ROWNUM=1',
'            ) ,''NO'')CORRESPONDE_BLOQUE ',
',',
'',
'(select descripcion from CO_TIPO_DIFERENCIA td where cod_tipo_diferencia=gd.tipo_diferencia)tipo_diferencia, ',
'              gd.comentario_diferencia,gd.ind_reincidente,',
'(select descripcion from CO_tipo_inventario ti',
'where ti.cod_empresa= g.cod_empresa',
'and ti.cod_tipo_inventario=g.TIPO_INVENTARIO)tipo_inventario,',
'',
'(select   DESCRIPCION from rh_areas rh',
'where rh.cod_empresa= g.COD_EMPRESA',
'and cod_sucursal=''01''',
'and rh.cod_area=g.AREA_RESPONSABLE)area_inventario,',
'(SELECT  DESCRIPCION ',
'FROM CO_ubicacion_inventario ui',
'WHERE ui.COD_EMPRESA = g.COD_EMPRESA',
'and ui.cod_ubicacion=UBICACION_INVENTARIO)ubicacion_inventario ',
'  from st_generacion_inventario     g,',
'       st_generacion_inventario_det gd,',
'       st_articulos                 a,',
'       sucursales                   s,',
'       st_conteo_inventario         cc',
' where G.cod_empresa= :P_COD_EMPRESA',
'   AND G.TIP_COMPROBANTE = :P558_P_TIP_COMPROBANTE',
'   AND G.SER_COMPROBANTE = :P558_P_SER_COMPROBANTE',
'   and g.nro_comprobante = :P558_P_NRO_COMPROBANTE',
'   and :P558_EJECUTAR=''S''',
'   and :P558_EJECUTAR_REPORTE_1=''1''',
'   and g.cod_empresa = gd.cod_empresa',
'   and g.tip_comprobante = gd.tip_comprobante',
'   and g.ser_comprobante = gd.ser_comprobante',
'   and g.nro_comprobante = gd.nro_comprobante',
'   and ''18'' = s.cod_empresa',
'   and g.cod_sucursal = s.cod_sucursal',
'   and ''18'' = a.cod_empresa',
'   and GD.cod_articulo = a.cod_articulo',
'   and gd.cod_empresa = cc.cod_empresa(+)',
'   and gd.tip_comprobante = cc.tip_comprobante(+)',
'   and gd.ser_comprobante = cc.ser_comprobante(+)',
'   and gd.nro_comprobante = cc.nro_comprobante(+)',
'   and gd.cod_articulo = cc.cod_articulo(+)   ',
'   and   :P558_P_BLOQUE is null',
'   and  :P558_P_sub_bloque is null',
'   and (gd.cod_articulo=:P558_P_COD_ARTICULO_HAS or :P558_P_COD_ARTICULO_HAS is null) ',
'   union all  ',
'   select s.descripcion desc_sucursal,',
'       a.cod_encargado,',
'       S.cod_sucursal,',
'       GD.cod_articulo,',
'       a.descripcion desc_art,',
'       GD.CANTIDAD CANTIDAD_SISTEMA,',
'       (cc.conteo1) C1,',
'       (cc.conteo2) C2,',
'       (cc.conteo3) C3,',
'       (cc.conteo4) C4,',
'       (cc.conteo5) C5,',
'       (cc.conteo6) C6,',
'       (cc.conteo7) C7,',
'       (cc.conteo8) C8,',
'       ((nvl(conteo1,',
'                nvl(conteo2,',
'                    nvl(conteo3,',
'                        nvl(conteo4,',
'                            nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))',
'           ) CU,',
' ',
' NVL(ROUND(a.COSTO_prom  ),',
'           0) COSTO_STOCK, ',
'       g.nro_comprobante,',
'       g.sucursal,',
'       a.cod_Art_corto,',
'       GD.NRO_OT,',
'       0 entrada,',
'       0 salida,',
'       a.costo_prom,',
'       g.observacion',
'',
',',
'',
'       (SELECT MAX(E.USUARIO)',
'          FROM SM_INVENTARIO_DET E',
'         WHERE g.id_inventury = e.inventory_id',
'           and gd.cod_articulo = e.cod_articulo) USUARIO,',
'           ',
'       (SELECT MAX(E.Fecha_Carga)',
'          FROM SM_INVENTARIO_DET E',
'         WHERE g.id_inventury = e.inventory_id',
'           and gd.cod_articulo = e.cod_articulo) HORARIO,',
'       ',
'            F_INVENTARIO_ZONAS(GD.cod_articulo  ,',
'                                          G.id_inventury) ZONA',
',',
'       round(NVL(ROUND(round(NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'           0)) *                       ',
'                       (SELECT SUM(E.CANTIDAD)',
'                          FROM SM_INVENTARIO_DET E',
'                         WHERE g.id_inventury = e.inventory_id',
'                           and gd.cod_articulo = e.cod_articulo)',
'                       ',
'                       ),',
'                 0)) COSTO_INVENTARIO,',
'       ((nvl(conteo1,',
'                nvl(conteo2,',
'                    nvl(conteo3,',
'                        nvl(conteo4,',
'                            nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))',
'          ) CANTIDAD_inventario, GD.OBSERVACION OBSERVACION_DETALLE, CLASIFICACION_REPUESTOS_ABC ,',
'                null lote_1,',
'            null lote_2,''1'' ORDEN,',
'             ubicacion_real(gd.cod_articulo,g.cod_sucursal,null)  zona_almacenada,',
'           NVL((SELECT  ''SI''',
'          FROM SM_INVENTARIO_DET E, ST_POSICIONES P, ST_BLOQUE_PRODUCTOS BL',
'         WHERE g.Nro_Comprobante = e.inventory_id',
'           and gd.cod_articulo = e.cod_articulo',
'                 and e.cod_articulo=bl.cod_articulo',
'           and p.cod_empresa=''18''',
'           and p.cod_sucursal=g.cod_sucursal',
'           AND E.ZONA=P.COD_POSICION      ',
'            AND BL.COD_EMPRESA=''18''',
'            AND BL.COD_SUCURSAL=G.COD_SUCURSAL',
'            AND BL.COD_BLOQUE=P.COD_BLOQUE',
'            AND BL.COD_SUB_BLOQUE=P.COD_SUB_BLOQUE',
'              and (p.cod_sub_bloque=:P558_P_sub_bloque or :P558_P_sub_bloque is null)',
'            and ( p.cod_bloque= :P558_P_BLOQUE or :P558_P_BLOQUE is null) ',
'             ',
'            AND ROWNUM=1',
'            ) ,''NO'')CORRESPONDE_BLOQUE',
',',
'',
'(select descripcion from CO_TIPO_DIFERENCIA td where cod_tipo_diferencia=gd.tipo_diferencia)tipo_diferencia, ',
'              gd.comentario_diferencia,gd.ind_reincidente,',
'(select descripcion from CO_tipo_inventario ti',
'where ti.cod_empresa= g.cod_empresa',
'and ti.cod_tipo_inventario=g.TIPO_INVENTARIO)tipo_inventario,',
'',
'(select   DESCRIPCION from rh_areas rh',
'where rh.cod_empresa= g.COD_EMPRESA',
'and cod_sucursal=''01''',
'and rh.cod_area=g.AREA_RESPONSABLE)area_inventario,',
'(SELECT  DESCRIPCION ',
'FROM CO_ubicacion_inventario ui',
'WHERE ui.COD_EMPRESA = g.COD_EMPRESA',
'and ui.cod_ubicacion=UBICACION_INVENTARIO)ubicacion_inventario ',
'           ',
'             ',
'  from st_generacion_inventario     g,',
'       st_generacion_inventario_det gd,',
'       st_articulos                 a,',
'       sucursales                   s,',
'       st_conteo_inventario         cc ',
' where G.cod_empresa   IN (''1'' )',
'   AND G.TIP_COMPROBANTE = :P558_P_TIP_COMPROBANTE',
'   AND G.SER_COMPROBANTE = :P558_P_SER_COMPROBANTE',
'   and g.nro_comprobante = :P558_P_NRO_COMPROBANTE',
'     and :P558_EJECUTAR=''S''',
'     and :P558_EJECUTAR_REPORTE_1=''1''',
'   and g.cod_empresa = gd.cod_empresa',
'   and g.tip_comprobante = gd.tip_comprobante',
'   and g.ser_comprobante = gd.ser_comprobante',
'   and g.nro_comprobante = gd.nro_comprobante',
'   and ''18''= s.cod_empresa',
'   and g.cod_sucursal = s.cod_sucursal',
'   and ind_inventario_cph=''B''',
'   and ''18''= a.cod_empresa',
'   and GD.cod_articulo = a.cod_articulo',
'   and gd.cod_empresa = cc.cod_empresa(+)',
'   and gd.tip_comprobante = cc.tip_comprobante(+)',
'   and gd.ser_comprobante = cc.ser_comprobante(+)',
'   and gd.nro_comprobante = cc.nro_comprobante(+)',
'   and gd.cod_articulo = cc.cod_articulo(+)',
'   --AND NVL(INVENTARIOOT, ''N'') <> ''S'' ',
' AND gd.COD_ARTICULO IN (SELECT E.COD_ARTICULO',
'          FROM SM_INVENTARIO_DET E, ST_POSICIONES P',
'         WHERE g.id_inventury = e.inventory_id',
'           and gd.cod_articulo = e.cod_articulo',
'           and p.cod_empresa=''18''',
'           and p.cod_sucursal=g.cod_sucursal',
'           AND E.ZONA=P.COD_POSICION',
'             and (p.cod_sub_bloque=:P558_P_sub_bloque or :P558_P_sub_bloque is null)',
'            and ( p.cod_bloque= :P558_P_BLOQUE or :P558_P_BLOQUE is null)',
'            union all',
'            select b.cod_articulo ',
'            from     ST_BLOQUE_PRODUCTOS b',
'            where    ''18''=b.cod_empresa',
'   and gd.cod_articulo=b.cod_articulo',
'   and g.cod_sucursal=b.cod_sucursal',
'   and ( b.cod_bloque= :P558_P_BLOQUE or :P558_P_BLOQUE is null)',
'   and (b.cod_sub_bloque=:P558_P_sub_bloque or :P558_P_sub_bloque is null)',
'   union ALL ',
'   SELECT ub.cod_articulo ',
'   from st_ubic_articulos ub ',
'   where ub.cod_empresa=''18''',
'   and ub.cod_sucursal=g.cod_sucursal',
'    and ub.cod_articulo=gd.cod_articulo',
'     and ( ub.cod_bloque= :P558_P_BLOQUE or :P558_P_BLOQUE is null)',
'   and (ub.cod_sub_bloque=:P558_P_sub_bloque or :P558_P_sub_bloque is null)',
'   )  ',
'      ',
'    and (  :P558_P_BLOQUE is not null',
'     or   :P558_P_sub_bloque is not null) ',
'',
' order by 1, 3 asc',
')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P558_P_COD_ARTICULO,P558_P_BLOQUE,P558_P_SUB_BLOQUE,P558_P_NRO_COMPROBANTE,P558_P_COD_EMPRESA,P558_P_SER_COMPROBANTE,P558_P_TIP_COMPROBANTE,P558_EJECUTAR_REPORTE_1'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P558_EJECUTAR_REPORTE_1'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'STDIVFAVAND'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(178650525951544627)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron registros.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>178650525951544627
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178650610074544628)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Desc Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178650797302544629)
,p_db_column_name=>'COD_ENCARGADO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Encargado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178650898300544630)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178650950464544631)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178651019450544632)
,p_db_column_name=>'DESC_ART'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Desc Art'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178651120745544633)
,p_db_column_name=>'CANTIDAD_SISTEMA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cantidad Sistema'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178651283074544634)
,p_db_column_name=>'C1'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'C1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178651390932544635)
,p_db_column_name=>'C2'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'C2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178651417242544636)
,p_db_column_name=>'C3'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'C3'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178651554370544637)
,p_db_column_name=>'C4'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'C4'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178651640300544638)
,p_db_column_name=>'C5'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'C5'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178651774043544639)
,p_db_column_name=>'C6'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'C6'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178651897425544640)
,p_db_column_name=>'C7'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'C7'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178651944835544641)
,p_db_column_name=>'C8'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'C8'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178652018829544642)
,p_db_column_name=>'CU'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cu'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178652138620544643)
,p_db_column_name=>'COSTO_STOCK'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Costo Unitario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178652286371544644)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178652348085544645)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178652472337544646)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178652732382544649)
,p_db_column_name=>'SALIDA'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Salida'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178652860165544650)
,p_db_column_name=>'COSTO_PROM'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Costo Prom'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178661473734406601)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178661598855406602)
,p_db_column_name=>'USUARIO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178661790357406604)
,p_db_column_name=>'ZONA'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Zona Inventariada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178661823093406605)
,p_db_column_name=>'COSTO_INVENTARIO'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Costo Inventario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178661969015406606)
,p_db_column_name=>'CANTIDAD_INVENTARIO'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Cantidad Inventario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178662063906406607)
,p_db_column_name=>'OBSERVACION_DETALLE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Observacion Detalle'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178662196255406608)
,p_db_column_name=>'CLASIFICACION_REPUESTOS_ABC'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Clasificacion Repuestos Abc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178662391612406610)
,p_db_column_name=>'NRO_OT'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Nro Ot'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178664334500406630)
,p_db_column_name=>'LOTE_1'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Lote 1'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(178664473982406631)
,p_db_column_name=>'LOTE_2'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Lote 2'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186565728390242621)
,p_db_column_name=>'HORARIO'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Horario'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186565902485242623)
,p_db_column_name=>'CORRESPONDE_BLOQUE'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Corresponde Bloque'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186566017351242624)
,p_db_column_name=>'DIFERENCIA'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Diferencia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(187366253675765312)
,p_db_column_name=>'ORDEN'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Orden'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245895072117347505)
,p_db_column_name=>'ZONA_ALMACENADA'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Zona Almacenada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(251380080087991413)
,p_db_column_name=>'TIPO_DIFERENCIA'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Tipo Diferencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(251380110262991414)
,p_db_column_name=>'OBSERVACION_DIFERENCIA'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'Observacion Diferencia'
,p_column_link=>'javascript:$s(''P558_COD_ARTICULO_ID'',''#COD_ARTICULO#'');'
,p_column_linktext=>'<span class="t-Icon fa fa-plus-square delete-note" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare vabierto varchar2(100);',
'begin',
'select fecha_cierre into vabierto from st_generacion_inventario where cod_empresa=:p_cod_empresa and nro_comprobante = :P558_P_NRO_COMPROBANTE;',
'if vabierto is not null then',
'return false;',
'else return true;',
'end if;',
'exception ',
'when others then null;',
'end;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40873856863631321)
,p_db_column_name=>'TIPO_DIFERENCIA_CARGADA'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Tipo Diferencia Cargada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40873948274631322)
,p_db_column_name=>'TIPO_INVENTARIO'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Tipo Inventario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40874098814631323)
,p_db_column_name=>'AREA_INVENTARIO'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Area Inventario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40874143939631324)
,p_db_column_name=>'UBICACION_INVENTARIO'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'Ubicacion Inventario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40874269651631325)
,p_db_column_name=>'REINCIDENTE'
,p_display_order=>670
,p_column_identifier=>'BO'
,p_column_label=>'Reincidente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(963953687448292733)
,p_db_column_name=>'DIFERENCIA_MONTO'
,p_display_order=>680
,p_column_identifier=>'BP'
,p_column_label=>'Diferencia Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(963953784686292734)
,p_db_column_name=>'TOTAL_SISTEMA'
,p_display_order=>690
,p_column_identifier=>'BQ'
,p_column_label=>'Total Sistema Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(963953801099292735)
,p_db_column_name=>'TOTAL_INVENTARIO'
,p_display_order=>700
,p_column_identifier=>'BR'
,p_column_label=>'Total Inventario Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(178685587651329149)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1786856'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'COD_SUCURSAL:SUCURSAL:NRO_COMPROBANTE:COD_ART_CORTO:COD_ARTICULO:DESC_ART:CANTIDAD_SISTEMA:CANTIDAD_INVENTARIO:DIFERENCIA:COSTO_STOCK:TOTAL_SISTEMA:TOTAL_INVENTARIO:DIFERENCIA_MONTO:USUARIO:ZONA:ZONA_ALMACENADA:HORARIO:CORRESPONDE_BLOQUE:OBSERVACION_'
||'DIFERENCIA:TIPO_DIFERENCIA:TIPO_DIFERENCIA_CARGADA:TIPO_INVENTARIO:UBICACION_INVENTARIO:AREA_INVENTARIO:REINCIDENTE:'
,p_sum_columns_on_break=>'CANTIDAD_SISTEMA:CANTIDAD_INVENTARIO'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(1002576189397075662)
,p_report_id=>wwv_flow_imp.id(178685587651329149)
,p_name=>'Sin Conteo'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'CANTIDAD_INVENTARIO'
,p_operator=>'is null'
,p_condition_sql=>' (case when ("CANTIDAD_INVENTARIO" is null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#04eab4'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(1002576592306075662)
,p_report_id=>wwv_flow_imp.id(178685587651329149)
,p_name=>'Diferencia Negativa'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DIFERENCIA'
,p_operator=>'<'
,p_expr=>'0'
,p_condition_sql=>' (case when ("DIFERENCIA" < to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# < #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#fb2c2c'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(1002576987763075663)
,p_report_id=>wwv_flow_imp.id(178685587651329149)
,p_name=>'Diferencia Positiva'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DIFERENCIA'
,p_operator=>'>'
,p_expr=>'0'
,p_condition_sql=>' (case when ("DIFERENCIA" > to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#f8fb37'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(178650462286544626)
,p_plug_name=>'STDIVFAVANDCPH'
,p_parent_plug_id=>wwv_flow_imp.id(179223131768092329)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--showIcon:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'DESC_SUCURSAL,  COD_ENCARGADO ,COD_SUCURSAL,  COD_ARTICULO, DESC_ART, CANTIDAD_SISTEMA  ,C1 ,C2,  C3, C4, C5, C6, C7, C8, CU, COSTO_STOCK,',
'  NRO_COMPROBANTE ,SUCURSAL,  COD_ART_CORTO ,NRO_OT ,ENTRADA  SALIDA  ,COSTO_PROM,  OBSERVACION ,USUARIO  ,HORARIO, ZONA  ,COSTO_INVENTARIO ,',
'  CANTIDAD_INVENTARIO ,       CORRESPONDE_BLOQUE,',
'  CU-CANTIDAD_SISTEMA DIFERENCIA, zona_almacenada,',
'    case when cu-CANTIDAD_SISTEMA>0 THEN ''Diferencia Positiva''',
'   when cu-CANTIDAD_SISTEMA<0 THEN ''Diferencia Negativa''',
'   when cu-CANTIDAD_SISTEMA=0 THEN ''Sin Diferencia''',
'   else ''Sin Conteo Registrado'' end tipo_diferencia,   comentario_diferencia observacion_diferencia,',
'   tipo_diferencia tipo_diferencia_cargada,tipo_inventario,area_inventario,ubicacion_inventario,ind_reincidente reincidente,',
'      COSTO_INVENTARIO - (COSTO_STOCK * CANTIDAD_SISTEMA)Diferencia_Monto,',
'    (COSTO_STOCK * CANTIDAD_SISTEMA) total_sistema,COSTO_INVENTARIO total_inventario',
'  from (select s.descripcion desc_sucursal,',
'       a.cod_encargado,',
'       S.cod_sucursal,',
'       GD.cod_articulo,',
'       a.descripcion desc_art,',
'       GD.CANTIDAD CANTIDAD_SISTEMA,',
'       cc.conteo1 C1,',
'       cc.conteo2 C2,',
'       cc.conteo3 C3,',
'       cc.conteo4 C4,',
'       cc.conteo5 C5,',
'       cc.conteo6 C6,',
'       cc.conteo7 C7,',
'       cc.conteo8 C8,',
'       ((nvl(conteo1,',
'                nvl(conteo2,',
'                    nvl(conteo3,',
'                        nvl(conteo4,',
'                            nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))) CU,',
'       ',
'       NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'           0) COSTO_STOCK,',
'       ',
'       g.nro_comprobante,',
'       g.sucursal,',
'       a.cod_Art_corto,',
'       GD.NRO_OT,',
'       case',
'         when gd.ind_bloquea = ''N'' THEN',
'          cf_saldo_stock_ngo_ent(g.cod_empresa,',
'                                 g.cod_sucursal,',
'                               TO_CHAR(  NVL(G.FECHA_ACTUALIZA,g.fec_comprobante),''DD/MM/YYYY HH24:MI:SS''),',
'                               TO_CHAR(  nvl(g.fecha_cierre, trunc(sysdate)),''DD/MM/YYYY HH24:MI:SS''),',
'                                 gd.cod_articulo)',
'         ELSE',
'          0',
'       END entrada,',
'       case',
'         when gd.ind_bloquea = ''N'' THEN',
'          cf_saldo_stock_ngo_sal(g.cod_empresa,',
'                                 g.cod_sucursal,',
'                                TO_CHAR( NVL(G.FECHA_ACTUALIZA,g.fec_comprobante),''DD/MM/YYYY HH24:MI:SS''),',
'                                 TO_CHAR(nvl(g.fecha_cierre, trunc(sysdate)),''DD/MM/YYYY HH24:MI:SS''),',
'                                 gd.cod_articulo)',
'         ELSE',
'          0',
'       END salida,',
'       a.costo_prom,',
'       g.observacion',
'',
',',
'',
'       (SELECT MAX(E.USUARIO)',
'          FROM SM_INVENTARIO_DET E',
'         WHERE g.nro_comprobante = e.inventory_id',
'           and gd.cod_articulo = e.cod_articulo) USUARIO,',
'       (SELECT MAX(E.HORARIO)',
'          FROM SM_INVENTARIO_DET E',
'         WHERE g.nro_comprobante = e.inventory_id',
'           and gd.cod_articulo = e.cod_articulo) HORARIO,',
'       (SELECT MAX(E.ZONA)',
'          FROM SM_INVENTARIO_DET E',
'         WHERE g.nro_comprobante = e.inventory_id',
'           and gd.cod_articulo = e.cod_articulo) ZONA',
',',
'       round(NVL(ROUND(round(NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'           0)) *                       ',
'                       (SELECT SUM(E.CANTIDAD)',
'                          FROM SM_INVENTARIO_DET E',
'                         WHERE g.nro_comprobante = e.inventory_id',
'                           and gd.cod_articulo = e.cod_articulo)',
'                       ',
'                       ),',
'                 0)) COSTO_INVENTARIO,',
'        ((nvl(conteo1,',
'                nvl(conteo2,',
'                    nvl(conteo3,',
'                        nvl(conteo4,',
'                            nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))',
'           ) CANTIDAD_inventario,',
'            NVL((SELECT  ''SI''',
'          FROM SM_INVENTARIO_DET E, ST_POSICIONES@DBLINK_CPH P, ST_BLOQUE_PRODUCTOS@DBLINK_CPH BL',
'         WHERE g.Nro_Comprobante = e.inventory_id',
'           and gd.cod_articulo = e.cod_articulo',
'                 and e.cod_articulo=bl.cod_articulo',
'           and p.cod_empresa=g.cod_empresa',
'           and p.cod_sucursal=g.cod_sucursal',
'           AND E.ZONA=P.COD_POSICION      ',
'            AND BL.COD_EMPRESA=G.COD_EMPRESA',
'            AND BL.COD_SUCURSAL=G.COD_SUCURSAL',
'            AND BL.COD_BLOQUE=P.COD_BLOQUE',
'            AND BL.COD_SUB_BLOQUE=P.COD_SUB_BLOQUE',
'              and (p.cod_sub_bloque=:P558_P_SUB_BLOQUE or :P558_P_SUB_BLOQUE is null)',
'            and ( p.cod_bloque= :P558_P_BLOQUE or :P558_P_BLOQUE is null) ',
'            AND ROWNUM=1',
'            ) ,''NO'')CORRESPONDE_BLOQUE,',
'              ubicacion_real_cph(gd.cod_articulo,g.cod_sucursal,null)  zona_almacenada,',
'',
'(select descripcion from CO_TIPO_DIFERENCIA td where cod_tipo_diferencia=gd.tipo_diferencia)tipo_diferencia, ',
'              gd.comentario_diferencia,gd.ind_reincidente,',
'(select descripcion from CO_tipo_inventario ti',
'where ti.cod_empresa= g.cod_empresa',
'and ti.cod_tipo_inventario=g.TIPO_INVENTARIO)tipo_inventario,',
'',
'(select    rh.descripcion from rh_areas rh',
'where rh.cod_empresa= g.COD_EMPRESA',
'and cod_sucursal=''01''',
'and rh.cod_area=g.AREA_RESPONSABLE)area_inventario,',
'(SELECT  DESCRIPCION ',
'FROM CO_ubicacion_inventario ui',
'WHERE ui.COD_EMPRESA = g.COD_EMPRESA',
'and ui.cod_ubicacion=UBICACION_INVENTARIO)ubicacion_inventario ',
'',
'',
'  from st_generacion_inventario     g,',
'       st_generacion_inventario_det gd,',
'       v_articulos_cph                 a,',
'       sucursales@dblink_cph                   s,',
'       st_conteo_inventario         cc',
'       ',
' where G.cod_empresa = :P558_P_COD_EMPRESA',
'   AND G.TIP_COMPROBANTE = :P558_P_TIP_COMPROBANTE',
'   AND G.SER_COMPROBANTE = :P558_P_SER_COMPROBANTE',
'   and g.nro_comprobante = :P558_P_NRO_COMPROBANTE',
'     and :P558_EJECUTAR=''S''',
'     and :P558_EJECUTAR_REPORTE_2=''1''',
'   and g.cod_empresa = gd.cod_empresa',
'   and g.tip_comprobante = gd.tip_comprobante',
'   and g.ser_comprobante = gd.ser_comprobante',
'   and g.nro_comprobante = gd.nro_comprobante',
'   and G.cod_empresa = s.cod_empresa',
'   and g.cod_sucursal = s.cod_sucursal',
'   and GD.cod_articulo = a.cod_articulo',
'   and gd.cod_empresa = cc.cod_empresa(+)',
'   and gd.tip_comprobante = cc.tip_comprobante(+)',
'   and gd.ser_comprobante = cc.ser_comprobante(+)',
'   and gd.nro_comprobante = cc.nro_comprobante(+)',
'   and gd.cod_articulo = cc.cod_articulo(+)',
'      AND NVL(G.IND_INVENTARIO_CPH, ''N'') = ''S''',
'  AND gd.COD_ARTICULO IN (SELECT E.COD_ARTICULO',
'          FROM SM_INVENTARIO_DET E, ST_POSICIONES@DBLINK_CPH P',
'         WHERE g.id_inventury = e.inventory_id',
'           and gd.cod_articulo = e.cod_articulo',
'           and p.cod_empresa=g.cod_empresa',
'           and p.cod_sucursal=g.cod_sucursal',
'           AND E.ZONA=P.COD_POSICION',
'             and (p.cod_sub_bloque=:P558_P_SUB_BLOQUE or :P558_P_SUB_BLOQUE is null)',
'            and ( p.cod_bloque= :P558_P_BLOQUE or :P558_P_BLOQUE is null) ',
' union all',
'            select b.cod_articulo ',
'            from     ST_BLOQUE_PRODUCTOS@DBLINK_CPH b',
'            where    gd.cod_empresa=b.cod_empresa',
'   and gd.cod_articulo=b.cod_articulo',
'   and g.cod_sucursal=b.cod_sucursal',
'   and ( b.cod_bloque= :P558_P_BLOQUE or :P558_P_BLOQUE is null)',
'   and (b.cod_sub_bloque=:P558_P_SUB_BLOQUE or :P558_P_SUB_BLOQUE is null) ) ',
' ',
'   and (gd.cod_articulo=:P558_P_COD_ARTICULO or :P558_P_COD_ARTICULO is null)',
'  ',
'       and (  :P558_P_BLOQUE is not null',
'     or   :P558_P_SUB_BLOQUE is not null)',
'   ',
'   ',
'   ',
'---------------------------------------------------------------------------------',
'union all',
'select s.descripcion desc_sucursal,',
'       a.cod_encargado,',
'       S.cod_sucursal,',
'       GD.cod_articulo,',
'       a.descripcion desc_art,',
'       GD.CANTIDAD CANTIDAD_SISTEMA,',
'       cc.conteo1 C1,',
'       cc.conteo2 C2,',
'       cc.conteo3 C3,',
'       cc.conteo4 C4,',
'       cc.conteo5 C5,',
'       cc.conteo6 C6,',
'       cc.conteo7 C7,',
'       cc.conteo8 C8,',
'       ((nvl(conteo1,',
'                nvl(conteo2,',
'                    nvl(conteo3,',
'                        nvl(conteo4,',
'                            nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))',
'           ) CU,',
'       ',
'       NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'           0) COSTO_STOCK,',
'       ',
'       g.nro_comprobante,',
'       g.sucursal,',
'       a.cod_Art_corto,',
'       GD.NRO_OT,',
'       case',
'         when gd.ind_bloquea = ''N'' THEN',
'          cf_saldo_stock_ngo_ent(g.cod_empresa,',
'                                 g.cod_sucursal,',
'                               TO_CHAR(  NVL(G.FECHA_ACTUALIZA,g.fec_comprobante),''DD/MM/YYYY HH24:MI:SS''),',
'                               TO_CHAR(  nvl(g.fecha_cierre, trunc(sysdate)),''DD/MM/YYYY HH24:MI:SS''),',
'                                 gd.cod_articulo)',
'         ELSE',
'          0',
'       END entrada,',
'       case',
'         when gd.ind_bloquea = ''N'' THEN',
'          cf_saldo_stock_ngo_sal(g.cod_empresa,',
'                                 g.cod_sucursal,',
'                                TO_CHAR( NVL(G.FECHA_ACTUALIZA,g.fec_comprobante),''DD/MM/YYYY HH24:MI:SS''),',
'                                 TO_CHAR(nvl(g.fecha_cierre, trunc(sysdate)),''DD/MM/YYYY HH24:MI:SS''),',
'                                 gd.cod_articulo)',
'         ELSE',
'          0',
'       END salida,',
'       a.costo_prom,',
'       g.observacion',
'',
',',
'',
'       (SELECT MAX(E.USUARIO)',
'          FROM SM_INVENTARIO_DET E',
'         WHERE g.nro_comprobante = e.inventory_id',
'           and gd.cod_articulo = e.cod_articulo) USUARIO,',
'       (SELECT MAX(E.HORARIO)',
'          FROM SM_INVENTARIO_DET E',
'         WHERE g.nro_comprobante = e.inventory_id',
'           and gd.cod_articulo = e.cod_articulo) HORARIO,',
'       (SELECT MAX(E.ZONA)',
'          FROM SM_INVENTARIO_DET E',
'         WHERE g.nro_comprobante = e.inventory_id',
'           and gd.cod_articulo = e.cod_articulo) ZONA',
',',
'       round(NVL(ROUND(round(NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'           0)) *                       ',
'                       (SELECT SUM(E.CANTIDAD)',
'                          FROM SM_INVENTARIO_DET E',
'                         WHERE g.nro_comprobante = e.inventory_id',
'                           and gd.cod_articulo = e.cod_articulo)',
'                       ',
'                       ),',
'                 0)) COSTO_INVENTARIO,',
'       ((nvl(conteo1,',
'                nvl(conteo2,',
'                    nvl(conteo3,',
'                        nvl(conteo4,',
'                            nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))',
'           ) CANTIDAD_inventario,NULL CORRESPONDE_BLOQUE,ubicacion_real_cph(gd.cod_articulo,g.cod_sucursal,null)  zona_almacenada,',
'',
'(select descripcion from CO_TIPO_DIFERENCIA td where cod_tipo_diferencia=gd.tipo_diferencia)tipo_diferencia, ',
'              gd.comentario_diferencia,gd.ind_reincidente,',
'(select descripcion from CO_tipo_inventario ti',
'where ti.cod_empresa= g.cod_empresa',
'and ti.cod_tipo_inventario=g.TIPO_INVENTARIO)tipo_inventario,',
'',
'(select    rh.descripcion from rh_areas rh',
'where rh.cod_empresa= g.COD_EMPRESA',
'and cod_sucursal=''01''',
'and rh.cod_area=g.AREA_RESPONSABLE)area_inventario,',
'(SELECT  DESCRIPCION ',
'FROM CO_ubicacion_inventario ui',
'WHERE ui.COD_EMPRESA = g.COD_EMPRESA',
'and ui.cod_ubicacion=UBICACION_INVENTARIO)ubicacion_inventario ',
'  from st_generacion_inventario     g,',
'       st_generacion_inventario_det gd,',
'       V_ARTICULOS_CPH                 a,',
'       sucursales@DBLINK_CPH                   s,',
'       st_conteo_inventario         cc',
' where G.cod_empresa = :P558_P_COD_EMPRESA',
'   AND G.TIP_COMPROBANTE = :P558_P_TIP_COMPROBANTE',
'   AND G.SER_COMPROBANTE = :P558_P_SER_COMPROBANTE',
'   and g.nro_comprobante = :P558_P_NRO_COMPROBANTE',
'     and :P558_EJECUTAR=''S''',
'     and :P558_EJECUTAR_REPORTE_2=''1''',
'   and g.cod_empresa = gd.cod_empresa',
'   and g.tip_comprobante = gd.tip_comprobante',
'   and g.ser_comprobante = gd.ser_comprobante',
'   and g.nro_comprobante = gd.nro_comprobante',
'   and G.cod_empresa = s.cod_empresa',
'   and g.cod_sucursal = s.cod_sucursal',
'   and GD.cod_articulo = a.cod_articulo',
'   and gd.cod_empresa = cc.cod_empresa(+)',
'   and gd.tip_comprobante = cc.tip_comprobante(+)',
'   and gd.ser_comprobante = cc.ser_comprobante(+)',
'   and gd.nro_comprobante = cc.nro_comprobante(+)',
'   and gd.cod_articulo = cc.cod_articulo(+)',
'   AND NVL(G.IND_INVENTARIO_CPH, ''N'') = ''S''',
'  ',
'   and   :P558_P_BLOQUE is null',
'   and  :P558_P_SUB_BLOQUE is null',
'   and (gd.cod_articulo=:P558_P_COD_ARTICULO or :P558_P_COD_ARTICULO is null)',
'',
'',
' order by 1, 3 asc',
')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P558_P_COD_ARTICULO,P558_P_BLOQUE,P558_P_SUB_BLOQUE,P558_P_NRO_COMPROBANTE,P558_P_COD_EMPRESA,P558_P_SER_COMPROBANTE,P558_P_TIP_COMPROBANTE,P558_EJECUTAR_REPORTE_2'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P558_EJECUTAR_REPORTE_2'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'STDIVFAVANDCPH'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(178664533223406632)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron registros.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>178664533223406632
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186566296511242626)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Desc Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186566306182242627)
,p_db_column_name=>'COD_ENCARGADO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Encargado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186566439953242628)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186566504287242629)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186566689995242630)
,p_db_column_name=>'DESC_ART'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Desc Art'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186566752619242631)
,p_db_column_name=>'CANTIDAD_SISTEMA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cantidad Sistema'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186566802452242632)
,p_db_column_name=>'C1'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'C1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186566995866242633)
,p_db_column_name=>'C2'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'C2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186567077639242634)
,p_db_column_name=>'C3'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'C3'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186567150854242635)
,p_db_column_name=>'C4'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'C4'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186567201309242636)
,p_db_column_name=>'C5'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'C5'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186567397407242637)
,p_db_column_name=>'C6'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'C6'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186567466950242638)
,p_db_column_name=>'C7'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'C7'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186567512206242639)
,p_db_column_name=>'C8'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'C8'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186567606275242640)
,p_db_column_name=>'CU'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cu'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186567786823242641)
,p_db_column_name=>'COSTO_STOCK'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Costo Unitario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186567884859242642)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186567971364242643)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186568046669242644)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186568160601242645)
,p_db_column_name=>'NRO_OT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Nro Ot'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186568386880242647)
,p_db_column_name=>'SALIDA'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Salida'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186568482619242648)
,p_db_column_name=>'COSTO_PROM'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Costo Prom'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186568548190242649)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(186568626410242650)
,p_db_column_name=>'USUARIO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(187365100814765301)
,p_db_column_name=>'HORARIO'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Horario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(187365210638765302)
,p_db_column_name=>'ZONA'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Zona Inventariada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(187365341505765303)
,p_db_column_name=>'COSTO_INVENTARIO'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Costo Inventario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(187365471710765304)
,p_db_column_name=>'CANTIDAD_INVENTARIO'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Cantidad Inventario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(187366378607765313)
,p_db_column_name=>'CORRESPONDE_BLOQUE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Corresponde Bloque'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(187366445607765314)
,p_db_column_name=>'DIFERENCIA'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Diferencia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245895192707347506)
,p_db_column_name=>'ZONA_ALMACENADA'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Zona Almacenada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(251382394181991436)
,p_db_column_name=>'TIPO_DIFERENCIA'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Tipo Diferencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(251382448094991437)
,p_db_column_name=>'OBSERVACION_DIFERENCIA'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Observacion Diferencia'
,p_column_link=>'javascript:$s(''P558_COD_ARTICULO_ID'',''#COD_ARTICULO#'');'
,p_column_linktext=>'<span class="t-Icon fa fa-plus-square delete-note" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare vabierto varchar2(100);',
'begin',
'select fecha_cierre into vabierto from st_generacion_inventario where cod_empresa=:p_cod_empresa and nro_comprobante = :P558_P_NRO_COMPROBANTE;',
'if vabierto is not null then',
'return false;',
'else return true;',
'end if;',
'exception ',
'when others then null;',
'end;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40873096761631313)
,p_db_column_name=>'TIPO_DIFERENCIA_CARGADA'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Tipo Diferencia Cargada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40873143514631314)
,p_db_column_name=>'TIPO_INVENTARIO'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Tipo Inventario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40873200055631315)
,p_db_column_name=>'AREA_INVENTARIO'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Area Inventario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40873342592631316)
,p_db_column_name=>'UBICACION_INVENTARIO'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Ubicacion Inventario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40874343928631326)
,p_db_column_name=>'REINCIDENTE'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Reincidente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(963953904023292736)
,p_db_column_name=>'DIFERENCIA_MONTO'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Diferencia Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(963954090810292737)
,p_db_column_name=>'TOTAL_SISTEMA'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Total Sistema Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(963954143626292738)
,p_db_column_name=>'TOTAL_INVENTARIO'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Total Inventario Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(187645332480330475)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1876454'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'COD_SUCURSAL:SUCURSAL:NRO_COMPROBANTE:COD_ART_CORTO:COD_ARTICULO:DESC_ART:CANTIDAD_SISTEMA:CANTIDAD_INVENTARIO:DIFERENCIA:COSTO_STOCK:TOTAL_SISTEMA:TOTAL_INVENTARIO:DIFERENCIA_MONTO:USUARIO:HORARIO:ZONA:ZONA_ALMACENADA:TIPO_DIFERENCIA:OBSERVACION_DIF'
||'ERENCIA:OBSERVACION:AREA_INVENTARIO:TIPO_DIFERENCIA_CARGADA:TIPO_INVENTARIO:UBICACION_INVENTARIO:REINCIDENTE:'
,p_sum_columns_on_break=>'CANTIDAD_SISTEMA:CANTIDAD_INVENTARIO:COSTO_STOCK:COSTO_INVENTARIO:DIFERENCIA:DIFERENCIA_MONTO:TOTAL_INVENTARIO:TOTAL_SISTEMA'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(1003070909463031643)
,p_report_id=>wwv_flow_imp.id(187645332480330475)
,p_name=>'Sin Conteo'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'CANTIDAD_INVENTARIO'
,p_operator=>'is null'
,p_expr=>'is n'
,p_condition_sql=>' (case when ("CANTIDAD_INVENTARIO" is null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#04eab4'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(1003071330435031644)
,p_report_id=>wwv_flow_imp.id(187645332480330475)
,p_name=>'Diferencia Negativa'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DIFERENCIA'
,p_operator=>'<'
,p_expr=>'0'
,p_condition_sql=>' (case when ("DIFERENCIA" < to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# < #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#f90202'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(1003071736258031644)
,p_report_id=>wwv_flow_imp.id(187645332480330475)
,p_name=>'Diferencia Positiva'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DIFERENCIA'
,p_operator=>'>'
,p_expr=>'0'
,p_condition_sql=>' (case when ("DIFERENCIA" > to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#fcee26'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(245895502849347510)
,p_plug_name=>'STDIVFAVANDTF'
,p_parent_plug_id=>wwv_flow_imp.id(179223131768092329)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'DESC_SUCURSAL,  COD_ENCARGADO ,COD_SUCURSAL,  COD_ARTICULO, DESC_ART, CANTIDAD_SISTEMA  ,C1 ,C2,  C3, C4, C5, C6, C7, C8, CU,  COSTO_STOCK,',
'  NRO_COMPROBANTE  ,SUCURSAL,  COD_ART_CORTO  ,NRO_OT  ,ENTRADA  SALIDA  ,COSTO_PROM,  OBSERVACION  ,USUARIO  ,HORARIO,  ZONA  ,COSTO_INVENTARIO  ,',
'  CANTIDAD_INVENTARIO  ,OBSERVACION_DETALLE,  CLASIFICACION_REPUESTOS_ABC,  LOTE_1,  LOTE_2,  1 ORDEN  ,CORRESPONDE_BLOQUE,',
'  cu-CANTIDAD_SISTEMA DIFERENCIA, zona_almacenada,',
'    case when cu-CANTIDAD_SISTEMA>0 THEN ''Diferencia Positiva''',
'   when cu-CANTIDAD_SISTEMA<0 THEN ''Diferencia Negativa''',
'   when cu-CANTIDAD_SISTEMA=0 THEN ''Sin Diferencia''',
'   else ''Sin Conteo Registrado'' end tipo_diferencia,  ',
' comentario_diferencia observacion_diferencia,',
'   tipo_diferencia tipo_diferencia_cargada,tipo_inventario,area_inventario,ubicacion_inventario,ind_reincidente reincidente',
'',
' FROM (   ',
'select s.descripcion desc_sucursal,',
'       null cod_encargado,',
'       S.cod_sucursal,',
'       GD.cod_articulo,',
'       a.descripcion desc_art,',
'       GD.CANTIDAD CANTIDAD_SISTEMA,',
'       (cc.conteo1) C1,',
'       (cc.conteo2) C2,',
'       (cc.conteo3) C3,',
'       (cc.conteo4) C4,',
'       (cc.conteo5) C5,',
'       (cc.conteo6) C6,',
'       (cc.conteo7) C7,',
'       (cc.conteo8) C8,',
'       ((nvl(conteo1,',
'                nvl(conteo2,',
'                    nvl(conteo3,',
'                        nvl(conteo4,',
'                            nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))) CU,',
'   ',
'       NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'           0)* GD.CANTIDAD  COSTO_STOCK,',
' ',
'       g.nro_comprobante,',
'       g.sucursal,',
'       a.cod_Art_corto,',
'       GD.NRO_OT,',
'       0 entrada,',
'       0 salida,',
'         (case when nvl(gd.costo,0)=0 then a.costo_prom else  NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'             0) end)  costo_prom,',
'       g.observacion',
'',
',',
'',
'       NVL((SELECT MAX(E.USUARIO)',
'          FROM SM_INVENTARIO_DET E',
'         WHERE g.id_inventury = e.inventory_id',
'           and gd.cod_articulo = e.cod_articulo),',
'           (SELECT MAX(E.USUARIO)',
'          FROM SM_INVENTARIO_DET E',
'         WHERE g.id_inventury = e.inventory_id',
'           and gd.cod_articulo = e.itemid)) USUARIO,',
'       nvl((SELECT MAX(E.Fecha_Carga)',
'          FROM SM_INVENTARIO_DET E',
'         WHERE g.id_inventury = e.inventory_id',
'           and gd.cod_articulo = e.cod_articulo),',
'           (SELECT MAX(E.Fecha_Carga)',
'          FROM SM_INVENTARIO_DET E',
'         WHERE g.id_inventury = e.inventory_id',
'           and gd.cod_articulo = e.itemid)) HORARIO,',
'  NVL(',
'        F_INVENTARIO_ZONAS(GD.cod_articulo  ,',
'                                          G.id_inventury),',
'       ',
'       NVL((SELECT MAX(E.ZONA)',
'          FROM SM_INVENTARIO_DET E',
'         WHERE g.id_inventury = e.inventory_id',
'           and gd.cod_articulo = e.cod_articulo),',
'           (SELECT MAX(E.ZONA)',
'          FROM SM_INVENTARIO_DET E',
'         WHERE g.id_inventury = e.inventory_id',
'           and gd.cod_articulo = e.itemid)',
'           )',
'           ',
'           ) ZONA',
',',
'        round(NVL(ROUND(round(case when nvl(gd.costo,0)=0 then a.costo_prom else  NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'             0) end) *        ',
'                      ',
'       ',
'        (SELECT SUM(E.CANTIDAD)',
'                          FROM SM_INVENTARIO_DET E',
'                         WHERE g.id_inventury = e.inventory_id',
'                           and gd.cod_articulo = e.cod_articulo)',
'                       ',
'                       ),',
'                 0)) COSTO_INVENTARIO,',
'       ((nvl(conteo1,',
'                nvl(conteo2,',
'                    nvl(conteo3,',
'                        nvl(conteo4,',
'                            nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))',
'           ) CANTIDAD_inventario, GD.OBSERVACION OBSERVACION_DETALLE,null CLASIFICACION_REPUESTOS_ABC, ',
'                (select min(ex.nro_lote)',
'           from st_existencia_art@DBLINK_TF ex',
'           where ex.cod_empresa=g.cod_empresa',
'           and ex.cod_articulo=a.cod_articulo',
'           and ex.cod_sucursal=g.cod_sucursal',
'           and ex.cant_dispon>=0)lote_1,',
'            (select max(ex.nro_lote)',
'           from st_existencia_art@DBLINK_TF ex',
'           where ex.cod_empresa=g.cod_empresa',
'           and ex.cod_articulo=a.cod_articulo',
'           and ex.cod_sucursal=g.cod_sucursal',
'           and ex.cant_dispon>=0)lote_2,''2'', ',
'               null  zona_almacenada,',
'           null CORRESPONDE_BLOQUE ',
',',
'',
'(select descripcion from CO_TIPO_DIFERENCIA td where cod_tipo_diferencia=gd.tipo_diferencia)tipo_diferencia, ',
'              gd.comentario_diferencia,gd.ind_reincidente,',
'(select descripcion from CO_tipo_inventario ti',
'where ti.cod_empresa= g.cod_empresa',
'and ti.cod_tipo_inventario=g.TIPO_INVENTARIO)tipo_inventario,',
'',
'(select   cod_area from rh_areas rh',
'where rh.cod_empresa= g.COD_EMPRESA',
'and cod_sucursal=''01''',
'and rh.cod_area=g.AREA_RESPONSABLE)area_inventario,',
'(SELECT  DESCRIPCION ',
'FROM CO_ubicacion_inventario ui',
'WHERE ui.COD_EMPRESA = g.COD_EMPRESA',
'and ui.cod_ubicacion=UBICACION_INVENTARIO)ubicacion_inventario ',
'  from st_generacion_inventario     g,',
'       st_generacion_inventario_det gd,',
'       V_ARTICULOS_TF                 a,',
'       sucursales@Dblink_Tf                   s,',
'       st_conteo_inventario         cc',
' where G.cod_empresa = :p_cod_empresa',
'   AND G.TIP_COMPROBANTE = :P558_P_TIP_COMPROBANTE',
'   AND G.SER_COMPROBANTE = :P558_P_SER_COMPROBANTE',
'   and g.nro_comprobante = :P558_P_NRO_COMPROBANTE',
'   and :P558_EJECUTAR=''S''',
'   and :P558_EJECUTAR_REPORTE_3=''1''',
'   and g.cod_empresa = gd.cod_empresa',
'   and g.tip_comprobante = gd.tip_comprobante',
'   and g.ser_comprobante = gd.ser_comprobante',
'   and g.nro_comprobante = gd.nro_comprobante',
'   and G.cod_empresa = s.cod_empresa',
'   and g.cod_sucursal = s.cod_sucursal',
'   ',
'   and GD.cod_articulo = a.cod_articulo',
'   and gd.cod_empresa = cc.cod_empresa(+)',
'   and gd.tip_comprobante = cc.tip_comprobante(+)',
'   and gd.ser_comprobante = cc.ser_comprobante(+)',
'   and gd.nro_comprobante = cc.nro_comprobante(+)',
'   and gd.cod_articulo = cc.cod_articulo(+)   ',
'   and   :P558_P_BLOQUE is null',
'   and  :P558_P_sub_bloque is null',
'   and (gd.cod_articulo=:P558_P_COD_ARTICULO_HAS or :P558_P_COD_ARTICULO_HAS is null) ',
' order by 1, 3 asc',
')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P558_P_COD_ARTICULO,P558_P_BLOQUE,P558_P_SUB_BLOQUE,P558_P_NRO_COMPROBANTE,P558_P_COD_EMPRESA,P558_P_SER_COMPROBANTE,P558_P_TIP_COMPROBANTE,P558_EJECUTAR_REPORTE_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P558_EJECUTAR_REPORTE_3'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'STDIVFAVANDTF'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(245895647363347511)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron registros.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>245895647363347511
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245895794536347512)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Desc Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245895851750347513)
,p_db_column_name=>'COD_ENCARGADO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Encargado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245895932047347514)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245896078767347515)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245896159044347516)
,p_db_column_name=>'DESC_ART'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Desc Art'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245896253684347517)
,p_db_column_name=>'CANTIDAD_SISTEMA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cantidad Sistema'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245896368324347518)
,p_db_column_name=>'C1'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'C1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245896414778347519)
,p_db_column_name=>'C2'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'C2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245896593945347520)
,p_db_column_name=>'C3'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'C3'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245896658642347521)
,p_db_column_name=>'C4'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'C4'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245896730032347522)
,p_db_column_name=>'C5'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'C5'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245896883410347523)
,p_db_column_name=>'C6'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'C6'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245896990911347524)
,p_db_column_name=>'C7'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'C7'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245897005878347525)
,p_db_column_name=>'C8'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'C8'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245897195385347526)
,p_db_column_name=>'CU'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cu'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245897288250347527)
,p_db_column_name=>'COSTO_STOCK'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Costo Stock'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245897305397347528)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245897498878347529)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245897525835347530)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245897684700347531)
,p_db_column_name=>'SALIDA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Salida'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245897765113347532)
,p_db_column_name=>'COSTO_PROM'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Costo Prom'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245897877466347533)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245897984362347534)
,p_db_column_name=>'USUARIO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245898034453347535)
,p_db_column_name=>'ZONA'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Zona Inventariada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245898179989347536)
,p_db_column_name=>'COSTO_INVENTARIO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Costo Inventario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245898236528347537)
,p_db_column_name=>'CANTIDAD_INVENTARIO'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Cantidad Inventario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245898329220347538)
,p_db_column_name=>'OBSERVACION_DETALLE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Observacion Detalle'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245898438901347539)
,p_db_column_name=>'CLASIFICACION_REPUESTOS_ABC'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Clasificacion Repuestos Abc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245898561597347540)
,p_db_column_name=>'NRO_OT'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Nro Ot'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245898610861347541)
,p_db_column_name=>'LOTE_1'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Lote 1'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245898761556347542)
,p_db_column_name=>'LOTE_2'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Lote 2'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245898863756347543)
,p_db_column_name=>'HORARIO'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Horario'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245898945026347544)
,p_db_column_name=>'CORRESPONDE_BLOQUE'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Corresponde Bloque'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245899013843347545)
,p_db_column_name=>'DIFERENCIA'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Diferencia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245899293279347547)
,p_db_column_name=>'ZONA_ALMACENADA'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Zona Almacenada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(245899439233347549)
,p_db_column_name=>'ORDEN'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Orden'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(251382171494991434)
,p_db_column_name=>'TIPO_DIFERENCIA'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Tipo Diferencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(251382218455991435)
,p_db_column_name=>'OBSERVACION_DIFERENCIA'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Observacion Diferencia'
,p_column_link=>'javascript:$s(''P558_COD_ARTICULO_ID'',''#COD_ARTICULO#'');'
,p_column_linktext=>'<span class="t-Icon fa fa-plus-square delete-note" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40873493128631317)
,p_db_column_name=>'TIPO_DIFERENCIA_CARGADA'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Tipo Diferencia Cargada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40873598749631318)
,p_db_column_name=>'TIPO_INVENTARIO'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Tipo Inventario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40873609509631319)
,p_db_column_name=>'AREA_INVENTARIO'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Area Inventario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40873739522631320)
,p_db_column_name=>'UBICACION_INVENTARIO'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Ubicacion Inventario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40874435777631327)
,p_db_column_name=>'REINCIDENTE'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Reincidente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(254505858396548005)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2545059'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'SUCURSAL:NRO_COMPROBANTE:COD_ART_CORTO:COD_ARTICULO:DESC_ART:CANTIDAD_SISTEMA:CANTIDAD_INVENTARIO:DIFERENCIA:COSTO_STOCK:COSTO_PROM:COSTO_INVENTARIO:ZONA:ZONA_ALMACENADA:USUARIO:HORARIO:CORRESPONDE_BLOQUE:TIPO_DIFERENCIA:OBSERVACION_DIFERENCIA:'
,p_sum_columns_on_break=>'CANTIDAD_SISTEMA:DIFERENCIA:CANTIDAD_INVENTARIO'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(1002464947030704961)
,p_report_id=>wwv_flow_imp.id(254505858396548005)
,p_name=>'Sin Conteo'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'CANTIDAD_INVENTARIO'
,p_operator=>'is null'
,p_condition_sql=>' (case when ("CANTIDAD_INVENTARIO" is null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#04eab4'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(1002465397133704962)
,p_report_id=>wwv_flow_imp.id(254505858396548005)
,p_name=>'Diferencia Negativa'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DIFERENCIA'
,p_operator=>'<'
,p_expr=>'0'
,p_condition_sql=>' (case when ("DIFERENCIA" < to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# < #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#fc0c0c'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(1002465714364704962)
,p_report_id=>wwv_flow_imp.id(254505858396548005)
,p_name=>'Diferencia Positiva'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DIFERENCIA'
,p_operator=>'>'
,p_expr=>'0'
,p_condition_sql=>' (case when ("DIFERENCIA" > to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#f1fd48'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(251380344898991416)
,p_plug_name=>'Observacion_Diferencia'
,p_parent_plug_id=>wwv_flow_imp.id(179223131768092329)
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(251381689893991429)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(251380344898991416)
,p_button_name=>'Eliminar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Eliminar Observacion'
,p_button_position=>'ABOVE_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(251380908467991422)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(251380344898991416)
,p_button_name=>'Cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-backward'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(179221823156092316)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(178647914917544601)
,p_button_name=>'BT_VOLVER_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:556:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(179091771148755001)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(178647914917544601)
,p_button_name=>'BT_ACEPTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(251381051688991423)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(251380344898991416)
,p_button_name=>'Aceptar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-clipboard-check'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(187366147210765311)
,p_branch_name=>'IR_PAGINA_ANT'
,p_branch_action=>'f?p=&APP_ID.:559:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(179221823156092316)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178648084820544602)
,p_name=>'P558_P_BLOQUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(178647914917544601)
,p_prompt=>'Bloque'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     select cod_bloque||'' - ''||desc_bloque bloque, cod_bloque R',
'      from st_bloques',
'        where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P558_P_COD_SUCURSAL  ',
'AND NVL(:P558_P_IND_INVENTARIO_CPH,''N'')=''N'' ',
'group by desc_bloque, cod_bloque',
'union all',
'select cod_bloque||'' - ''||cod_bloque bloque, cod_bloque from st_posiciones',
'        where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P558_P_COD_SUCURSAL  ',
'AND NVL(:P558_P_IND_INVENTARIO_CPH,''N'')=''N'' ',
'group by cod_bloque',
'union all',
'select cod_bloque||'' - ''||desc_bloque bloque, cod_bloque',
'      from st_bloques@DBLINK_CPH',
'           where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P558_P_COD_SUCURSAL  ',
'AND NVL(:P558_P_IND_INVENTARIO_CPH,''N'')=''S''  ',
'group by desc_bloque, cod_bloque',
' union all',
'select cod_bloque||'' - ''||cod_bloque bloque, cod_bloque from st_posiciones@DBLINK_CPH',
'        where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P558_P_COD_SUCURSAL  ',
'AND NVL(:P558_P_IND_INVENTARIO_CPH,''N'')=''S'' ',
'group by cod_bloque',
'UNION ALL  ',
'     select cod_bloque||'' - ''||desc_bloque bloque, cod_bloque R',
'      from st_bloques',
'        where cod_empresa  = ''18''',
'       and cod_sucursal = :P558_P_COD_SUCURSAL  ',
'AND NVL(:P558_P_IND_INVENTARIO_CPH,''N'')=''B'' ',
'group by desc_bloque, cod_bloque',
'union all',
'select cod_bloque||'' - ''||cod_bloque bloque, cod_bloque from st_posiciones',
'        where cod_empresa  = ''18''',
'       and cod_sucursal = :P558_P_COD_SUCURSAL  ',
'AND NVL(:P558_P_IND_INVENTARIO_CPH,''N'')=''B'' ',
'group by cod_bloque',
'    order by 1  '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
,p_lov_cascade_parent_items=>'P558_P_COD_SUCURSAL'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178648412057544606)
,p_name=>'P558_P_COD_ARTICULO_DES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(178647914917544601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178648874465544610)
,p_name=>'P558_P_COD_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(178647914917544601)
,p_prompt=>unistr('Cod. Art\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo||'' - ''||COD_ART_CORTO||'' ''||descripcion articulo, cod_articulo r--, cod_origen_art, cod_art_corto ',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA',
'and estado = ''A'' ',
'order by descripcion --) in ''AS'' order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178648994356544611)
,p_name=>'P558_P_COD_ARTICULO_HAS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(178647914917544601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178649692415544618)
,p_name=>'P558_P_NRO_COMPROBANTE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(178647914917544601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178649859259544620)
,p_name=>'P558_P_SUB_BLOQUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(178647914917544601)
,p_prompt=>'Sub.Bloque'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'',
'       select  COD_SUB_BLOQUE||'' - ''||desc_SUB_bloque as Sub_bloque, COD_SUB_BLOQUE      ',
'',
'      from st_sub_bloques',
'      where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P558_P_COD_SUCURSAL',
'       and cod_bloque   = :P558_P_BLOQUE',
'AND NVL(:P558_P_IND_INVENTARIO_CPH,''N'')=''N'' ',
'union all ',
' select  COD_SUB_BLOQUE||'' - ''||cod_sub_bloque as Sub_bloque, cod_sub_bloque from st_posiciones',
'      where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P_COD_SUCURSAL',
'       and cod_bloque   = :P558_P_BLOQUE',
'AND NVL(:P558_P_IND_INVENTARIO_CPH,''N'')=''N'' ',
'group by cod_sub_bloque',
'UNION ALL',
'',
'',
'select  COD_SUB_BLOQUE||'' - ''||desc_SUB_bloque desc_SUB_bloque, COD_SUB_BLOQUE      ',
'',
'      from st_sub_bloques@DBLINK_CPH',
'       where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P558_P_COD_SUCURSAL',
'       and cod_bloque   = :P558_P_BLOQUE',
'AND NVL(:P558_P_IND_INVENTARIO_CPH,''N'')=''S''  ',
'union all ',
' select  cod_sub_bloque||'' - ''||cod_sub_bloque  desc_SUB_bloque, cod_sub_bloque from st_posiciones@DBLINK_CPH',
'      where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P558_P_COD_SUCURSAL',
'       and cod_bloque   = :P558_P_BLOQUE',
'AND NVL(:P558_P_IND_INVENTARIO_CPH,''N'')=''S'' ',
'group by cod_sub_bloque',
'',
'UNION ALL  ',
' select  COD_SUB_BLOQUE||'' - ''||desc_SUB_bloque as Sub_bloque, COD_SUB_BLOQUE      ',
'',
'      from st_sub_bloques',
'      where cod_empresa  = ''18''',
'       and cod_sucursal = :P558_P_COD_SUCURSAL',
'       and cod_bloque   = :P558_P_BLOQUE',
'AND NVL(:P558_P_IND_INVENTARIO_CPH,''N'')=''B'' ',
'union all ',
' select  COD_SUB_BLOQUE||'' - ''||cod_sub_bloque as Sub_bloque, cod_sub_bloque from st_posiciones',
'      where cod_empresa  = ''18''',
'       and cod_sucursal = :P_COD_SUCURSAL',
'       and cod_bloque   = :P558_P_BLOQUE',
'AND NVL(:P558_P_IND_INVENTARIO_CPH,''N'')=''B'' ',
'group by cod_sub_bloque',
'',
'    order by 1  '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
,p_lov_cascade_parent_items=>'P558_P_BLOQUE,P558_P_COD_SUCURSAL'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178649994524544621)
,p_name=>'P558_P_SER_COMPROBANTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(178647914917544601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178650096776544622)
,p_name=>'P558_P_TIP_COMPROBANTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(178647914917544601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178664706925406634)
,p_name=>'P558_EJECUTAR_REPORTE_1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(178647914917544601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178664801945406635)
,p_name=>'P558_EJECUTAR_REPORTE_2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(178647914917544601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179092324780755007)
,p_name=>'P558_P_IND_INVENTARIO_CPH'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(178647914917544601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179143905898452806)
,p_name=>'P558_P_COD_EMPRESA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(178647914917544601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(186566174769242625)
,p_name=>'P558_EJECUTAR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(178647914917544601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(245894901934347504)
,p_name=>'P558_P_COD_SUCURSAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(178647914917544601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(245895412429347509)
,p_name=>'P558_EJECUTAR_REPORTE_3'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(178647914917544601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(251380296657991415)
,p_name=>'P558_COD_ARTICULO_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(178647914917544601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(251380442009991417)
,p_name=>'P558_TIPO_DIFERENCIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(251380344898991416)
,p_prompt=>'Tipo Diferencia'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select descripcion, cod_tipo_diferencia from CO_TIPO_DIFERENCIA where activo=''S'''
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(251380501962991418)
,p_name=>'P558_COMENTARIO_DIFERENCIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(251380344898991416)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(251380633784991419)
,p_name=>'P558_REINCIDENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(251380344898991416)
,p_prompt=>'Reincidente'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'Si'
,p_attribute_04=>'N'
,p_attribute_05=>'No'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(258685964370363636)
,p_name=>'P558_P_COD_POSICION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(178647914917544601)
,p_prompt=>'Posicion'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'       select  cod_posicion  as d, cod_posicion ',
'      from st_posiciones',
'      where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P_COD_SUCURSAL',
'       and cod_bloque   = :P558_P_BLOQUE',
'       and cod_sub_bloque = :P558_P_SUB_BLOQUE',
'AND NVL(:P558_P_IND_INVENTARIO_CPH,''N'')=''N''  ',
'union all',
'',
'select   cod_posicion desc_SUB_bloque, cod_posicion      ',
'',
'      from st_posiciones@DBLINK_CPH',
'         where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P_COD_SUCURSAL',
'       and cod_bloque   = :P558_P_BLOQUE',
'       and cod_sub_bloque = :P558_P_SUB_BLOQUE',
'AND NVL(:P558_P_IND_INVENTARIO_CPH,''N'')=''S''  ',
'union all ',
' select  cod_posicion  desc_SUB_bloque, cod_posicion from st_posiciones@DBLINK_CPH',
'        where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P_COD_SUCURSAL',
'       and cod_bloque   = :P558_P_BLOQUE',
'       and cod_sub_bloque = :P558_P_SUB_BLOQUE',
'AND NVL(:P558_P_IND_INVENTARIO_CPH,''N'')=''S'' ',
' union all  ',
'        select  cod_posicion  as d, cod_posicion ',
'      from st_posiciones',
'      where cod_empresa  = ''18''',
'       and cod_sucursal = :P_COD_SUCURSAL',
'       and cod_bloque   = :P558_P_BLOQUE',
'       and cod_sub_bloque = :P558_P_SUB_BLOQUE',
'AND NVL(:P558_P_IND_INVENTARIO_CPH,''N'')=''B''',
'    order by 1  '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
,p_lov_cascade_parent_items=>'P558_P_BLOQUE,P558_P_COD_SUCURSAL'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(179091968710755003)
,p_name=>'DA_ACEPTAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(179091771148755001)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179092005926755004)
,p_event_id=>wwv_flow_imp.id(179091968710755003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P558_P_IND_INVENTARIO_CPH=''S'' THEN',
' 	BEGIN',
'        :P558_EJECUTAR_REPORTE_2 := 1;',
'        :P558_EJECUTAR_REPORTE_1 := NULL;',
'         :P558_EJECUTAR_REPORTE_3 := NULL;',
'        ',
':P558_EJECUTAR:=''S'';',
'',
' sp_reprocesa_conteo_CPH(:p_cod_empresa ,',
'	''PR'',',
'                                                sysdate -6     ,',
'                                               sysdate +5     ,',
'                                                :P558_P_NRO_COMPROBANTE);',
'',
'',
'    END;',
'ELSIF  :P558_P_IND_INVENTARIO_CPH=''T'' THEN',
' 	BEGIN',
'        :P558_EJECUTAR_REPORTE_2 := NULL;',
'        :P558_EJECUTAR_REPORTE_1 := NULL;',
'          :P558_EJECUTAR_REPORTE_3 := 1;',
':P558_EJECUTAR:=''S'';',
'',
' sp_reprocesa_conteo_TF(:p_cod_empresa ,',
'	''PR'',',
'                                                sysdate -6     ,',
'                                               sysdate +5     ,',
'                                                :P558_P_NRO_COMPROBANTE);',
'',
'',
'    END;',
'    ELSIF  :P558_P_IND_INVENTARIO_CPH=''B'' THEN',
' 	 ',
' 	BEGIN',
'        :P558_EJECUTAR_REPORTE_1 := 1;',
'        :P558_EJECUTAR_REPORTE_2 := NULL;',
'        :P558_EJECUTAR_REPORTE_3 := NULL;',
'        :P558_EJECUTAR:=''S'';',
' sp_reprocesa_conteo_BH(:p_cod_empresa ,',
'	''PR'',',
'                                                sysdate -6     ,',
'                                               sysdate +5     ,',
'                                                :P558_P_NRO_COMPROBANTE);',
'',
'',
'    END;    ',
'',
'    ',
'ELSE',
'    BEGIN',
'        :P558_EJECUTAR_REPORTE_1 := 1;',
'        :P558_EJECUTAR_REPORTE_2 := NULL;',
'        :P558_EJECUTAR_REPORTE_3 := NULL;',
'        :P558_EJECUTAR:=''S'';',
'        ',
' sp_reprocesa_conteo(:p_cod_empresa ,',
'	''PR'',',
'                                                sysdate -6     ,',
'                                               sysdate +5     ,',
'                                                :P558_P_NRO_COMPROBANTE);',
'    END;',
'END IF;'))
,p_attribute_02=>'P558_P_IND_INVENTARIO_CPH'
,p_attribute_03=>'P558_EJECUTAR_REPORTE_1,P558_EJECUTAR_REPORTE_2,P558_EJECUTAR,P558_EJECUTAR_REPORTE_3'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187365814135765308)
,p_event_id=>wwv_flow_imp.id(179091968710755003)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var spinner = apex.util.showSpinner(); ',
'$("#apex_wait_overlay").remove(); '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179092169663755005)
,p_event_id=>wwv_flow_imp.id(179091968710755003)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(178650252441544624)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P558_EJECUTAR_REPORTE_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179092252374755006)
,p_event_id=>wwv_flow_imp.id(179091968710755003)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(178650462286544626)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P558_EJECUTAR_REPORTE_2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(245899384811347548)
,p_event_id=>wwv_flow_imp.id(179091968710755003)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(245895502849347510)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P558_EJECUTAR_REPORTE_2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187365917854765309)
,p_event_id=>wwv_flow_imp.id(179091968710755003)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".u-Processing").remove(); ',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187366054869765310)
,p_event_id=>wwv_flow_imp.id(179091968710755003)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(179222887340092326)
,p_name=>'DA_VOLVER'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(179221823156092316)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179223086645092328)
,p_event_id=>wwv_flow_imp.id(179222887340092326)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(251380716284991420)
,p_name=>'da_cod_Articulo_id'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P558_COD_ARTICULO_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(251382072210991433)
,p_event_id=>wwv_flow_imp.id(251380716284991420)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select   tipo_diferencia,comentario_diferencia,IND_REINCIDENTE',
'into :P558_TIPO_DIFERENCIA, :P558_COMENTARIO_DIFERENCIA, :P558_REINCIDENTE',
'from  st_generacion_inventario_det ',
'WHERE COD_EMPRESA=:P_COD_EMPRESA',
'AND NRO_COMPROBANTE = :P558_P_NRO_COMPROBANTE',
'AND COD_ARTICULO = :P558_COD_ARTICULO_ID;',
'exception',
'when others then',
':P558_TIPO_DIFERENCIA:=null;',
':P558_COMENTARIO_DIFERENCIA:=null;',
' :P558_REINCIDENTE:=null;',
'end;'))
,p_attribute_02=>'P558_P_NRO_COMPROBANTE,P558_COD_ARTICULO_ID,P_COD_EMPRESA'
,p_attribute_03=>'P558_TIPO_DIFERENCIA,P558_COMENTARIO_DIFERENCIA,P558_REINCIDENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(251380800155991421)
,p_event_id=>wwv_flow_imp.id(251380716284991420)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(251380344898991416)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(251381118196991424)
,p_name=>'da_cancelar_obs_dif'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(251380908467991422)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(251381284751991425)
,p_event_id=>wwv_flow_imp.id(251381118196991424)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(251380344898991416)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(251381383680991426)
,p_name=>'da_aceptar_obs_dif_1'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(251381051688991423)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(251381594387991428)
,p_event_id=>wwv_flow_imp.id(251381383680991426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update st_generacion_inventario_det set tipo_diferencia=:P558_TIPO_DIFERENCIA, comentario_diferencia=:P558_COMENTARIO_DIFERENCIA, IND_REINCIDENTE=:P558_REINCIDENTE',
'WHERE COD_EMPRESA=:P_COD_EMPRESA',
'AND NRO_COMPROBANTE = :P558_P_NRO_COMPROBANTE',
'AND COD_ARTICULO = :P558_COD_ARTICULO_ID;',
'end;'))
,p_attribute_02=>'P558_P_NRO_COMPROBANTE,P558_COD_ARTICULO_ID,P_COD_EMPRESA,P558_TIPO_DIFERENCIA,P558_COMENTARIO_DIFERENCIA,P558_REINCIDENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(251381419229991427)
,p_event_id=>wwv_flow_imp.id(251381383680991426)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(251380344898991416)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(251381709457991430)
,p_name=>'da_aceptar_obs_dif_1_1'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(251381689893991429)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(251381890059991431)
,p_event_id=>wwv_flow_imp.id(251381709457991430)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'delete st_generacion_inventario_det set tipo_diferencia=:P558_TIPO_DIFERENCIA, comentario_diferencia=:P558_COMENTARIO_DIFERENCIA, IND_REINCIDENTE=:P558_REINCIDENTE',
'WHERE COD_EMPRESA=:P_COD_EMPRESA',
'AND NRO_COMPROBANTE = :P558_P_NRO_COMPROBANTE',
'AND COD_ARTICULO = :P558_COD_ARTICULO_ID;',
'end;'))
,p_attribute_02=>'P558_P_NRO_COMPROBANTE,P558_COD_ARTICULO_ID,P_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(251381918434991432)
,p_event_id=>wwv_flow_imp.id(251381709457991430)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(251380344898991416)
);
wwv_flow_imp.component_end;
end;
/
