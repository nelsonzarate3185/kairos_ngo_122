prompt --application/pages/page_00818
begin
--   Manifest
--     PAGE: 00818
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
 p_id=>818
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Resumen General de Inventario'
,p_step_title=>'Resumen General de Inventario'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250127101238'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(258682678752363603)
,p_plug_name=>'Resultado de inventario detallado por Deposito'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>960
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sucursal,',
'       sum(CANTIDAD_SISTEMA) cantidad_sistema,',
'       sum(nvl(CANTIDAD_INVENTARIO, 0)) cu,',
'sum(nvl(CANTIDAD_INVENTARIO, 0) - CANTIDAD_SISTEMA) DIFERENCIA,',
'       sum((COSTO_STOCK * CANTIDAD_SISTEMA)) costo_stock,',
'       sum(COSTO_STOCK * CANTIDAD_SISTEMA) sistema_valorizado,',
'       sum(COSTO_INVENTARIO) Conteo_Valorizado,',
'       sum(CANTIDAD_INVENTARIO) cantidad_conteo,',
'       sum(COSTO_INVENTARIO) - sum((COSTO_STOCK * CANTIDAD_SISTEMA)) diferencia_valorizada,',
'       NVL(area_inventario, ''SIN AREA'') area_inventario,',
'       round(sum(nvl(cu, 0) - CANTIDAD_SISTEMA) / case',
'               when sum(CANTIDAD_SISTEMA) > 0 then',
'                sum(CANTIDAD_SISTEMA)',
'               else',
'                1',
'             end * 100,',
'             2) diferencia_cant_porcentaje,',
'        ((sum(COSTO_INVENTARIO) - sum(COSTO_STOCK*CANTIDAD_SISTEMA)) / case',
'               when sum(COSTO_STOCK*CANTIDAD_SISTEMA) > 0 then',
'                sum(COSTO_STOCK*CANTIDAD_SISTEMA)',
'               else',
'                1',
'             end * 100) diferencia_val_porcentaje',
'  FROM (select /*+ rule*/',
'         s.descripcion desc_sucursal,',
'         a.cod_encargado,',
'         S.cod_sucursal,',
'         GD.cod_articulo,',
'         a.descripcion desc_art,',
'         GD.CANTIDAD CANTIDAD_SISTEMA,',
'         (cc.conteo1) C1,',
'         (cc.conteo2) C2,',
'         (cc.conteo3) C3,',
'         (cc.conteo4) C4,',
'         (cc.conteo5) C5,',
'         (cc.conteo6) C6,',
'         (cc.conteo7) C7,',
'         (cc.conteo8) C8,',
'         ((nvl(conteo1,',
'               nvl(conteo2,',
'                   nvl(conteo3,',
'                       nvl(conteo4,',
'                           nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))) CU,',
'         NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'             0) COSTO_STOCK,',
'         g.nro_comprobante,',
'         g.sucursal,',
'         a.cod_Art_corto,',
'         GD.NRO_OT,',
'         0 entrada,',
'         0 salida,',
'         a.costo_prom,',
'         g.observacion,',
'         ',
'         round(NVL(ROUND(round(case when nvl(gd.costo,0)=0 then a.costo_prom else  NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'             0) end) *',
'                         (SELECT SUM(E.CANTIDAD)',
'                            FROM SM_INVENTARIO_DET E',
'                           WHERE g.nro_comprobante = e.inventory_id',
'                             and gd.cod_articulo = e.cod_articulo)),',
'                   0)) COSTO_INVENTARIO,',
'         ((nvl(conteo1,',
'               nvl(conteo2,',
'                   nvl(conteo3,',
'                       nvl(conteo4,',
'                           nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))) CANTIDAD_inventario,',
'         ',
'         (select descripcion',
'            from CO_TIPO_DIFERENCIA td',
'           where cod_tipo_diferencia = gd.tipo_diferencia) tipo_diferencia,',
'         gd.comentario_diferencia,',
'         gd.ind_reincidente,',
'         (select descripcion',
'            from CO_tipo_inventario ti',
'           where ti.cod_empresa = g.cod_empresa',
'             and ti.cod_tipo_inventario = g.TIPO_INVENTARIO) tipo_inventario,',
'         ',
'         (select rh.descripcion',
'            from rh_areas rh',
'           where rh.cod_empresa = g.COD_EMPRESA',
'             and cod_sucursal = ''01''',
'             and rh.cod_area = g.AREA_RESPONSABLE) area_inventario,',
'         (SELECT DESCRIPCION',
'            FROM CO_ubicacion_inventario ui',
'           WHERE ui.COD_EMPRESA = g.COD_EMPRESA',
'             and ui.cod_ubicacion = UBICACION_INVENTARIO) ubicacion_inventario',
'        ',
'          from st_generacion_inventario     g,',
'               st_generacion_inventario_det gd,',
'               st_articulos                 a,',
'               sucursales                   s,',
'               st_conteo_inventario         cc',
'         where G.cod_empresa = :p_cod_empresa',
'           and G.FEC_COMPROBANTE between :P818_FECHA_INICIO and',
'               :p818_fecha_fin',
'           and (g.ubicacion_inventario = :P818_UBICACION_INVENTARIO or',
'               :P818_UBICACION_INVENTARIO is null)',
'           and (g.tipo_inventario = :P818_TIPO_INVENTARIO or',
'               :P818_TIPO_INVENTARIO is null)',
'           and (g.area_responsable = :P818_AREA_RESPONSABLE or',
'               :P818_AREA_RESPONSABLE is null)',
'           AND G.COD_EMPRESA = :P_COD_EMPRESA',
'           and g.IND_INVENTARIO_CPH IN (''N'')',
'           and (g.IND_INVENTARIO_CPH = :P818_EMPRESA or',
'               :P818_EMPRESA is null)',
'           and (g.COD_SUCURSAL = :P818_SUCURSAL or :P818_SUCURSAL is null)',
'           and g.cod_empresa = gd.cod_empresa',
'           and g.tip_comprobante = gd.tip_comprobante',
'           and g.ser_comprobante = gd.ser_comprobante',
'           and g.nro_comprobante = gd.nro_comprobante',
'           and G.cod_empresa = s.cod_empresa',
'           and g.cod_sucursal = s.cod_sucursal',
'           and GD.cod_empresa = a.cod_empresa',
'           and GD.cod_articulo = a.cod_articulo',
'           and gd.cod_empresa = cc.cod_empresa(+)',
'           and gd.tip_comprobante = cc.tip_comprobante(+)',
'           and gd.ser_comprobante = cc.ser_comprobante(+)',
'           and gd.nro_comprobante = cc.nro_comprobante(+)',
'           and gd.cod_articulo = cc.cod_articulo(+)',
'           AND NVL(INVENTARIOOT, ''N'') <> ''S''',
'         -----bh----------------',
'union all ',
'select  s.descripcion desc_sucursal,',
'         a.cod_encargado,',
'         S.cod_sucursal,',
'         GD.cod_articulo,',
'         a.descripcion desc_art,',
'         GD.CANTIDAD CANTIDAD_SISTEMA,',
'         (cc.conteo1) C1,',
'         (cc.conteo2) C2,',
'         (cc.conteo3) C3,',
'         (cc.conteo4) C4,',
'         (cc.conteo5) C5,',
'         (cc.conteo6) C6,',
'         (cc.conteo7) C7,',
'         (cc.conteo8) C8,',
'         ((nvl(conteo1,',
'               nvl(conteo2,',
'                   nvl(conteo3,',
'                       nvl(conteo4,',
'                           nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))) CU,',
'         NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'             0) COSTO_STOCK,',
'         g.nro_comprobante,',
'         g.sucursal,',
'         a.cod_Art_corto,',
'         GD.NRO_OT,',
'         0 entrada,',
'         0 salida,',
'         a.costo_prom,',
'         g.observacion,',
'         ',
'         round(NVL(ROUND(round(case when nvl(gd.costo,0)=0 then a.costo_prom else  NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'             0) end) *',
'                         (SELECT SUM(E.CANTIDAD)',
'                            FROM SM_INVENTARIO_DET E',
'                           WHERE g.nro_comprobante = e.inventory_id',
'                             and gd.cod_articulo = e.cod_articulo)),',
'                   0)) COSTO_INVENTARIO,',
'         ((nvl(conteo1,',
'               nvl(conteo2,',
'                   nvl(conteo3,',
'                       nvl(conteo4,',
'                           nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))) CANTIDAD_inventario,',
'         ',
'         (select descripcion',
'            from CO_TIPO_DIFERENCIA td',
'           where cod_tipo_diferencia = gd.tipo_diferencia) tipo_diferencia,',
'         gd.comentario_diferencia,',
'         gd.ind_reincidente,',
'         (select descripcion',
'            from CO_tipo_inventario ti',
'           where ti.cod_empresa = g.cod_empresa',
'             and ti.cod_tipo_inventario = g.TIPO_INVENTARIO) tipo_inventario,',
'         ',
'         (select rh.descripcion',
'            from rh_areas rh',
'           where rh.cod_empresa = g.COD_EMPRESA',
'             and cod_sucursal = ''01''',
'             and rh.cod_area = g.AREA_RESPONSABLE) area_inventario,',
'         (SELECT DESCRIPCION',
'            FROM CO_ubicacion_inventario ui',
'           WHERE ui.COD_EMPRESA = g.COD_EMPRESA',
'             and ui.cod_ubicacion = UBICACION_INVENTARIO) ubicacion_inventario',
'  from st_generacion_inventario     g,',
'       st_generacion_inventario_det gd,',
'       st_articulos                 a,',
'       sucursales                   s,',
'       st_conteo_inventario         cc',
'  where G.cod_empresa = :p_cod_empresa',
'           and G.FEC_COMPROBANTE between :P818_FECHA_INICIO and',
'               :p818_fecha_fin',
'           and (g.ubicacion_inventario = :P818_UBICACION_INVENTARIO or',
'               :P818_UBICACION_INVENTARIO is null)',
'           and (g.tipo_inventario = :P818_TIPO_INVENTARIO or',
'               :P818_TIPO_INVENTARIO is null)',
'           and (g.area_responsable = :P818_AREA_RESPONSABLE or',
'               :P818_AREA_RESPONSABLE is null)',
'           AND G.COD_EMPRESA = :P_COD_EMPRESA',
'           and g.IND_INVENTARIO_CPH IN (''B'' )',
'              and (g.IND_INVENTARIO_CPH = :P818_EMPRESA  )',
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
'   and gd.cod_articulo = cc.cod_articulo(+) ',
'        union all',
'        select /*+ rule*/',
'         s.descripcion desc_sucursal,',
'         a.cod_encargado,',
'         S.cod_sucursal,',
'         GD.cod_articulo,',
'         a.descripcion desc_art,',
'         GD.CANTIDAD CANTIDAD_SISTEMA,',
'         cc.conteo1 C1,',
'         cc.conteo2 C2,',
'         cc.conteo3 C3,',
'         cc.conteo4 C4,',
'         cc.conteo5 C5,',
'         cc.conteo6 C6,',
'         cc.conteo7 C7,',
'         cc.conteo8 C8,',
'         ((nvl(conteo1,',
'               nvl(conteo2,',
'                   nvl(conteo3,',
'                       nvl(conteo4,',
'                           nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))) CU,',
'         ',
'         NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'             0) COSTO_STOCK,',
'         ',
'         g.nro_comprobante,',
'         g.sucursal,',
'         a.cod_Art_corto,',
'         GD.NRO_OT,',
'         0 entrada,',
'         0 salida,',
'         a.costo_prom,',
'         g.observacion,',
'         round(NVL(ROUND(round(case when nvl(gd.costo,0)=0 then a.costo_prom else  NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'             0) end) *',
'                         (SELECT SUM(E.CANTIDAD)',
'                            FROM SM_INVENTARIO_DET E',
'                           WHERE g.nro_comprobante = e.inventory_id',
'                             and gd.cod_articulo = e.cod_articulo)',
'                         ',
'                         ),',
'                   0)) COSTO_INVENTARIO,',
'         ((nvl(conteo1,',
'               nvl(conteo2,',
'                   nvl(conteo3,',
'                       nvl(conteo4,',
'                           nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))) CANTIDAD_inventario,',
'         ',
'         (select descripcion',
'            from CO_TIPO_DIFERENCIA td',
'           where cod_tipo_diferencia = gd.tipo_diferencia) tipo_diferencia,',
'         gd.comentario_diferencia,',
'         gd.ind_reincidente,',
'         (select descripcion',
'            from CO_tipo_inventario ti',
'           where ti.cod_empresa = g.cod_empresa',
'             and ti.cod_tipo_inventario = g.TIPO_INVENTARIO) tipo_inventario,',
'         ',
'         (select rh.descripcion',
'            from rh_areas rh',
'           where rh.cod_empresa = g.COD_EMPRESA',
'             and cod_sucursal = ''01''',
'             and rh.cod_area = g.AREA_RESPONSABLE) area_inventario,',
'         (SELECT DESCRIPCION',
'            FROM CO_ubicacion_inventario ui',
'           WHERE ui.COD_EMPRESA = g.COD_EMPRESA',
'             and ui.cod_ubicacion = UBICACION_INVENTARIO) ubicacion_inventario',
'        ',
'          from st_generacion_inventario     g,',
'               st_generacion_inventario_det gd,',
'               v_articulos_cph              a,',
'               sucursales@dblink_cph        s,',
'               st_conteo_inventario         cc',
'        ',
'         where G.cod_empresa = :p_cod_empresa',
'           and G.FEC_COMPROBANTE between :P818_FECHA_INICIO and',
'               :p818_fecha_fin',
'           and (g.ubicacion_inventario = :P818_UBICACION_INVENTARIO or',
'               :P818_UBICACION_INVENTARIO is null)',
'           and (g.tipo_inventario = :P818_TIPO_INVENTARIO or',
'               :P818_TIPO_INVENTARIO is null)',
'           and (g.area_responsable = :P818_AREA_RESPONSABLE or',
'               :P818_AREA_RESPONSABLE is null)',
'           AND G.COD_EMPRESA = :P_COD_EMPRESA',
'           and (g.IND_INVENTARIO_CPH = :P818_EMPRESA  )',
'           and (g.COD_SUCURSAL = :P818_SUCURSAL or :P818_SUCURSAL is null)',
'           and g.cod_empresa = gd.cod_empresa',
'           and g.tip_comprobante = gd.tip_comprobante',
'           and g.IND_INVENTARIO_CPH IN (''S'')',
'           and g.ser_comprobante = gd.ser_comprobante',
'           and g.nro_comprobante = gd.nro_comprobante',
'           and G.cod_empresa = s.cod_empresa',
'           and g.cod_sucursal = s.cod_sucursal',
'           and GD.cod_articulo = a.cod_articulo',
'           and gd.cod_empresa = cc.cod_empresa(+)',
'           and gd.tip_comprobante = cc.tip_comprobante(+)',
'           and gd.ser_comprobante = cc.ser_comprobante(+)',
'           and gd.nro_comprobante = cc.nro_comprobante(+)',
'           and gd.cod_articulo = cc.cod_articulo(+)',
'           AND NVL(G.IND_INVENTARIO_CPH, ''N'') = ''S''',
'        union all',
'        -----tf---',
'        ',
'        select s.descripcion desc_sucursal,',
'               null cod_encargado,',
'               S.cod_sucursal,',
'               GD.cod_articulo,',
'               a.descripcion desc_art,',
'               GD.CANTIDAD CANTIDAD_SISTEMA,',
'               (cc.conteo1) C1,',
'               (cc.conteo2) C2,',
'               (cc.conteo3) C3,',
'               (cc.conteo4) C4,',
'               (cc.conteo5) C5,',
'               (cc.conteo6) C6,',
'               (cc.conteo7) C7,',
'               (cc.conteo8) C8,',
'               ((nvl(conteo1,',
'                     nvl(conteo2,',
'                         nvl(conteo3,',
'                             nvl(conteo4,',
'                                 nvl(conteo5,',
'                                     nvl(conteo6, nvl(conteo7, conteo8))))))))) CU,',
'               ',
'               NVL(ROUND(GD.COSTO /',
'                         decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'                   0) COSTO_STOCK,',
'               ',
'               g.nro_comprobante,',
'               g.sucursal,',
'               a.cod_Art_corto,',
'               GD.NRO_OT,',
'               0                 entrada,',
'               0                 salida,',
'               a.costo_prom,',
'               g.observacion',
'               ',
'              ,',
'               round(NVL(ROUND(round(case when nvl(gd.costo,0)=0 then a.costo_prom else  NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'             0) end) *',
'                               ',
'                               (SELECT SUM(E.CANTIDAD)',
'                                  FROM SM_INVENTARIO_DET E',
'                                 WHERE g.nro_comprobante = e.inventory_id',
'                                   and gd.cod_articulo = e.cod_articulo)',
'                               ',
'                               ),',
'                         0)) COSTO_INVENTARIO,',
'               ((nvl(conteo1,',
'                     nvl(conteo2,',
'                         nvl(conteo3,',
'                             nvl(conteo4,',
'                                 nvl(conteo5,',
'                                     nvl(conteo6, nvl(conteo7, conteo8))))))))) CANTIDAD_inventario,',
'               ',
'               (select descripcion',
'                  from CO_TIPO_DIFERENCIA td',
'                 where cod_tipo_diferencia = gd.tipo_diferencia) tipo_diferencia,',
'               gd.comentario_diferencia,',
'               gd.ind_reincidente,',
'               (select descripcion',
'                  from CO_tipo_inventario ti',
'                 where ti.cod_empresa = g.cod_empresa',
'                   and ti.cod_tipo_inventario = g.TIPO_INVENTARIO) tipo_inventario,',
'               ',
'               (select descripcion ',
'                  from rh_areas rh',
'                 where rh.cod_empresa = g.COD_EMPRESA',
'                   and cod_sucursal = ''01''',
'                   and rh.cod_area = g.AREA_RESPONSABLE) area_inventario,',
'               (SELECT DESCRIPCION',
'                  FROM CO_ubicacion_inventario ui',
'                 WHERE ui.COD_EMPRESA = g.COD_EMPRESA',
'                   and ui.cod_ubicacion = UBICACION_INVENTARIO) ubicacion_inventario',
'          from st_generacion_inventario     g,',
'               st_generacion_inventario_det gd,',
'               V_ARTICULOS_TF               a,',
'               sucursales@Dblink_Tf         s,',
'               st_conteo_inventario         cc',
'         where G.cod_empresa = :p_cod_empresa',
'           and G.FEC_COMPROBANTE between :P818_FECHA_INICIO and',
'               :p818_fecha_fin',
'           and (g.ubicacion_inventario = :P818_UBICACION_INVENTARIO or',
'               :P818_UBICACION_INVENTARIO is null)',
'           and (g.tipo_inventario = :P818_TIPO_INVENTARIO or',
'               :P818_TIPO_INVENTARIO is null)',
'           and (g.area_responsable = :P818_AREA_RESPONSABLE or',
'               :P818_AREA_RESPONSABLE is null)',
'           AND G.COD_EMPRESA = :P_COD_EMPRESA',
'           and (g.IND_INVENTARIO_CPH = :P818_EMPRESA or',
'               :P818_EMPRESA is null)',
'           and (g.COD_SUCURSAL = :P818_SUCURSAL or :P818_SUCURSAL is null)',
'           and g.IND_INVENTARIO_CPH IN (''T'')',
'           and g.cod_empresa = gd.cod_empresa',
'           and g.tip_comprobante = gd.tip_comprobante',
'           and g.ser_comprobante = gd.ser_comprobante',
'           and g.nro_comprobante = gd.nro_comprobante',
'           and G.cod_empresa = s.cod_empresa',
'           and g.cod_sucursal = s.cod_sucursal',
'              ',
'           and GD.cod_articulo = a.cod_articulo',
'           and gd.cod_empresa = cc.cod_empresa(+)',
'           and gd.tip_comprobante = cc.tip_comprobante(+)',
'           and gd.ser_comprobante = cc.ser_comprobante(+)',
'           and gd.nro_comprobante = cc.nro_comprobante(+)',
'           and gd.cod_articulo = cc.cod_articulo(+)',
'         order by 1, 3 asc)',
'WHERE :P818_EJECUTAR=''S''',
' group by area_inventario, Sucursal',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P818_EMPRESA,P818_SUCURSAL,P818_TIPO_INVENTARIO,P818_UBICACION_INVENTARIO,P818_AREA_RESPONSABLE,P818_FECHA_INICIO,P818_FECHA_FIN,P818_EJECUTAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resultado de inventario detallado por Deposito'
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
 p_id=>wwv_flow_imp.id(258682777534363604)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'NZARATE'
