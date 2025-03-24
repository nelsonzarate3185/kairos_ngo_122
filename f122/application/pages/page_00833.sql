prompt --application/pages/page_00833
begin
--   Manifest
--     PAGE: 00833
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
 p_id=>833
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Reporte de Conteo por Ubicacion'
,p_alias=>'REPORTE-DE-CONTEO-POR-UBICACION'
,p_step_title=>'Reporte de Conteo por Ubicacion'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'PBOGADO'
,p_last_upd_yyyymmddhh24miss=>'20250210095645'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(653586886215659673)
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
 p_id=>wwv_flow_imp.id(654145369511345369)
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
 p_id=>wwv_flow_imp.id(653570152660797641)
,p_plug_name=>'PARAMETROS'
,p_parent_plug_id=>wwv_flow_imp.id(654145369511345369)
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
 p_id=>wwv_flow_imp.id(653572490184797664)
,p_plug_name=>'STDIVFAVAND'
,p_parent_plug_id=>wwv_flow_imp.id(654145369511345369)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'DESC_SUCURSAL,  COD_ENCARGADO ,COD_SUCURSAL,  COD_ARTICULO, DESC_ART, CANTIDAD_SISTEMA  ,C1 ,C2,  C3, C4, C5, C6, C7, C8, CU,  COSTO_STOCK,',
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
'    , COD_BLOQUE, COD_SUB_BLOQUE,  ZONA_CONTEO',
', cantidad_zona, usuario_zona',
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
'              and (:P833_P_sub_bloque is null or p.cod_sub_bloque=:P833_P_sub_bloque)',
'            and ( :P833_P_BLOQUE is null or p.cod_bloque= :P833_P_BLOQUE) ',
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
'FROM inv.CO_ubicacion_inventario ui',
'WHERE ui.COD_EMPRESA = g.COD_EMPRESA',
'and ui.cod_ubicacion=UBICACION_INVENTARIO)ubicacion_inventario , POS.COD_BLOQUE, POS.COD_SUB_BLOQUE, SME.ZONA ZONA_CONTEO, sme.cantidad cantidad_zona, sme.usuario usuario_zona',
'           ',
'             ',
'  from st_generacion_inventario     g,',
'       st_generacion_inventario_det gd,',
'       st_articulos                 a,',
'       sucursales                   s,',
'       st_conteo_inventario         cc ,',
'       SM_INVENTARIO_DET sme ,ST_POSICIONES POS',
' where G.cod_empresa = :p_cod_empresa',
'   AND G.TIP_COMPROBANTE = :P833_P_TIP_COMPROBANTE',
'   AND G.SER_COMPROBANTE = :P833_P_SER_COMPROBANTE',
'   and g.nro_comprobante = :P833_P_NRO_COMPROBANTE',
'     and :P833_EJECUTAR=''S''',
'     and :P833_EJECUTAR_REPORTE_1=''1''',
'      and   g.nro_comprobante = sme.inventory_id',
'                           and gd.cod_articulo = sme.cod_articulo',
'                           AND POS.COD_EMPRESA=G.COD_EMPRESA',
'                           AND POS.COD_POSICION=SME.ZONA',
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
'             and (:P833_P_sub_bloque is null or p.cod_sub_bloque=:P833_P_sub_bloque)',
'            and ( :P833_P_BLOQUE is null or p.cod_bloque= :P833_P_BLOQUE)',
'            union all',
'            select b.cod_articulo ',
'            from     ST_BLOQUE_PRODUCTOS b',
'            where    gd.cod_empresa=b.cod_empresa',
'   and gd.cod_articulo=b.cod_articulo',
'   and g.cod_sucursal=b.cod_sucursal',
'   and ( :P833_P_BLOQUE is null or b.cod_bloque= :P833_P_BLOQUE)',
'   and (:P833_P_sub_bloque is null or b.cod_sub_bloque=:P833_P_sub_bloque)',
'   union ALL ',
'   SELECT ub.cod_articulo ',
'   from st_ubic_articulos ub ',
'   where ub.cod_empresa=gd.cod_empresa ',
'   and ub.cod_sucursal=g.cod_sucursal',
'    and ub.cod_articulo=gd.cod_articulo',
'     and (:P833_P_BLOQUE is null or ub.cod_bloque= :P833_P_BLOQUE)',
'   and (:P833_P_sub_bloque is null or ub.cod_sub_bloque=:P833_P_sub_bloque)',
'   )  ',
'      and cod_rubro   in (''RE'',''PR'',''MUE'')   ',
'    and (  :P833_P_BLOQUE is not null',
'     or   :P833_P_sub_bloque is not null) ',
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
'              and (:P833_P_sub_bloque is null or p.cod_sub_bloque=:P833_P_sub_bloque)',
'            and ( :P833_P_BLOQUE is null or p.cod_bloque= :P833_P_BLOQUE) ',
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
'FROM inv.CO_ubicacion_inventario ui',
'WHERE ui.COD_EMPRESA = g.COD_EMPRESA',
'and ui.cod_ubicacion=UBICACION_INVENTARIO)ubicacion_inventario , POS.COD_BLOQUE, POS.COD_SUB_BLOQUE, SME.ZONA ZONA_CONTEO, sme.cantidad cantidad_zona, sme.usuario usuario_zona',
'  from st_generacion_inventario     g,',
'       st_generacion_inventario_det gd,',
'       st_articulos                 a,',
'       sucursales                   s,',
'       st_conteo_inventario         cc,',
'       SM_INVENTARIO_DET sme ,ST_POSICIONES POS',
' where G.cod_empresa = :p_cod_empresa',
'   AND G.TIP_COMPROBANTE = :P833_P_TIP_COMPROBANTE',
'   AND G.SER_COMPROBANTE = :P833_P_SER_COMPROBANTE',
'   and g.nro_comprobante = :P833_P_NRO_COMPROBANTE',
'    and   g.nro_comprobante = sme.inventory_id',
'                           and gd.cod_articulo = sme.cod_articulo',
'                           AND POS.COD_EMPRESA=G.COD_EMPRESA',
'                           AND POS.COD_POSICION=SME.ZONA',
'   and :P833_EJECUTAR=''S''',
'   and :P833_EJECUTAR_REPORTE_1=''1''',
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
'   and   :P833_P_BLOQUE is null',
'   and  :P833_P_sub_bloque is null',
'   --and (gd.cod_articulo=:P833_P_COD_ARTICULO_HAS or :P833_P_COD_ARTICULO_HAS is null) ',
'   and (gd.cod_articulo=:P833_P_COD_ARTICULO or :P833_P_COD_ARTICULO is null)',
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
'              and (:P833_P_sub_bloque is null or p.cod_sub_bloque=:P833_P_sub_bloque)',
'            and ( :P833_P_BLOQUE is null or p.cod_bloque= :P833_P_BLOQUE) ',
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
'FROM inv.CO_ubicacion_inventario ui',
'WHERE ui.COD_EMPRESA = g.COD_EMPRESA',
'and ui.cod_ubicacion=UBICACION_INVENTARIO)ubicacion_inventario , POS.COD_BLOQUE, POS.COD_SUB_BLOQUE, SME.ZONA ZONA_CONTEO, sme.cantidad cantidad_zona, sme.usuario usuario_zona',
'  from st_generacion_inventario     g,',
'       st_generacion_inventario_det gd,',
'       st_articulos                 a,',
'       sucursales                   s,',
'       st_conteo_inventario         cc,',
'       SM_INVENTARIO_DET sme ,ST_POSICIONES POS',
' where G.cod_empresa= :P_COD_EMPRESA',
'   AND G.TIP_COMPROBANTE = :P833_P_TIP_COMPROBANTE',
'   AND G.SER_COMPROBANTE = :P833_P_SER_COMPROBANTE',
'   and g.nro_comprobante = :P833_P_NRO_COMPROBANTE',
'   and :P833_EJECUTAR=''S''',
'  and   g.nro_comprobante = sme.inventory_id',
'                           and gd.cod_articulo = sme.cod_articulo',
'                           AND POS.COD_EMPRESA=G.COD_EMPRESA',
'                           AND POS.COD_POSICION=SME.ZONA',
'   ',
'   and :P833_EJECUTAR_REPORTE_1=''1''',
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
'   and   :P833_P_BLOQUE is null',
'   and  :P833_P_sub_bloque is null',
'   --and (gd.cod_articulo=:P833_P_COD_ARTICULO_HAS or :P833_P_COD_ARTICULO_HAS is null) ',
'   and (gd.cod_articulo=:P833_P_COD_ARTICULO or :P833_P_COD_ARTICULO is null)',
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
'              and (:P833_P_sub_bloque is null or p.cod_sub_bloque=:P833_P_sub_bloque)',
'            and ( :P833_P_BLOQUE is null or p.cod_bloque= :P833_P_BLOQUE) ',
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
'FROM inv.CO_ubicacion_inventario ui',
'WHERE ui.COD_EMPRESA = g.COD_EMPRESA',
'and ui.cod_ubicacion=UBICACION_INVENTARIO)ubicacion_inventario , POS.COD_BLOQUE, POS.COD_SUB_BLOQUE, SME.ZONA ZONA_CONTEO',
', sme.cantidad cantidad_zona, sme.usuario usuario_zona',
'           ',
'             ',
'  from st_generacion_inventario     g,',
'       st_generacion_inventario_det gd,',
'       st_articulos                 a,',
'       sucursales                   s,',
'       st_conteo_inventario         cc ,',
'       SM_INVENTARIO_DET sme ,ST_POSICIONES POS',
' where G.cod_empresa   IN (''1'' )',
'   AND G.TIP_COMPROBANTE = :P833_P_TIP_COMPROBANTE',
'   AND G.SER_COMPROBANTE = :P833_P_SER_COMPROBANTE',
'   and g.nro_comprobante = :P833_P_NRO_COMPROBANTE',
'     and :P833_EJECUTAR=''S''',
'     ',
' and   g.nro_comprobante = sme.inventory_id',
'                           and gd.cod_articulo = sme.cod_articulo',
'                           AND POS.COD_EMPRESA=G.COD_EMPRESA',
'                           AND POS.COD_POSICION=SME.ZONA',
'     and :P833_EJECUTAR_REPORTE_1=''1''',
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
'             and (:P833_P_sub_bloque is null or p.cod_sub_bloque=:P833_P_sub_bloque)',
'            and ( :P833_P_BLOQUE is null or p.cod_bloque= :P833_P_BLOQUE)',
'            union all',
'            select b.cod_articulo ',
'            from     ST_BLOQUE_PRODUCTOS b',
'            where    ''18''=b.cod_empresa',
'   and gd.cod_articulo=b.cod_articulo',
'   and g.cod_sucursal=b.cod_sucursal',
'   and ( :P833_P_BLOQUE is null or b.cod_bloque= :P833_P_BLOQUE)',
'   and (:P833_P_sub_bloque is null or b.cod_sub_bloque=:P833_P_sub_bloque )',
'   union ALL ',
'   SELECT ub.cod_articulo ',
'   from st_ubic_articulos ub ',
'   where ub.cod_empresa=''18''',
'   and ub.cod_sucursal=g.cod_sucursal',
'    and ub.cod_articulo=gd.cod_articulo',
'     and ( ub.cod_bloque= :P833_P_BLOQUE or :P833_P_BLOQUE is null)',
'   and (ub.cod_sub_bloque=:P833_P_sub_bloque or :P833_P_sub_bloque is null)',
'   )  ',
'      ',
'    and (  :P833_P_BLOQUE is not null',
'     or   :P833_P_sub_bloque is not null) ',
'',
' order by 1, 3 asc',
')',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P833_P_COD_ARTICULO,P833_P_BLOQUE,P833_P_SUB_BLOQUE,P833_P_NRO_COMPROBANTE,P833_P_COD_EMPRESA,P833_P_SER_COMPROBANTE,P833_P_TIP_COMPROBANTE,P833_EJECUTAR_REPORTE_1'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P833_EJECUTAR_REPORTE_1'
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
 p_id=>wwv_flow_imp.id(653572763694797667)
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
,p_internal_uid=>653572763694797667
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474933342672253077)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Desc Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474933792634253077)
,p_db_column_name=>'COD_ENCARGADO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Encargado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474934185411253078)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474934591440253078)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474934949609253078)
,p_db_column_name=>'DESC_ART'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Desc Art'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474935377609253078)
,p_db_column_name=>'CANTIDAD_SISTEMA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cantidad Sistema'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474935713070253079)
,p_db_column_name=>'C1'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'C1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474936149265253079)
,p_db_column_name=>'C2'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'C2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474936507996253079)
,p_db_column_name=>'C3'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'C3'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474936965752253080)
,p_db_column_name=>'C4'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'C4'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474937339698253080)
,p_db_column_name=>'C5'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'C5'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474937776195253080)
,p_db_column_name=>'C6'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'C6'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474938184624253080)
,p_db_column_name=>'C7'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'C7'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474938570991253081)
,p_db_column_name=>'C8'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'C8'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474938902565253081)
,p_db_column_name=>'CU'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cu'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474939382058253081)
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
 p_id=>wwv_flow_imp.id(474939701308253081)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474940174312253082)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474940534715253082)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474940915351253082)
