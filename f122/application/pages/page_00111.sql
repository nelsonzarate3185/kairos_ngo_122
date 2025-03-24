prompt --application/pages/page_00111
begin
--   Manifest
--     PAGE: 00111
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
 p_id=>111
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTRFAEMD'
,p_alias=>'VTRFAEMD'
,p_step_title=>'Detalle de ventas - VTRFAEMD'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240917164757'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26547259779930234)
,p_plug_name=>'FILTRO'
,p_region_template_options=>'#DEFAULT#:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_display_column=>4
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33957415438918903)
,p_plug_name=>'IZQUIERDA'
,p_parent_plug_id=>wwv_flow_imp.id(26547259779930234)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33957564589918904)
,p_plug_name=>'DERECHA'
,p_parent_plug_id=>wwv_flow_imp.id(26547259779930234)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27060881693431914)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35234482967247136)
,p_plug_name=>'REPORTE_FACTURAS_MONEDAS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30050367053197231)
,p_plug_name=>'REPORTE_FACTURAS'
,p_parent_plug_id=>wwv_flow_imp.id(35234482967247136)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P111_TIP_REPORTE = 1 AND :P111_INDICADOR_CARGAR_REPORTE = 1 THEN         ',
'        RETURN '' SELECT c.fec_comprobante, ',
'                        c.cod_sucursal, ',
'                        s.descripcion desc_sucursal, ',
'                        c.tip_comprobante,',
'                        c.ser_comprobante, ',
'                        c.nro_comprobante, ',
'                        d.rowid orden, ',
'                        c.cod_cliente,',
'                        ltrim( rtrim( nvl( pc.nombre, pc.nomb_fantasia ) ) ) nom_cliente,',
'                        c.cod_condicion_venta, ',
'                        cv.descripcion desc_condicion_venta, ',
'                        c.cod_moneda,',
'                        m.descripcion desc_moneda, ',
'                        m.siglas, ',
'                        c.tip_cambio, ',
'                        c.cod_vendedor,',
'                        ltrim( rtrim( nvl( pv.nombre, pv.nomb_fantasia ) ) ) nom_vendedor,',
'                        round( decode( tc.saldos, ''''R'''', nvl( c.tot_gravadas, 0 ) * -1, c.tot_gravadas ), nvl( m.decimales, 0 ) ) tot_gravadas,',
'                        round( decode( tc.saldos, ''''R'''', nvl( c.tot_exentas, 0 ) * -1, c.tot_exentas ), nvl( m.decimales, 0 ) ) tot_exentas,',
'                        round( decode( tc.saldos, ''''R'''', nvl( c.tot_iva, 0 ) * -1, c.tot_iva ),nvl( m.decimales, 0 ) ) tot_iva,',
'                        round( decode( tc.saldos, ''''R'''', ( nvl( c.descuento, 0 ) + nvl( c.tot_descuento_det, 0 ) ) * -1, nvl( c.descuento, 0 ) + nvl( c.tot_descuento_det, 0 ) ), nvl( m.decimales, 0 ) ) tot_descuento,',
'                        round( decode( tc.saldos, ''''R'''', nvl( c.tot_comprobante, 0 ) * -1, c.tot_comprobante ), nvl( m.decimales, 0 ) ) tot_comprobante,',
'                        tc.descripcion desc_comprobante, ',
'                        m.decimales, ',
'                        d.cod_articulo, ',
'                        art.descripcion desc_articulo,',
'                        art.cod_origen_art, ',
'                        d.cantidad, ',
'                        d.precio_unitario, ',
'                        d.total_iva, d.descuento, ',
'                        d.monto_total,',
'                        cc.cod_zona, ',
'                        zo.descripcion desc_zona, ',
'                        c.tip_comprobante_ref, ',
'                        c.ser_comprobante_ref, ',
'                        c.nro_comprobante_ref,',
'                        d.nro_lote, l.cod_iva, ',
'                        d.porc_iva * 100 porc_iva, d.recargo, ',
'                        NULL tipo, ',
'                        cc.cod_lista_precio, ',
'                        art.cod_marca,',
'                        NULL NRO_PEDIDO',
'',
'        FROM vt_comprobantes_cabecera c, cc_clientes cc, personas pc, cc_condiciones_ventas cv,',
'        monedas m, fv_vendedores v, personas pv, sucursales s, tipos_comprobantes tc,',
'        vt_comprobantes_detalle d, st_articulos art, zonas_geograficas zo,  st_lotes l',
'        ',
'        WHERE c.cod_empresa = :P_COD_EMPRESA',
'        AND ((:P111_FEC_INICIAL IS NULL OR :P111_FEC_FINAL IS NULL) OR c.fec_comprobante  BETWEEN  :P111_FEC_INICIAL AND :P111_FEC_FINAL )',
'        AND (:P111_COD_IVA IS NULL OR d.cod_iva = :P111_COD_IVA)',
'        /*AND (:p_cod_condicion_venta is null or c.cod_condicion_venta =:p_cod_condicion_venta)*/',
'        AND ( :P111_COD_VENDEDOR IS NULL OR c.cod_vendedor = :P111_COD_VENDEDOR)',
'        /*AND ( :P_COD_PERSONA_VENDEDOR IS NULL OR pv.cod_persona = :P_COD_PERSONA_VENDEDOR)*/',
'        AND ( :P111_COD_SUCURSAL IS NULL OR c.cod_sucursal = :P111_COD_SUCURSAL )',
'        AND ( :P111_COD_MONEDA   IS NULL OR c.cod_moneda   = :P111_COD_MONEDA   )',
'        AND ( c.estado IS NULL OR c.estado <> ''''A'''')',
'        AND ( :P111_COD_CLIENTE IS NULL OR c.cod_cliente = :P111_COD_CLIENTE)',
'        /*AND ( :p_tip_cliente IS NULL OR cc.tip_cliente = :p_tip_cliente )*/',
'        AND ( :P111_TIP_COMPROBANTE IS NULL OR c.tip_comprobante = :P111_TIP_COMPROBANTE)',
'        AND ( :P111_SER_COMPROBANTE IS NULL OR c.ser_comprobante = :P111_SER_COMPROBANTE)',
'        AND ( :P111_NRO_COMPROBANTE IS NULL OR c.nro_comprobante = :P111_NRO_COMPROBANTE)',
'        AND ( :P111_COD_RUBRO IS NULL OR art.cod_rubro = :P111_COD_RUBRO)',
'        AND ( :P111_COD_FAMILIA IS NULL OR art.cod_familia = :P111_COD_FAMILIA)',
'        /*AND ( :p_cod_marca IS NULL OR art.cod_marca = :p_cod_marca )*/',
'        AND ( :P111_COD_ARTICULO IS NULL OR d.cod_articulo = :P111_COD_ARTICULO)',
'        AND c.cod_empresa = cc.cod_empresa',
'        AND c.cod_cliente = cc.cod_cliente',
'        AND cc.cod_persona = pc.cod_persona',
'        AND c.cod_empresa = tc.cod_empresa',
'        AND c.tip_comprobante = tc.tip_comprobante',
'        AND c.cod_empresa = s.cod_empresa',
'        AND c.cod_sucursal = s.cod_sucursal',
'        AND c.cod_moneda = m.cod_moneda',
'        AND c.cod_empresa = cv.cod_empresa',
'        AND c.cod_condicion_venta = cv.cod_condicion_venta',
'        AND c.cod_empresa = v.cod_empresa',
'        AND c.cod_vendedor = v.cod_vendedor',
'        AND v.cod_persona = pv.cod_persona',
'        AND (c.cod_empresa = d.cod_empresa ',
'        AND c.tip_comprobante = d.tip_comprobante',
'        AND c.ser_comprobante = d.ser_comprobante',
'        AND c.nro_comprobante = d.nro_comprobante)',
'        AND d.cod_empresa = art.cod_empresa(+)',
'        AND d.cod_articulo = art.cod_articulo(+)',
'        AND cc.cod_zona = zo.cod_zona (+)',
'        AND d.cod_empresa = l.cod_empresa(+)',
'        AND d.cod_articulo = l.cod_articulo(+)',
'        AND d.nro_lote = l.nro_lote(+)',
'',
'        UNION ALL',
'',
'        SELECT c.fec_comprobante, ',
'		c.cod_sucursal, ',
'		s.descripcion desc_sucursal, ',
'		c.tip_comprobante,',
'        c.ser_comprobante, ',
'		c.nro_comprobante, ',
'		d.rowid orden, ',
'		c.cod_cliente,',
'        ltrim( rtrim( nvl( pc.nombre, pc.nomb_fantasia ) ) ) nom_cliente,',
'        c.cod_condicion_venta, ',
'		cv.descripcion desc_condicion_venta, ',
'		c.cod_moneda,',
'        m.descripcion desc_moneda, ',
'		m.siglas, ',
'		c.tip_cambio, ',
'		c.cod_vendedor,',
'        ltrim( rtrim( nvl( pv.nombre, pv.nomb_fantasia ) ) ) nom_vendedor,',
'        0 tot_gravadas,',
'        0 tot_exentas,',
'        0 tot_iva,',
'        0 tot_descuento,',
'        0 tot_comprobante,',
'        tc.descripcion desc_comprobante,',
'		m.decimales, ',
'		d.cod_articulo, ',
'		art.descripcion desc_articulo,',
'        art.cod_origen_art, ',
'		d.cantidad, ',
'		d.precio_unitario, ',
'		0, ',
'		0, ',
'		0,',
'        cc.cod_zona, ',
'		zo.descripcion desc_zona, ',
'		c.tip_comprobante_ref, ',
'		c.ser_comprobante_ref, ',
'		c.nro_comprobante_ref,',
'        d.nro_lote, ',
'		l.cod_iva, ',
'		d.porc_iva * 100 porc_iva, ',
'		0,''''ANULADO'''' tipo, ',
'		cc.cod_lista_precio, ',
'		art.cod_marca,',
'		NULL NRO_PEDIDO',
'        ',
'        FROM vt_comprobantes_cabecera c, cc_clientes cc, personas pc, cc_condiciones_ventas cv,',
'            monedas m, fv_vendedores v, personas pv, sucursales s, tipos_comprobantes tc,',
'            vt_comprobantes_detalle d, st_articulos art, zonas_geograficas zo,  st_lotes l',
'        ',
'        WHERE c.cod_empresa = :P_COD_EMPRESA',
'        AND ((:P111_FEC_INICIAL IS NULL OR :P111_FEC_FINAL IS NULL ) OR c.fec_comprobante BETWEEN :P111_FEC_INICIAL AND :P111_FEC_FINAL)',
'        AND ( :P111_COD_IVA IS NULL OR d.cod_iva = :P111_COD_IVA)',
'        AND ( :P111_COD_VENDEDOR IS NULL OR c.cod_vendedor = :P111_COD_VENDEDOR)',
'        AND ( :P111_COD_SUCURSAL IS NULL OR c.cod_sucursal = :P111_COD_SUCURSAL)',
'        AND ( :P111_COD_MONEDA   IS NULL OR c.cod_moneda   = :P111_COD_MONEDA)',
'        AND (  nvl(:P111_VER_ANULADOS, ''''N'''') = ''''S'''' AND nvl(c.estado,''''P'''') = ''''A'''')',
'        AND ( :P111_COD_CLIENTE IS NULL OR c.cod_cliente = :P111_COD_CLIENTE)   ',
'        /*AND ( :P_COD_PERSONA_VENDEDOR IS NULL OR pv.cod_persona = :P_COD_PERSONA_VENDEDOR)*/',
'        /*AND ( :p_tip_cliente IS NULL OR cc.tip_cliente = :p_tip_cliente )*/',
'        AND ( :P111_TIP_COMPROBANTE IS NULL OR c.tip_comprobante = :P111_TIP_COMPROBANTE)',
'        AND ( :P111_SER_COMPROBANTE IS NULL OR c.ser_comprobante = :P111_SER_COMPROBANTE)',
'        AND ( :P111_NRO_COMPROBANTE IS NULL OR c.nro_comprobante = :P111_NRO_COMPROBANTE)',
'        AND ( :P111_COD_RUBRO   IS NULL OR art.cod_rubro   = :P111_COD_RUBRO)',
'        AND ( :P111_COD_FAMILIA IS NULL OR art.cod_familia = :P111_COD_FAMILIA)',
'        /*AND ( :p_cod_marca IS NULL OR art.cod_marca = :p_cod_marca )*/',
'        AND (:P111_COD_ARTICULO IS NULL OR d.cod_articulo = :P111_COD_ARTICULO)',
'        AND c.cod_empresa = cc.cod_empresa',
'        AND c.cod_cliente = cc.cod_cliente',
'        AND cc.cod_persona = pc.cod_persona',
'        AND c.cod_empresa = tc.cod_empresa',
'        AND c.tip_comprobante = tc.tip_comprobante',
'        AND c.cod_empresa = s.cod_empresa',
'        AND c.cod_sucursal = s.cod_sucursal',
'        AND c.cod_moneda = m.cod_moneda',
'        AND c.cod_empresa = cv.cod_empresa',
'        AND c.cod_condicion_venta =  cv.cod_condicion_venta',
'        AND c.cod_empresa = v.cod_empresa',
'        AND c.cod_vendedor = v.cod_vendedor',
'        AND v.cod_persona = pv.cod_persona',
'        AND ( c.cod_empresa = d.cod_empresa',
'        AND c.tip_comprobante = d.tip_comprobante',
'        AND c.ser_comprobante = d.ser_comprobante',
'        AND c.nro_comprobante = d.nro_comprobante )',
'        AND d.cod_empresa = art.cod_empresa',
'        AND d.cod_articulo = art.cod_articulo',
'        AND cc.cod_zona = zo.cod_zona (+)',
'        AND d.cod_empresa = l.cod_empresa(+)',
'        AND d.cod_articulo = l.cod_articulo(+)',
'        AND d.nro_lote = l.nro_lote(+)',
'        ORDER BY 11, 2, 4, 5, 6, 7        ',
'        '';',
'',
'    ELSIF :P111_TIP_REPORTE = 2 AND :P111_INDICADOR_CARGAR_REPORTE = 1 THEN ',
'    ',
'        RETURN ''  SELECT    cc.fec_comprobante, ',
'                            cc.cod_sucursal, ',
'                            su.descripcion desc_sucursal, ',
'                            cc.tip_comprobante,',
'                            cc.ser_comprobante, ',
'                            cc.nro_comprobante, ',
'                            cd.rowid orden, ',
'                            cc.cod_cliente,',
'                            ltrim( rtrim( nvl( pc.nombre, pc.nomb_fantasia ) ) ) nom_cliente,',
'                            cc.cod_condicion_venta, ',
'                            cv.descripcion desc_condicion_venta, ',
'                            cc.cod_moneda,',
'                            mo.descripcion desc_moneda, ',
'                            mo.siglas, ',
'                            cc.tip_cambio, ',
'                            cc.cod_vendedor,',
'                            ltrim( rtrim( nvl( pv.nombre, pv.nomb_fantasia ) ) ) nom_vendedor,',
'                            round( decode( tc.saldos, ''''R'''', nvl( cc.tot_gravadas, 0 ) * -1, cc.tot_gravadas ), nvl( mo.decimales, 0 ) ) tot_gravadas,',
'                            round( decode( tc.saldos, ''''R'''', nvl( cc.tot_exentas, 0 ) * -1, cc.tot_exentas ), nvl( mo.decimales, 0 ) ) tot_exentas,',
'                            round( decode( tc.saldos, ''''R'''', nvl( cc.tot_iva, 0 ) * -1, cc.tot_iva ),nvl( mo.decimales, 0 ) ) tot_iva,',
'                            round( decode( tc.saldos, ''''R'''', ( nvl( cc.descuento, 0 ) + nvl( cc.tot_descuento_det, 0 ) ) * -1, nvl( cc.descuento, 0 ) + nvl( cc.tot_descuento_det, 0 ) ), nvl( mo.decimales, 0 ) ) tot_descuento,',
'                            round( decode( tc.saldos, ''''R'''', nvl( cc.tot_comprobante, 0 ) * -1, cc.tot_comprobante ), nvl( mo.decimales, 0 ) ) tot_comprobante,',
'                            tc.descripcion desc_comprobante, mo.decimales, cd.cod_articulo, ar.descripcion desc_articulo,',
'                            ar.cod_origen_art, ',
'                            cd.cantidad, ',
'                            cd.precio_unitario, ',
'                            cd.total_iva, ',
'                            cd.descuento, ',
'                            cd.monto_total,',
'                            cl.cod_zona, ',
'                            zo.descripcion desc_zona, ',
'                            cc.tip_comprobante_ref, ',
'                            cc.ser_comprobante_ref, ',
'                            cc.nro_comprobante_ref,',
'                            cd.nro_lote, ',
'                            lo.cod_iva, ',
'                            cd.porc_iva * 100 porc_iva, ',
'                            cd.recargo, ',
'                            NULL tipo,',
'                            cc.cod_lista_precio, ',
'                            ar.cod_marca,                            ',
'                            CC.NRO_COMPROBANTE_REF NRO_PEDIDO',
'',
'        FROM vt_comprobantes_cabecera cc, cc_clientes cl, personas pc, cc_condiciones_ventas cv,',
'        monedas mo, fv_vendedores ve, personas pv, sucursales su, tipos_comprobantes tc,',
'        vt_comprobantes_detalle cd, st_articulos ar, zonas_geograficas zo,  st_lotes lo',
'',
'        WHERE cc.cod_empresa = :P_COD_EMPRESA',
'        AND ((:P111_FEC_INICIAL IS NULL OR :P111_FEC_FINAL IS NULL ) OR cc.fec_comprobante  BETWEEN  :P111_FEC_INICIAL AND :P111_FEC_FINAL )',
'        AND (:P111_COD_IVA IS NULL OR cd.cod_iva = :P111_COD_IVA)',
'',
'        /*AND ( :P111_COD_VENDEDOR IS NULL OR (:p_cod_persona_vendedor is null AND cc.cod_vendedor = :p_cod_vendedor ) )',
'        AND ( :p_cod_persona_vendedor is null or ( :p_cod_vendedor is null AND cc.cod_vendedor in ( select cod_vendedor',
'                                                                                                   from fv_vendedores',
'                                                                                                   where cod_empresa = :p_cod_empresa',
'                                                                                                     AND cod_persona = :p_cod_persona_vendedor ) ) )*/',
'        AND (:P111_COD_SUCURSAL IS NULL OR cc.cod_sucursal = :P111_COD_SUCURSAL)',
'        AND (:P111_COD_MONEDA   IS NULL OR cc.cod_moneda   = :P111_COD_MONEDA)',
'        AND (cc.estado IS NULL OR cc.estado <> ''''A'''' )',
'        AND (:P111_COD_CLIENTE IS NULL OR cc.cod_cliente = :P111_COD_CLIENTE)',
'        /*AND ( :p_tip_cliente IS NULL OR cl.tip_cliente = :p_tip_cliente )*/',
'        AND ( :P111_TIP_COMPROBANTE IS NULL OR cc.tip_comprobante = :P111_TIP_COMPROBANTE)',
'        AND ( :P111_SER_COMPROBANTE IS NULL OR cc.ser_comprobante = :P111_SER_COMPROBANTE)',
'        AND ( :P111_NRO_COMPROBANTE IS NULL OR cc.nro_comprobante = :P111_NRO_COMPROBANTE)',
'        AND ( :P111_COD_RUBRO   IS NULL OR ar.cod_rubro   = :P111_COD_RUBRO)',
'        AND ( :P111_COD_FAMILIA IS NULL OR ar.cod_familia = :P111_COD_FAMILIA)',
'        /*AND ( :p_cod_marca IS NULL OR ar.cod_marca = :p_cod_marca)*/',
'        /*AND ( :p_cod_condicion_venta IS NULL OR cc.cod_condicion_venta = :p_cod_condicion_venta)*/',
'        AND (:P111_COD_ARTICULO IS NULL OR cd.cod_articulo = :P111_COD_ARTICULO)',
'        AND cc.cod_empresa = cl.cod_empresa',
'        AND cc.cod_cliente = cl.cod_cliente',
'        AND cl.cod_persona = pc.cod_persona',
'        AND cc.cod_empresa = tc.cod_empresa',
'        AND cc.tip_comprobante = tc.tip_comprobante',
'        AND cc.cod_empresa = su.cod_empresa(+)',
'        AND cc.cod_sucursal = su.cod_sucursal(+)',
'        AND cc.cod_moneda = mo.cod_moneda(+)',
'        AND cc.cod_empresa = cv.cod_empresa(+)',
'        AND cc.cod_condicion_venta =  cv.cod_condicion_venta(+)',
'        AND cc.cod_empresa = ve.cod_empresa(+)',
'        AND cc.cod_vendedor = ve.cod_vendedor(+)',
'        AND ve.cod_persona = pv.cod_persona(+)',
'        AND ( cc.cod_empresa = cd.cod_empresa',
'        AND cc.tip_comprobante = cd.tip_comprobante',
'        AND cc.ser_comprobante = cd.ser_comprobante',
'        AND cc.nro_comprobante = cd.nro_comprobante )',
'        AND cd.cod_empresa = ar.cod_empresa(+)',
'        AND cd.cod_articulo = ar.cod_articulo(+)',
'        AND cl.cod_zona = zo.cod_zona (+)',
'        AND cd.cod_empresa = lo.cod_empresa(+)',
'        AND cd.cod_articulo = lo.cod_articulo(+)',
'        AND cd.nro_lote = lo.nro_lote(+)',
'    UNION ALL',
'        SELECT cc.fec_comprobante, ',
'			   cc.cod_sucursal, ',
'			   su.descripcion desc_sucursal, ',
'			   cc.tip_comprobante,',
'			   cc.ser_comprobante, ',
'			   cc.nro_comprobante,  ',
'			   cd.rowid orden, ',
'			   cc.cod_cliente,',
'			   ltrim( rtrim( nvl( pc.nombre, pc.nomb_fantasia ) ) ) nom_cliente,',
'			   cc.cod_condicion_venta, ',
'			   cv.descripcion desc_condicion_venta, ',
'			   cc.cod_moneda,',
'			   mo.descripcion desc_moneda, ',
'			   mo.siglas, ',
'			   cc.tip_cambio, ',
'			   cc.cod_vendedor,',
'			   ltrim( rtrim( nvl( pv.nombre, ',
'			   pv.nomb_fantasia ) ) ) nom_vendedor,',
'			   0 tot_gravadas,',
'			   0 tot_exentas,',
'			   0 tot_iva,',
'			   0 tot_descuento,',
'			   0 tot_comprobante,',
'               tc.descripcion desc_comprobante, ',
'			   mo.decimales, ',
'			   cd.cod_articulo, ',
'			   ar.descripcion desc_articulo,',
'			   ar.cod_origen_art, ',
'			   0, ',
'			   cd.precio_unitario, ',
'			   0, ',
'			   0, ',
'			   0,',
'			   cl.cod_zona, ',
'			   zo.descripcion desc_zona, ',
'			   cc.tip_comprobante_ref, ',
'			   cc.ser_comprobante_ref, ',
'			   cc.nro_comprobante_ref,',
'			   cd.nro_lote, ',
'			   lo.cod_iva,',
'			   cd.porc_iva * 100 porc_iva, ',
'			   0, ',
'			   ''''ANULADO'''' tipo,',
'			   null cod_lista_precio, ',
'               null cod_marca,',
'			   CC.NRO_COMPROBANTE_REF NRO_PEDIDO',
'   ',
'        FROM vt_comprobantes_cabecera cc, cc_clientes cl, personas pc, cc_condiciones_ventas cv,',
'        monedas mo, fv_vendedores ve, personas pv, sucursales su, tipos_comprobantes tc,',
'        vt_comprobantes_detalle cd, st_articulos ar, zonas_geograficas zo,  st_lotes lo',
'',
'    WHERE cc.cod_empresa = :p_cod_empresa',
'    AND ( ( :P111_FEC_INICIAL IS NULL OR :P111_FEC_FINAL IS NULL ) OR cc.fec_comprobante between :P111_FEC_INICIAL AND :P111_FEC_FINAL)',
'    AND ( :P111_COD_IVA IS NULL OR cd.cod_iva = :P111_COD_IVA )',
'    /*AND ( :P_COD_VENDEDOR IS NULL OR ( :p_cod_persona_vendedor is null AND cc.cod_vendedor = :p_cod_vendedor ) )',
'    AND ( :p_cod_persona_vendedor is null or ( :p_cod_vendedor is null AND cc.cod_vendedor in ( select cod_vendedor',
'                                                                                                   from fv_vendedores',
'                                                                                                   where cod_empresa = :p_cod_empresa',
'                                                                                                     AND cod_persona = :p_cod_persona_vendedor ) ) )*/',
'    AND ( :P111_COD_SUCURSAL IS NULL OR cc.cod_sucursal = :P111_COD_SUCURSAL)',
'    AND ( :P111_COD_MONEDA   IS NULL OR cc.cod_moneda   = :P111_COD_MONEDA   )',
'    AND ( nvl( :P111_VER_ANULADOS, ''''N'''' ) = ''''S'''' AND nvl( cc.estado,''''P'''')  =  ''''A'''' )',
'    AND ( :P111_COD_CLIENTE IS NULL OR cc.cod_cliente = :P111_COD_CLIENTE )',
'    /*AND ( :p_tip_cliente IS NULL OR cl.tip_cliente = :p_tip_cliente )*/',
'    AND ( :P111_TIP_COMPROBANTE IS NULL OR cc.tip_comprobante = :P111_TIP_COMPROBANTE)',
'    AND ( :P111_SER_COMPROBANTE IS NULL OR cc.ser_comprobante = :P111_SER_COMPROBANTE)',
'    AND ( :P111_NRO_COMPROBANTE IS NULL OR cc.nro_comprobante = :P111_NRO_COMPROBANTE)',
'    AND ( :P111_COD_RUBRO   IS NULL OR ar.cod_rubro   = :P111_COD_RUBRO)',
'    AND ( :P111_COD_FAMILIA IS NULL OR ar.cod_familia = :P111_COD_FAMILIA)',
'    /*AND ( :p_cod_marca IS NULL OR ar.cod_marca = :p_cod_marca )*/',
'    AND ( :P111_COD_ARTICULO IS NULL OR cd.cod_articulo = :P111_COD_ARTICULO)',
'    AND cc.cod_empresa = cl.cod_empresa',
'    AND cc.cod_cliente = cl.cod_cliente',
'    AND cl.cod_persona = pc.cod_persona',
'    AND cc.cod_empresa = tc.cod_empresa',
'    AND cc.tip_comprobante = tc.tip_comprobante',
'    AND cc.cod_empresa = su.cod_empresa',
'    AND cc.cod_sucursal = su.cod_sucursal',
'    AND cc.cod_moneda = mo.cod_moneda',
'    AND cc.cod_empresa = cv.cod_empresa',
'    AND cc.cod_condicion_venta =  cv.cod_condicion_venta',
'    AND cc.cod_empresa = ve.cod_empresa',
'    AND cc.cod_vendedor = ve.cod_vendedor',
'    AND ve.cod_persona = pv.cod_persona',
'    AND (cc.cod_empresa = cd.cod_empresa',
'    AND cc.tip_comprobante = cd.tip_comprobante',
'    AND cc.ser_comprobante = cd.ser_comprobante',
'    AND cc.nro_comprobante = cd.nro_comprobante)',
'    AND cd.cod_empresa = ar.cod_empresa(+)',
'    AND cd.cod_articulo = ar.cod_articulo(+)',
'    AND cl.cod_zona = zo.cod_zona (+)',
'    AND cd.cod_empresa = lo.cod_empresa(+)',
'    AND cd.cod_articulo = lo.cod_articulo(+)',
'    AND cd.nro_lote = lo.nro_lote(+)',
'    ORDER BY 2, 4, 5, 6, 7',
'    '';        ',
'',
'    ELSE',
'        ',
'        RETURN '' SELECT NULL fec_comprobante, ',
'                        NULL cod_sucursal, ',
'                        NULL desc_sucursal, ',
'                        NULL tip_comprobante,',
'                        NULL ser_comprobante, ',
'                        NULL nro_comprobante, ',
'                        NULL orden, ',
'                        NULL cod_cliente,',
'                        NULL nom_cliente,',
'                        NULL cod_condicion_venta, ',
'                        NULL desc_condicion_venta, ',
'                        NULL cod_moneda,',
'                        NULL desc_moneda, ',
'                        NULL siglas, ',
'                        NULL tip_cambio, ',
'                        NULL cod_vendedor,',
'                        NULL nom_vendedor,',
'                        NULL tot_gravadas,',
'                        NULL tot_exentas,',
'                        NULL tot_iva,',
'                        NULL tot_descuento,',
'                        NULL tot_comprobante,',
'                        NULL desc_comprobante, ',
'                        NULL decimales, ',
'                        NULL cod_articulo, ',
'                        NULL desc_articulo,',
'                        NULL cod_origen_art, ',
'                        NULL cantidad, ',
'                        NULL precio_unitario, ',
'                        NULL total_iva, ',
'                        NULL descuento, ',
'                        NULL monto_total,',
'                        NULL cod_zona, ',
'                        NULL desc_zona, ',
'                        NULL tip_comprobante_ref, ',
'                        NULL ser_comprobante_ref, ',
'                        NULL nro_comprobante_ref,',
'                        NULL nro_lote, ',
'                        NULL cod_iva, ',
'                        NULL porc_iva, ',
'                        NULL recargo, ',
'                        NULL tipo, ',
'                        NULL cod_lista_precio, ',
'                        NULL cod_marca,',
'                        NULL NRO_PEDIDO',
'',
'        FROM vt_comprobantes_cabecera c, cc_clientes cc, personas pc, cc_condiciones_ventas cv,',
'        monedas m, fv_vendedores v, personas pv, sucursales s, tipos_comprobantes tc,',
'        vt_comprobantes_detalle d, st_articulos art, zonas_geograficas zo,  st_lotes l'';',
'    ',
'    END IF;',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P111_COD_SUCURSAL,P111_TIP_COMPROBANTE,P111_SER_COMPROBANTE,P111_NRO_COMPROBANTE,P111_COD_MONEDA,P111_COD_CLIENTE,P111_COD_VENDEDOR,P111_COD_IVA,P111_COD_RUBRO,P111_COD_FAMILIA,P111_COD_ARTICULO,P111_FEC_INICIAL,P111_FEC_FINAL,P111_VER_'
||'ANULADOS,P111_IND_VENDEDOR_CONSOLIDADO,P111_TIP_REPORTE,P111_INDICADOR_CARGAR_REPORTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_FACTURAS'
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
 p_id=>wwv_flow_imp.id(39346983175955608)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>39346983175955608
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39347056270955609)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39347170829955610)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39347207142955611)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Desc Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39347369821955612)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39347434379955613)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39347519716955614)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39347698909955615)
,p_db_column_name=>'ORDEN'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Orden'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39347779468955616)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39347812452955617)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Nom Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39347972952955618)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39348040887955619)
,p_db_column_name=>'DESC_CONDICION_VENTA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Desc Condicion Venta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39348156648955620)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39348253037955621)
,p_db_column_name=>'DESC_MONEDA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Desc Moneda'
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
 p_id=>wwv_flow_imp.id(39348347523955622)