,p_internal_uid=>258682777534363604
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258682856530363605)
,p_db_column_name=>'CANTIDAD_SISTEMA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cantidad Sistema'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258682977965363606)
,p_db_column_name=>'CU'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cu'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258683027555363607)
,p_db_column_name=>'DIFERENCIA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Diferencia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258683173720363608)
,p_db_column_name=>'COSTO_STOCK'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Costo Stock'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258683298655363609)
,p_db_column_name=>'SISTEMA_VALORIZADO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Sistema Valorizado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258683383708363610)
,p_db_column_name=>'CONTEO_VALORIZADO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Conteo Valorizado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258683437342363611)
,p_db_column_name=>'DIFERENCIA_VALORIZADA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Diferencia Valorizada'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258683530830363612)
,p_db_column_name=>'AREA_INVENTARIO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Area Inventario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258683612047363613)
,p_db_column_name=>'CANTIDAD_CONTEO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cantidad Conteo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258683723091363614)
,p_db_column_name=>'DIFERENCIA_CANT_PORCENTAJE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'% Diferencia Cantidades'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258683831925363615)
,p_db_column_name=>'DIFERENCIA_VAL_PORCENTAJE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'% Diferencia Valorizada'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258683924023363616)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(258701643029724525)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'2587017'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>'AREA_INVENTARIO:SUCURSAL:CANTIDAD_SISTEMA:CANTIDAD_CONTEO:DIFERENCIA:SISTEMA_VALORIZADO:CONTEO_VALORIZADO:DIFERENCIA_VALORIZADA:DIFERENCIA_CANT_PORCENTAJE:DIFERENCIA_VAL_PORCENTAJE:'
,p_sum_columns_on_break=>'CANTIDAD_SISTEMA:CANTIDAD_CONTEO:DIFERENCIA:SISTEMA_VALORIZADO:CONTEO_VALORIZADO:DIFERENCIA_VALORIZADA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(258684194187363618)
,p_plug_name=>'Resultado de inventario por Ubicacion'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>970
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'   sum(CANTIDAD_SISTEMA)cantidad_sistema  ,sum(nvl(CANTIDAD_INVENTARIO,0))cu, ',
' sum(nvl(cu,0)-CANTIDAD_SISTEMA) DIFERENCIA,   sum( (COSTO_STOCK*CANTIDAD_SISTEMA) )costo_stock,',
'          sum(COSTO_STOCK * CANTIDAD_SISTEMA) sistema_valorizado,  sum(COSTO_INVENTARIO)Conteo_Valorizado  ,',
'  sum(CANTIDAD_INVENTARIO) cantidad_conteo ,',
' sum(COSTO_INVENTARIO)-sum( (COSTO_STOCK*CANTIDAD_SISTEMA) )  diferencia_valorizada  ,',
'NVL(ubicacion_inventario,''SIN UBICACION'')ubicacion_inventario,',
'  round(sum(nvl(cu,0)-CANTIDAD_SISTEMA)/case when sum(CANTIDAD_SISTEMA)>0 then sum(CANTIDAD_SISTEMA) else 1 end*100,2)   diferencia_cant_porcentaje,',
'  ( (sum(COSTO_INVENTARIO)-sum(COSTO_STOCK*CANTIDAD_SISTEMA)) /case when sum(COSTO_STOCK*CANTIDAD_SISTEMA)>0 then sum(COSTO_STOCK*CANTIDAD_SISTEMA) else 1 end*100)  diferencia_val_porcentaje',
' FROM (  ',
'   select /*+ rule*/s.descripcion desc_sucursal,       a.cod_encargado,       S.cod_sucursal,       GD.cod_articulo,       a.descripcion desc_art,',
'       GD.CANTIDAD CANTIDAD_SISTEMA,       (cc.conteo1) C1,       (cc.conteo2) C2,       (cc.conteo3) C3,       (cc.conteo4) C4,',
'       (cc.conteo5) C5,       (cc.conteo6) C6,       (cc.conteo7) C7,       (cc.conteo8) C8,       ((nvl(conteo1,',
'                nvl(conteo2,',
'                    nvl(conteo3,',
'                        nvl(conteo4,',
'                            nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))',
'           ) CU, NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'           0) COSTO_STOCK,       g.nro_comprobante,       g.sucursal,       a.cod_Art_corto,       GD.NRO_OT,',
'       0 entrada,',
'       0 salida,',
'       a.costo_prom,',
'       g.observacion,',
'       ',
'',
'      round(NVL(ROUND(round(case when nvl(gd.costo,0)=0 then a.costo_prom else  NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'             0) end) *                   ',
'                       (SELECT SUM(E.CANTIDAD)',
'                          FROM SM_INVENTARIO_DET E',
'                         WHERE g.nro_comprobante = e.inventory_id',
'                           and gd.cod_articulo = e.cod_articulo) ),',
'                 0)) COSTO_INVENTARIO,',
'       ((nvl(conteo1,',
'                nvl(conteo2,',
'                    nvl(conteo3,',
'                        nvl(conteo4,',
'                            nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))',
'          ) CANTIDAD_inventario, ',
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
'   and G.FEC_COMPROBANTE between :P818_FECHA_INICIO and :p818_fecha_fin',
'  and (g.ubicacion_inventario=:P818_UBICACION_INVENTARIO or :P818_UBICACION_INVENTARIO is null)',
'  and (g.tipo_inventario=:P818_TIPO_INVENTARIO or :P818_TIPO_INVENTARIO is null)',
'  and (g.area_responsable = :P818_AREA_RESPONSABLE or :P818_AREA_RESPONSABLE is null)',
'  AND G.COD_EMPRESA=:P_COD_EMPRESA',
'  and g.IND_INVENTARIO_CPH IN(''N'')',
'  and (g.IND_INVENTARIO_CPH = :P818_EMPRESA or :P818_EMPRESA is null)',
'  and (g.COD_SUCURSAL = :P818_SUCURSAL or :P818_SUCURSAL is null)',
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
'    -----bh----------------',
'union all ',
'select  s.descripcion desc_sucursal,',
'         a.cod_encargado,',
'         S.cod_sucursal,',
'         GD.cod_articulo,',
'         a.descripcion desc_art,',
'         GD.CANTIDAD CANTIDAD_SISTEMA,',
'         (cc.conteo1) C1,',
'         (cc.conteo2) C2,',
'         (cc.conteo3) C3,',
'         (cc.conteo4) C4,',
'         (cc.conteo5) C5,',
'         (cc.conteo6) C6,',
'         (cc.conteo7) C7,',
'         (cc.conteo8) C8,',
'         ((nvl(conteo1,',
'               nvl(conteo2,',
'                   nvl(conteo3,',
'                       nvl(conteo4,',
'                           nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))) CU,',
'         NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'             0) COSTO_STOCK,',
'         g.nro_comprobante,',
'         g.sucursal,',
'         a.cod_Art_corto,',
'         GD.NRO_OT,',
'         0 entrada,',
'         0 salida,',
'         a.costo_prom,',
'         g.observacion,',
'         ',
'         round(NVL(ROUND(round(case when nvl(gd.costo,0)=0 then a.costo_prom else  NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'             0) end) *',
'                         (SELECT SUM(E.CANTIDAD)',
'                            FROM SM_INVENTARIO_DET E',
'                           WHERE g.nro_comprobante = e.inventory_id',
'                             and gd.cod_articulo = e.cod_articulo)),',
'                   0)) COSTO_INVENTARIO,',
'         ((nvl(conteo1,',
'               nvl(conteo2,',
'                   nvl(conteo3,',
'                       nvl(conteo4,',
'                           nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))) CANTIDAD_inventario,',
'         ',
'         (select descripcion',
'            from CO_TIPO_DIFERENCIA td',
'           where cod_tipo_diferencia = gd.tipo_diferencia) tipo_diferencia,',
'         gd.comentario_diferencia,',
'         gd.ind_reincidente,',
'         (select descripcion',
'            from CO_tipo_inventario ti',
'           where ti.cod_empresa = g.cod_empresa',
'             and ti.cod_tipo_inventario = g.TIPO_INVENTARIO) tipo_inventario,',
'         ',
'         (select rh.descripcion',
'            from rh_areas rh',
'           where rh.cod_empresa = g.COD_EMPRESA',
'             and cod_sucursal = ''01''',
'             and rh.cod_area = g.AREA_RESPONSABLE) area_inventario,',
'         (SELECT DESCRIPCION',
'            FROM CO_ubicacion_inventario ui',
'           WHERE ui.COD_EMPRESA = g.COD_EMPRESA',
'             and ui.cod_ubicacion = UBICACION_INVENTARIO) ubicacion_inventario',
'  from st_generacion_inventario     g,',
'       st_generacion_inventario_det gd,',
'       st_articulos                 a,',
'       sucursales                   s,',
'       st_conteo_inventario         cc',
'  where G.cod_empresa = :p_cod_empresa',
'           and G.FEC_COMPROBANTE between :P818_FECHA_INICIO and',
'               :p818_fecha_fin',
'           and (g.ubicacion_inventario = :P818_UBICACION_INVENTARIO or',
'               :P818_UBICACION_INVENTARIO is null)',
'           and (g.tipo_inventario = :P818_TIPO_INVENTARIO or',
'               :P818_TIPO_INVENTARIO is null)',
'           and (g.area_responsable = :P818_AREA_RESPONSABLE or',
'               :P818_AREA_RESPONSABLE is null)',
'           AND G.COD_EMPRESA = :P_COD_EMPRESA',
'           and g.IND_INVENTARIO_CPH IN (''B'' )',
'               and (g.IND_INVENTARIO_CPH = :P818_EMPRESA  )',
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
'   and gd.cod_articulo = cc.cod_articulo(+) ',
'   union all',
'   select /*+ rule*/ s.descripcion desc_sucursal,',
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
'     0 entrada,',
'       0 salida,',
'       a.costo_prom,',
'       g.observacion, round(NVL(ROUND(round(case when nvl(gd.costo,0)=0 then a.costo_prom else  NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'             0) end) *                   ',
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
'         ',
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
' where G.cod_empresa = :p_cod_empresa',
'   and G.FEC_COMPROBANTE between :P818_FECHA_INICIO and :p818_fecha_fin',
'  and (g.ubicacion_inventario=:P818_UBICACION_INVENTARIO or :P818_UBICACION_INVENTARIO is null)',
'  and (g.tipo_inventario=:P818_TIPO_INVENTARIO or :P818_TIPO_INVENTARIO is null)',
'  and (g.area_responsable = :P818_AREA_RESPONSABLE or :P818_AREA_RESPONSABLE is null)',
'  AND G.COD_EMPRESA=:P_COD_EMPRESA',
'  and (g.IND_INVENTARIO_CPH = :P818_EMPRESA or :P818_EMPRESA is null)',
'  and (g.COD_SUCURSAL = :P818_SUCURSAL or :P818_SUCURSAL is null)',
'   and g.cod_empresa = gd.cod_empresa',
'   and g.tip_comprobante = gd.tip_comprobante',
'   and g.IND_INVENTARIO_CPH IN(''S'')',
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
'   union all',
'   -----tf---',
'   ',
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
' ',
',',
'       round(NVL(ROUND(round(case when nvl(gd.costo,0)=0 then a.costo_prom else  NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'             0) end) *                 ',
'                      ',
'       ',
'        (SELECT SUM(E.CANTIDAD)',
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
'           ) CANTIDAD_inventario,  ',
'',
'(select descripcion from CO_TIPO_DIFERENCIA td where cod_tipo_diferencia=gd.tipo_diferencia)tipo_diferencia, ',
'              gd.comentario_diferencia,gd.ind_reincidente,',
'(select descripcion from CO_tipo_inventario ti',
'where ti.cod_empresa= g.cod_empresa',
'and ti.cod_tipo_inventario=g.TIPO_INVENTARIO)tipo_inventario,',
'',
'(select   descripcion from rh_areas rh',
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
'where G.cod_empresa = :p_cod_empresa',
'   and G.FEC_COMPROBANTE between :P818_FECHA_INICIO and :p818_fecha_fin',
'  and (g.ubicacion_inventario=:P818_UBICACION_INVENTARIO or :P818_UBICACION_INVENTARIO is null)',
'  and (g.tipo_inventario=:P818_TIPO_INVENTARIO or :P818_TIPO_INVENTARIO is null)',
'  and (g.area_responsable = :P818_AREA_RESPONSABLE or :P818_AREA_RESPONSABLE is null)',
'  AND G.COD_EMPRESA=:P_COD_EMPRESA',
'  and (g.IND_INVENTARIO_CPH = :P818_EMPRESA or :P818_EMPRESA is null)',
'  and (g.COD_SUCURSAL = :P818_SUCURSAL or :P818_SUCURSAL is null)',
'   and g.IND_INVENTARIO_CPH IN(''T'')',
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
'   and gd.cod_articulo = cc.cod_articulo(+) ',
' ',
' order by 1, 3 asc',
')',
'where :p818_ejecutar=''S''',
'group by  NVL(ubicacion_inventario,''SIN UBICACION'') '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P818_EMPRESA,P818_SUCURSAL,P818_TIPO_INVENTARIO,P818_UBICACION_INVENTARIO,P818_AREA_RESPONSABLE,P818_FECHA_INICIO,P818_FECHA_FIN,P818_EJECUTAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resultado de inventario por Ubicacion'
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
 p_id=>wwv_flow_imp.id(258684271057363619)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'NZARATE'