,p_db_column_name=>'SALIDA'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Salida'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474941358720253083)
,p_db_column_name=>'COSTO_PROM'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Costo Prom'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474941770506253083)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474942165961253083)
,p_db_column_name=>'USUARIO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474942515281253083)
,p_db_column_name=>'ZONA'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Zona Inventariada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474942997516253085)
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
 p_id=>wwv_flow_imp.id(474943378768253085)
,p_db_column_name=>'CANTIDAD_INVENTARIO'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Cantidad Inventario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474943763863253085)
,p_db_column_name=>'OBSERVACION_DETALLE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Observacion Detalle'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474944150122253086)
,p_db_column_name=>'CLASIFICACION_REPUESTOS_ABC'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Clasificacion Repuestos Abc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474944599267253087)
,p_db_column_name=>'NRO_OT'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Nro Ot'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474944925600253087)
,p_db_column_name=>'LOTE_1'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Lote 1'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474945309010253087)
,p_db_column_name=>'LOTE_2'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Lote 2'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474945754763253090)
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
 p_id=>wwv_flow_imp.id(474946192032253091)
,p_db_column_name=>'CORRESPONDE_BLOQUE'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Corresponde Bloque'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474946527720253091)
,p_db_column_name=>'DIFERENCIA'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Diferencia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474946922652253091)
,p_db_column_name=>'ORDEN'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Orden'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474947382008253092)
,p_db_column_name=>'ZONA_ALMACENADA'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Zona Almacenada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474947708045253092)
,p_db_column_name=>'TIPO_DIFERENCIA'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Tipo Diferencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474948100574253093)
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
'select fecha_cierre into vabierto from st_generacion_inventario where cod_empresa=:p_cod_empresa and nro_comprobante = :P833_P_NRO_COMPROBANTE;',
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
 p_id=>wwv_flow_imp.id(474931344521253072)
