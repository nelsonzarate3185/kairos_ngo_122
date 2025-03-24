prompt --application/pages/page_00814
begin
--   Manifest
--     PAGE: 00814
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
 p_id=>814
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Resumen de Diferencia'
,p_alias=>'RESUMEN-DE-DIFERENCIA'
,p_step_title=>'Resumen de Diferencia'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250111112007'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(629434619765461666)
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
 p_id=>wwv_flow_imp.id(629993103061147362)
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
 p_id=>wwv_flow_imp.id(629417886210599634)
,p_plug_name=>'PARAMETROS'
,p_parent_plug_id=>wwv_flow_imp.id(629993103061147362)
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
 p_id=>wwv_flow_imp.id(629420223734599657)
,p_plug_name=>'Resumen de Inventario'
,p_region_name=>'NGO'
,p_parent_plug_id=>wwv_flow_imp.id(629993103061147362)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'DESC_SUCURSAL,  COD_ENCARGADO ,COD_SUCURSAL,  COD_ARTICULO, DESC_ART, CANTIDAD_SISTEMA  ,C1 ,C2,  C3, C4, C5, C6, C7, C8, CU,  (COSTO_STOCK*CANTIDAD_SISTEMA) COSTO_STOCK,',
'  NRO_COMPROBANTE  ,SUCURSAL,  COD_ART_CORTO  ,NRO_OT  ,ENTRADA  SALIDA  ,COSTO_PROM,  OBSERVACION  ,USUARIO  ,HORARIO,  ZONA  ,COSTO_INVENTARIO  ,',
'  CANTIDAD_INVENTARIO  ,OBSERVACION_DETALLE,  CLASIFICACION_REPUESTOS_ABC,  LOTE_1,  LOTE_2,  ORDEN  ,CORRESPONDE_BLOQUE,',
'  cu-CANTIDAD_SISTEMA DIFERENCIA, zona_almacenada,',
'  case when cu-CANTIDAD_SISTEMA>0 THEN ''Diferencia Positiva''',
'   when cu-CANTIDAD_SISTEMA<0 THEN ''Diferencia Negativa''',
'   when cu-CANTIDAD_SISTEMA=0 THEN ''Sin Diferencia''',
'   else ''Sin Conteo Registrado'' end tipo_diferencia, null observacion_diferencia,',
'       replace(upper(nvl(tipo_diferencia,''SIN TIPO'')),''-'','' '')tipo_diferencia_REGISTRO, comentario_diferencia,ind_reincidente,',
'       COSTO_INVENTARIO-(COSTO_STOCK*CANTIDAD_SISTEMA)  DIFERENCIA_costo',
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
'              and (p.cod_sub_bloque=:P814_P_sub_bloque or :P814_P_sub_bloque is null)',
'            and ( p.cod_bloque= :P814_P_BLOQUE or :P814_P_BLOQUE is null) ',
'             ',
'            AND ROWNUM=1',
'            ) ,''NO'')CORRESPONDE_BLOQUE, (select descripcion from CO_TIPO_DIFERENCIA where cod_tipo_diferencia=gd.tipo_diferencia)tipo_diferencia, gd.comentario_diferencia,gd.ind_reincidente',
'           ',
'             ',
'  from st_generacion_inventario     g,',
'       st_generacion_inventario_det gd,',
'       st_articulos                 a,',
'       sucursales                   s,',
'       st_conteo_inventario         cc ',
' where G.cod_empresa = :p_cod_empresa',
'   AND G.TIP_COMPROBANTE = :P814_P_TIP_COMPROBANTE',
'   AND G.SER_COMPROBANTE = :P814_P_SER_COMPROBANTE',
'   and g.nro_comprobante = :P814_P_NRO_COMPROBANTE',
'     and :P814_EJECUTAR=''S''',
'     and :P814_EJECUTAR_REPORTE_1=''1''',
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
'             and (p.cod_sub_bloque=:P814_P_sub_bloque or :P814_P_sub_bloque is null)',
'            and ( p.cod_bloque= :P814_P_BLOQUE or :P814_P_BLOQUE is null)',
'            union all',
'            select b.cod_articulo ',
'            from     ST_BLOQUE_PRODUCTOS b',
'            where    gd.cod_empresa=b.cod_empresa',
'   and gd.cod_articulo=b.cod_articulo',
'   and g.cod_sucursal=b.cod_sucursal',
'   and ( b.cod_bloque= :P814_P_BLOQUE or :P814_P_BLOQUE is null)',
'   and (b.cod_sub_bloque=:P814_P_sub_bloque or :P814_P_sub_bloque is null)',
'   union ALL ',
'   SELECT ub.cod_articulo ',
'   from st_ubic_articulos ub ',
'   where ub.cod_empresa=gd.cod_empresa ',
'   and ub.cod_sucursal=g.cod_sucursal',
'    and ub.cod_articulo=gd.cod_articulo',
'     and ( ub.cod_bloque= :P814_P_BLOQUE or :P814_P_BLOQUE is null)',
'   and (ub.cod_sub_bloque=:P814_P_sub_bloque or :P814_P_sub_bloque is null)',
'   )  ',
'      and cod_rubro   in (''RE'',''PR'',''MUE'')   ',
'    and (  :P814_P_BLOQUE is not null',
'     or   :P814_P_sub_bloque is not null) ',
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
'              and (p.cod_sub_bloque=:P814_P_sub_bloque or :P814_P_sub_bloque is null)',
'            and ( p.cod_bloque= :P814_P_BLOQUE or :P814_P_BLOQUE is null) ',
'             AND ROWNUM=1',
'            ) ,''NO'')CORRESPONDE_BLOQUE ,(select descripcion from CO_TIPO_DIFERENCIA where cod_tipo_diferencia=gd.tipo_diferencia)tipo_diferencia  , gd.comentario_diferencia,gd.ind_reincidente',
'  from st_generacion_inventario     g,',
'       st_generacion_inventario_det gd,',
'       st_articulos                 a,',
'       sucursales                   s,',
'       st_conteo_inventario         cc',
' where G.cod_empresa = :p_cod_empresa',
'   AND G.TIP_COMPROBANTE = :P814_P_TIP_COMPROBANTE',
'   AND G.SER_COMPROBANTE = :P814_P_SER_COMPROBANTE',
'   and g.nro_comprobante = :P814_P_NRO_COMPROBANTE',
'   and :P814_EJECUTAR=''S''',
'   and :P814_EJECUTAR_REPORTE_1=''1''',
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
'   and   :P814_P_BLOQUE is null',
'   and  :P814_P_sub_bloque is null',
'   and (gd.cod_articulo=:P814_P_COD_ARTICULO_HAS or :P814_P_COD_ARTICULO_HAS is null) ',
'   UNION ALL    ',
'    ',
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
'            ) ,''NO'')CORRESPONDE_BLOQUE ,(select descripcion from CO_TIPO_DIFERENCIA where cod_tipo_diferencia=gd.tipo_diferencia)tipo_diferencia  , gd.comentario_diferencia,gd.ind_reincidente',
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
'            ) ,''NO'')CORRESPONDE_BLOQUE,(select descripcion from CO_TIPO_DIFERENCIA where cod_tipo_diferencia=gd.tipo_diferencia)tipo_diferencia  , gd.comentario_diferencia,gd.ind_reincidente',
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
' order by 1, 3 asc',
')',
'where cu-CANTIDAD_SISTEMA<>0'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P814_P_COD_ARTICULO,P814_P_BLOQUE,P814_P_SUB_BLOQUE,P814_P_NRO_COMPROBANTE,P814_P_COD_EMPRESA,P814_P_SER_COMPROBANTE,P814_P_TIP_COMPROBANTE,P814_EJECUTAR_REPORTE_1'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P814_EJECUTAR_REPORTE_1'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resumen de Inventario'
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
 p_id=>wwv_flow_imp.id(629420497244599660)
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
,p_internal_uid=>629420497244599660
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450778691744055047)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Desc Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450779011109055047)
,p_db_column_name=>'COD_ENCARGADO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Encargado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450779447595055048)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450779758990055048)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450780102263055048)
,p_db_column_name=>'DESC_ART'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Desc Art'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450780577234055049)
,p_db_column_name=>'CANTIDAD_SISTEMA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'S/ Inventiva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450780947732055049)
,p_db_column_name=>'C1'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'C1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450781327121055049)
,p_db_column_name=>'C2'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'C2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450781789133055050)
,p_db_column_name=>'C3'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'C3'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450782105138055050)
,p_db_column_name=>'C4'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'C4'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450782515871055050)
,p_db_column_name=>'C5'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'C5'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450782918780055050)
,p_db_column_name=>'C6'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'C6'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450783346276055051)
,p_db_column_name=>'C7'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'C7'
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
 p_id=>wwv_flow_imp.id(450783736656055051)
