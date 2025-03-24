prompt --application/pages/page_00194
begin
--   Manifest
--     PAGE: 00194
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
 p_id=>194
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTRVEMOA'
,p_alias=>'VTRVEMOA'
,p_step_title=>'VTRVEMOA'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230204103204'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41982121112929814)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41982875040929821)
,p_plug_name=>'VTRVEMOA'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42747086508992103)
,p_plug_name=>'REPORTE VTVEMOAR_NEW'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select cc.cod_empresa, cd.cod_iva, '' '' desc_iva, '''' ORDEN,cd.cod_articulo, ar.descripcion desc_articulo,',
'        sum( decode( cc.tip_comprobante, pg.valor, 0, nvl( cd.cantidad, 0 ) ) ) fac_cantidad,',
'        sum( decode( cc.tip_comprobante, pg.valor, nvl( cd.cantidad, 0 ), 0 ) ) ncr_cant,',
'        sum( decode( cc.tip_comprobante, pg.valor, 0, nvl( cd.monto_total, 0 ) ) * nvl( cc.tip_cambio, 0 ) ) fac_monto_total,',
'        sum( decode( cc.tip_comprobante, pg.valor, nvl( cd.monto_total, 0 ), 0 ) * nvl( cc.tip_cambio, 0 ) ) ncr_monto_total,',
'        sum( decode( cc.tip_comprobante, pg.valor, 0, nvl( cd.total_iva, 0 ) ) * nvl( cc.tip_cambio, 0 ) ) fac_total_iva,',
'        sum( decode( cc.tip_comprobante, pg.valor, nvl( cd.total_iva, 0 ), 0 ) * nvl( cc.tip_cambio, 0 ) ) ncr_total_iva,',
'        sum( decode( cc.tip_comprobante, pg.valor, 0, nvl( cd.monto_total, 0 ) + nvl( cd.total_iva, 0 ) ) * nvl( cc.tip_cambio, 0 ) ) fac_total_venta,',
'        sum( decode( cc.tip_comprobante, pg.valor, nvl( cd.monto_total, 0 ) + nvl( cd.total_iva, 0 ), 0 ) * nvl( cc.tip_cambio, 0 ) ) ncr_total_venta,',
'        sum( decode( cc.tip_comprobante, pg.valor, 0, nvl( cd.cantidad, 0 ) * nvl( co.costo_prom_nue, 0 ) ) ) fac_costo_total,',
'        sum( decode( cc.tip_comprobante, pg.valor, nvl( cd.cantidad, 0 ) * nvl( co.costo_prom_nue, 0 ), 0 ) ) ncr_costo_total,',
'        0 monto_obsolescencia, 0 costo_obsolescencia, 0 porcentaje_obs ,',
'                     decode(nvl(cd.cod_iva,''9''), ''5'',',
'                      decode(cc.nro_inscripcion_ad , null, ''6'', cd.cod_iva),''6'',cd.cod_iva, cd.cod_iva)  iva_det,',
'                      cc.cod_sucursal, su.descripcion desc_sucursal',
'   from vt_comprobantes_cabecera cc, monedas mo, sucursales su, tipos_comprobantes tc, vt_comprobantes_detalle cd,',
'        st_articulos ar, /*st_iva iv,*/ co_tipos_cambios ca, st_lotes lo, st_costos_art co, parametros_generales pg',
'  where :P194_AUX_CONTROL_REPORTE IS NOT NULL ',
'  AND cc.cod_empresa = :P_cod_empresa',
'    and (  cc.fec_comprobante between :P194_fec_ini and :P194_fec_fin )',
'    and ( :P194_cod_sucursal IS NULL OR cc.cod_sucursal = :P194_cod_sucursal )',
'    and ( :P194_cod_iva IS NULL OR cd.nro_lote = :P194_cod_iva )',
'    and su.cod_sucursal=cc.cod_sucursal',
'    and cc.cod_empresa=su.cod_empresa',
'    and ( :P194_cod_rubro IS NULL OR ar.cod_rubro = :P194_cod_rubro )',
'    and ( :P194_cod_familia IS NULL OR ar.cod_familia = :P194_cod_familia )',
'    and ( ( :P194_cod_articulo_DES IS NULL OR :P194_cod_articulo_HAS IS NULL ) OR',
'            cd.cod_articulo between :P194_cod_articulo_DES and :P194_cod_articulo_HAS )',
'    and ( nvl( :P194_obsoleto, ''T'' ) = ''T'' OR nvl( :P194_obsoleto, ''T'' ) = ''N'' )',
'    and cc.cod_empresa = tc.cod_empresa',
'    and cc.tip_comprobante = tc.tip_comprobante',
'    and ( cc.estado IS NULL OR cc.estado <> ''A'' )',
'    and cc.cod_moneda = mo.cod_moneda',
'    and cc.cod_empresa = cd.cod_empresa',
'    and cc.tip_comprobante = cd.tip_comprobante',
'    and cc.ser_comprobante = cd.ser_comprobante',
'    and cc.nro_comprobante = cd.nro_comprobante',
'    and cd.cod_empresa = ar.cod_empresa',
'    and cd.cod_articulo = ar.cod_articulo',
'    and cd.cod_empresa = lo.cod_empresa(+)',
'    and cd.cod_articulo = lo.cod_articulo(+)',
'    and cd.nro_lote = lo.nro_lote(+)',
'--    and lo.cod_iva = iv.cod_iva(+)',
'    and cc.cod_empresa = ca.cod_empresa(+)',
'    and cc.cod_moneda = ca.cod_moneda(+)',
'    and cc.fec_comprobante > ca.fec_tip_cambio(+)',
'    and pg.parametro = ''TIPO_NOTACRE''',
'    and ca.fec_tip_cambio = ( select max( b2.fec_tip_cambio )',
'                                from co_tipos_cambios b2',
'                               where cc.cod_empresa = b2.cod_empresa',
'                                 and cc.cod_moneda = b2.cod_moneda',
'                                 and cc.fec_comprobante > b2.fec_tip_cambio )',
'    and cd.cod_empresa = co.cod_empresa',
'    and cd.cod_articulo = co.cod_articulo',
'    and trunc(co.fec_comprobante) <= trunc(cc.fec_comprobante)',
'    and to_char( co.fec_comprobante, ''YYYYMMDD'' ) || co.rowid = ( select max( to_char( cs.fec_comprobante, ''YYYYMMDD'' ) || cs.rowid )',
'                                                                    from st_costos_art cs',
'                                                                   where cs.cod_empresa = cd.cod_empresa',
'                                                                     and cs.cod_articulo = cd.cod_articulo',
'                                                                     and trunc(cs.fec_comprobante) <= trunc(cc.fec_comprobante) )',
'    and cd.cod_articulo not in( select od.cod_articulo',
'                                  from st_articulos_obsoletos_det od, st_articulos_obsoletos_cab oc',
'                                 where od.cod_empresa = cd.cod_empresa',
'                                   and od.cod_articulo = cd.cod_articulo',
'                                   and od.nro_lote = cd.nro_lote',
'                                   and nvl( od.cantidad, 0 ) > 0 ',
'                                   and od.cod_empresa = oc.cod_empresa',
'                                   and od.tip_comprobante = oc.tip_comprobante',
'                                   and od.ser_comprobante = oc.ser_comprobante',
'                                   and od.nro_comprobante = oc.nro_comprobante',
'                                   and oc.fec_operacion <= cc.fec_comprobante ',
unistr('                                    ------Agregado Obsolescencia de articulos campo: fec_vigencia --Verificar si est\00E1 bien.'),
'                                   and (oc.fec_vigencia is null or oc.fec_vigencia >= cc.fec_comprobante) )',
'                                   --------------------------------------------',
'  group by cc.cod_empresa, cd.cod_iva,  cd.cod_articulo, ar.descripcion,cc.cod_sucursal, su.descripcion ,',
'                     decode(nvl(cd.cod_iva,''9''), ''5'',',
'                      decode(cc.nro_inscripcion_ad , null, ''6'', cd.cod_iva),''6'',cd.cod_iva, cd.cod_iva)',
'UNION ALL',
'  select cc.cod_empresa, cd.cod_iva, '' '' desc_iva, ''''ORDEN,cd.cod_articulo, ar.descripcion desc_articulo,',
'        sum( decode( cc.tip_comprobante, pg.valor, 0, nvl( cd.cantidad, 0 ) ) ) fac_cant,',
'        sum( decode( cc.tip_comprobante, pg.valor, nvl( cd.cantidad, 0 ), 0 ) ) ncr_cant,',
'        sum( decode( cc.tip_comprobante, pg.valor, 0, nvl( cd.monto_total, 0 ) ) * nvl( cc.tip_cambio, 0 ) ) fac_monto_total,',
'        sum( decode( cc.tip_comprobante, pg.valor, nvl( cd.monto_total, 0 ), 0 ) * nvl( cc.tip_cambio, 0 ) ) ncr_monto_total,',
'        sum( decode( cc.tip_comprobante, pg.valor, 0, nvl( cd.total_iva, 0 ) ) * nvl( cc.tip_cambio, 0 ) ) fac_total_iva,',
'        sum( decode( cc.tip_comprobante, pg.valor, nvl( cd.total_iva, 0 ), 0 ) * nvl( cc.tip_cambio, 0 ) ) ncr_total_iva,',
'        sum( decode( cc.tip_comprobante, pg.valor, 0, nvl( cd.monto_total, 0 ) + nvl( cd.total_iva, 0 ) ) * nvl( cc.tip_cambio, 0 ) ) fac_total_venta,',
'        sum( decode( cc.tip_comprobante, pg.valor, nvl( cd.monto_total, 0 ) + nvl( cd.total_iva, 0 ), 0 ) * nvl( cc.tip_cambio, 0 ) ) ncr_total_venta,',
'        sum( decode( cc.tip_comprobante, pg.valor, 0, nvl( cd.cantidad, 0 ) * nvl( co.costo_prom_nue, 0 ) ) ) fac_costo_total,',
'        sum( decode( cc.tip_comprobante, pg.valor, nvl( cd.cantidad, 0 ) * nvl( co.costo_prom_nue, 0 ), 0 ) ) ncr_costo_total,',
'        round( sum( decode( cc.tip_comprobante, pg.valor, -1,1) *  ',
'                           nvl( cd.cantidad, cd.cantidad_ub ) * ( nvl( od.monto_actual, 0 ) / nvl( od.cantidad, 0 ) ) ), 0 ) monto_obsolescencia,',
'        sum( decode( cc.tip_comprobante, pg.valor, -1,1) * nvl( cd.cantidad, 0 ) * nvl( co.costo_prom_nue, 0 ) ) costo_obsolescencia,',
'---        round( sum( nvl( co.costo_prom_nue, 0 ) * nvl( cd.cantidad, 0 ) ), 0 ) costo_obsolescencia,',
'        avg( nvl( od.porc_obsol, 0 ) ) porcentaje_obs, ',
'                     decode(nvl(cd.cod_iva,''9''), ''5'',',
'                      decode(cc.nro_inscripcion_ad , null, ''6'', cd.cod_iva),''6'',cd.cod_iva, cd.cod_iva) iva_det,',
'                      cc.cod_sucursal, su.descripcion desc_sucursal',
'   from vt_comprobantes_cabecera cc, monedas mo, sucursales su, tipos_comprobantes tc, vt_comprobantes_detalle cd,',
'        st_articulos ar, /*st_iva iv,*/ co_tipos_cambios ca, st_lotes lo, st_costos_art co, parametros_generales pg,',
'        st_articulos_obsoletos_cab oc, st_articulos_obsoletos_det od',
'  where :P194_AUX_CONTROL_REPORTE IS NOT NULL ',
'  AND cc.cod_empresa = :P194_cod_empresa',
'    and ( ( :P194_fec_ini IS NULL OR :P194_fec_fin IS NULL ) OR',
'            cc.fec_comprobante between :P194_fec_ini and :P194_fec_fin )',
'    and ( :P194_cod_sucursal IS NULL OR cc.cod_sucursal = :P194_cod_sucursal )',
'    and ( :P194_cod_iva IS NULL OR cd.nro_lote = :P194_cod_iva )',
'    and ( :P194_cod_rubro IS NULL OR ar.cod_rubro = :P194_cod_rubro )',
'    and ( :P194_cod_familia IS NULL OR ar.cod_familia = :P194_cod_familia )',
'    and ( ( :P194_cod_articulo_DES IS NULL OR :P194_cod_articulo_HAS IS NULL ) OR',
'            cd.cod_articulo between :P194_cod_articulo_DES and :P194_cod_articulo_HAS )',
'    and ( nvl( :P194_obsoleto, ''T'' ) = ''T'' OR nvl( :P194_obsoleto, ''T'' ) = ''S'' )',
'    and cc.cod_empresa = tc.cod_empresa',
'',
'    and cc.tip_comprobante = tc.tip_comprobante',
'    and ( cc.estado IS NULL OR cc.estado <> ''A'' )',
'    and cc.cod_empresa = su.cod_empresa',
'    and cc.cod_sucursal = su.cod_sucursal',
'    and cc.cod_moneda = mo.cod_moneda',
'    and cc.cod_empresa = cd.cod_empresa',
'    and cc.tip_comprobante = cd.tip_comprobante',
'    and cc.ser_comprobante = cd.ser_comprobante',
'    and cc.nro_comprobante = cd.nro_comprobante',
'    and cd.cod_empresa = ar.cod_empresa',
'    and cd.cod_articulo = ar.cod_articulo',
'    and cd.cod_empresa = lo.cod_empresa(+)',
'    and cd.cod_articulo = lo.cod_articulo(+)',
'    and cd.nro_lote = lo.nro_lote(+)',
'--    and lo.cod_iva = iv.cod_iva(+)',
'    and cc.cod_empresa = ca.cod_empresa(+)',
'    and cc.cod_moneda = ca.cod_moneda(+)',
'    and cc.fec_comprobante > ca.fec_tip_cambio(+)',
'    and pg.parametro = ''TIPO_NOTACRE''',
'    and ca.fec_tip_cambio = ( select max( b2.fec_tip_cambio )',
'                                from co_tipos_cambios b2',
'                               where cc.cod_empresa = b2.cod_empresa',
'                                 and cc.cod_moneda = b2.cod_moneda',
'                                 and cc.fec_comprobante > b2.fec_tip_cambio )',
'    and cd.cod_empresa = co.cod_empresa',
'    and cd.cod_articulo = co.cod_articulo',
'    and trunc(co.fec_comprobante) <= trunc(cc.fec_comprobante)',
'    and to_char( co.fec_comprobante, ''YYYYMMDD'' ) || co.rowid = ( select max( to_char( cs.fec_comprobante, ''YYYYMMDD'' ) || cs.rowid )',
'                                                                    from st_costos_art cs',
'                                                                   where cs.cod_empresa = cd.cod_empresa',
'                                                                     and cs.cod_articulo = cd.cod_articulo',
'                                                                     and trunc(cs.fec_comprobante) <= trunc(cc.fec_comprobante) )',
'    and cd.cod_empresa = od.cod_empresa',
'    and cd.cod_articulo = od.cod_articulo',
'    and cd.nro_lote = od.nro_lote',
'    and nvl( od.cantidad, 0 ) > 0',
'    and od.cod_empresa = oc.cod_empresa',
'    and od.tip_comprobante = oc.tip_comprobante',
'    and od.ser_comprobante = oc.ser_comprobante',
'    and od.nro_comprobante = oc.nro_comprobante',
'    and trunc(oc.fec_operacion) <= trunc(cc.fec_comprobante)',
'    and to_char( oc.fec_operacion, ''YYYYMMDD'' ) || oc.rowid = ( select max( to_char( oc2.fec_operacion, ''YYYYMMDD'' ) || oc2.rowid )',
'                                                                  from st_articulos_obsoletos_cab oc2, st_articulos_obsoletos_det od2',
'                                                                 where cd.cod_empresa = od2.cod_empresa',
'                                                                   and cd.cod_articulo = od2.cod_articulo',
'                                                                   and cd.nro_lote = od2.nro_lote',
'                                                                   and nvl( od2.cantidad, 0 ) > 0',
'                                                                   and od2.cod_empresa = oc2.cod_empresa',
'                                                                   and od2.tip_comprobante = oc2.tip_comprobante',
'                                                                   and od2.ser_comprobante = oc2.ser_comprobante',
'                                                                   and od2.nro_comprobante = oc2.nro_comprobante',
'                                                                   and trunc(oc2.fec_operacion) <= trunc(cc.fec_comprobante )',
unistr('                                                                  ------Agregado Obsolescencia de articulos campo: fec_vigencia --Verificar si est\00E1 bien.'),
'                                                                 and (oc2.fec_vigencia is null or oc2.fec_vigencia >= cc.fec_comprobante) )',
'                                                                  --------------------------------------------',
'  group by cc.cod_empresa, cd.cod_iva,  cd.cod_articulo, ar.descripcion,cc.cod_sucursal, su.descripcion,',
'                     decode(nvl(cd.cod_iva,''9''), ''5'',',
'                      decode(cc.nro_inscripcion_ad , null, ''6'', cd.cod_iva),''6'',cd.cod_iva, cd.cod_iva)',
'order by 1, 2, 4'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P194_COD_EMPRESA,P194_COD_SUCURSAL,P194_COD_RUBRO,P194_COD_FAMILIA,P194_COD_IVA,P194_COD_ARTICULO_DES,P194_COD_ARTICULO_HAS,P194_FEC_INI,P194_FEC_FIN,P194_TIP_FECHA,P194_OBSOLETO,P194_DETALLADO,P194_VER_OTS,P194_GASTO_FIN_INC,P194_GASTO_FIN_SEP,P194_'
||'AUX_CONTROL_REPORTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE VTVEMOAR_NEW'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61738472941391401)
,p_name=>'COD_EMPRESA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_EMPRESA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Empresa'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61738541636391402)
,p_name=>'COD_IVA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_IVA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Iva'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61738642784391403)
,p_name=>'DESC_IVA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESC_IVA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Desc Iva'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61738762946391404)
,p_name=>'ORDEN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDEN'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Orden'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61738875979391405)
,p_name=>'COD_ARTICULO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_ARTICULO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Articulo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61738936557391406)
,p_name=>'DESC_ARTICULO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESC_ARTICULO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Desc Articulo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61739021269391407)
,p_name=>'FAC_CANTIDAD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FAC_CANTIDAD'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fac Cantidad'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61739157888391408)
,p_name=>'NCR_CANT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NCR_CANT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ncr Cant'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61739289904391409)
,p_name=>'FAC_MONTO_TOTAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FAC_MONTO_TOTAL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fac Monto Total'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_format_mask=>'999G999G999G999G990'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61739394313391410)
,p_name=>'NCR_MONTO_TOTAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NCR_MONTO_TOTAL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ncr Monto Total'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_format_mask=>'999G999G999G999G990'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61739498504391411)
,p_name=>'FAC_TOTAL_IVA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FAC_TOTAL_IVA'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fac Total Iva'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_format_mask=>'999G999G999G999G990'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61739563035391412)
,p_name=>'NCR_TOTAL_IVA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NCR_TOTAL_IVA'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ncr Total Iva'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_format_mask=>'999G999G999G999G990'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61739685966391413)
,p_name=>'FAC_TOTAL_VENTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FAC_TOTAL_VENTA'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fac Total Venta'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_format_mask=>'999G999G999G999G990'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61739783870391414)
,p_name=>'NCR_TOTAL_VENTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NCR_TOTAL_VENTA'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ncr Total Venta'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>140
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_format_mask=>'999G999G999G999G990'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61739869913391415)
,p_name=>'FAC_COSTO_TOTAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FAC_COSTO_TOTAL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fac Costo Total'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_format_mask=>'999G999G999G999G990'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61739975467391416)
,p_name=>'NCR_COSTO_TOTAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NCR_COSTO_TOTAL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ncr Costo Total'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_format_mask=>'999G999G999G999G990'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61740025098391417)
,p_name=>'MONTO_OBSOLESCENCIA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTO_OBSOLESCENCIA'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Monto Obsolescencia'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_format_mask=>'999G999G999G999G990'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61740154645391418)
,p_name=>'COSTO_OBSOLESCENCIA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTO_OBSOLESCENCIA'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Costo Obsolescencia'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>180
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_format_mask=>'999G999G999G999G990'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61740271038391419)
,p_name=>'PORCENTAJE_OBS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PORCENTAJE_OBS'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Porcentaje Obs'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>190
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61740380153391420)
,p_name=>'IVA_DET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IVA_DET'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Iva Det'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61740456137391421)
,p_name=>'COD_SUCURSAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_SUCURSAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Sucursal'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61740555602391422)
,p_name=>'DESC_SUCURSAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESC_SUCURSAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Desc Sucursal'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>80
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(59349866295791050)
,p_internal_uid=>59349866295791050
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No se encontraron datos.'
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(61744583304399205)
,p_interactive_grid_id=>wwv_flow_imp.id(59349866295791050)
,p_static_id=>'617446'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(61744776365399205)
,p_report_id=>wwv_flow_imp.id(61744583304399205)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61745264416399208)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(61738472941391401)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61746176926399212)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(61738541636391402)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61747092767399215)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(61738642784391403)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61747968202399216)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(61738762946391404)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61748879847399218)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(61738875979391405)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61749708882399220)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(61738936557391406)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61750606011399222)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(61739021269391407)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61751589676399224)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(61739157888391408)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61752487508399226)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(61739289904391409)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61753369643399227)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(61739394313391410)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61754209294399229)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(61739498504391411)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61755145815399231)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(61739563035391412)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61756058947399233)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(61739685966391413)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61756949248399235)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(61739783870391414)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61757820959399236)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(61739869913391415)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>96.75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61758799163399238)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(61739975467391416)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61759672374399240)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(61740025098391417)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61760576040399242)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(61740154645391418)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61761445979399244)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(61740271038391419)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61762325230399246)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(61740380153391420)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61763264785399247)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(61740456137391421)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61764106538399249)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(61740555602391422)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(386814000002)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(61740025098391417)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(259044932128977)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(61739021269391407)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(271339544155663)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(61739498504391411)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(287513457209460)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(61739289904391409)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(307242934249055)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(61739869913391415)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(321146695264201)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(61739394313391410)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(321645041264201)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(61739563035391412)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(322144837264201)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(61739975467391416)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(322593552264202)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(61739685966391413)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(323157794264202)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(61739783870391414)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(388934978347969)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(61739157888391408)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(401071034354331)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(61740154645391418)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(412152688362667)
,p_view_id=>wwv_flow_imp.id(61744776365399205)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(61740271038391419)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42749429779992127)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41984796062929840)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_imp.id(41982875040929821)
,p_button_name=>'P194_EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41982260966929815)
,p_name=>'P194_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41982121112929814)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41982337183929816)
,p_name=>'P194_NOM_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41982121112929814)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41982418967929817)
,p_name=>'P194_COD_USUARIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41982121112929814)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41982537431929818)
,p_name=>'P194_COD_MODULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(41982121112929814)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41982641230929819)
,p_name=>'P194_NOM_SUCURSAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(41982121112929814)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41982783850929820)
,p_name=>'P194_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41982875040929821)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sucursal||'' - ''||descripcion L, ',
'         cod_sucursal V',
'    FROM sucursales ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
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
 p_id=>wwv_flow_imp.id(41982960765929822)