,p_db_column_name=>'TIPO_DIFERENCIA_CARGADA'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Tipo Diferencia Cargada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474931712151253076)
,p_db_column_name=>'TIPO_INVENTARIO'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Tipo Inventario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474932171217253076)
,p_db_column_name=>'AREA_INVENTARIO'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Area Inventario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474932562003253076)
,p_db_column_name=>'UBICACION_INVENTARIO'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'Ubicacion Inventario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474932924663253077)
,p_db_column_name=>'REINCIDENTE'
,p_display_order=>670
,p_column_identifier=>'BO'
,p_column_label=>'Reincidente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474948501822253093)
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
 p_id=>wwv_flow_imp.id(474948955747253097)
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
 p_id=>wwv_flow_imp.id(474949363851253098)
,p_db_column_name=>'TOTAL_INVENTARIO'
,p_display_order=>700
,p_column_identifier=>'BR'
,p_column_label=>'Total Inventario Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1016659136050866450)
,p_db_column_name=>'COD_BLOQUE'
,p_display_order=>710
,p_column_identifier=>'BS'
,p_column_label=>'Cod Bloque'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1031319894534625501)
,p_db_column_name=>'COD_SUB_BLOQUE'
,p_display_order=>720
,p_column_identifier=>'BT'
,p_column_label=>'Cod Sub Bloque'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1031319948028625502)
,p_db_column_name=>'ZONA_CONTEO'
,p_display_order=>730
,p_column_identifier=>'BU'
,p_column_label=>'Zona Conteo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1031320034015625503)
,p_db_column_name=>'CANTIDAD_ZONA'
,p_display_order=>740
,p_column_identifier=>'BV'
,p_column_label=>'Cantidad Zona'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1031320169052625504)
,p_db_column_name=>'USUARIO_ZONA'
,p_display_order=>750
,p_column_identifier=>'BW'
,p_column_label=>'Usuario Zona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(653607825394582189)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1786856'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'COD_SUCURSAL:SUCURSAL:NRO_COMPROBANTE:COD_ART_CORTO:COD_ARTICULO:DESC_ART:CANTIDAD_SISTEMA:CANTIDAD_INVENTARIO:CANTIDAD_ZONA:COD_BLOQUE:COD_SUB_BLOQUE:ZONA_CONTEO:USUARIO_ZONA:DIFERENCIA:COSTO_STOCK:TOTAL_SISTEMA:TOTAL_INVENTARIO:DIFERENCIA_MONTO:USU'
||'ARIO:ZONA:ZONA_ALMACENADA:HORARIO:CORRESPONDE_BLOQUE:'
,p_sum_columns_on_break=>'CANTIDAD_SISTEMA:CANTIDAD_INVENTARIO'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(1031346114796706066)
,p_report_id=>wwv_flow_imp.id(653607825394582189)
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
 p_id=>wwv_flow_imp.id(1031346567837706071)
,p_report_id=>wwv_flow_imp.id(653607825394582189)
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
 p_id=>wwv_flow_imp.id(1031346970067706074)
,p_report_id=>wwv_flow_imp.id(653607825394582189)
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
 p_id=>wwv_flow_imp.id(653572700029797666)