,p_db_column_name=>'C8'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'C8'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450784123629055051)
,p_db_column_name=>'CU'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cu'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450784586676055051)
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
 p_id=>wwv_flow_imp.id(450784939367055052)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450785390513055052)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450785729427055052)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450786163721055052)
,p_db_column_name=>'SALIDA'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Salida'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450786576931055053)
,p_db_column_name=>'COSTO_PROM'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Costo Prom'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450786942790055053)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450787379795055053)
,p_db_column_name=>'USUARIO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450787717570055053)
,p_db_column_name=>'ZONA'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Zona Inventariada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450788148388055054)
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
 p_id=>wwv_flow_imp.id(450788537916055054)
,p_db_column_name=>'CANTIDAD_INVENTARIO'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'S/ Conteo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450788935559055054)
,p_db_column_name=>'OBSERVACION_DETALLE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Observacion Detalle'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450789387416055055)
,p_db_column_name=>'CLASIFICACION_REPUESTOS_ABC'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Clasificacion Repuestos Abc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450789768816055055)
,p_db_column_name=>'NRO_OT'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Nro Ot'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450790124837055055)
,p_db_column_name=>'LOTE_1'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Lote 1'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450790552233055055)
,p_db_column_name=>'LOTE_2'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Lote 2'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450790978080055056)
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
 p_id=>wwv_flow_imp.id(450791344207055056)
,p_db_column_name=>'CORRESPONDE_BLOQUE'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Corresponde Bloque'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450791731916055056)
,p_db_column_name=>'DIFERENCIA'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Diferencia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450792161091055056)
,p_db_column_name=>'ORDEN'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Orden'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450792537903055059)
,p_db_column_name=>'ZONA_ALMACENADA'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Zona Almacenada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450792983865055059)
,p_db_column_name=>'TIPO_DIFERENCIA'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Tipo Diferencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450793320773055060)
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
'select fecha_cierre into vabierto from st_generacion_inventario where cod_empresa=:p_cod_empresa and nro_comprobante = :P814_P_NRO_COMPROBANTE;',
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
 p_id=>wwv_flow_imp.id(251382603456991439)