,p_db_column_name=>'SIGLAS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Siglas'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39348401797955623)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Tip Cambio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39348579157955624)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39348677742955625)
,p_db_column_name=>'NOM_VENDEDOR'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Nom Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39348712048955626)
,p_db_column_name=>'TOT_GRAVADAS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Tot Gravadas'
,p_column_type=>'STRING'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39348818191955627)
,p_db_column_name=>'TOT_EXENTAS'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Tot Exentas'
,p_column_type=>'STRING'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39348941050955628)
,p_db_column_name=>'TOT_IVA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Tot Iva'
,p_column_type=>'STRING'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39349026861955629)
,p_db_column_name=>'TOT_DESCUENTO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Tot Descuento'
,p_column_type=>'STRING'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39349105612955630)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Tot Comprobante'
,p_column_type=>'STRING'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39349269205955631)
,p_db_column_name=>'DESC_COMPROBANTE'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Desc Comprobante'
,p_column_type=>'STRING'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39349390112955632)
,p_db_column_name=>'DECIMALES'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Decimales'
,p_column_type=>'STRING'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39349409059955633)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39349565556955634)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Desc Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39349644436955635)
,p_db_column_name=>'COD_ORIGEN_ART'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Cod Origen Art'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39349737275955636)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39349844475955637)
,p_db_column_name=>'PRECIO_UNITARIO'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Precio Unitario'
,p_column_type=>'STRING'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39349912576955638)
,p_db_column_name=>'TOTAL_IVA'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Total Iva'
,p_column_type=>'STRING'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39350027607955639)
,p_db_column_name=>'DESCUENTO'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Descuento'
,p_column_type=>'STRING'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39350109589955640)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Monto Total'
,p_column_type=>'STRING'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39350245040955641)
,p_db_column_name=>'COD_ZONA'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Cod Zona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39350307952955642)
,p_db_column_name=>'DESC_ZONA'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Desc Zona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39350484206955643)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39350542908955644)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Ser Comprobante Ref'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39350609123955645)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39350770318955646)
,p_db_column_name=>'NRO_LOTE'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Nro Lote'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39350828745955647)
,p_db_column_name=>'COD_IVA'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Cod Iva'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39350983403955648)
,p_db_column_name=>'PORC_IVA'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Porc Iva'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39351094264955649)
,p_db_column_name=>'RECARGO'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Recargo'
,p_column_type=>'STRING'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39351106071955650)
,p_db_column_name=>'TIPO'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39379405606974301)
,p_db_column_name=>'COD_LISTA_PRECIO'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Cod Lista Precio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39379588742974302)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Cod Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39379646025974303)
,p_db_column_name=>'NRO_PEDIDO'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Nro Pedido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(39412150924975102)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'394122'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'FEC_COMPROBANTE:COD_SUCURSAL:DESC_SUCURSAL:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:ORDEN:COD_CLIENTE:NOM_CLIENTE:COD_CONDICION_VENTA:DESC_CONDICION_VENTA:COD_MONEDA:DESC_MONEDA:SIGLAS:TIP_CAMBIO:COD_VENDEDOR:NOM_VENDEDOR:TOT_GRAVADAS:TOT_EXEN'
||'TAS:TOT_IVA:TOT_DESCUENTO:TOT_COMPROBANTE:DESC_COMPROBANTE:DECIMALES:COD_ARTICULO:DESC_ARTICULO:COD_ORIGEN_ART:CANTIDAD:PRECIO_UNITARIO:TOTAL_IVA:DESCUENTO:MONTO_TOTAL:COD_ZONA:DESC_ZONA:TIP_COMPROBANTE_REF:SER_COMPROBANTE_REF:NRO_COMPROBANTE_REF:NRO'
||'_LOTE:COD_IVA:PORC_IVA:RECARGO:TIPO:COD_LISTA_PRECIO:COD_MARCA:NRO_PEDIDO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35233764195247129)
,p_plug_name=>'REPORTE_MONEDAS'
,p_parent_plug_id=>wwv_flow_imp.id(35234482967247136)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P111_TIP_REPORTE = 1 THEN',
'        RETURN ''SELECT  c.cod_sucursal RMO_cod_sucursal, ',
'                        s.descripcion RMO_desc_sucursal,',
'                        c.tip_comprobante RMO_tip_comprobante, ',
'                        tc.descripcion RMO_desc_coprobante,',
'                        c.cod_moneda RMO_cod_moneda, ',
'                        m.descripcion RMO_desc_moneda, ',
'                        m.decimales RMO_decimales,',
'                        sum( round( decode( tc.saldos, ''''R'''', nvl( d.recargo,0 ) * -1, nvl( d.recargo, 0 ) ), nvl( m.decimales, 0 ) ) ) RMO_tot_recargo,',
'                        sum( round( decode( tc.saldos, ''''R'''', nvl( d.descuento, 0 ) * -1, nvl( d.descuento, 0 ) ), nvl( m.decimales, 0 ) ) ) RMO_tot_descuento,',
'                        sum( round( decode( tc.saldos, ''''R'''', ( nvl( d.monto_total, 0 ) + nvl( d.total_iva, 0 ) ) * -1, nvl( d.monto_total, 0 ) + nvl( d.total_iva, 0 ) ), nvl( m.decimales, 0 ) ) ) RMO_tot_comprobante,',
'                        sum( round( decode( tc.saldos, ''''R'''', nvl( d.monto_total, 0 ) * -1, nvl( d.monto_total, 0 ) ), nvl( m.decimales, 0 ) ) ) RMO_tot_neto,',
'                        sum( round( decode( tc.saldos, ''''R'''', nvl( d.total_iva, 0 ) * -1, nvl( d.total_iva, 0 ) ), nvl( m.decimales, 0 ) ) ) RMO_tot_iva',
'      ',
'                FROM    vt_comprobantes_cabecera c, ',
'                        cc_clientes cc, ',
'                        personas pc, ',
'                        cc_condiciones_ventas cv, ',
'                        monedas m,',
'                        fv_vendedores v,  ',
'                        personas pv, ',
'                        sucursales s, ',
'                        tipos_comprobantes tc, ',
'                        vt_comprobantes_detalle d,',
'                        st_articulos art',
'                WHERE c.cod_empresa = :P_COD_EMPRESA',
'                AND ( ( :P111_FEC_INICIAL IS NULL AND :P111_FEC_FINAL IS NULL ) OR c.fec_comprobante BETWEEN :P111_FEC_INICIAL AND :P111_FEC_FINAL )',
'                AND ( :P111_COD_IVA IS NULL OR d.cod_iva = :P111_COD_IVA)',
'                AND ( :P_COD_VENDEDOR IS NULL OR c.cod_vendedor = :P_COD_VENDEDOR)',
'                /*AND ( :P_COD_PERSONA_VENDEDOR IS NULL OR pv.cod_persona = :P_COD_PERSONA_VENDEDOR )*/',
'                AND ( :P111_COD_SUCURSAL IS NULL OR c.cod_sucursal = :P111_COD_SUCURSAL)',
'                AND ( :P111_COD_MONEDA   IS NULL OR c.cod_moneda   = :P111_COD_MONEDA)',
'                AND ( c.estado IS NULL OR c.estado <> ''''A'''' )',
'                AND ( :P111_COD_CLIENTE IS NULL OR c.cod_cliente = :P111_COD_CLIENTE)',
'                /*AND ( :p_tip_cliente IS NULL OR cc.tip_cliente = :p_tip_cliente )*/',
'                AND ( :P111_TIP_COMPROBANTE IS NULL OR c.tip_comprobante = :P111_TIP_COMPROBANTE)',
'                AND ( :P111_SER_COMPROBANTE IS NULL OR c.ser_comprobante = :P111_SER_COMPROBANTE )',
'                AND ( :P111_NRO_COMPROBANTE IS NULL OR c.nro_comprobante = :P111_NRO_COMPROBANTE )',
'                AND ( :P111_COD_RUBRO   IS NULL OR art.cod_rubro   = :P111_COD_RUBRO )',
'                AND ( :P111_COD_FAMILIA IS NULL OR art.cod_familia = :P111_COD_FAMILIA )',
'                /*AND ( :p_cod_marca IS NULL OR art.cod_marca = :p_cod_marca )*/',
'                AND ( :P111_COD_ARTICULO IS NULL OR d.cod_articulo = :P111_COD_ARTICULO)',
'                AND c.cod_empresa = cc.cod_empresa',
'                AND c.cod_cliente = cc.cod_cliente',
'                AND cc.cod_persona = pc.cod_persona',
'                AND c.cod_empresa = tc.cod_empresa',
'                AND c.tip_comprobante = tc.tip_comprobante',
'                AND c.cod_empresa = s.cod_empresa',
'                AND c.cod_sucursal = s.cod_sucursal',
'                AND c.cod_moneda = m.cod_moneda',
'                AND c.cod_empresa = cv.cod_empresa',
'                AND c.cod_condicion_venta =  cv.cod_condicion_venta',
'                AND c.cod_empresa = v.cod_empresa',
'                AND c.cod_vendedor = v.cod_vendedor',
'                AND v.cod_persona = pv.cod_persona',
'                AND ( c.cod_empresa = d.cod_empresa',
'                AND c.tip_comprobante = d.tip_comprobante',
'                AND c.ser_comprobante = d.ser_comprobante',
'                AND c.nro_comprobante = d.nro_comprobante )',
'                AND d.cod_empresa  = art.cod_empresa(+)',
'                AND d.cod_articulo = art.cod_articulo(+)',
'                group by c.cod_sucursal, s.descripcion, c.tip_comprobante, tc.descripcion, c.cod_moneda, m.descripcion, m.decimales',
'                order by c.cod_sucursal, c.cod_moneda, c.tip_comprobante'';',
'',
'                ',
'                ',
'                ',
'',
'    ELSIF :P111_TIP_REPORTE = 2 THEN',
'',
'        RETURN ''Select  c.cod_sucursal RMO_cod_sucursal, ',
'                        s.descripcion RMO_desc_sucursal,',
'                        c.tip_comprobante RMO_tip_comprobante, ',
'                        tc.descripcion RMO_desc_coprobante,',
'                        c.cod_moneda RMO_cod_moneda, ',
'                        m.descripcion RMO_desc_moneda, ',
'                        m.decimales RMO_decimales,',
'                        sum( round( decode( tc.saldos, ''''R'''', nvl( d.recargo,0 ) * -1, nvl( d.recargo, 0 ) ), nvl( m.decimales, 0 ) ) ) RMO_tot_recargo,',
'                        sum( round( decode( tc.saldos, ''''R'''', nvl( d.descuento, 0 ) * -1, nvl( d.descuento, 0 ) ), nvl( m.decimales, 0 ) ) ) RMO_tot_descuento,',
'                        sum( round( decode( tc.saldos, ''''R'''', ( nvl( d.monto_total, 0 ) + nvl( d.total_iva, 0 ) ) * -1, nvl( d.monto_total, 0 ) + nvl( d.total_iva, 0 ) ), nvl( m.decimales, 0 ) ) ) RMO_tot_comprobante,',
'                        sum( round( decode( tc.saldos, ''''R'''', nvl( d.monto_total, 0 ) * -1, nvl( d.monto_total, 0 ) ), nvl( m.decimales, 0 ) ) ) RMO_tot_neto, ',
'                        sum( round( decode( tc.saldos, ''''R'''', nvl( d.total_iva, 0 ) * -1, nvl( d.total_iva, 0 ) ), nvl( m.decimales, 0 ) ) ) RMO_tot_iva',
'',
'                        from vt_comprobantes_cabecera c, cc_clientes cc, personas pc, cc_condiciones_ventas cv, monedas m,',
'                            fv_vendedores v,  personas pv, sucursales s, tipos_comprobantes tc, vt_comprobantes_detalle d,',
'                            st_articulos ar',
'                        where c.cod_empresa = :p_cod_empresa',
'                        AND ( ( :P111_FEC_INICIAL IS NULL AND :P111_FEC_FINAL IS NULL ) OR c.fec_comprobante BETWEEN :P111_FEC_INICIAL AND :P111_FEC_INICIAL)',
'                        AND (:P111_COD_IVA IS NULL OR d.cod_iva = :P111_COD_IVA)',
'                        AND ( :P_COD_VENDEDOR IS NULL OR c.cod_vendedor = :P_COD_VENDEDOR)',
'        ',
'                        /*AND ( :p_cod_vendedor IS NULL OR ( :p_cod_persona_vendedor is null AND cc.cod_vendedor = :p_cod_vendedor ) )*/',
'                        /*AND ( :P_COD_PERSONA_VENDEDOR IS NULL OR pv.cod_persona = :P_COD_PERSONA_VENDEDOR )*/',
'                        AND ( :P111_COD_SUCURSAL IS NULL OR c.cod_sucursal = :P111_COD_SUCURSAL)',
'                        AND ( :P111_COD_MONEDA   IS NULL OR c.cod_moneda   = :P111_COD_MONEDA   )',
'                        AND ( c.estado IS NULL OR c.estado <> ''''A'''' )',
'                        AND ( :P111_COD_CLIENTE IS NULL OR c.cod_cliente = :P111_COD_CLIENTE )',
'                        /*AND ( :p_tip_cliente IS NULL OR cc.tip_cliente = :p_tip_cliente )*/',
'                        AND ( :P111_TIP_COMPROBANTE IS NULL OR c.tip_comprobante = :P111_TIP_COMPROBANTE )',
'                        AND ( :P111_SER_COMPROBANTE IS NULL OR c.ser_comprobante = :P111_SER_COMPROBANTE )',
'                        AND ( :P111_NRO_COMPROBANTE IS NULL OR c.nro_comprobante = :P111_NRO_COMPROBANTE )',
'                        AND ( :P111_COD_RUBRO   IS NULL OR ar.cod_rubro   = :P111_COD_RUBRO )',
'                        AND ( :P111_COD_FAMILIA IS NULL OR ar.cod_familia = :P111_COD_FAMILIA )',
'                        /*AND ( :p_cod_marca IS NULL OR ar.cod_marca = :p_cod_marca )*/',
'                        AND ( :P111_COD_ARTICULO IS NULL OR d.cod_articulo = :P111_COD_ARTICULO )',
'                        AND c.cod_empresa = cc.cod_empresa',
'                        AND c.cod_cliente = cc.cod_cliente',
'                        AND cc.cod_persona = pc.cod_persona',
'                        AND c.cod_empresa = tc.cod_empresa',
'                        AND c.tip_comprobante = tc.tip_comprobante',
'                        AND c.cod_empresa = s.cod_empresa(+)',
'                        AND c.cod_sucursal = s.cod_sucursal(+)',
'                        AND c.cod_moneda = m.cod_moneda(+)',
'                        AND c.cod_empresa = cv.cod_empresa(+)',
'                        AND c.cod_condicion_venta =  cv.cod_condicion_venta(+)',
'                        AND c.cod_empresa = v.cod_empresa(+)',
'                        AND c.cod_vendedor = v.cod_vendedor(+)',
'                        AND v.cod_persona = pv.cod_persona(+)',
'                        AND c.cod_empresa = d.cod_empresa',
'                        AND c.tip_comprobante = d.tip_comprobante',
'                        AND c.ser_comprobante = d.ser_comprobante',
'                        AND c.nro_comprobante = d.nro_comprobante',
'                        AND d.cod_empresa     = ar.cod_empresa(+)',
'                        AND d.cod_articulo    = ar.cod_articulo(+)',
'                        group by c.cod_sucursal, s.descripcion, c.tip_comprobante, tc.descripcion, c.cod_moneda, m.descripcion, m.decimales',
'                        order by c.cod_sucursal, c.cod_moneda, c.tip_comprobante'';',
'',
'',
'',
'    ELSE',
'        RETURN ''Select NULL RMO_cod_sucursal, ',
'                    NULL RMO_desc_sucursal,',
'                    NULL RMO_tip_comprobante, ',
'                    NULL RMO_desc_coprobante,',
'                    NULL RMO_cod_moneda, ',
'                    NULL RMO_desc_moneda, ',
'                    NULL RMO_decimales,',
'                    NULL RMO_tot_recargo,',
'                    NULL RMO_tot_descuento,',
'                    NULL RMO_tot_comprobante,',
'                    NULL RMO_tot_neto, ',
'                    NULL RMO_tot_iva',
'',
'                from vt_comprobantes_cabecera c, cc_clientes cc, personas pc, cc_condiciones_ventas cv, monedas m,',
'                      fv_vendedores v,  personas pv, sucursales s, tipos_comprobantes tc, vt_comprobantes_detalle d,',
'                      st_articulos ar',
'        '';',
'    END IF;',
'',
'END;',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P111_COD_SUCURSAL,P111_TIP_COMPROBANTE,P111_SER_COMPROBANTE,P111_NRO_COMPROBANTE,P111_COD_MONEDA,P111_COD_CLIENTE,P111_COD_VENDEDOR,P111_COD_IVA,P111_COD_RUBRO,P111_COD_FAMILIA,P111_COD_ARTICULO,P111_FEC_INICIAL,P111_FEC_FINAL,P111_VER_'
||'ANULADOS,P111_IND_VENDEDOR_CONSOLIDADO,P111_TIP_REPORTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_MONEDAS'
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
 p_id=>wwv_flow_imp.id(35233893551247130)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>35233893551247130
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35234568560247137)
,p_db_column_name=>'RMO_COD_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'B'
,p_column_label=>'Rmo Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35234656648247138)
,p_db_column_name=>'RMO_DESC_SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'C'
,p_column_label=>'Rmo Desc Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35234764053247139)
,p_db_column_name=>'RMO_TIP_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Rmo Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35234892329247140)
,p_db_column_name=>'RMO_DESC_COPROBANTE'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Rmo Desc Coprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35234968721247141)
,p_db_column_name=>'RMO_COD_MONEDA'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Rmo Cod Moneda'
,p_column_type=>'STRING'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35235062744247142)
,p_db_column_name=>'RMO_DESC_MONEDA'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Rmo Desc Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35235126547247143)
,p_db_column_name=>'RMO_DECIMALES'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Rmo Decimales'
,p_column_type=>'STRING'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35235268278247144)
,p_db_column_name=>'RMO_TOT_RECARGO'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Rmo Tot Recargo'
,p_column_type=>'STRING'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35235328442247145)
,p_db_column_name=>'RMO_TOT_DESCUENTO'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Rmo Tot Descuento'
,p_column_type=>'STRING'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35235404548247146)
,p_db_column_name=>'RMO_TOT_COMPROBANTE'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Rmo Tot Comprobante'
,p_column_type=>'STRING'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35235590716247147)
,p_db_column_name=>'RMO_TOT_NETO'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Rmo Tot Neto'
,p_column_type=>'STRING'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35235605548247148)
,p_db_column_name=>'RMO_TOT_IVA'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>'Rmo Tot Iva'
,p_column_type=>'STRING'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(35277337089534770)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'352774'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'RMO_COD_MONEDA:RMO_COD_SUCURSAL:RMO_DECIMALES:RMO_DESC_COPROBANTE:RMO_DESC_MONEDA:RMO_DESC_SUCURSAL:RMO_TIP_COMPROBANTE:RMO_TOT_COMPROBANTE:RMO_TOT_DESCUENTO:RMO_TOT_IVA:RMO_TOT_NETO:RMO_TOT_RECARGO:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27060655729431912)
,p_button_sequence=>240
,p_button_plug_id=>wwv_flow_imp.id(26547259779930234)
,p_button_name=>'P111_EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-top:30px;"'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26547402503930236)
,p_name=>'P111_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26547259779930234)
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
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26547788340930239)
,p_name=>'P111_SER_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(26547259779930234)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26547871770930240)
,p_name=>'P111_TIP_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26547259779930234)
,p_prompt=>'Tipo de comprobante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION || '' - '' || TIP_COMPROBANTE D, TIP_COMPROBANTE R ',
'FROM TIPOS_COMPROBANTES ',
'WHERE COD_EMPRESA = :P_COD_EMPRESA ',
'AND TIP_COMPROBANTE  IN (:TIP_CONTADO, :TIP_CREDITO, :TIP_CVENTA, :TIP_NOTACRE)',
'ORDER BY DESCRIPCION;',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26547955558930241)
,p_name=>'P111_NRO_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(26547259779930234)
,p_prompt=>unistr('N\00FAmero')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26548047475930242)
,p_name=>'P111_COD_MONEDA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26547259779930234)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVMONEDAS1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- IDENTICO A LV_MONEDAS DEL VTFONSEN',
'  SELECT cod_moneda||'' - ''||descripcion D, ',
'         cod_moneda R',
'    FROM monedas ',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26548250481930244)
,p_name=>'P111_COD_CLIENTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(26547259779930234)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVCLIENTES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_CLIENTE||'' - ''||NOMBRE D, ',
'	   COD_CLIENTE R',
'  FROM CC_CLIENTES, ',
'       PERSONAS ',
' WHERE CC_CLIENTES.COD_EMPRESA = :P_COD_EMPRESA ',
'   AND CC_CLIENTES.COD_PERSONA = PERSONAS.COD_PERSONA ',
' ORDER BY NOMBRE'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26548470091930246)
,p_name=>'P111_COD_VENDEDOR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(26547259779930234)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  F.COD_VENDEDOR||'' - ''||P.NOMBRE nombre,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=:P_COD_EMPRESA',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26548667221930248)
,p_name=>'P111_COD_IVA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(26547259779930234)
,p_prompt=>'Modalidad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_IVA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion || '' - '' || COD_IVA D, cod_iva R',
'from st_iva ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
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
 p_id=>wwv_flow_imp.id(26548886875930250)