,p_plug_name=>'STDIVFAVANDCPH'
,p_parent_plug_id=>wwv_flow_imp.id(654145369511345369)
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
'    (COSTO_STOCK * CANTIDAD_SISTEMA) total_sistema,COSTO_INVENTARIO total_inventario , COD_BLOQUE, COD_SUB_BLOQUE,  ZONA_CONTEO',
', cantidad_zona, usuario_zona',
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
'              and (p.cod_sub_bloque=:P833_P_SUB_BLOQUE or :P833_P_SUB_BLOQUE is null)',
'            and ( p.cod_bloque= :P833_P_BLOQUE or :P833_P_BLOQUE is null) ',
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
'and ui.cod_ubicacion=UBICACION_INVENTARIO)ubicacion_inventario , POS.COD_BLOQUE, POS.COD_SUB_BLOQUE, SME.ZONA ZONA_CONTEO, sme.cantidad cantidad_zona, sme.usuario usuario_zona',
'           ',
'',
'',
'  from st_generacion_inventario     g,',
'       st_generacion_inventario_det gd,',
'       v_articulos_cph                 a,',
'       sucursales@dblink_cph                   s,',
'       st_conteo_inventario         cc,',
'        SM_INVENTARIO_DET sme ,ST_POSICIONES@dblink_cph POS',
'       ',
' where G.cod_empresa = :P833_P_COD_EMPRESA',
'   AND G.TIP_COMPROBANTE = :P833_P_TIP_COMPROBANTE',
'   AND G.SER_COMPROBANTE = :P833_P_SER_COMPROBANTE',
'   and g.nro_comprobante = :P833_P_NRO_COMPROBANTE',
'   ',
'    and   g.nro_comprobante = sme.inventory_id',
'                           and gd.cod_articulo = sme.cod_articulo',
'                           AND POS.COD_EMPRESA=G.COD_EMPRESA',
'                           AND POS.COD_POSICION=SME.ZONA',
'   ',
'     and :P833_EJECUTAR=''S''',
'     and :P833_EJECUTAR_REPORTE_2=''1''',
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
'             and (p.cod_sub_bloque=:P833_P_SUB_BLOQUE or :P833_P_SUB_BLOQUE is null)',
'            and ( p.cod_bloque= :P833_P_BLOQUE or :P833_P_BLOQUE is null) ',
' union all',
'            select b.cod_articulo ',
'            from     ST_BLOQUE_PRODUCTOS@DBLINK_CPH b',
'            where    gd.cod_empresa=b.cod_empresa',
'   and gd.cod_articulo=b.cod_articulo',
'   and g.cod_sucursal=b.cod_sucursal',
'   and ( b.cod_bloque= :P833_P_BLOQUE or :P833_P_BLOQUE is null)',
'   and (b.cod_sub_bloque=:P833_P_SUB_BLOQUE or :P833_P_SUB_BLOQUE is null) ) ',
' ',
'   and (gd.cod_articulo=:P833_P_COD_ARTICULO or :P833_P_COD_ARTICULO is null)',
'  ',
'       and (  :P833_P_BLOQUE is not null',
'     or   :P833_P_SUB_BLOQUE is not null)',
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
'and ui.cod_ubicacion=UBICACION_INVENTARIO)ubicacion_inventario ,',
'POS.COD_BLOQUE, POS.COD_SUB_BLOQUE, SME.ZONA ZONA_CONTEO, sme.cantidad cantidad_zona, sme.usuario usuario_zona',
'  from st_generacion_inventario     g,',
'       st_generacion_inventario_det gd,',
'       V_ARTICULOS_CPH                 a,',
'       sucursales@DBLINK_CPH                   s,',
'       st_conteo_inventario         cc,',
'       SM_INVENTARIO_DET sme ,ST_POSICIONES@dblink_cph POS',
' where G.cod_empresa = :P833_P_COD_EMPRESA',
'   AND G.TIP_COMPROBANTE = :P833_P_TIP_COMPROBANTE',
'   AND G.SER_COMPROBANTE = :P833_P_SER_COMPROBANTE',
'   and g.nro_comprobante = :P833_P_NRO_COMPROBANTE',
'     and :P833_EJECUTAR=''S''',
'     and :P833_EJECUTAR_REPORTE_2=''1''',
'     ',
'      and   g.nro_comprobante = sme.inventory_id',
'                           and gd.cod_articulo = sme.cod_articulo',
'                           AND POS.COD_EMPRESA=G.COD_EMPRESA',
'                           AND POS.COD_POSICION=SME.ZONA',
'     ',
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
'   and   :P833_P_BLOQUE is null',
'   and  :P833_P_SUB_BLOQUE is null',
'   and (gd.cod_articulo=:P833_P_COD_ARTICULO or :P833_P_COD_ARTICULO is null)',
'',
'',
' order by 1, 3 asc',
')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P833_P_COD_ARTICULO,P833_P_BLOQUE,P833_P_SUB_BLOQUE,P833_P_NRO_COMPROBANTE,P833_P_COD_EMPRESA,P833_P_SER_COMPROBANTE,P833_P_TIP_COMPROBANTE,P833_EJECUTAR_REPORTE_2'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P833_EJECUTAR_REPORTE_2'
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
 p_id=>wwv_flow_imp.id(653586770966659672)
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
,p_internal_uid=>653586770966659672
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474953519452253104)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Desc Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474953940826253104)
,p_db_column_name=>'COD_ENCARGADO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Encargado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474954379587253105)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474954738158253105)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474955131404253105)
,p_db_column_name=>'DESC_ART'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Desc Art'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474955550413253106)
,p_db_column_name=>'CANTIDAD_SISTEMA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cantidad Sistema'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474955965738253106)
,p_db_column_name=>'C1'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'C1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474956349308253106)
,p_db_column_name=>'C2'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'C2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474956769680253106)
,p_db_column_name=>'C3'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'C3'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474957130057253107)
,p_db_column_name=>'C4'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'C4'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474957599291253107)
,p_db_column_name=>'C5'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'C5'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474957961002253108)
,p_db_column_name=>'C6'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'C6'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474958390499253108)
,p_db_column_name=>'C7'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'C7'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474958749743253109)
,p_db_column_name=>'C8'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'C8'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474959186338253109)
,p_db_column_name=>'CU'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cu'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474959566770253109)
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
 p_id=>wwv_flow_imp.id(474959985696253110)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474960389130253110)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474960720856253110)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474961125848253110)
,p_db_column_name=>'NRO_OT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Nro Ot'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474961586314253111)
,p_db_column_name=>'SALIDA'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Salida'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474961917412253111)
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
 p_id=>wwv_flow_imp.id(474962339524253111)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474962776771253112)
,p_db_column_name=>'USUARIO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474963153885253113)
,p_db_column_name=>'HORARIO'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Horario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474963538635253113)
,p_db_column_name=>'ZONA'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Zona Inventariada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474963928754253113)
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
 p_id=>wwv_flow_imp.id(474964357166253113)
,p_db_column_name=>'CANTIDAD_INVENTARIO'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Cantidad Inventario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474964702735253114)
,p_db_column_name=>'CORRESPONDE_BLOQUE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Corresponde Bloque'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474965147614253114)
,p_db_column_name=>'DIFERENCIA'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Diferencia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474965569467253114)
,p_db_column_name=>'ZONA_ALMACENADA'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Zona Almacenada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474965996973253115)
,p_db_column_name=>'TIPO_DIFERENCIA'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Tipo Diferencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474966390988253115)
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
'select fecha_cierre into vabierto from st_generacion_inventario where cod_empresa=:p_cod_empresa and nro_comprobante = :P833_P_NRO_COMPROBANTE;',
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
 p_id=>wwv_flow_imp.id(474951557396253103)