,p_name=>'P194_COD_RUBRO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41982875040929821)
,p_prompt=>'Rubro'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_RUBROS_VTRVEMOA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_rubro ',
'from st_rubro ',
'where cod_empresa = :P_COD_EMPRESA',
'order by lpad( cod_rubro, 5, '' '' )'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
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
 p_id=>wwv_flow_imp.id(41983094226929823)
,p_name=>'P194_DESC_RUBRO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(41982875040929821)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41983134676929824)
,p_name=>'P194_COD_FAMILIA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(41982875040929821)
,p_prompt=>'Familia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_FAMILIAS_VTRVEMOA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_familia ',
'from st_familia ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
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
 p_id=>wwv_flow_imp.id(41983269927929825)
,p_name=>'P194_DESC_FAMILIA'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(41982875040929821)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41983388985929826)
,p_name=>'P194_COD_IVA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(41982875040929821)
,p_prompt=>'Modalidad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_IVA_VTRVEMOA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion || '' - '' || porc_iva_venta D , cod_iva R ',
'from st_iva ',
'order by descripcion;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
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
 p_id=>wwv_flow_imp.id(41983476858929827)
,p_name=>'P194_DESC_IVA'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(41982875040929821)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41983559549929828)
,p_name=>'P194_COD_ARTICULO_DES'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(41982875040929821)
,p_prompt=>'Articulo Inicial'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_INI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_articulo ',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA ',
'order by lpad( cod_articulo, 30, '' '' )'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
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
 p_id=>wwv_flow_imp.id(41983645529929829)