,p_db_column_name=>'TIPO_DIFERENCIA_REGISTRO'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Tipo Diferencia Registro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(251382752173991440)
,p_db_column_name=>'COMENTARIO_DIFERENCIA'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Comentario Diferencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(251382851046991441)
,p_db_column_name=>'IND_REINCIDENTE'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Reincidente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(251382969072991442)
,p_db_column_name=>'DIFERENCIA_COSTO'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'Diferencia Costo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(629455558944384182)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1786856'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'TIPO_DIFERENCIA_REGISTRO:COD_ARTICULO:DESC_ART:CANTIDAD_SISTEMA:CANTIDAD_INVENTARIO:DIFERENCIA:COSTO_STOCK:COSTO_INVENTARIO:DIFERENCIA_COSTO:COMENTARIO_DIFERENCIA:'
,p_break_on=>'TIPO_DIFERENCIA_REGISTRO:0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0:TIPO_DIFERENCIA_REGISTRO'
,p_sum_columns_on_break=>'CANTIDAD_SISTEMA:CANTIDAD_INVENTARIO:DIFERENCIA:COSTO_STOCK:COSTO_INVENTARIO:DIFERENCIA_COSTO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(629420433579599659)
,p_plug_name=>'Resumen de Inventario'
,p_region_name=>'CPH'
,p_parent_plug_id=>wwv_flow_imp.id(629993103061147362)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'DESC_SUCURSAL,	COD_ENCARGADO	,COD_SUCURSAL,	COD_ARTICULO,	DESC_ART,	CANTIDAD_SISTEMA	,C1	,C2,	C3,	C4,	C5,	C6,	C7,	C8,	CU,	(COSTO_STOCK*CANTIDAD_SISTEMA) COSTO_STOCK,',
'	NRO_COMPROBANTE	,SUCURSAL,	COD_ART_CORTO	,NRO_OT	,ENTRADA	SALIDA	,COSTO_PROM,	OBSERVACION	,USUARIO	,HORARIO,	ZONA	,COSTO_INVENTARIO	,',
'  CANTIDAD_INVENTARIO	,				CORRESPONDE_BLOQUE,',
'  CANTIDAD_SISTEMA- CU DIFERENCIA, zona_almacenada,',
'    case when cu-CANTIDAD_SISTEMA>0 THEN ''Diferencia Positiva''',
'   when cu-CANTIDAD_SISTEMA<0 THEN ''Diferencia Negativa''',
'   when cu-CANTIDAD_SISTEMA=0 THEN ''Sin Diferencia''',
'   else ''Sin Conteo Registrado'' end tipo_diferencia, null observacion_diferencia,',
'        replace(upper(nvl(tipo_diferencia,''SIN TIPO'')),''-'','' '')tipo_diferencia_REGISTRO, comentario_diferencia,ind_reincidente,',
'       COSTO_INVENTARIO-(COSTO_STOCK*CANTIDAD_SISTEMA) DIFERENCIA_costo',
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
'              and (p.cod_sub_bloque=:P_sub_bloque or :P_sub_bloque is null)',
'            and ( p.cod_bloque= :P814_P_BLOQUE or :P814_P_BLOQUE is null) ',
'            AND ROWNUM=1',
'            ) ,''NO'')CORRESPONDE_BLOQUE,',
'              ubicacion_real_cph(gd.cod_articulo,g.cod_sucursal,null)  zona_almacenada, (select descripcion from CO_TIPO_DIFERENCIA where cod_tipo_diferencia=gd.tipo_diferencia)tipo_diferencia, gd.comentario_diferencia,gd.ind_reincidente',
'  from st_generacion_inventario     g,',
'       st_generacion_inventario_det gd,',
'       v_articulos_cph                 a,',
'       sucursales@dblink_cph                   s,',
'       st_conteo_inventario         cc',
'       ',
' where G.cod_empresa = :P814_P_COD_EMPRESA',
'   AND G.TIP_COMPROBANTE = :P814_P_TIP_COMPROBANTE',
'   AND G.SER_COMPROBANTE = :P814_P_SER_COMPROBANTE',
'   and g.nro_comprobante = :P814_P_NRO_COMPROBANTE',
'     and :P814_EJECUTAR=''S''',
'     and :P814_EJECUTAR_REPORTE_2=''1''',
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
'             and (p.cod_sub_bloque=:P_sub_bloque or :P_sub_bloque is null)',
'            and ( p.cod_bloque= :P814_P_BLOQUE or :P814_P_BLOQUE is null) ',
' union all',
'            select b.cod_articulo ',
'            from     ST_BLOQUE_PRODUCTOS@DBLINK_CPH b',
'            where    gd.cod_empresa=b.cod_empresa',
'   and gd.cod_articulo=b.cod_articulo',
'   and g.cod_sucursal=b.cod_sucursal',
'   and ( b.cod_bloque= :P814_P_BLOQUE or :P814_P_BLOQUE is null)',
'   and (b.cod_sub_bloque=:P_sub_bloque or :P_sub_bloque is null) ) ',
' ',
'   and (gd.cod_articulo=:P814_P_COD_ARTICULO or :P814_P_COD_ARTICULO is null)',
'  ',
'       and (  :P814_P_BLOQUE is not null',
'     or   :P_sub_bloque is not null)',
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
'           ) CANTIDAD_inventario,NULL CORRESPONDE_BLOQUE,ubicacion_real_cph(gd.cod_articulo,g.cod_sucursal,null)  zona_almacenada, ',
'           (select descripcion from CO_TIPO_DIFERENCIA where cod_tipo_diferencia=gd.tipo_diferencia)tipo_diferencia, gd.comentario_diferencia,gd.ind_reincidente',
'  from st_generacion_inventario     g,',
'       st_generacion_inventario_det gd,',
'       V_ARTICULOS_CPH                 a,',
'       sucursales@DBLINK_CPH                   s,',
'       st_conteo_inventario         cc',
' where G.cod_empresa = :P814_P_COD_EMPRESA',
'   AND G.TIP_COMPROBANTE = :P814_P_TIP_COMPROBANTE',
'   AND G.SER_COMPROBANTE = :P814_P_SER_COMPROBANTE',
'   and g.nro_comprobante = :P814_P_NRO_COMPROBANTE',
'     and :P814_EJECUTAR=''S''',
'     and :P814_EJECUTAR_REPORTE_2=''1''',
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
'   and   :P814_P_BLOQUE is null',
'   and  :P814_P_SUB_BLOQUE is null',
'   and (gd.cod_articulo=:P814_P_COD_ARTICULO or :P814_P_COD_ARTICULO is null)',
'',
'',
' order by 1, 3 asc',
')',
'where cu-CANTIDAD_SISTEMA<>0'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P814_P_COD_ARTICULO,P814_P_BLOQUE,P814_P_SUB_BLOQUE,P814_P_NRO_COMPROBANTE,P814_P_COD_EMPRESA,P814_P_SER_COMPROBANTE,P814_P_TIP_COMPROBANTE,P814_EJECUTAR_REPORTE_2'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P814_EJECUTAR_REPORTE_2'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resumen de Inventario'
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
 p_id=>wwv_flow_imp.id(629434504516461665)
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
,p_internal_uid=>629434504516461665
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450795157641055063)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Desc Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450795506127055063)
,p_db_column_name=>'COD_ENCARGADO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Encargado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450795923811055063)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450796377591055064)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450796734564055064)
,p_db_column_name=>'DESC_ART'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Desc Art'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450797128152055064)
,p_db_column_name=>'CANTIDAD_SISTEMA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'S/ Inventiva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450797513215055065)
,p_db_column_name=>'C1'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'C1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450797980006055065)
,p_db_column_name=>'C2'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'C2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450798393193055065)
,p_db_column_name=>'C3'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'C3'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450798780456055066)
,p_db_column_name=>'C4'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'C4'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450799139988055066)
,p_db_column_name=>'C5'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'C5'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450799512222055066)
,p_db_column_name=>'C6'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'C6'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450799915149055066)
,p_db_column_name=>'C7'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'C7'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450800388019055067)
,p_db_column_name=>'C8'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'C8'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450800731925055067)
,p_db_column_name=>'CU'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cu'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450801194636055067)
,p_db_column_name=>'COSTO_STOCK'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Costo Stock'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450801566314055067)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450801969304055068)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450802398630055068)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450802763685055068)
,p_db_column_name=>'NRO_OT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Nro Ot'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450803151691055068)
,p_db_column_name=>'SALIDA'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Salida'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450803558536055069)
,p_db_column_name=>'COSTO_PROM'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Costo Prom'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450803901207055069)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450804379307055069)
,p_db_column_name=>'USUARIO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450804746483055070)
,p_db_column_name=>'HORARIO'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Horario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450805149574055070)
,p_db_column_name=>'ZONA'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Zona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450805578743055070)
,p_db_column_name=>'COSTO_INVENTARIO'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Costo Inventario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450805924578055070)
,p_db_column_name=>'CANTIDAD_INVENTARIO'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'S/ Conteo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450806354940055071)
,p_db_column_name=>'CORRESPONDE_BLOQUE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Corresponde Bloque'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450806770530055071)
,p_db_column_name=>'DIFERENCIA'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Diferencia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450807126005055071)
,p_db_column_name=>'ZONA_ALMACENADA'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Zona Almacenada'
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
 p_id=>wwv_flow_imp.id(450807593671055071)