,p_db_column_name=>'TIPO_DIFERENCIA_CARGADA'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Tipo Diferencia Cargada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474951931479253103)
,p_db_column_name=>'TIPO_INVENTARIO'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Tipo Inventario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474952360755253103)
,p_db_column_name=>'AREA_INVENTARIO'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Area Inventario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474952712335253104)
,p_db_column_name=>'UBICACION_INVENTARIO'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Ubicacion Inventario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474953137040253104)
,p_db_column_name=>'REINCIDENTE'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Reincidente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474966729630253115)
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
 p_id=>wwv_flow_imp.id(474967190745253115)
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
 p_id=>wwv_flow_imp.id(474967517713253116)
,p_db_column_name=>'TOTAL_INVENTARIO'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Total Inventario Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1031320274239625505)
,p_db_column_name=>'COD_BLOQUE'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Cod Bloque'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1031320352679625506)
,p_db_column_name=>'COD_SUB_BLOQUE'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Cod Sub Bloque'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1031320411444625507)
,p_db_column_name=>'ZONA_CONTEO'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Zona Conteo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1031320504758625508)
,p_db_column_name=>'CANTIDAD_ZONA'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Cantidad Zona'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1031320688106625509)
,p_db_column_name=>'USUARIO_ZONA'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Usuario Zona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(662567570223583515)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1876454'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'COD_SUCURSAL:SUCURSAL:NRO_COMPROBANTE:COD_ART_CORTO:COD_ARTICULO:DESC_ART:CANTIDAD_SISTEMA:CANTIDAD_INVENTARIO:CANTIDAD_ZONA:COD_BLOQUE:COD_SUB_BLOQUE:ZONA_CONTEO:USUARIO_ZONA:DIFERENCIA:COSTO_STOCK:TOTAL_SISTEMA:TOTAL_INVENTARIO:DIFERENCIA_MONTO:USU'
||'ARIO:HORARIO:ZONA:ZONA_ALMACENADA:TIPO_DIFERENCIA:OBSERVACION:'
,p_sum_columns_on_break=>'CANTIDAD_SISTEMA:CANTIDAD_INVENTARIO:COSTO_STOCK:COSTO_INVENTARIO:DIFERENCIA:DIFERENCIA_MONTO:TOTAL_INVENTARIO:TOTAL_SISTEMA'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(1031362250610744479)
,p_report_id=>wwv_flow_imp.id(662567570223583515)
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
 p_id=>wwv_flow_imp.id(1031362645076744479)
,p_report_id=>wwv_flow_imp.id(662567570223583515)
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
 p_id=>wwv_flow_imp.id(1031363053199744480)
,p_report_id=>wwv_flow_imp.id(662567570223583515)
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
 p_id=>wwv_flow_imp.id(720817740592600550)
,p_plug_name=>'STDIVFAVANDTF'
,p_parent_plug_id=>wwv_flow_imp.id(654145369511345369)
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
'   AND G.TIP_COMPROBANTE = :P833_P_TIP_COMPROBANTE',
'   AND G.SER_COMPROBANTE = :P833_P_SER_COMPROBANTE',
'   and g.nro_comprobante = :P833_P_NRO_COMPROBANTE',
'   and :P833_EJECUTAR=''S''',
'   and :P833_EJECUTAR_REPORTE_3=''1''',
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
'   and   :P833_P_BLOQUE is null',
'   and  :P833_P_sub_bloque is null',
'   and (gd.cod_articulo=:P833_P_COD_ARTICULO_HAS or :P833_P_COD_ARTICULO_HAS is null) ',
' order by 1, 3 asc',
')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P833_P_COD_ARTICULO,P833_P_BLOQUE,P833_P_SUB_BLOQUE,P833_P_NRO_COMPROBANTE,P833_P_COD_EMPRESA,P833_P_SER_COMPROBANTE,P833_P_TIP_COMPROBANTE,P833_EJECUTAR_REPORTE_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P833_EJECUTAR_REPORTE_3'
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
 p_id=>wwv_flow_imp.id(720817885106600551)
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
,p_internal_uid=>720817885106600551
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474971778302253120)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Desc Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474972117858253121)
,p_db_column_name=>'COD_ENCARGADO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Encargado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474972529859253121)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474972933036253122)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474973345856253122)
,p_db_column_name=>'DESC_ART'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Desc Art'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474973700073253122)
,p_db_column_name=>'CANTIDAD_SISTEMA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cantidad Sistema'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474974188546253122)
,p_db_column_name=>'C1'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'C1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474974575848253123)
,p_db_column_name=>'C2'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'C2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474974935972253123)
,p_db_column_name=>'C3'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'C3'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474975348143253123)
,p_db_column_name=>'C4'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'C4'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474975765055253123)
,p_db_column_name=>'C5'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'C5'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474976188895253124)
,p_db_column_name=>'C6'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'C6'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474976520020253124)
,p_db_column_name=>'C7'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'C7'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474976975111253126)
,p_db_column_name=>'C8'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'C8'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474977330679253126)
,p_db_column_name=>'CU'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cu'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474977721083253127)
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
 p_id=>wwv_flow_imp.id(474978123751253127)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474978487882253127)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474978859519253129)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474979228987253129)
,p_db_column_name=>'SALIDA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Salida'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474979601968253129)
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
 p_id=>wwv_flow_imp.id(474980006449253129)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474980471653253130)
,p_db_column_name=>'USUARIO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474980819058253130)
,p_db_column_name=>'ZONA'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Zona Inventariada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474981271251253130)
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
 p_id=>wwv_flow_imp.id(474981652550253130)
,p_db_column_name=>'CANTIDAD_INVENTARIO'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Cantidad Inventario'
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
 p_id=>wwv_flow_imp.id(474982028095253131)
,p_db_column_name=>'OBSERVACION_DETALLE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Observacion Detalle'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474982476785253131)
,p_db_column_name=>'CLASIFICACION_REPUESTOS_ABC'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Clasificacion Repuestos Abc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474982839461253131)
,p_db_column_name=>'NRO_OT'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Nro Ot'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474983232273253131)
,p_db_column_name=>'LOTE_1'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Lote 1'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474983677857253132)
,p_db_column_name=>'LOTE_2'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Lote 2'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474984007638253132)
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
 p_id=>wwv_flow_imp.id(474984433114253132)