,p_name=>'P194_DES_ARTICULO_DES'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(41982875040929821)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41983782887929830)
,p_name=>'P194_COD_ARTICULO_HAS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(41982875040929821)
,p_prompt=>'Articulo Final'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_FIN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_articulo ',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA ',
'order by lpad( cod_articulo, 30, '' '' )'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
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
 p_id=>wwv_flow_imp.id(41983832120929831)
,p_name=>'P194_DES_ARTICULO_HAS'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(41982875040929821)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41983940612929832)
,p_name=>'P194_FEC_INI'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(41982875040929821)
,p_prompt=>'Fecha inicio'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41984073882929833)
,p_name=>'P194_FEC_FIN'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(41982875040929821)
,p_prompt=>'Fecha Fin'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41984144027929834)
,p_name=>'P194_TIP_FECHA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(41982875040929821)
,p_prompt=>'Tipo fecha'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:DIA;D,MES;M,A\00D1O;A,GENERAL;G')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41984285146929835)
,p_name=>'P194_OBSOLETO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(41982875040929821)
,p_prompt=>'Obsoleto'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41984313387929836)
,p_name=>'P194_DETALLADO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(41982875040929821)
,p_prompt=>'Detallado por sucursales'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41984486369929837)
,p_name=>'P194_VER_OTS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(41982875040929821)
,p_prompt=>'Ver datos de Ots'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41984556615929838)
,p_name=>'P194_GASTO_FIN_INC'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(41982875040929821)
,p_prompt=>unistr('Gasto de financiaci\00F3n incluido')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41984637240929839)
,p_name=>'P194_GASTO_FIN_SEP'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(41982875040929821)
,p_prompt=>unistr('Gasto de financiaci\00F3n separado')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42749505818992128)
,p_name=>'P194_AUX_CONTROL_REPORTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(42749429779992127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41984882258929841)
,p_name=>'DA_CAMBIO_TIPO_FECHA'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P194_TIP_FECHA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41984914047929842)
,p_event_id=>wwv_flow_imp.id(41984882258929841)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P194_TIP_FECHA = ''A'' THEN',
'  :P194_FEC_INI := to_date( ''01/01/'' || to_char( sysdate, ''YYYY'' ), ''DD/MM/YYYY'' );',
'  :P194_FEC_FIN:= to_date( ''31/12/'' || to_char( sysdate, ''YYYY'' ), ''DD/MM/YYYY'' );',
'  ELSIF :P194_TIP_FECHA = ''M'' THEN',
'  :P194_FEC_INI :=  to_date( ''01/'' || to_char( sysdate, ''MM/YYYY'' ), ''DD/MM/YYYY'' );',
'  :P194_FEC_FIN := last_day( sysdate );',
'ELSIF :P194_TIP_FECHA = ''D'' THEN',
'  :P194_FEC_INI := trunc( sysdate );',
'  :P194_FEC_FIN:= trunc( sysdate );',
'ELSIF :P194_TIP_FECHA = ''G'' THEN',
'  :P194_FEC_INI := NULL;',
'  :P194_FEC_FIN:=  NULL;',
'   ',
'',
'  ',
'  END IF;'))
,p_attribute_02=>'P194_FEC_INI,P194_FEC_FIN,P194_TIP_FECHA'
,p_attribute_03=>'P194_FEC_INI,P194_FEC_FIN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42749613320992129)
,p_name=>'DA_OCULTAR_REPORTE'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42749796004992130)
,p_event_id=>wwv_flow_imp.id(42749613320992129)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(42747086508992103)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42749838522992131)
,p_name=>'DA_MOSTAR_REPORTE'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(41984796062929840)
,p_condition_element=>'P194_FEC_FIN'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42750012093992133)
,p_event_id=>wwv_flow_imp.id(42749838522992131)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P194_AUX_CONTROL_REPORTE := ''EJECUTAR'';'
,p_attribute_03=>'P194_AUX_CONTROL_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42749968499992132)
,p_event_id=>wwv_flow_imp.id(42749838522992131)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(42747086508992103)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42750161593992134)
,p_event_id=>wwv_flow_imp.id(42749838522992131)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(42747086508992103)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42746919946992102)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'LIMPIAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41982028889929813)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P194_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
':P194_COD_EMPRESA := ''1'';',
':P194_NOM_EMPRESA := NVL(:P_NOM_EMPRESA, NULL);',
'--:P194_COD_SUCURSAL:= ''01'';',
':P194_NOM_SUCURSAL := NVL(:P_NOM_SUCURSAL,NULL);',
':P194_COD_MODULO  := nvl(:P_COD_MODULO,''VT'');',
':P194_AUX_CONTROL_REPORTE := NULL;',
'',
'--WHEN_CREATED_RECORD',
':P194_TIP_FECHA := ''M'';',
':P194_DETALLADO := ''N'';',
':P194_VER_OTS := ''N'';',
':P194_fec_ini := to_date( ''01/'' || to_char( sysdate, ''MM/YYYY'' ), ''DD/MM/YYYY'' );',
':P194_fec_fin := last_day( sysdate );'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