,p_db_column_name=>'TIPO_DIFERENCIA'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Tipo Diferencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450807936968055072)
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
'select fecha_cierre into vabierto from st_generacion_inventario where cod_empresa=:p_cod_empresa and nro_comprobante = :P814_P_NRO_COMPROBANTE;',
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
 p_id=>wwv_flow_imp.id(251383656548991449)
,p_db_column_name=>'TIPO_DIFERENCIA_REGISTRO'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Tipo Diferencia Registro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(251383708536991450)
,p_db_column_name=>'COMENTARIO_DIFERENCIA'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Comentario Diferencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450854581003357801)
,p_db_column_name=>'IND_REINCIDENTE'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Reincidente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450854613697357802)
,p_db_column_name=>'DIFERENCIA_COSTO'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Diferencia Costo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(638415303773385508)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1876454'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'TIPO_DIFERENCIA_REGISTRO:COD_ART_CORTO:COD_ARTICULO:DESC_ART:CANTIDAD_SISTEMA:CANTIDAD_INVENTARIO:DIFERENCIA:DIFERENCIA_COSTO:TIPO_DIFERENCIA:COMENTARIO_DIFERENCIA:IND_REINCIDENTE:'
,p_break_on=>'TIPO_DIFERENCIA_REGISTRO:0:0:0:0:0'
,p_break_enabled_on=>'TIPO_DIFERENCIA_REGISTRO:0:0:0:0:0'
,p_sum_columns_on_break=>'CANTIDAD_SISTEMA:CANTIDAD_INVENTARIO:COSTO_STOCK:COSTO_INVENTARIO:DIFERENCIA:DIFERENCIA_COSTO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(696665474142402543)
,p_plug_name=>'Resumen de Inventario'
,p_region_name=>'tf'
,p_parent_plug_id=>wwv_flow_imp.id(629993103061147362)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'DESC_SUCURSAL,  COD_ENCARGADO ,COD_SUCURSAL,  COD_ARTICULO, DESC_ART, CANTIDAD_SISTEMA  ,C1 ,C2,  C3, C4, C5, C6, C7, C8, CU,  (COSTO_STOCK*CANTIDAD_SISTEMA) COSTO_STOCK,',
'  NRO_COMPROBANTE  ,SUCURSAL,  COD_ART_CORTO  ,NRO_OT  ,ENTRADA  SALIDA  ,COSTO_PROM,  OBSERVACION  ,USUARIO  ,HORARIO,  ZONA  ,COSTO_INVENTARIO  ,',
'  CANTIDAD_INVENTARIO  ,OBSERVACION_DETALLE,  CLASIFICACION_REPUESTOS_ABC,  LOTE_1,  LOTE_2,  1 ORDEN  ,CORRESPONDE_BLOQUE,',
'  cu-CANTIDAD_SISTEMA DIFERENCIA, zona_almacenada,',
'    case when cu-CANTIDAD_SISTEMA>0 THEN ''Diferencia Positiva''',
'   when cu-CANTIDAD_SISTEMA<0 THEN ''Diferencia Negativa''',
'   when cu-CANTIDAD_SISTEMA=0 THEN ''Sin Diferencia''',
'   else ''Sin Conteo Registrado'' end tipo_diferencia, null observacion_diferencia,',
'    ',
'        replace(upper(nvl(tipo_diferencia,''SIN TIPO'')),''-'','' '') tipo_diferencia_REGISTRO, comentario_diferencia,ind_reincidente,',
'       COSTO_INVENTARIO-(COSTO_STOCK*CANTIDAD_SISTEMA) DIFERENCIA_costo',
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
'           null CORRESPONDE_BLOQUE , (select descripcion from INV.CO_TIPO_DIFERENCIA where cod_tipo_diferencia=gd.tipo_diferencia)  tipo_diferencia, gd.comentario_diferencia,gd.ind_reincidente',
'  from st_generacion_inventario     g,',
'       st_generacion_inventario_det gd,',
'       V_ARTICULOS_TF                 a,',
'       sucursales@Dblink_Tf                   s,',
'       st_conteo_inventario         cc',
' where G.cod_empresa = :p_cod_empresa',
'   AND G.TIP_COMPROBANTE = :P814_P_TIP_COMPROBANTE',
'   AND G.SER_COMPROBANTE = :P814_P_SER_COMPROBANTE',
'   and g.nro_comprobante = :P814_P_NRO_COMPROBANTE',
'   and :P814_EJECUTAR=''S''',
'   and :P814_EJECUTAR_REPORTE_3=''1''',
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
'   and   :P814_P_BLOQUE is null',
'   and  :P814_P_sub_bloque is null',
'   and (gd.cod_articulo=:P814_P_COD_ARTICULO_HAS or :P814_P_COD_ARTICULO_HAS is null) ',
' order by 1, 3 asc',
')where cu-CANTIDAD_SISTEMA<>0'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P814_P_COD_ARTICULO,P814_P_BLOQUE,P814_P_SUB_BLOQUE,P814_P_NRO_COMPROBANTE,P814_P_COD_EMPRESA,P814_P_SER_COMPROBANTE,P814_P_TIP_COMPROBANTE,P814_EJECUTAR_REPORTE_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P814_EJECUTAR_REPORTE_3'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resumen de Inventario'
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
 p_id=>wwv_flow_imp.id(696665618656402544)
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
,p_internal_uid=>696665618656402544
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450809714408055073)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Desc Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450810107124055074)
,p_db_column_name=>'COD_ENCARGADO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Encargado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450810594335055074)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450810992844055074)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450811305626055074)
,p_db_column_name=>'DESC_ART'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Desc Art'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450811707350055074)
,p_db_column_name=>'CANTIDAD_SISTEMA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'S/ Inventiva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450812135898055075)
,p_db_column_name=>'C1'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'C1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450812570657055075)
,p_db_column_name=>'C2'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'C2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450812974185055075)
,p_db_column_name=>'C3'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'C3'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450813309691055075)
,p_db_column_name=>'C4'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'C4'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450813721922055076)
,p_db_column_name=>'C5'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'C5'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450814180638055076)
,p_db_column_name=>'C6'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'C6'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450814529343055076)
,p_db_column_name=>'C7'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'C7'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450814965372055076)
,p_db_column_name=>'C8'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'C8'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450815350580055077)
,p_db_column_name=>'CU'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cu'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450815772645055077)
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
 p_id=>wwv_flow_imp.id(450816131877055077)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450816504964055077)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450816961610055078)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450817390683055078)