,p_internal_uid=>258684271057363619
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258684320159363620)
,p_db_column_name=>'CANTIDAD_SISTEMA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cantidad Sistema'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258684450350363621)
,p_db_column_name=>'CU'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cu'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258684500149363622)
,p_db_column_name=>'DIFERENCIA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Diferencia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258684696742363623)
,p_db_column_name=>'COSTO_STOCK'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Costo Stock'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258684758404363624)
,p_db_column_name=>'SISTEMA_VALORIZADO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Sistema Valorizado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258684818579363625)
,p_db_column_name=>'CONTEO_VALORIZADO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Conteo Valorizado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258684974147363626)
,p_db_column_name=>'DIFERENCIA_VALORIZADA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Diferencia Valorizada'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258685189961363628)
,p_db_column_name=>'CANTIDAD_CONTEO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cantidad Conteo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258685214320363629)
,p_db_column_name=>'DIFERENCIA_CANT_PORCENTAJE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'% Diferencia Cantidades'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258685359861363630)
,p_db_column_name=>'DIFERENCIA_VAL_PORCENTAJE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'% Diferencia Valorizada'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258685484867363631)
,p_db_column_name=>'UBICACION_INVENTARIO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Ubicacion Inventario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(258710418416875530)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2587105'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'UBICACION_INVENTARIO:CANTIDAD_SISTEMA:CANTIDAD_CONTEO:DIFERENCIA:SISTEMA_VALORIZADO:CONTEO_VALORIZADO:DIFERENCIA_VALORIZADA:DIFERENCIA_CANT_PORCENTAJE:DIFERENCIA_VAL_PORCENTAJE:'
,p_sum_columns_on_break=>'CANTIDAD_SISTEMA:CANTIDAD_CONTEO:DIFERENCIA:SISTEMA_VALORIZADO:CONTEO_VALORIZADO:DIFERENCIA_VALORIZADA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(641198430809844126)
,p_plug_name=>'Resultado de inventario por Area'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>950
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(CANTIDAD_SISTEMA) cantidad_sistema,',
'       sum(nvl(CANTIDAD_INVENTARIO, 0)) cu,',
'       sum(nvl(CANTIDAD_INVENTARIO, 0) - CANTIDAD_SISTEMA) DIFERENCIA,',
'       sum((COSTO_STOCK * CANTIDAD_SISTEMA)) costo_stock,',
'       sum((COSTO_STOCK * CANTIDAD_SISTEMA)) sistema_valorizado,',
'       sum(COSTO_INVENTARIO) Conteo_Valorizado,',
'       sum(nvl(CANTIDAD_INVENTARIO, 0)) cantidad_conteo,',
'       sum(COSTO_INVENTARIO) - sum((COSTO_STOCK * CANTIDAD_SISTEMA)) diferencia_valorizada,',
'       NVL(area_inventario, ''SIN AREA'') area_inventario,',
'       round(sum(nvl(cu, 0) - CANTIDAD_SISTEMA) / case',
'               when sum(CANTIDAD_SISTEMA) > 0 then',
'                sum(CANTIDAD_SISTEMA)',
'               else',
'                1',
'             end * 100,',
'             2) diferencia_cant_porcentaje,',
'       round((sum(COSTO_INVENTARIO) - sum((COSTO_STOCK * CANTIDAD_SISTEMA))) / case',
'               when sum((COSTO_STOCK * CANTIDAD_SISTEMA)) > 0 then',
'                sum((COSTO_STOCK * CANTIDAD_SISTEMA))',
'               else',
'                1',
'             end * 100) diferencia_val_porcentaje',
'  FROM (select /*+ rule*/',
'         s.descripcion desc_sucursal,',
'         a.cod_encargado,',
'         S.cod_sucursal,',
'         GD.cod_articulo,',
'         a.descripcion desc_art,',
'         GD.CANTIDAD CANTIDAD_SISTEMA,',
'         (cc.conteo1) C1,',
'         (cc.conteo2) C2,',
'         (cc.conteo3) C3,',
'         (cc.conteo4) C4,',
'         (cc.conteo5) C5,',
'         (cc.conteo6) C6,',
'         (cc.conteo7) C7,',
'         (cc.conteo8) C8,',
'         ((nvl(conteo1,',
'               nvl(conteo2,',
'                   nvl(conteo3,',
'                       nvl(conteo4,',
'                           nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))) CU,',
'         NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'             0) COSTO_STOCK,',
'         g.nro_comprobante,',
'         g.sucursal,',
'         a.cod_Art_corto,',
'         GD.NRO_OT,',
'         0 entrada,',
'         0 salida,',
'         a.costo_prom,',
'         g.observacion,',
'         ',
'         round(NVL(ROUND(round(case when nvl(gd.costo,0)=0 then a.costo_prom else  NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'             0) end) *',
'                         (SELECT SUM(E.CANTIDAD)',
'                            FROM SM_INVENTARIO_DET E',
'                           WHERE g.nro_comprobante = e.inventory_id',
'                             and gd.cod_articulo = e.cod_articulo)),',
'                   0)) COSTO_INVENTARIO,',
'         ((nvl(conteo1,',
'               nvl(conteo2,',
'                   nvl(conteo3,',
'                       nvl(conteo4,',
'                           nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))) CANTIDAD_inventario,',
'         ',
'         (select descripcion',
'            from CO_TIPO_DIFERENCIA td',
'           where cod_tipo_diferencia = gd.tipo_diferencia) tipo_diferencia,',
'         gd.comentario_diferencia,',
'         gd.ind_reincidente,',
'         (select descripcion',
'            from CO_tipo_inventario ti',
'           where ti.cod_empresa = g.cod_empresa',
'             and ti.cod_tipo_inventario = g.TIPO_INVENTARIO) tipo_inventario,',
'         ',
'         (select rh.descripcion',
'            from rh_areas rh',
'           where rh.cod_empresa = g.COD_EMPRESA',
'             and cod_sucursal = ''01''',
'             and rh.cod_area = g.AREA_RESPONSABLE) area_inventario,',
'         (SELECT DESCRIPCION',
'            FROM CO_ubicacion_inventario ui',
'           WHERE ui.COD_EMPRESA = g.COD_EMPRESA',
'             and ui.cod_ubicacion = UBICACION_INVENTARIO) ubicacion_inventario',
'        ',
'          from st_generacion_inventario     g,',
'               st_generacion_inventario_det gd,',
'               st_articulos                 a,',
'               sucursales                   s,',
'               st_conteo_inventario         cc',
'         where G.cod_empresa = :p_cod_empresa',
'           and G.FEC_COMPROBANTE between :P818_FECHA_INICIO and',
'               :p818_fecha_fin',
'           and (g.ubicacion_inventario = :P818_UBICACION_INVENTARIO or',
'               :P818_UBICACION_INVENTARIO is null)',
'           and (g.tipo_inventario = :P818_TIPO_INVENTARIO or',
'               :P818_TIPO_INVENTARIO is null)',
'           and (g.area_responsable = :P818_AREA_RESPONSABLE or',
'               :P818_AREA_RESPONSABLE is null)',
'           AND G.COD_EMPRESA = :P_COD_EMPRESA',
'           and g.IND_INVENTARIO_CPH IN (''N'' )',
'           and (g.IND_INVENTARIO_CPH = :P818_EMPRESA or',
'               :P818_EMPRESA is null)',
'           and (g.COD_SUCURSAL = :P818_SUCURSAL or :P818_SUCURSAL is null)',
'           and g.cod_empresa = gd.cod_empresa',
'           and g.tip_comprobante = gd.tip_comprobante',
'           and g.ser_comprobante = gd.ser_comprobante',
'           and g.nro_comprobante = gd.nro_comprobante',
'           and G.cod_empresa = s.cod_empresa',
'           and g.cod_sucursal = s.cod_sucursal',
'           and GD.cod_empresa = a.cod_empresa',
'           and GD.cod_articulo = a.cod_articulo',
'           and gd.cod_empresa = cc.cod_empresa(+)',
'           and gd.tip_comprobante = cc.tip_comprobante(+)',
'           and gd.ser_comprobante = cc.ser_comprobante(+)',
'           and gd.nro_comprobante = cc.nro_comprobante(+)',
'           and gd.cod_articulo = cc.cod_articulo(+)',
'           AND NVL(INVENTARIOOT, ''N'') <> ''S''',
'        -----bh----------------',
'union all ',
'select  s.descripcion desc_sucursal,',
'         a.cod_encargado,',
'         S.cod_sucursal,',
'         GD.cod_articulo,',
'         a.descripcion desc_art,',
'         GD.CANTIDAD CANTIDAD_SISTEMA,',
'         (cc.conteo1) C1,',
'         (cc.conteo2) C2,',
'         (cc.conteo3) C3,',
'         (cc.conteo4) C4,',
'         (cc.conteo5) C5,',
'         (cc.conteo6) C6,',
'         (cc.conteo7) C7,',
'         (cc.conteo8) C8,',
'         ((nvl(conteo1,',
'               nvl(conteo2,',
'                   nvl(conteo3,',
'                       nvl(conteo4,',
'                           nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))) CU,',
'         NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'             0) COSTO_STOCK,',
'         g.nro_comprobante,',
'         g.sucursal,',
'         a.cod_Art_corto,',
'         GD.NRO_OT,',
'         0 entrada,',
'         0 salida,',
'         a.costo_prom,',
'         g.observacion,',
'         ',
'         round(NVL(ROUND(round(case when nvl(gd.costo,0)=0 then a.costo_prom else  NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'             0) end) *',
'                         (SELECT SUM(E.CANTIDAD)',
'                            FROM SM_INVENTARIO_DET E',
'                           WHERE g.nro_comprobante = e.inventory_id',
'                             and gd.cod_articulo = e.cod_articulo)),',
'                   0)) COSTO_INVENTARIO,',
'         ((nvl(conteo1,',
'               nvl(conteo2,',
'                   nvl(conteo3,',
'                       nvl(conteo4,',
'                           nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))) CANTIDAD_inventario,',
'         ',
'         (select descripcion',
'            from CO_TIPO_DIFERENCIA td',
'           where cod_tipo_diferencia = gd.tipo_diferencia) tipo_diferencia,',
'         gd.comentario_diferencia,',
'         gd.ind_reincidente,',
'         (select descripcion',
'            from CO_tipo_inventario ti',
'           where ti.cod_empresa = g.cod_empresa',
'             and ti.cod_tipo_inventario = g.TIPO_INVENTARIO) tipo_inventario,',
'         ',
'         (select rh.descripcion',
'            from rh_areas rh',
'           where rh.cod_empresa = g.COD_EMPRESA',
'             and cod_sucursal = ''01''',
'             and rh.cod_area = g.AREA_RESPONSABLE) area_inventario,',
'         (SELECT DESCRIPCION',
'            FROM CO_ubicacion_inventario ui',
'           WHERE ui.COD_EMPRESA = g.COD_EMPRESA',
'             and ui.cod_ubicacion = UBICACION_INVENTARIO) ubicacion_inventario',
'  from st_generacion_inventario     g,',
'       st_generacion_inventario_det gd,',
'       st_articulos                 a,',
'       sucursales                   s,',
'       st_conteo_inventario         cc',
'  where G.cod_empresa = :p_cod_empresa',
'           and G.FEC_COMPROBANTE between :P818_FECHA_INICIO and',
'               :p818_fecha_fin',
'           and (g.ubicacion_inventario = :P818_UBICACION_INVENTARIO or',
'               :P818_UBICACION_INVENTARIO is null)',
'           and (g.tipo_inventario = :P818_TIPO_INVENTARIO or',
'               :P818_TIPO_INVENTARIO is null)',
'           and (g.area_responsable = :P818_AREA_RESPONSABLE or',
'               :P818_AREA_RESPONSABLE is null)',
'           AND G.COD_EMPRESA = :P_COD_EMPRESA',
'           and g.IND_INVENTARIO_CPH IN (''B'' )',
'                and (g.IND_INVENTARIO_CPH = :P818_EMPRESA or',
'               :P818_EMPRESA is null)',
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
'   ',
'        union all',
'        select /*+ rule*/',
'         s.descripcion desc_sucursal,',
'         a.cod_encargado,',
'         S.cod_sucursal,',
'         GD.cod_articulo,',
'         a.descripcion desc_art,',
'         GD.CANTIDAD CANTIDAD_SISTEMA,',
'         cc.conteo1 C1,',
'         cc.conteo2 C2,',
'         cc.conteo3 C3,',
'         cc.conteo4 C4,',
'         cc.conteo5 C5,',
'         cc.conteo6 C6,',
'         cc.conteo7 C7,',
'         cc.conteo8 C8,',
'         ((nvl(conteo1,',
'               nvl(conteo2,',
'                   nvl(conteo3,',
'                       nvl(conteo4,',
'                           nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))) CU,',
'         ',
'         NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'             0) COSTO_STOCK,',
'         ',
'         g.nro_comprobante,',
'         g.sucursal,',
'         a.cod_Art_corto,',
'         GD.NRO_OT,',
'         0 entrada,',
'         0 salida,',
'         a.costo_prom,',
'         g.observacion,',
'        round(NVL(ROUND(round(case when nvl(gd.costo,0)=0 then a.costo_prom else  NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'             0) end) *',
'                         (SELECT SUM(E.CANTIDAD)',
'                            FROM SM_INVENTARIO_DET E',
'                           WHERE g.nro_comprobante = e.inventory_id',
'                             and gd.cod_articulo = e.cod_articulo)),',
'                   0)) COSTO_INVENTARIO,',
'         ((nvl(conteo1,',
'               nvl(conteo2,',
'                   nvl(conteo3,',
'                       nvl(conteo4,',
'                           nvl(conteo5, nvl(conteo6, nvl(conteo7, conteo8))))))))) CANTIDAD_inventario,',
'         ',
'         (select descripcion',
'            from CO_TIPO_DIFERENCIA td',
'           where cod_tipo_diferencia = gd.tipo_diferencia) tipo_diferencia,',
'         gd.comentario_diferencia,',
'         gd.ind_reincidente,',
'         (select descripcion',
'            from CO_tipo_inventario ti',
'           where ti.cod_empresa = g.cod_empresa',
'             and ti.cod_tipo_inventario = g.TIPO_INVENTARIO) tipo_inventario,',
'         ',
'         (select rh.descripcion',
'            from rh_areas rh',
'           where rh.cod_empresa = g.COD_EMPRESA',
'             and cod_sucursal = ''01''',
'             and rh.cod_area = g.AREA_RESPONSABLE) area_inventario,',
'         (SELECT DESCRIPCION',
'            FROM CO_ubicacion_inventario ui',
'           WHERE ui.COD_EMPRESA = g.COD_EMPRESA',
'             and ui.cod_ubicacion = UBICACION_INVENTARIO) ubicacion_inventario',
'        ',
'          from st_generacion_inventario     g,',
'               st_generacion_inventario_det gd,',
'               v_articulos_cph              a,',
'               sucursales@dblink_cph        s,',
'               st_conteo_inventario         cc',
'        ',
'         where G.cod_empresa = :p_cod_empresa',
'           and G.FEC_COMPROBANTE between :P818_FECHA_INICIO and',
'               :p818_fecha_fin',
'           and (g.ubicacion_inventario = :P818_UBICACION_INVENTARIO or',
'               :P818_UBICACION_INVENTARIO is null)',
'           and (g.tipo_inventario = :P818_TIPO_INVENTARIO or',
'               :P818_TIPO_INVENTARIO is null)',
'           and (g.area_responsable = :P818_AREA_RESPONSABLE or',
'               :P818_AREA_RESPONSABLE is null)',
'           AND G.COD_EMPRESA = :P_COD_EMPRESA',
'           and (g.IND_INVENTARIO_CPH = :P818_EMPRESA or',
'               :P818_EMPRESA is null)',
'           and (g.COD_SUCURSAL = :P818_SUCURSAL or :P818_SUCURSAL is null)',
'           and g.cod_empresa = gd.cod_empresa',
'           and g.tip_comprobante = gd.tip_comprobante',
'           and g.IND_INVENTARIO_CPH IN (''S'')',
'           and g.ser_comprobante = gd.ser_comprobante',
'           and g.nro_comprobante = gd.nro_comprobante',
'           and G.cod_empresa = s.cod_empresa',
'           and g.cod_sucursal = s.cod_sucursal',
'           and GD.cod_articulo = a.cod_articulo',
'           and gd.cod_empresa = cc.cod_empresa(+)',
'           and gd.tip_comprobante = cc.tip_comprobante(+)',
'           and gd.ser_comprobante = cc.ser_comprobante(+)',
'           and gd.nro_comprobante = cc.nro_comprobante(+)',
'           and gd.cod_articulo = cc.cod_articulo(+)',
'           AND NVL(G.IND_INVENTARIO_CPH, ''N'') = ''S''',
'        union all',
'        -----tf---',
'        ',
'        select s.descripcion desc_sucursal,',
'               null cod_encargado,',
'               S.cod_sucursal,',
'               GD.cod_articulo,',
'               a.descripcion desc_art,',
'               GD.CANTIDAD CANTIDAD_SISTEMA,',
'               (cc.conteo1) C1,',
'               (cc.conteo2) C2,',
'               (cc.conteo3) C3,',
'               (cc.conteo4) C4,',
'               (cc.conteo5) C5,',
'               (cc.conteo6) C6,',
'               (cc.conteo7) C7,',
'               (cc.conteo8) C8,',
'               ((nvl(conteo1,',
'                     nvl(conteo2,',
'                         nvl(conteo3,',
'                             nvl(conteo4,',
'                                 nvl(conteo5,',
'                                     nvl(conteo6, nvl(conteo7, conteo8))))))))) CU,',
'               ',
'               NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'           0) COSTO_STOCK,',
'               ',
'               g.nro_comprobante,',
'               g.sucursal,',
'               a.cod_Art_corto,',
'               GD.NRO_OT,',
'               0                 entrada,',
'               0                 salida,',
'               a.costo_prom,',
'               g.observacion',
'               ',
'              ,',
'                 round(NVL(ROUND(round(case when nvl(gd.costo,0)=0 then a.costo_prom else  NVL(ROUND(GD.COSTO / decode(nvl(GD.CANTIDAD, 0), 0, 1, GD.CANTIDAD)),',
'             0) end) *',
'                               ',
'                               (SELECT SUM(E.CANTIDAD)',
'                                  FROM SM_INVENTARIO_DET E',
'                                 WHERE g.nro_comprobante = e.inventory_id',
'                                   and gd.cod_articulo = e.cod_articulo)',
'                               ',
'                               ),',
'                         0)) COSTO_INVENTARIO,',
'               ((nvl(conteo1,',
'                     nvl(conteo2,',
'                         nvl(conteo3,',
'                             nvl(conteo4,',
'                                 nvl(conteo5,',
'                                     nvl(conteo6, nvl(conteo7, conteo8))))))))) CANTIDAD_inventario,',
'               ',
'               (select descripcion',
'                  from CO_TIPO_DIFERENCIA td',
'                 where cod_tipo_diferencia = gd.tipo_diferencia) tipo_diferencia,',
'               gd.comentario_diferencia,',
'               gd.ind_reincidente,',
'               (select descripcion',
'                  from CO_tipo_inventario ti',
'                 where ti.cod_empresa = g.cod_empresa',
'                   and ti.cod_tipo_inventario = g.TIPO_INVENTARIO) tipo_inventario,',
'               ',
'               (select descripcion',
'                  from rh_areas rh',
'                 where rh.cod_empresa = g.COD_EMPRESA',
'                   and cod_sucursal = ''01''',
'                   and rh.cod_area = g.AREA_RESPONSABLE) area_inventario,',
'               (SELECT DESCRIPCION',
'                  FROM CO_ubicacion_inventario ui',
'                 WHERE ui.COD_EMPRESA = g.COD_EMPRESA',
'                   and ui.cod_ubicacion = UBICACION_INVENTARIO) ubicacion_inventario',
'          from st_generacion_inventario     g,',
'               st_generacion_inventario_det gd,',
'               V_ARTICULOS_TF               a,',
'               sucursales@Dblink_Tf         s,',
'               st_conteo_inventario         cc',
'         where G.cod_empresa = :p_cod_empresa',
'           and G.FEC_COMPROBANTE between :P818_FECHA_INICIO and',
'               :p818_fecha_fin',
'           and (g.ubicacion_inventario = :P818_UBICACION_INVENTARIO or',
'               :P818_UBICACION_INVENTARIO is null)',
'           and (g.tipo_inventario = :P818_TIPO_INVENTARIO or',
'               :P818_TIPO_INVENTARIO is null)',
'           and (g.area_responsable = :P818_AREA_RESPONSABLE or',
'               :P818_AREA_RESPONSABLE is null)',
'           AND G.COD_EMPRESA = :P_COD_EMPRESA',
'           and (g.IND_INVENTARIO_CPH = :P818_EMPRESA or',
'               :P818_EMPRESA is null)',
'           and (g.COD_SUCURSAL = :P818_SUCURSAL or :P818_SUCURSAL is null)',
'           and g.IND_INVENTARIO_CPH IN (''T'')',
'           and g.cod_empresa = gd.cod_empresa',
'           and g.tip_comprobante = gd.tip_comprobante',
'           and g.ser_comprobante = gd.ser_comprobante',
'           and g.nro_comprobante = gd.nro_comprobante',
'           and G.cod_empresa = s.cod_empresa',
'           and g.cod_sucursal = s.cod_sucursal',
'              ',
'           and GD.cod_articulo = a.cod_articulo',
'           and gd.cod_empresa = cc.cod_empresa(+)',
'           and gd.tip_comprobante = cc.tip_comprobante(+)',
'           and gd.ser_comprobante = cc.ser_comprobante(+)',
'           and gd.nro_comprobante = cc.nro_comprobante(+)',
'           and gd.cod_articulo = cc.cod_articulo(+)',
'         order by 1, 3 asc)',
'         WHERE :P818_EJECUTAR=''S''',
' group by area_inventario',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P818_EMPRESA,P818_SUCURSAL,P818_TIPO_INVENTARIO,P818_UBICACION_INVENTARIO,P818_AREA_RESPONSABLE,P818_FECHA_INICIO,P818_FECHA_FIN,P818_EJECUTAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resultado de inventario por Area'
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
 p_id=>wwv_flow_imp.id(641198502023844127)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'FCARDOZO'