,p_name=>'P111_COD_RUBRO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(26547259779930234)
,p_prompt=>'Rubro'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_RUBROS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_rubro||'' - ''||descripcion D, ',
'         cod_rubro R',
'    FROM st_rubro ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27059659725431902)
,p_name=>'P111_COD_FAMILIA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(26547259779930234)
,p_prompt=>'Familia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_FAMILIA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_familia||'' - ''||descripcion D, ',
'       cod_familia R',
'  FROM st_familia',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND ESTADO=''S'';'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27059811583431904)
,p_name=>'P111_COD_ARTICULO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(26547259779930234)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_articulo||'' - ''||descripcion descripcion, ',
'         cod_articulo codigo, cod_art_corto, cod_origen_art, cod_ean',
'    FROM st_articulos ',
'   WHERE cod_empresa = :p_cod_empresa ',
'     AND ( estado is null or estado <> ''I'' )',
'    ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27060073117431906)
,p_name=>'P111_FEC_INICIAL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(26547259779930234)
,p_prompt=>'Fecha inicial'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27060180025431907)
,p_name=>'P111_FEC_FINAL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(26547259779930234)
,p_prompt=>'Fecha Final'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27060228071431908)
,p_name=>'P111_TIP_FECHA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(26547259779930234)
,p_prompt=>'Tipo fecha'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC2:1) D\00EDa;1,2) Mes;2,3) A\00F1o;3,4) General ;4')
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
 p_id=>wwv_flow_imp.id(27060304295431909)