,p_db_column_name=>'SALIDA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Salida'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450817772919055078)
,p_db_column_name=>'COSTO_PROM'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Costo Prom'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450818166645055079)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450818594124055079)
,p_db_column_name=>'USUARIO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450818974666055079)
,p_db_column_name=>'ZONA'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Zona Inventariada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450819318318055079)
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
 p_id=>wwv_flow_imp.id(450819723767055080)
,p_db_column_name=>'CANTIDAD_INVENTARIO'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'S/ Conteo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450820122591055080)
,p_db_column_name=>'OBSERVACION_DETALLE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Observacion Detalle'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450820570155055080)
,p_db_column_name=>'CLASIFICACION_REPUESTOS_ABC'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Clasificacion Repuestos Abc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450820978237055080)
,p_db_column_name=>'NRO_OT'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Nro Ot'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450821308341055081)
,p_db_column_name=>'LOTE_1'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Lote 1'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450821779089055081)
,p_db_column_name=>'LOTE_2'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Lote 2'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450822166234055081)
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
 p_id=>wwv_flow_imp.id(450822578325055082)
,p_db_column_name=>'CORRESPONDE_BLOQUE'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Corresponde Bloque'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450822970883055082)
,p_db_column_name=>'DIFERENCIA'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Diferencia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450823368954055083)
,p_db_column_name=>'ZONA_ALMACENADA'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Zona Almacenada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450823750371055083)
,p_db_column_name=>'ORDEN'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Orden'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450824116880055083)
,p_db_column_name=>'TIPO_DIFERENCIA'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Tipo Diferencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450824596905055084)
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
 p_id=>wwv_flow_imp.id(450854755216357803)