,p_internal_uid=>641198502023844127
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40874634936631329)
,p_db_column_name=>'CANTIDAD_SISTEMA'
,p_display_order=>400
,p_column_identifier=>'AP'
,p_column_label=>'Cantidad Sistema'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40874709268631330)
,p_db_column_name=>'CU'
,p_display_order=>410
,p_column_identifier=>'AQ'
,p_column_label=>'Cu'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40874880960631331)
,p_db_column_name=>'DIFERENCIA'
,p_display_order=>420
,p_column_identifier=>'AR'
,p_column_label=>'Diferencia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40874990769631332)
,p_db_column_name=>'COSTO_STOCK'
,p_display_order=>430
,p_column_identifier=>'AS'
,p_column_label=>'Costo Stock'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40875010980631333)
,p_db_column_name=>'SISTEMA_VALORIZADO'
,p_display_order=>440
,p_column_identifier=>'AT'
,p_column_label=>'Sistema Valorizado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40875158622631334)
,p_db_column_name=>'CONTEO_VALORIZADO'
,p_display_order=>450
,p_column_identifier=>'AU'
,p_column_label=>'Conteo Valorizado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40875374038631336)
,p_db_column_name=>'DIFERENCIA_VALORIZADA'
,p_display_order=>470
,p_column_identifier=>'AW'
,p_column_label=>'Diferencia Valorizada'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40875584086631338)
,p_db_column_name=>'AREA_INVENTARIO'
,p_display_order=>490
,p_column_identifier=>'AY'
,p_column_label=>'Area Inventario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40876703617631350)
,p_db_column_name=>'CANTIDAD_CONTEO'
,p_display_order=>500
,p_column_identifier=>'AZ'
,p_column_label=>'Cantidad Conteo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258682408488363601)
,p_db_column_name=>'DIFERENCIA_CANT_PORCENTAJE'
,p_display_order=>510
,p_column_identifier=>'BA'
,p_column_label=>'% Diferencia Cantidades'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258682524599363602)
,p_db_column_name=>'DIFERENCIA_VAL_PORCENTAJE'
,p_display_order=>520
,p_column_identifier=>'BB'
,p_column_label=>'% Diferencia Valorizada'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(641262756250603591)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'1790800'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_view_mode=>'REPORT'
,p_report_columns=>'AREA_INVENTARIO:CANTIDAD_SISTEMA:CANTIDAD_CONTEO:DIFERENCIA:SISTEMA_VALORIZADO:CONTEO_VALORIZADO:DIFERENCIA_VALORIZADA:DIFERENCIA_CANT_PORCENTAJE:DIFERENCIA_VAL_PORCENTAJE:'
,p_sort_column_1=>'NRO_COMPROBANTE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'FEC_COMPROBANTE'
,p_sort_direction_2=>'DESC'
,p_sum_columns_on_break=>'CANTIDAD_SISTEMA:DIFERENCIA:CANTIDAD_CONTEO:SISTEMA_VALORIZADO:CONTEO_VALORIZADO:DIFERENCIA_VALORIZADA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1176436279871526265)
,p_plug_name=>'Filtro'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(462199334836460271)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1176436279871526265)
,p_button_name=>'Refrescar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refrescar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(462199730299460272)
,p_name=>'P818_EMPRESA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1176436279871526265)
,p_item_default=>'N'
,p_prompt=>'Empresa'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:NGO;N,CPH;S,TF;T,BEST HOME;B'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-user-check'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
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
 p_id=>wwv_flow_imp.id(462200125120460292)