,p_db_column_name=>'CORRESPONDE_BLOQUE'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Corresponde Bloque'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474984864763253132)
,p_db_column_name=>'DIFERENCIA'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Diferencia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474985282284253133)
,p_db_column_name=>'ZONA_ALMACENADA'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Zona Almacenada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474985665210253133)
,p_db_column_name=>'ORDEN'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Orden'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474986012871253133)
,p_db_column_name=>'TIPO_DIFERENCIA'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Tipo Diferencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474986410736253134)
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
 p_id=>wwv_flow_imp.id(474969734453253118)
,p_db_column_name=>'TIPO_DIFERENCIA_CARGADA'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Tipo Diferencia Cargada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474970143885253119)
,p_db_column_name=>'TIPO_INVENTARIO'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Tipo Inventario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474970511476253119)
,p_db_column_name=>'AREA_INVENTARIO'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Area Inventario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474970963745253120)
,p_db_column_name=>'UBICACION_INVENTARIO'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Ubicacion Inventario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474971318924253120)
,p_db_column_name=>'REINCIDENTE'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Reincidente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(729428096139801045)
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
 p_id=>wwv_flow_imp.id(474987127607253135)
,p_report_id=>wwv_flow_imp.id(729428096139801045)
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
 p_id=>wwv_flow_imp.id(474987504154253135)
,p_report_id=>wwv_flow_imp.id(729428096139801045)
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
 p_id=>wwv_flow_imp.id(474987958827253136)
,p_report_id=>wwv_flow_imp.id(729428096139801045)
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
 p_id=>wwv_flow_imp.id(726302582642244456)
,p_plug_name=>'Observacion_Diferencia'
,p_parent_plug_id=>wwv_flow_imp.id(654145369511345369)
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(474988663029253136)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(726302582642244456)
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
 p_id=>wwv_flow_imp.id(474989070145253137)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(726302582642244456)
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
 p_id=>wwv_flow_imp.id(474923417449253064)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(653570152660797641)
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
 p_id=>wwv_flow_imp.id(474923825099253065)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(653570152660797641)
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
 p_id=>wwv_flow_imp.id(474989417421253137)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(726302582642244456)
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
 p_id=>wwv_flow_imp.id(475001020064253150)
,p_branch_name=>'IR_PAGINA_ANT'
,p_branch_action=>'f?p=&APP_ID.:559:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(474923417449253064)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(474924253501253065)
,p_name=>'P833_P_COD_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(653570152660797641)
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
 p_id=>wwv_flow_imp.id(474924611858253066)
,p_name=>'P833_P_BLOQUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(653570152660797641)
,p_prompt=>'Bloque'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     select cod_bloque||'' - ''||desc_bloque bloque, cod_bloque R',
'      from st_bloques',
'        where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P833_P_COD_SUCURSAL  ',
'AND NVL(:P833_P_IND_INVENTARIO_CPH,''N'')=''N'' ',
'group by desc_bloque, cod_bloque',
'union all',
'select cod_bloque||'' - ''||cod_bloque bloque, cod_bloque from st_posiciones',
'        where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P833_P_COD_SUCURSAL  ',
'AND NVL(:P833_P_IND_INVENTARIO_CPH,''N'')=''N'' ',
'group by cod_bloque',
'union all',
'select cod_bloque||'' - ''||desc_bloque bloque, cod_bloque',
'      from st_bloques@DBLINK_CPH',
'           where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P833_P_COD_SUCURSAL  ',
'AND NVL(:P833_P_IND_INVENTARIO_CPH,''N'')=''S''  ',
'group by desc_bloque, cod_bloque',
' union all',
'select cod_bloque||'' - ''||cod_bloque bloque, cod_bloque from st_posiciones@DBLINK_CPH',
'        where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P833_P_COD_SUCURSAL  ',
'AND NVL(:P833_P_IND_INVENTARIO_CPH,''N'')=''S'' ',
'group by cod_bloque',
'UNION ALL  ',
'     select cod_bloque||'' - ''||desc_bloque bloque, cod_bloque R',
'      from st_bloques',
'        where cod_empresa  = ''18''',
'       and cod_sucursal = :P833_P_COD_SUCURSAL  ',
'AND NVL(:P833_P_IND_INVENTARIO_CPH,''N'')=''B'' ',
'group by desc_bloque, cod_bloque',
'union all',
'select cod_bloque||'' - ''||cod_bloque bloque, cod_bloque from st_posiciones',
'        where cod_empresa  = ''18''',
'       and cod_sucursal = :P833_P_COD_SUCURSAL  ',
'AND NVL(:P833_P_IND_INVENTARIO_CPH,''N'')=''B'' ',
'group by cod_bloque',
'    order by 1  '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
,p_lov_cascade_parent_items=>'P833_P_COD_SUCURSAL'
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
 p_id=>wwv_flow_imp.id(474925000075253066)