,p_db_column_name=>'TIPO_DIFERENCIA_REGISTRO'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Tipo Diferencia Registro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450854834205357804)
,p_db_column_name=>'COMENTARIO_DIFERENCIA'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Comentario Diferencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450854965499357805)
,p_db_column_name=>'IND_REINCIDENTE'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Reincidente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450855091588357806)
,p_db_column_name=>'DIFERENCIA_COSTO'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Diferencia Costo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(705275829689603038)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2545059'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'COD_ARTICULO:DESC_ART:CANTIDAD_SISTEMA:CANTIDAD_INVENTARIO:DIFERENCIA:COSTO_STOCK:COSTO_INVENTARIO:COMENTARIO_DIFERENCIA:IND_REINCIDENTE:TIPO_DIFERENCIA_REGISTRO:'
,p_break_on=>'TIPO_DIFERENCIA_REGISTRO:0:0:0:0:0'
,p_break_enabled_on=>'TIPO_DIFERENCIA_REGISTRO:0:0:0:0:0'
,p_sum_columns_on_break=>'CANTIDAD_SISTEMA:DIFERENCIA:CANTIDAD_INVENTARIO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(702150316192046449)
,p_plug_name=>'Observacion_Diferencia'
,p_parent_plug_id=>wwv_flow_imp.id(629993103061147362)
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(450826365964055085)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(702150316192046449)
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
 p_id=>wwv_flow_imp.id(450826744622055085)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(702150316192046449)
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
 p_id=>wwv_flow_imp.id(450771191618055040)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(629417886210599634)
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
 p_id=>wwv_flow_imp.id(450771508906055040)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(629417886210599634)
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
 p_id=>wwv_flow_imp.id(450827176616055085)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(702150316192046449)
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
 p_id=>wwv_flow_imp.id(450838755252055095)
,p_branch_name=>'IR_PAGINA_ANT'
,p_branch_action=>'f?p=&APP_ID.:559:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(450771191618055040)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450771907617055041)
,p_name=>'P814_P_COD_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(629417886210599634)
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
 p_id=>wwv_flow_imp.id(450772345233055042)
,p_name=>'P814_P_BLOQUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(629417886210599634)
,p_prompt=>'Bloque'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     select cod_bloque||'' - ''||desc_bloque bloque, cod_bloque R',
'      from st_bloques',
'        where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P814_P_COD_SUCURSAL  ',
'AND NVL(:P814_P_IND_INVENTARIO_CPH,''N'')=''N'' ',
'group by desc_bloque, cod_bloque',
'union all',
'select cod_bloque||'' - ''||cod_bloque bloque, cod_bloque from st_posiciones',
'        where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P814_P_COD_SUCURSAL  ',
'AND NVL(:P814_P_IND_INVENTARIO_CPH,''N'')=''N'' ',
'group by cod_bloque',
'union all',
'select cod_bloque||'' - ''||desc_bloque bloque, cod_bloque',
'      from st_bloques@DBLINK_CPH',
'           where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P814_P_COD_SUCURSAL  ',
'AND NVL(:P814_P_IND_INVENTARIO_CPH,''N'')=''S''  ',
'group by desc_bloque, cod_bloque',
' union all',
'select cod_bloque||'' - ''||cod_bloque bloque, cod_bloque from st_posiciones@DBLINK_CPH',
'        where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P814_P_COD_SUCURSAL  ',
'AND NVL(:P814_P_IND_INVENTARIO_CPH,''N'')=''S'' ',
'group by cod_bloque',
'    order by 1  '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
,p_lov_cascade_parent_items=>'P814_P_COD_SUCURSAL'
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
 p_id=>wwv_flow_imp.id(450772747869055042)