,p_name=>'P818_SUCURSAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1176436279871526265)
,p_prompt=>'Deposito/Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion||'' - ''|| cod_sucursal  d, cod_sucursal from sucursales where cod_empresa = :P_cod_empresa',
'AND NVL(:P818_EMPRESA,''N'')=''N'' ',
'--AND NVL(estado,''S'') in(''I'',''N'' )',
'AND NVL(estado,''S'') = ''S''',
'union all ',
'     Select  descripcion||'' - ''|| cod_sucursal  d, cod_sucursal  ',
'       from v_sucursales_cph',
'      where cod_empresa  = :P_cod_empresa      ',
'AND NVL(:P818_EMPRESA,''N'')=''S''',
'union all',
'     Select  descripcion||'' - ''|| cod_sucursal  d, cod_sucursal  ',
'       from INV.V_depositos_tf',
'      where cod_empresa  = :P_cod_empresa      ',
'AND NVL(:P818_EMPRESA,''N'')=''T'' ',
'union all ',
'select descripcion||'' - ''|| cod_sucursal  d, cod_sucursal from sucursales where cod_empresa = ''18''',
'AND NVL(:P818_EMPRESA,''N'')=''B'' ',
'--AND NVL(estado,''S'') in(''I'',''N'' )',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_cascade_parent_items=>'P818_EMPRESA,P_COD_EMPRESA'
,p_ajax_items_to_submit=>'P818_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-user-check'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(462200533416460296)
,p_name=>'P818_TIPO_INVENTARIO'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1176436279871526265)
,p_prompt=>'Tipo Inventario'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_tipo_inventario from CO_tipo_inventario',
'where cod_empresa= :P_COD_EMPRESA',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Todos'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(462200934024460298)
,p_name=>'P818_UBICACION_INVENTARIO'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1176436279871526265)
,p_prompt=>'Ubicacion Inventario'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DESCRIPCION,cod_ubicacion',
'FROM CO_ubicacion_inventario ',
'WHERE COD_EMPRESA = :P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Todos'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(462201349976460298)
,p_name=>'P818_AREA_RESPONSABLE'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1176436279871526265)
,p_prompt=>'Area Responsable'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_area from rh_areas',
'where cod_empresa= :P_COD_EMPRESA',
'and cod_sucursal=''01'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Todos'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(462201774307460298)
,p_name=>'P818_FECHA_INICIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(1176436279871526265)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Inicio'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(462202114092460299)
,p_name=>'P818_FECHA_FIN'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(1176436279871526265)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Fin'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(462202577341460299)
,p_name=>'P818_USUARIO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(1176436279871526265)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(963953506910292732)
,p_name=>'P818_EJECUTAR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(1176436279871526265)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(462202914959460303)
,p_name=>'da_refrescar'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(462199334836460271)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(258685644880363633)
,p_event_id=>wwv_flow_imp.id(462202914959460303)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var spinner = apex.util.showSpinner(); ',
'$("#apex_wait_overlay").remove(); ',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(258685804654363635)
,p_event_id=>wwv_flow_imp.id(462202914959460303)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE CURSOR CCAB IS ',
'  select tip_comprobante p_tip_comprobante,',
'             ser_comprobante p_ser_comprobante,',
'             nro_comprobante p_nro_comprobante,',
'             NVL(A.INVENTARIOOT, ''N'') ES_OT',
'        from st_generacion_inventario a',
'       where cod_empresa = ''1''',
'      ',
'         and (a.IND_INVENTARIO_CPH = :P818_EMPRESA or',
'               :P818_EMPRESA is null)',
'         AND A.FEC_COMPROBANTE BETWEEN :P818_FECHA_INICIO AND :P818_FECHA_FIN',
'         AND (A.TIPO_INVENTARIO = :P818_TIPO_INVENTARIO OR :P818_TIPO_INVENTARIO IS NULL)',
'         AND (A.AREA_RESPONSABLE = :P818_AREA_RESPONSABLE OR :P818_AREA_RESPONSABLE IS NULL)',
'         AND (A.UBICACION_INVENTARIO = :P818_UBICACION_INVENTARIO OR :P818_UBICACION_INVENTARIO IS NULL);',
'         BEGIN ',
'FOR X IN CCAB LOOP ',
' :P818_EJECUTAR:=''S'';',
'if :P818_EMPRESA=''S'' THEN',
' 	BEGIN',
'        ',
'',
' sp_reprocesa_conteo_CPH(:p_cod_empresa ,',
'	''PR'',',
'                                                sysdate -6     ,',
'                                               sysdate +5     ,',
'                                                X.p_nro_comprobante);',
'',
'',
'    END;',
'ELSIF  :P818_EMPRESA=''T'' THEN',
' 	BEGIN',
'       ',
' sp_reprocesa_conteo_TF(:p_cod_empresa ,',
'	''PR'',',
'                                                sysdate -6     ,',
'                                               sysdate +5     ,',
'                                                X.p_nro_comprobante);',
'',
'',
'    END;   ',
'',
'ELSIF  :P818_EMPRESA=''B'' THEN',
' 	BEGIN',
'       ',
' sp_reprocesa_conteo_BH(:p_cod_empresa ,',
'	''PR'',',
'                                                sysdate -6     ,',
'                                               sysdate +5     ,',
'                                                x.p_nro_comprobante);   ',
'                                                end;  ',
'ELSE',
'    BEGIN',
'        ',
' sp_reprocesa_conteo(:p_cod_empresa ,',
'	''PR'',',
'                                                sysdate -6     ,',
'                                               sysdate +5     ,',
'                                                X.p_nro_comprobante);',
'    END;',
'END IF;',
'END LOOP;',
'END;'))
,p_attribute_02=>'P818_EMPRESA,P818_SUCURSAL,P818_TIPO_INVENTARIO,P818_UBICACION_INVENTARIO,P818_FECHA_INICIO,P818_FECHA_FIN,P818_AREA_RESPONSABLE'
,p_attribute_03=>'P818_EJECUTAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(258685785836363634)
,p_event_id=>wwv_flow_imp.id(462202914959460303)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(".u-Processing").remove(); '
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(462203456249460312)
,p_event_id=>wwv_flow_imp.id(462202914959460303)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(641198430809844126)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(258684023147363617)
,p_event_id=>wwv_flow_imp.id(462202914959460303)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(258682678752363603)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(258685582355363632)
,p_event_id=>wwv_flow_imp.id(462202914959460303)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(258684194187363618)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(963953355832292730)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
':P818_EJECUTAR:=''N'';'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