,p_name=>'P111_VER_ANULADOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33957415438918903)
,p_prompt=>'Ver Comprobantes Anulados'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27060498093431910)
,p_name=>'P111_IND_VENDEDOR_CONSOLIDADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33957415438918903)
,p_prompt=>unistr('Consolidar c\00F3digos de vendedor')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27060516740431911)
,p_name=>'P111_TIP_REPORTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33957564589918904)
,p_prompt=>'Tipo de reporte'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:1) Agrupado por monedas;1,2) Ordenado por comprobantes;2'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27060997683431915)
,p_name=>'TIP_CONTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27060881693431914)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27061046711431916)
,p_name=>'TIP_CREDITO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27060881693431914)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27061173435431917)
,p_name=>'TIP_CVENTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27060881693431914)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27061228556431918)
,p_name=>'TIP_NOTACRE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(27060881693431914)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39383549261974342)
,p_name=>'P111_INDICADOR_CARGAR_REPORTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(27060881693431914)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30050037516197228)
,p_name=>'DA_CAMBIO_FECHA'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P111_TIP_FECHA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30050145293197229)
,p_event_id=>wwv_flow_imp.id(30050037516197228)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN      ',
'      ',
'      ',
'      ',
'        IF :P111_TIP_FECHA = 1 THEN',
'          :P111_FEC_INICIAL := sysdate;',
'          :P111_FEC_FINAL   := sysdate;',
'        ELSIF :P111_TIP_FECHA = 2 THEN',
'          :P111_FEC_INICIAL := to_date( ''01/'' || substr( to_char( sysdate, ''DD/MM/YYYY'' ), 4, 10 ), ''DD/MM/YYYY'' );',
'          :P111_FEC_FINAL   := last_day( add_months( sysdate, 0 ) );',
'        ELSIF :P111_TIP_FECHA = 3 THEN',
'          :P111_FEC_INICIAL := to_date( ''01/01/'' || substr( to_char( sysdate, ''DD/MM/YYYY'' ), 7, 10 ), ''DD/MM/YYYY'' );',
'          :P111_FEC_FINAL   := to_date( ''31/12/'' || substr( to_char( sysdate, ''DD/MM/YYYY'' ), 7, 10 ), ''DD/MM/YYYY'' );',
'        ELSIF :P111_TIP_FECHA = 4 THEN',
'          :P111_FEC_INICIAL := to_date(''01/01/1980'',''DD/MM/YYYY'' );',
'          :P111_FEC_FINAL   := to_date( ''31/12/'' || substr( to_char( sysdate, ''DD/MM/YYYY'' ), 7, 10 ), ''DD/MM/YYYY'' ); ',
'        END IF;',
'',
'        :P111_FEC_INICIAL := to_char(:P111_FEC_INICIAL);',
'        :P111_FEC_FINAL := to_char(:P111_FEC_FINAL);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P111_TIP_FECHA'
,p_attribute_03=>'P111_FEC_INICIAL,P111_FEC_FINAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39383960866974346)
,p_name=>'DA_COMPROBAR_FECHAS'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27060655729431912)
,p_condition_element=>'P111_TIP_FECHA'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39384020691974347)
,p_event_id=>wwv_flow_imp.id(39383960866974346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Por favor, seleccione un tipo de fecha.'
,p_attribute_02=>'Tipo de fecha vacia'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35233933781247131)
,p_name=>'DA_EJECUTAR_REPORTE_FACTURA_MONEDAS'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27060655729431912)
,p_condition_element=>'P111_TIP_FECHA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35234048577247132)
,p_event_id=>wwv_flow_imp.id(35233933781247131)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P111_INDICADOR_CARGAR_REPORTE := 1;'
,p_attribute_02=>'P111_TIP_REPORTE,P111_INDICADOR_CARGAR_REPORTE'
,p_attribute_03=>'P111_INDICADOR_CARGAR_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35234147924247133)
,p_event_id=>wwv_flow_imp.id(35233933781247131)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(35233764195247129)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35459438022564301)
,p_event_id=>wwv_flow_imp.id(35233933781247131)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(30050367053197231)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35234253468247134)
,p_event_id=>wwv_flow_imp.id(35233933781247131)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(35234482967247136)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P111_TIP_FECHA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39383795137974344)
,p_name=>'DA_OCULTAR_REPORTE'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39383855552974345)
,p_event_id=>wwv_flow_imp.id(39383795137974344)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(35234482967247136)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30050237228197230)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_DATOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27060711209431913)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE-FORM',
':P_COD_MODULO := ''VT'';',
':TIP_CONTADO := bs_busca_parametro( ''VT'', ''TIPO_CONTADO'');',
':TIP_CREDITO := bs_busca_parametro( ''VT'', ''TIPO_CREDITO'');',
':TIP_CVENTA := bs_busca_parametro( ''VT'', ''TIPO_CVENTA'');',
':TIP_NOTACRE := bs_busca_parametro( ''VT'', ''TIPO_NOTACRE'');',
'',
'',
'--VARIABLE PARA NO CARGAR EL P111_TIP_REPORTE AL RENDERIZAR',
':P111_INDICADOR_CARGAR_REPORTE := 0;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