,p_name=>'P814_P_SUB_BLOQUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(629417886210599634)
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
'       and cod_sucursal = :P814_P_COD_SUCURSAL',
'       and cod_bloque   = :P814_P_BLOQUE',
'AND NVL(:P814_P_IND_INVENTARIO_CPH,''N'')=''N'' ',
'union all ',
' select  COD_SUB_BLOQUE||'' - ''||cod_sub_bloque as Sub_bloque, cod_sub_bloque from st_posiciones',
'      where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P_COD_SUCURSAL',
'       and cod_bloque   = :P814_P_BLOQUE',
'AND NVL(:P814_P_IND_INVENTARIO_CPH,''N'')=''N'' ',
'group by cod_sub_bloque',
'UNION ALL',
'',
'',
'select  COD_SUB_BLOQUE||'' - ''||desc_SUB_bloque desc_SUB_bloque, COD_SUB_BLOQUE      ',
'',
'      from st_sub_bloques@DBLINK_CPH',
'       where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P814_P_COD_SUCURSAL',
'       and cod_bloque   = :P814_P_BLOQUE',
'AND NVL(:P814_P_IND_INVENTARIO_CPH,''N'')=''S''  ',
'union all ',
' select  cod_sub_bloque||'' - ''||cod_sub_bloque  desc_SUB_bloque, cod_sub_bloque from st_posiciones@DBLINK_CPH',
'      where cod_empresa  = :P_COD_EMPRESA',
'       and cod_sucursal = :P814_P_COD_SUCURSAL',
'       and cod_bloque   = :P814_P_BLOQUE',
'AND NVL(:P814_P_IND_INVENTARIO_CPH,''N'')=''S'' ',
'group by cod_sub_bloque',
'    order by 1  '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
,p_lov_cascade_parent_items=>'P814_P_BLOQUE,P814_P_COD_SUCURSAL'
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
 p_id=>wwv_flow_imp.id(450773151567055042)
,p_name=>'P814_P_COD_ARTICULO_DES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(629417886210599634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450773555277055043)
,p_name=>'P814_P_COD_ARTICULO_HAS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(629417886210599634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450773952572055043)
,p_name=>'P814_P_COD_EMPRESA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(629417886210599634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450774313874055043)
,p_name=>'P814_P_SER_COMPROBANTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(629417886210599634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450774756768055043)
,p_name=>'P814_P_TIP_COMPROBANTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(629417886210599634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450775181644055043)
,p_name=>'P814_P_IND_INVENTARIO_CPH'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(629417886210599634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450775594807055044)
,p_name=>'P814_P_COD_SUCURSAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(629417886210599634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450775909986055044)
,p_name=>'P814_EJECUTAR_REPORTE_1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(629417886210599634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450776305927055044)
,p_name=>'P814_EJECUTAR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(629417886210599634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450776701593055044)
,p_name=>'P814_EJECUTAR_REPORTE_2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(629417886210599634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450777187130055044)
,p_name=>'P814_EJECUTAR_REPORTE_3'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(629417886210599634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450777545430055044)
,p_name=>'P814_P_NRO_COMPROBANTE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(629417886210599634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450777939956055045)
,p_name=>'P814_COD_ARTICULO_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(629417886210599634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450827522050055086)
,p_name=>'P814_TIPO_DIFERENCIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(702150316192046449)
,p_prompt=>'Tipo Diferencia'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Compensa;compensa,Diferencia Negativa;diferencia_negativa,Diferencia Positiva;diferencia_positiva'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450827962971055086)
,p_name=>'P814_COMENTARIO_DIFERENCIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(702150316192046449)
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
 p_id=>wwv_flow_imp.id(450828303051055086)
,p_name=>'P814_REINCIDENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(702150316192046449)
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
 p_id=>wwv_flow_imp.id(450828717205055089)