,p_name=>'P833_P_SUB_BLOQUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(653570152660797641)
,p_prompt=>'Sub.Bloque'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'',
'       select  COD_SUB_BLOQUE||'' - ''||desc_SUB_bloque as Sub_bloque, COD_SUB_BLOQUE      ',
'',
'      from st_sub_bloques',
'      where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P833_P_COD_SUCURSAL',
'       and cod_bloque   = :P833_P_BLOQUE',
'AND NVL(:P833_P_IND_INVENTARIO_CPH,''N'')=''N'' ',
'union all ',
' select  COD_SUB_BLOQUE||'' - ''||cod_sub_bloque as Sub_bloque, cod_sub_bloque from st_posiciones',
'      where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P_COD_SUCURSAL',
'       and cod_bloque   = :P833_P_BLOQUE',
'AND NVL(:P833_P_IND_INVENTARIO_CPH,''N'')=''N'' ',
'group by cod_sub_bloque',
'UNION ALL',
'',
'',
'select  COD_SUB_BLOQUE||'' - ''||desc_SUB_bloque desc_SUB_bloque, COD_SUB_BLOQUE      ',
'',
'      from st_sub_bloques@DBLINK_CPH',
'       where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P833_P_COD_SUCURSAL',
'       and cod_bloque   = :P833_P_BLOQUE',
'AND NVL(:P833_P_IND_INVENTARIO_CPH,''N'')=''S''  ',
'union all ',
' select  cod_sub_bloque||'' - ''||cod_sub_bloque  desc_SUB_bloque, cod_sub_bloque from st_posiciones@DBLINK_CPH',
'      where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P833_P_COD_SUCURSAL',
'       and cod_bloque   = :P833_P_BLOQUE',
'AND NVL(:P833_P_IND_INVENTARIO_CPH,''N'')=''S'' ',
'group by cod_sub_bloque',
'',
'UNION ALL  ',
' select  COD_SUB_BLOQUE||'' - ''||desc_SUB_bloque as Sub_bloque, COD_SUB_BLOQUE      ',
'',
'      from st_sub_bloques',
'      where cod_empresa  = ''18''',
'       and cod_sucursal = :P833_P_COD_SUCURSAL',
'       and cod_bloque   = :P833_P_BLOQUE',
'AND NVL(:P833_P_IND_INVENTARIO_CPH,''N'')=''B'' ',
'union all ',
' select  COD_SUB_BLOQUE||'' - ''||cod_sub_bloque as Sub_bloque, cod_sub_bloque from st_posiciones',
'      where cod_empresa  = ''18''',
'       and cod_sucursal = :P_COD_SUCURSAL',
'       and cod_bloque   = :P833_P_BLOQUE',
'AND NVL(:P833_P_IND_INVENTARIO_CPH,''N'')=''B'' ',
'group by cod_sub_bloque',
'',
'    order by 1  '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
,p_lov_cascade_parent_items=>'P833_P_BLOQUE,P833_P_COD_SUCURSAL'
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
 p_id=>wwv_flow_imp.id(474925425152253067)
,p_name=>'P833_P_COD_POSICION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(653570152660797641)
,p_prompt=>'Posicion'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'       select  cod_posicion  as d, cod_posicion ',
'      from st_posiciones',
'      where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P_COD_SUCURSAL',
'       and cod_bloque   = :P833_P_BLOQUE',
'       and cod_sub_bloque = :P833_P_SUB_BLOQUE',
'AND NVL(:P833_P_IND_INVENTARIO_CPH,''N'')=''N''  ',
'union all',
'',
'select   cod_posicion desc_SUB_bloque, cod_posicion      ',
'',
'      from st_posiciones@DBLINK_CPH',
'         where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P_COD_SUCURSAL',
'       and cod_bloque   = :P833_P_BLOQUE',
'       and cod_sub_bloque = :P833_P_SUB_BLOQUE',
'AND NVL(:P833_P_IND_INVENTARIO_CPH,''N'')=''S''  ',
'union all ',
' select  cod_posicion  desc_SUB_bloque, cod_posicion from st_posiciones@DBLINK_CPH',
'        where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P_COD_SUCURSAL',
'       and cod_bloque   = :P833_P_BLOQUE',
'       and cod_sub_bloque = :P833_P_SUB_BLOQUE',
'AND NVL(:P833_P_IND_INVENTARIO_CPH,''N'')=''S'' ',
' union all  ',
'        select  cod_posicion  as d, cod_posicion ',
'      from st_posiciones',
'      where cod_empresa  = ''18''',
'       and cod_sucursal = :P_COD_SUCURSAL',
'       and cod_bloque   = :P833_P_BLOQUE',
'       and cod_sub_bloque = :P833_P_SUB_BLOQUE',
'AND NVL(:P833_P_IND_INVENTARIO_CPH,''N'')=''B''',
'    order by 1  '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
,p_lov_cascade_parent_items=>'P833_P_BLOQUE,P833_P_COD_SUCURSAL'
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
 p_id=>wwv_flow_imp.id(474925811722253067)