,p_name=>'DA_ACEPTAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(450771508906055040)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450829269179055090)
,p_event_id=>wwv_flow_imp.id(450828717205055089)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P814_P_IND_INVENTARIO_CPH=''S'' THEN',
' 	BEGIN',
'        :P814_EJECUTAR_REPORTE_2 := 1;',
'        :P814_EJECUTAR_REPORTE_1 := NULL;',
'         :P814_EJECUTAR_REPORTE_3 := NULL;',
'        ',
':P814_EJECUTAR:=''S'';',
'',
' sp_reprocesa_conteo_CPH(:p_cod_empresa ,',
'	''PR'',',
'                                                sysdate -6     ,',
'                                               sysdate +5     ,',
'                                                :P814_P_NRO_COMPROBANTE);',
'',
'',
'    END;',
'ELSIF  :P814_P_IND_INVENTARIO_CPH=''T'' THEN',
' 	BEGIN',
'        :P814_EJECUTAR_REPORTE_2 := NULL;',
'        :P814_EJECUTAR_REPORTE_1 := NULL;',
'          :P814_EJECUTAR_REPORTE_3 := 1;',
':P814_EJECUTAR:=''S'';',
'',
' sp_reprocesa_conteo_TF(:p_cod_empresa ,',
'	''PR'',',
'                                                sysdate -6     ,',
'                                               sysdate +5     ,',
'                                                :P814_P_NRO_COMPROBANTE);',
'',
'',
'    END;   ',
'ELSIF  :P814_P_IND_INVENTARIO_CPH=''B'' THEN',
' 	BEGIN',
'        :P814_EJECUTAR_REPORTE_1 := 1;',
'        :P814_EJECUTAR_REPORTE_2 := NULL;',
'        :P814_EJECUTAR_REPORTE_3 := NULL;',
'        :P814_EJECUTAR:=''S'';',
' sp_reprocesa_conteo_BH(:p_cod_empresa ,',
'	''PR'',',
'                                                sysdate -6     ,',
'                                               sysdate +5     ,',
'                                                :P814_P_NRO_COMPROBANTE);',
'',
'',
'    END;         ',
'ELSE',
'    BEGIN',
'        :P814_EJECUTAR_REPORTE_1 := 1;',
'        :P814_EJECUTAR_REPORTE_2 := NULL;',
'        :P814_EJECUTAR_REPORTE_3 := NULL;',
'        :P814_EJECUTAR:=''S'';',
'        ',
' sp_reprocesa_conteo(:p_cod_empresa ,',
'	''PR'',',
'                                                sysdate -6     ,',
'                                               sysdate +5     ,',
'                                                :P814_P_NRO_COMPROBANTE);',
'    END;',
'END IF;'))
,p_attribute_02=>'P814_P_IND_INVENTARIO_CPH'
,p_attribute_03=>'P814_EJECUTAR_REPORTE_1,P814_EJECUTAR_REPORTE_2,P814_EJECUTAR,P814_EJECUTAR_REPORTE_3'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450829706061055090)
,p_event_id=>wwv_flow_imp.id(450828717205055089)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var spinner = apex.util.showSpinner(); ',
'$("#apex_wait_overlay").remove(); '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450830233545055092)
,p_event_id=>wwv_flow_imp.id(450828717205055089)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(629420223734599657)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P814_EJECUTAR_REPORTE_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450830761982055092)
,p_event_id=>wwv_flow_imp.id(450828717205055089)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(629420433579599659)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P814_EJECUTAR_REPORTE_2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450831254022055092)
,p_event_id=>wwv_flow_imp.id(450828717205055089)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(696665474142402543)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P814_EJECUTAR_REPORTE_2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450831704282055092)
,p_event_id=>wwv_flow_imp.id(450828717205055089)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".u-Processing").remove(); ',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450832273185055092)
,p_event_id=>wwv_flow_imp.id(450828717205055089)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(450832697535055092)
,p_name=>'DA_VOLVER'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(450771191618055040)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450833193475055093)
,p_event_id=>wwv_flow_imp.id(450832697535055092)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(450836371170055094)
,p_name=>'da_cod_Articulo_id'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P814_COD_ARTICULO_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450836849236055094)
,p_event_id=>wwv_flow_imp.id(450836371170055094)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select   tipo_diferencia,comentario_diferencia,IND_REINCIDENTE',
'into :P814_TIPO_DIFERENCIA, :P814_COMENTARIO_DIFERENCIA, :P814_REINCIDENTE',
'from  st_generacion_inventario_det ',
'WHERE COD_EMPRESA=:P_COD_EMPRESA',
'AND NRO_COMPROBANTE = :P814_P_NRO_COMPROBANTE',
'AND COD_ARTICULO = :P814_COD_ARTICULO_ID;',
'exception',
'when others then',
':P814_TIPO_DIFERENCIA:=null;',
':P814_COMENTARIO_DIFERENCIA:=null;',
' :P814_REINCIDENTE:=null;',
'end;'))
,p_attribute_02=>'P814_P_NRO_COMPROBANTE,P814_COD_ARTICULO_ID,P_COD_EMPRESA'
,p_attribute_03=>'P814_TIPO_DIFERENCIA,P814_COMENTARIO_DIFERENCIA,P814_REINCIDENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450837361386055095)
,p_event_id=>wwv_flow_imp.id(450836371170055094)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(702150316192046449)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(450837767892055095)
,p_name=>'da_cancelar_obs_dif'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(450826744622055085)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450838233712055095)
,p_event_id=>wwv_flow_imp.id(450837767892055095)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(702150316192046449)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(450833507830055093)
,p_name=>'da_aceptar_obs_dif_1'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(450827176616055085)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450834505587055094)
,p_event_id=>wwv_flow_imp.id(450833507830055093)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update st_generacion_inventario_det set tipo_diferencia=:P814_TIPO_DIFERENCIA, comentario_diferencia=:P814_COMENTARIO_DIFERENCIA, IND_REINCIDENTE=:P814_REINCIDENTE',
'WHERE COD_EMPRESA=:P_COD_EMPRESA',
'AND NRO_COMPROBANTE = :P814_P_NRO_COMPROBANTE',
'AND COD_ARTICULO = :P814_COD_ARTICULO_ID;',
'end;'))
,p_attribute_02=>'P814_P_NRO_COMPROBANTE,P814_COD_ARTICULO_ID,P_COD_EMPRESA,P814_TIPO_DIFERENCIA,P814_COMENTARIO_DIFERENCIA,P814_REINCIDENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450834099292055093)
,p_event_id=>wwv_flow_imp.id(450833507830055093)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(702150316192046449)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(450834957593055094)
,p_name=>'da_aceptar_obs_dif_1_1'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(450826365964055085)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450835453992055094)
,p_event_id=>wwv_flow_imp.id(450834957593055094)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'delete st_generacion_inventario_det set tipo_diferencia=:P814_TIPO_DIFERENCIA, comentario_diferencia=:P814_COMENTARIO_DIFERENCIA, IND_REINCIDENTE=:P814_REINCIDENTE',
'WHERE COD_EMPRESA=:P_COD_EMPRESA',
'AND NRO_COMPROBANTE = :P814_P_NRO_COMPROBANTE',
'AND COD_ARTICULO = :P814_COD_ARTICULO_ID;',
'end;'))
,p_attribute_02=>'P814_P_NRO_COMPROBANTE,P814_COD_ARTICULO_ID,P_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450835942406055094)
,p_event_id=>wwv_flow_imp.id(450834957593055094)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(702150316192046449)
);
wwv_flow_imp.component_end;
end;
/