,p_name=>'P833_P_COD_ARTICULO_DES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(653570152660797641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(474926209893253067)
,p_name=>'P833_P_COD_ARTICULO_HAS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(653570152660797641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(474926679922253067)
,p_name=>'P833_P_COD_EMPRESA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(653570152660797641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(474927065674253068)
,p_name=>'P833_P_SER_COMPROBANTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(653570152660797641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(474927457482253068)
,p_name=>'P833_P_TIP_COMPROBANTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(653570152660797641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(474927887724253068)
,p_name=>'P833_P_IND_INVENTARIO_CPH'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(653570152660797641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(474928291930253068)
,p_name=>'P833_P_COD_SUCURSAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(653570152660797641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(474928656139253068)
,p_name=>'P833_EJECUTAR_REPORTE_1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(653570152660797641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(474929097709253068)
,p_name=>'P833_EJECUTAR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(653570152660797641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(474929497878253069)
,p_name=>'P833_EJECUTAR_REPORTE_2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(653570152660797641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(474929878054253069)
,p_name=>'P833_EJECUTAR_REPORTE_3'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(653570152660797641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(474930226905253069)
,p_name=>'P833_P_NRO_COMPROBANTE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(653570152660797641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(474930682331253069)
,p_name=>'P833_COD_ARTICULO_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(653570152660797641)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(474989861685253137)
,p_name=>'P833_TIPO_DIFERENCIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(726302582642244456)
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
 p_id=>wwv_flow_imp.id(474990232536253137)
,p_name=>'P833_COMENTARIO_DIFERENCIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(726302582642244456)
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
 p_id=>wwv_flow_imp.id(474990658469253137)
,p_name=>'P833_REINCIDENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(726302582642244456)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(474991077291253143)
,p_name=>'DA_ACEPTAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(474923825099253065)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(474991568563253145)
,p_event_id=>wwv_flow_imp.id(474991077291253143)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P833_P_IND_INVENTARIO_CPH=''S'' THEN',
' 	BEGIN',
'        :P833_EJECUTAR_REPORTE_2 := 1;',
'        :P833_EJECUTAR_REPORTE_1 := NULL;',
'         :P833_EJECUTAR_REPORTE_3 := NULL;',
'        ',
':P833_EJECUTAR:=''S'';',
'',
' sp_reprocesa_conteo_CPH(:p_cod_empresa ,',
'	''PR'',',
'                                                sysdate -6     ,',
'                                               sysdate +5     ,',
'                                                :P833_P_NRO_COMPROBANTE);',
'',
'',
'    END;',
'ELSIF  :P833_P_IND_INVENTARIO_CPH=''T'' THEN',
' 	BEGIN',
'        :P833_EJECUTAR_REPORTE_2 := NULL;',
'        :P833_EJECUTAR_REPORTE_1 := NULL;',
'          :P833_EJECUTAR_REPORTE_3 := 1;',
':P833_EJECUTAR:=''S'';',
'',
' sp_reprocesa_conteo_TF(:p_cod_empresa ,',
'	''PR'',',
'                                                sysdate -6     ,',
'                                               sysdate +5     ,',
'                                                :P833_P_NRO_COMPROBANTE);',
'',
'',
'    END;',
'    ELSIF  :P833_P_IND_INVENTARIO_CPH=''B'' THEN',
' 	 ',
' 	BEGIN',
'        :P833_EJECUTAR_REPORTE_1 := 1;',
'        :P833_EJECUTAR_REPORTE_2 := NULL;',
'        :P833_EJECUTAR_REPORTE_3 := NULL;',
'        :P833_EJECUTAR:=''S'';',
' sp_reprocesa_conteo_BH(:p_cod_empresa ,',
'	''PR'',',
'                                                sysdate -6     ,',
'                                               sysdate +5     ,',
'                                                :P833_P_NRO_COMPROBANTE);',
'',
'',
'    END;    ',
'',
'    ',
'ELSE',
'    BEGIN',
'        :P833_EJECUTAR_REPORTE_1 := 1;',
'        :P833_EJECUTAR_REPORTE_2 := NULL;',
'        :P833_EJECUTAR_REPORTE_3 := NULL;',
'        :P833_EJECUTAR:=''S'';',
'        ',
' sp_reprocesa_conteo(:p_cod_empresa ,',
'	''PR'',',
'                                                sysdate -6     ,',
'                                               sysdate +5     ,',
'                                                :P833_P_NRO_COMPROBANTE);',
'    END;',
'END IF;'))
,p_attribute_02=>'P833_P_IND_INVENTARIO_CPH'
,p_attribute_03=>'P833_EJECUTAR_REPORTE_1,P833_EJECUTAR_REPORTE_2,P833_EJECUTAR,P833_EJECUTAR_REPORTE_3'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(474992097533253145)
,p_event_id=>wwv_flow_imp.id(474991077291253143)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var spinner = apex.util.showSpinner(); ',
'$("#apex_wait_overlay").remove(); '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(474992583042253146)
,p_event_id=>wwv_flow_imp.id(474991077291253143)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(653572490184797664)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P833_EJECUTAR_REPORTE_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(474993052693253146)
,p_event_id=>wwv_flow_imp.id(474991077291253143)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(653572700029797666)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P833_EJECUTAR_REPORTE_2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(474993519812253147)
,p_event_id=>wwv_flow_imp.id(474991077291253143)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(720817740592600550)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P833_EJECUTAR_REPORTE_2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(474994014601253147)
,p_event_id=>wwv_flow_imp.id(474991077291253143)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".u-Processing").remove(); ',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(474994512140253147)
,p_event_id=>wwv_flow_imp.id(474991077291253143)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(474994992964253147)
,p_name=>'DA_VOLVER'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(474923417449253064)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(474995477883253147)
,p_event_id=>wwv_flow_imp.id(474994992964253147)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(474995888059253147)
,p_name=>'da_cod_Articulo_id'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P833_COD_ARTICULO_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(474996316149253148)
,p_event_id=>wwv_flow_imp.id(474995888059253147)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select   tipo_diferencia,comentario_diferencia,IND_REINCIDENTE',
'into :P833_TIPO_DIFERENCIA, :P833_COMENTARIO_DIFERENCIA, :P833_REINCIDENTE',
'from  st_generacion_inventario_det ',
'WHERE COD_EMPRESA=:P_COD_EMPRESA',
'AND NRO_COMPROBANTE = :P833_P_NRO_COMPROBANTE',
'AND COD_ARTICULO = :P833_COD_ARTICULO_ID;',
'exception',
'when others then',
':P833_TIPO_DIFERENCIA:=null;',
':P833_COMENTARIO_DIFERENCIA:=null;',
' :P833_REINCIDENTE:=null;',
'end;'))
,p_attribute_02=>'P833_P_NRO_COMPROBANTE,P833_COD_ARTICULO_ID,P_COD_EMPRESA'
,p_attribute_03=>'P833_TIPO_DIFERENCIA,P833_COMENTARIO_DIFERENCIA,P833_REINCIDENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(474996899959253148)
,p_event_id=>wwv_flow_imp.id(474995888059253147)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(726302582642244456)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(474997273995253148)
,p_name=>'da_cancelar_obs_dif'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(474989070145253137)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(474997712496253148)
,p_event_id=>wwv_flow_imp.id(474997273995253148)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(726302582642244456)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(474998122899253149)
,p_name=>'da_aceptar_obs_dif_1'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(474989417421253137)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(474998680356253149)
,p_event_id=>wwv_flow_imp.id(474998122899253149)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update st_generacion_inventario_det set tipo_diferencia=:P833_TIPO_DIFERENCIA, comentario_diferencia=:P833_COMENTARIO_DIFERENCIA, IND_REINCIDENTE=:P833_REINCIDENTE',
'WHERE COD_EMPRESA=:P_COD_EMPRESA',
'AND NRO_COMPROBANTE = :P833_P_NRO_COMPROBANTE',
'AND COD_ARTICULO = :P833_COD_ARTICULO_ID;',
'end;'))
,p_attribute_02=>'P833_P_NRO_COMPROBANTE,P833_COD_ARTICULO_ID,P_COD_EMPRESA,P833_TIPO_DIFERENCIA,P833_COMENTARIO_DIFERENCIA,P833_REINCIDENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(474999109174253149)
,p_event_id=>wwv_flow_imp.id(474998122899253149)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(726302582642244456)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(474999594464253150)
,p_name=>'da_aceptar_obs_dif_1_1'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(474988663029253136)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(475000011508253150)
,p_event_id=>wwv_flow_imp.id(474999594464253150)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'delete st_generacion_inventario_det set tipo_diferencia=:P833_TIPO_DIFERENCIA, comentario_diferencia=:P833_COMENTARIO_DIFERENCIA, IND_REINCIDENTE=:P833_REINCIDENTE',
'WHERE COD_EMPRESA=:P_COD_EMPRESA',
'AND NRO_COMPROBANTE = :P833_P_NRO_COMPROBANTE',
'AND COD_ARTICULO = :P833_COD_ARTICULO_ID;',
'end;'))
,p_attribute_02=>'P833_P_NRO_COMPROBANTE,P833_COD_ARTICULO_ID,P_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(475000590129253150)
,p_event_id=>wwv_flow_imp.id(474999594464253150)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(726302582642244456)
);
wwv_flow_imp.component_end;
end;
/
