prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
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
 p_id=>17
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Resumen de Ventas por Vendedores Permitidos'
,p_alias=>'RESUMEN-DE-VENTAS-POR-VENDEDORES-PERMITIDOS'
,p_step_title=>'Resumen de Ventas por Vendedores Permitidos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240923151014'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13900427927572449)
,p_plug_name=>'Resumen de Ventas por Vendedores Permitidos'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5969106720783245)
,p_plug_name=>unistr('PAR\00C1METROS')
,p_parent_plug_id=>wwv_flow_imp.id(13900427927572449)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11641724149537408)
,p_plug_name=>'Resumen de ventas por vendedores consolidado'
,p_region_name=>'VTRVTVEN'
,p_parent_plug_id=>wwv_flow_imp.id(13900427927572449)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-top-md'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre nomb_vendedor,',
'       c.cod_moneda,',
'       m.decimales,',
'       m.siglas,',
'       sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)) contado,',
'       sum(decode(c.tip_comprobante, p2.valor, nvl(d.monto_total, 0), p3.valor, nvl(d.monto_total, 0) * -1, 0)) credito,',
'       sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)) + sum(decode(c.tip_comprobante, p2.valor, nvl(d.monto_total, 0), p3.valor, nvl(d.monto_total, 0) * -1, 0)) total_comprobante,',
'       sum(decode(tc.stock, ''R'', nvl(d.descuento, 0), ''S'', nvl(d.descuento, 0) * -1)) descuentos,         ',
'       sum(decode(tc.stock, ''R'', nvl(d.recargo, 0), ''S'', nvl(d.recargo, 0) * -1)) recargos,',
'       sum(decode(tc.stock, ''R'', nvl(d.total_iva, 0), ''S'', nvl(d.total_iva, 0) * -1)) iva,',
'       sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)) + sum(decode(c.tip_comprobante, p2.valor, nvl(d.monto_total, 0), p3.valor, nvl(d.monto_total, 0) * -1, 0)) + sum(decode(tc.stock, ''R'', nvl(d.total_iva, 0), ''S'', nvl(d.total_iva'
||', 0) * -1)) total_general,',
'       sum(decode(tc.stock, ''R'', decode(c.cod_moneda, ''1'', nvl(ca.costo_prom_nue, 0),  nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),',
'                            ''S'',(decode(c.cod_moneda, ''1'', nvl(ca.costo_prom_nue, 0),  nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0)) * -1)) costo,',
'       sum(nvl(d.cantidad, 0) * decode(tc.stock, ''S'', -1, 1)) cantidad,',
'       sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)) + sum(decode(c.tip_comprobante, p2.valor, nvl(d.monto_total, 0), p3.valor, nvl(d.monto_total, 0) * -1, 0)) - sum(decode(tc.stock, ''R'', decode(c.cod_moneda, ''1'', nvl(ca.costo_pr'
||'om_nue, 0),  nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),',
'                            ''S'',(decode(c.cod_moneda, ''1'', nvl(ca.costo_prom_nue, 0),  nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0)) * -1)) utilidad,',
'       v.cod_vendedor,',
'       case ',
'        when sum(decode(tc.stock, ''R'', decode(c.cod_moneda, ''1'', nvl(ca.costo_prom_nue, 0),  nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),',
'                            ''S'',(decode(c.cod_moneda, ''1'', nvl(ca.costo_prom_nue, 0),  nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0)) * -1)) <> 0 then round( nvl( sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)) + sum(decode(c.'
||'tip_comprobante, p2.valor, nvl(d.monto_total, 0), p3.valor, nvl(d.monto_total, 0) * -1, 0)) - sum(decode(tc.stock, ''R'', decode(c.cod_moneda, ''1'', nvl(ca.costo_prom_nue, 0),  nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),',
'                            ''S'',(decode(c.cod_moneda, ''1'', nvl(ca.costo_prom_nue, 0),  nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0)) * -1)), 0 ) / nvl( sum(decode(tc.stock, ''R'', decode(c.cod_moneda, ''1'', nvl(ca.costo_prom_nue, 0),  nvl(ca.costo'
||'_prom_nue_us, 0)) * nvl(d.cantidad, 0),',
'                            ''S'',(decode(c.cod_moneda, ''1'', nvl(ca.costo_prom_nue, 0),  nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0)) * -1)) , 1 ) * 100, 2 )',
'        else 100 end margen',
'',
'  from vt_comprobantes_cabecera c,',
'       vt_comprobantes_detalle  d,',
'       fv_vendedores            v,',
'       personas                 p,',
'       tipos_comprobantes       tc,',
'       sucursales               su,',
'       monedas                  m,',
'       st_costos_art            ca,',
'       st_articulos             a,',
'       parametros_generales     p1,',
'       parametros_generales     p2,',
'       parametros_generales     p3',
' where c.cod_empresa = :p_cod_empresa',
'   and c.fec_comprobante between :P17_FEC_INICIAL and :P17_FEC_FINAL',
'   and (:P17_COD_SUCURSAL IS NULL OR c.cod_sucursal = :P17_COD_SUCURSAL)',
'   and (:P17_COD_PERSONA_PAR IS NULL OR p.cod_persona = :P17_COD_PERSONA_PAR)',
'   and (:P17_COD_VENDEDOR is null or c.cod_vendedor = :P17_COD_VENDEDOR)',
'   and (:P17_COD_MARCA is null or a.cod_marca = :P17_COD_MARCA)   ',
'   and c.cod_empresa     = d.cod_empresa',
'   and c.tip_comprobante = d.tip_comprobante',
'   and c.ser_comprobante = d.ser_comprobante',
'   and c.nro_comprobante = d.nro_comprobante',
'   and (c.estado IS NULL OR c.estado <> ''A'')      ',
'   and c.cod_empresa     = v.cod_empresa(+)',
'   and c.cod_vendedor    = v.cod_vendedor(+)',
'   and v.cod_persona     = p.cod_persona(+)   ',
'   and c.cod_empresa     = tc.cod_empresa',
'   and c.tip_comprobante = tc.tip_comprobante   ',
'   and c.cod_empresa  = su.cod_empresa(+)',
'   and c.cod_sucursal = su.cod_sucursal(+)   ',
'   and c.cod_moneda = m.cod_moneda  ',
'   and d.cod_empresa  = ca.cod_empresa',
'   and d.cod_articulo = ca.cod_articulo   ',
'   and d.cod_empresa  = a.cod_empresa',
'   and d.cod_articulo = a.cod_articulo   ',
'   and p1.parametro = ''TIPO_CONTADO''',
'   and p2.parametro = ''TIPO_CREDITO''',
'   and p3.parametro = ''TIPO_NOTACRE''      ',
'   and to_char(ca.fec_comprobante, ''YYYYMMDD'') || ca.rowid = (select max(to_char(co.fec_comprobante, ''YYYYMMDD'') || co.rowid)',
'                                                                from st_costos_art co',
'                                                               where co.cod_empresa = d.cod_empresa',
'                                                                 and co.cod_articulo = d.cod_articulo',
'                                                                 and co.fec_comprobante <= c.fec_comprobante)',
'   and c.fec_comprobante >= ca.fec_comprobante   ',
'   and :P17_AUX_CARGA_REPORTE = ''1''     ',
' group by p.nombre,',
'          c.cod_moneda,',
'          m.decimales,',
'          m.siglas,',
'          v.cod_vendedor',
' order by c.cod_moneda'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P17_AUX_CARGA_REPORTE,P17_COD_PERSONA_PAR,P17_FEC_INICIAL,P17_FEC_FINAL,P17_COD_SUCURSAL,PP17_COD_VENDEDOR,P17_COD_MARCA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resumen de ventas por vendedores consolidado'
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
 p_id=>wwv_flow_imp.id(14035318875161501)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se han encontrado datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>14035318875161501
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14035487768161502)
,p_db_column_name=>'NOMB_VENDEDOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14035505905161503)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14035631734161504)
,p_db_column_name=>'DECIMALES'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Decimales'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14035724066161505)
,p_db_column_name=>'SIGLAS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14035882176161506)
,p_db_column_name=>'CONTADO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Contado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14035999440161507)
,p_db_column_name=>'CREDITO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('Cr\00E9dito')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14036059289161508)
,p_db_column_name=>'DESCUENTOS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Descuento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14036182274161509)
,p_db_column_name=>'RECARGOS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Recargo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14036256393161510)
,p_db_column_name=>'IVA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'IVA'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14036343135161511)
,p_db_column_name=>'COSTO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Costo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P17_AUX_VER_COSTOS'
,p_display_condition2=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14036422112161512)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14036586155161513)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14072549336370435)
,p_db_column_name=>'TOTAL_COMPROBANTE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Venta neta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14072648478370436)
,p_db_column_name=>'TOTAL_GENERAL'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Venta total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14072777493370437)
,p_db_column_name=>'UTILIDAD'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Utilidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P17_AUX_VER_COSTOS'
,p_display_condition2=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14072811239370438)
,p_db_column_name=>'MARGEN'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Margen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P17_AUX_VER_COSTOS'
,p_display_condition2=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14044603199168014)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'140447'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>'NOMB_VENDEDOR:SIGLAS:CANTIDAD:CONTADO:CREDITO:TOTAL_COMPROBANTE:DESCUENTOS:RECARGOS:TOTAL_GENERAL:IVA:COSTO:UTILIDAD:MARGEN:'
,p_break_on=>'COD_VENDEDOR:0:0:0:0:0'
,p_break_enabled_on=>'COD_VENDEDOR:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(14450531277678398)
,p_report_id=>wwv_flow_imp.id(14044603199168014)
,p_group_by_columns=>'NOMB_VENDEDOR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14036676916161514)
,p_plug_name=>'Resumen por monedas'
,p_region_name=>'VTRVTVEN_RES'
,p_parent_plug_id=>wwv_flow_imp.id(13900427927572449)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select /*+ rule*/c.cod_moneda RES_cod_moneda, ',
'       m.decimales RES_decimales, ',
'       m.siglas RES_siglas,',
'      sum( decode( c.tip_comprobante, p1.valor, nvl( d.monto_total, 0 ), 0 ) ) RES_contado,',
'      sum( decode( c.tip_comprobante, p2.valor, nvl( d.monto_total, 0 ),',
'                                      p3.valor, nvl( d.monto_total, 0 ) * -1, 0 ) ) RES_credito,',
'      sum( decode( tc.stock, ''R'', nvl( d.descuento, 0 ),',
'                             ''S'', nvl( d.descuento, 0 ) * -1 ) ) RES_descuentos,',
'      sum( decode( tc.stock, ''R'', nvl( d.recargo, 0 ),',
'                             ''S'', nvl( d.recargo, 0 ) * -1 ) ) RES_recargos,',
'      sum( decode( tc.stock, ''R'', nvl( d.total_iva, 0 ),',
'                             ''S'', nvl( d.total_iva, 0 ) * -1 ) ) RES_iva,',
'      sum( decode( tc.stock, ''R'', decode( c.cod_moneda, ''1'', nvl( ca.costo_prom_nue, 0 ),',
'                                                             nvl( ca.costo_prom_nue_us, 0 ) ) *',
'                                                             nvl( d.cantidad, 0 ),',
'                           ''S'', ( decode( c.cod_moneda, ''1'', nvl( ca.costo_prom_nue, 0 ),',
'                                                             nvl( ca.costo_prom_nue_us, 0 ) ) *',
'                                                             nvl( d.cantidad, 0 ) ) * -1 ) ) RES_costo,',
'                     sum( nvl( d.cantidad, 0 ) * decode( tc.stock, ''S'', -1, 1 ) ) RES_cantidad,',
'      nvl( sum( decode( c.tip_comprobante, p1.valor, nvl( d.monto_total, 0 ), 0 ) ), 0 ) + nvl( sum( decode( c.tip_comprobante, p2.valor, nvl( d.monto_total, 0 ),',
'                                      p3.valor, nvl( d.monto_total, 0 ) * -1, 0 ) ), 0 ) res_total_comp,',
'      nvl( nvl( sum( decode( c.tip_comprobante, p1.valor, nvl( d.monto_total, 0 ), 0 ) ), 0 ) + nvl( sum( decode( c.tip_comprobante, p2.valor, nvl( d.monto_total, 0 ),',
'                                      p3.valor, nvl( d.monto_total, 0 ) * -1, 0 ) ), 0 ), 0 ) + nvl( sum( decode( tc.stock, ''R'', nvl( d.total_iva, 0 ),',
'                                    ''S'', nvl( d.total_iva, 0 ) * -1 ) ) , 0 ) res_total_gen,',
'      nvl( nvl( sum( decode( c.tip_comprobante, p1.valor, nvl( d.monto_total, 0 ), 0 ) ), 0 ) + nvl( sum( decode( c.tip_comprobante, p2.valor, nvl( d.monto_total, 0 ),',
'                                      p3.valor, nvl( d.monto_total, 0 ) * -1, 0 ) ), 0 ), 0 ) - nvl( sum( decode( tc.stock, ''R'', decode( c.cod_moneda, ''1'', nvl( ca.costo_prom_nue, 0 ),',
'                                                             nvl( ca.costo_prom_nue_us, 0 ) ) *',
'                                                             nvl( d.cantidad, 0 ),',
'                           ''S'', ( decode( c.cod_moneda, ''1'', nvl( ca.costo_prom_nue, 0 ),',
'                                                             nvl( ca.costo_prom_nue_us, 0 ) ) *',
'                                                             nvl( d.cantidad, 0 ) ) * -1 ) ), 0 ) res_utilidad,',
'      case ',
'        when nvl(sum( decode( tc.stock, ''R'', decode( c.cod_moneda, ''1'', nvl( ca.costo_prom_nue, 0 ),',
'                                                             nvl( ca.costo_prom_nue_us, 0 ) ) *',
'                                                             nvl( d.cantidad, 0 ),',
'                           ''S'', ( decode( c.cod_moneda, ''1'', nvl( ca.costo_prom_nue, 0 ),',
'                                                             nvl( ca.costo_prom_nue_us, 0 ) ) *',
'                                                             nvl( d.cantidad, 0 ) ) * -1 ) ) ,0) <> 0 then round( nvl( nvl( nvl( sum( decode( c.tip_comprobante, p1.valor, nvl( d.monto_total, 0 ), 0 ) ), 0 ) + nvl( sum( decode( c.tip_comprobante, p2.v'
||'alor, nvl( d.monto_total, 0 ),',
'                                      p3.valor, nvl( d.monto_total, 0 ) * -1, 0 ) ), 0 ), 0 ) - nvl( sum( decode( tc.stock, ''R'', decode( c.cod_moneda, ''1'', nvl( ca.costo_prom_nue, 0 ),',
'                                                             nvl( ca.costo_prom_nue_us, 0 ) ) *',
'                                                             nvl( d.cantidad, 0 ),',
'                           ''S'', ( decode( c.cod_moneda, ''1'', nvl( ca.costo_prom_nue, 0 ),',
'                                                             nvl( ca.costo_prom_nue_us, 0 ) ) *',
'                                                             nvl( d.cantidad, 0 ) ) * -1 ) ), 0 ), 0 ) / nvl( sum( decode( tc.stock, ''R'', decode( c.cod_moneda, ''1'', nvl( ca.costo_prom_nue, 0 ),',
'                                                                                                                                                                                                         nvl( ca.costo_prom_nue_us, 0 ) ) *',
'                                                                                                                                                                                                         nvl( d.cantidad, 0 ),',
'                                                                                                                                                                       ''S'', ( decode( c.cod_moneda, ''1'', nvl( ca.costo_prom_nue, 0 ),',
'                                                                                                                                                                                                         nvl( ca.costo_prom_nue_us, 0 ) ) *',
'                                                                                                                                                                                                         nvl( d.cantidad, 0 ) ) * -1 ) ), 0 ) * 100, 2 )',
'        else 100 end res_margen                                                                                                                                    ',
'  from vt_comprobantes_cabecera c,',
'       vt_comprobantes_detalle  d,',
'       fv_vendedores            v,',
'       personas                 p,',
'       tipos_comprobantes       tc,',
'       sucursales               su,',
'       monedas                  m,',
'       st_costos_art            ca,',
'       st_articulos             a,',
'       parametros_generales     p1,',
'       parametros_generales     p2,',
'       parametros_generales     p3',
' where c.cod_empresa = :p_cod_empresa',
'   and c.fec_comprobante between :P17_FEC_INICIAL and :P17_FEC_FINAL',
'   and (:P17_COD_SUCURSAL IS NULL OR c.cod_sucursal = :P17_COD_SUCURSAL)',
'   and (:P17_COD_PERSONA_PAR IS NULL OR p.cod_persona = :P17_COD_PERSONA_PAR)',
'   and (:P17_COD_VENDEDOR is null or c.cod_vendedor = :P17_COD_VENDEDOR)',
'   and (:P17_COD_MARCA is null or a.cod_marca = :P17_COD_MARCA)   ',
'   and c.cod_empresa     = d.cod_empresa',
'   and c.tip_comprobante = d.tip_comprobante',
'   and c.ser_comprobante = d.ser_comprobante',
'   and c.nro_comprobante = d.nro_comprobante   ',
'   and (c.estado IS NULL OR c.estado <> ''A'')   ',
'   and c.cod_empresa  = v.cod_empresa(+)',
'   and c.cod_vendedor = v.cod_vendedor(+)',
'   and v.cod_persona  = p.cod_persona(+)   ',
'   and c.cod_empresa     = tc.cod_empresa',
'   and c.tip_comprobante = tc.tip_comprobante',
'   and d.cod_empresa  = a.cod_empresa ',
'   and d.cod_articulo = a.cod_articulo   ',
'   and c.cod_empresa  = su.cod_empresa',
'   and c.cod_sucursal = su.cod_sucursal   ',
'   and c.cod_moneda = m.cod_moneda   ',
'   and p1.parametro = ''TIPO_CONTADO''',
'   and p2.parametro = ''TIPO_CREDITO''',
'   and p3.parametro = ''TIPO_NOTACRE''   ',
'   and d.cod_empresa  = ca.cod_empresa',
'   and d.cod_articulo = ca.cod_articulo   ',
'   /*Comento ya que no le gusta la subconsulta/filtro con rowid //laurave 12022021',
'   and ca.fec_comprobante <= c.fec_comprobante*/',
'   and to_char(ca.fec_comprobante, ''YYYYMMDD'') || ca.rowid = (select max(to_char(co.fec_comprobante, ''YYYYMMDD'') || co.rowid)',
'                                                                from st_costos_art co',
'                                                               where co.cod_empresa = d.cod_empresa',
'                                                                 and co.cod_articulo = d.cod_articulo',
'                                                                 and co.fec_comprobante <= c.fec_comprobante)                                                                 ',
'   and c.fec_comprobante >= ca.fec_comprobante        ',
'   /*                                                     ',
'   and ca.fec_comprobante = (select max(co.fec_comprobante)',
'                               from st_costos_art co',
'                              where co.cod_empresa     = c.cod_empresa',
'                                and co.cod_articulo    = d.cod_articulo',
'                                and co.fec_comprobante <= c.fec_comprobante)*/',
'   and :P17_AUX_CARGA_REPORTE = ''1''                                                                                             ',
' group by c.cod_moneda, m.decimales, m.siglas',
' order by c.cod_moneda',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P17_AUX_CARGA_REPORTE,P17_COD_PERSONA_PAR,P17_FEC_INICIAL,P17_FEC_FINAL,P17_COD_SUCURSAL,PP17_COD_VENDEDOR,P17_COD_MARCA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resumen por monedas'
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
 p_id=>wwv_flow_imp.id(14036740829161515)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se han encontrado datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>14036740829161515
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14038003968161528)
,p_db_column_name=>'RES_COD_MONEDA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Res Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14038155380161529)
,p_db_column_name=>'RES_DECIMALES'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Res Decimales'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14038208490161530)
,p_db_column_name=>'RES_SIGLAS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14038326203161531)
,p_db_column_name=>'RES_CONTADO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Contado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14038492393161532)
,p_db_column_name=>'RES_CREDITO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Cr\00E9dito')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14038535227161533)
,p_db_column_name=>'RES_DESCUENTOS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Descuento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14038666770161534)
,p_db_column_name=>'RES_RECARGOS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Recargo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14038755912161535)
,p_db_column_name=>'RES_IVA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'IVA'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14038824032161536)
,p_db_column_name=>'RES_COSTO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Costo total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P17_AUX_VER_COSTOS'
,p_display_condition2=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14038961286161537)
,p_db_column_name=>'RES_CANTIDAD'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14073076429370440)
,p_db_column_name=>'RES_TOTAL_COMP'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Venta neta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14073193087370441)
,p_db_column_name=>'RES_TOTAL_GEN'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Venta total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14073287512370442)
,p_db_column_name=>'RES_UTILIDAD'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Utilidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P17_AUX_VER_COSTOS'
,p_display_condition2=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14073340148370443)
,p_db_column_name=>'RES_MARGEN'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Margen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P17_AUX_VER_COSTOS'
,p_display_condition2=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14078932584425990)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'140790'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RES_SIGLAS:RES_CANTIDAD:RES_CONTADO:RES_CREDITO:RES_TOTAL_COMP:RES_DESCUENTOS:RES_RECARGOS:RES_TOTAL_GEN:RES_IVA:RES_COSTO:RES_UTILIDAD:RES_MARGEN:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14039117463161539)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(13900427927572449)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14073566243370445)
,p_plug_name=>'Resumen de ventas por vendedores '
,p_region_name=>'VTRVTVEN_NEW'
,p_parent_plug_id=>wwv_flow_imp.id(13900427927572449)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-top-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre,',
'       c.cod_sucursal,',
'       su.descripcion     desc_sucursal,',
'       v.cod_vendedor_gru,',
'       v.cod_vendedor,',
'       v.cod_persona,',
'       v.descripcion      vend_desc,',
'       v.descripcion nomb_vendedor,',
'       c.cod_moneda,',
'       m.decimales,',
'       m.siglas,',
'       m.siglas siglas_vend,',
'       decimales deci_per,',
'       sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)) contado,',
'       sum(decode(c.tip_comprobante,',
'                  p2.valor,',
'                  nvl(d.monto_total, 0),',
'                  p3.valor,',
'                  nvl(d.monto_total, 0) * -1,',
'                  0)) credito,',
'       sum(decode(tc.stock,',
'                  ''R'',',
'                  nvl(d.descuento, 0),',
'                  ''S'',',
'                  nvl(d.descuento, 0) * -1)) descuentos,',
'       ',
'       sum(decode(tc.stock,',
'                  ''R'',',
'                  nvl(d.recargo, 0),',
'                  ''S'',',
'                  nvl(d.recargo, 0) * -1)) recargos,',
'       sum(decode(tc.stock,',
'                  ''R'',',
'                  nvl(d.total_iva, 0),',
'                  ''S'',',
'                  nvl(d.total_iva, 0) * -1)) iva,',
'       sum(decode(tc.stock,',
'                  ''R'',',
'                  decode(c.cod_moneda,',
'                         ''1'',',
'                         nvl(ca.costo_prom_nue, 0),',
'                         nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),',
'                  ''S'',',
'                  (decode(c.cod_moneda,',
'                          ''1'',',
'                          nvl(ca.costo_prom_nue, 0),',
'                          nvl(ca.costo_prom_nue_us, 0)) *',
'                  nvl(d.cantidad, 0)) * -1)) costo,',
'       sum(nvl(d.cantidad, 0) * decode(tc.stock, ''S'', -1, 1)) cantidad,',
'       nvl( sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)), 0 ) + nvl( sum(decode(c.tip_comprobante,p2.valor,nvl(d.monto_total, 0),p3.valor,nvl(d.monto_total, 0) * -1,0)), 0 ) tot_comprobante,',
'       nvl( nvl( sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)), 0 ) + nvl( sum(decode(c.tip_comprobante,p2.valor,nvl(d.monto_total, 0),p3.valor,nvl(d.monto_total, 0) * -1,0)), 0 ), 0 ) + nvl( sum(decode(tc.stock,''R'',nvl(d.total_i'
||'va, 0),''S'',nvl(d.total_iva, 0) * -1)), 0 ) total_general,',
'       nvl( nvl( sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)), 0 ) + nvl( sum(decode(c.tip_comprobante,p2.valor,nvl(d.monto_total, 0),p3.valor,nvl(d.monto_total, 0) * -1,0)), 0 ), 0 ) - nvl( sum(decode(tc.stock,''R'',decode(c.cod_'
||'moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),''S'',(decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) *nvl(d.cantidad, 0)) * -1)) , 0 ) utilidad,',
'       case when sum(decode(tc.stock,''R'',decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),''S'',(decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) *nvl(d.cantidad, 0)) * '
||'-1))  <> 0 then  round( nvl( nvl( nvl( sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)), 0 ) + nvl( sum(decode(c.tip_comprobante,',
'            p2.valor, nvl(d.monto_total, 0),p3.valor, nvl(d.monto_total, 0) * -1, 0)), 0 ), 0 ) - nvl( sum(decode(tc.stock, ''R'',decode(c.cod_moneda, ''1'',    nvl(ca.costo_prom_nue, 0), nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),''S'',(decode(c.c'
||'od_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) *nvl(d.cantidad, 0)) * -1)) , 0 ), 0 ) / nvl( sum(decode(tc.stock,''R'',',
'            decode(c.cod_moneda,''1'', nvl(ca.costo_prom_nue, 0),  nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),''S'', (decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) *nvl(d.cantidad, 0)) * -1)), 1 ) * 100, 2 )',
'        else 100 end margen ',
'  from vt_comprobantes_cabecera c,',
'       vt_comprobantes_detalle  d,',
'       fv_vendedores            v,',
'       personas                 p,',
'       tipos_comprobantes       tc,',
'       sucursales               su,',
'       monedas                  m,',
'       st_costos_art            ca,',
'       st_articulos             a,',
'       parametros_generales     p1,',
'       parametros_generales     p2,',
'       parametros_generales     p3',
' where c.cod_empresa = :p_cod_empresa',
'   and c.fec_comprobante between :P17_FEC_INICIAL and :P17_FEC_FINAL',
'   and (:P17_COD_SUCURSAL IS NULL OR c.cod_sucursal = :P17_COD_SUCURSAL)',
'   and (:P17_COD_PERSONA_VAR IS NULL OR p.cod_persona = :P17_COD_PERSONA_VAR)',
'   and (:P17_COD_MARCA is null or a.cod_marca = :P17_COD_MARCA)   ',
'   and c.cod_empresa      = d.cod_empresa',
'   and c.tip_comprobante = d.tip_comprobante',
'   and c.ser_comprobante = d.ser_comprobante',
'   and c.nro_comprobante = d.nro_comprobante   ',
'   and c.cod_empresa    = v.cod_empresa(+)',
'   and c.cod_vendedor   = v.cod_vendedor(+)',
'   and v.cod_persona    = p.cod_persona(+)    ',
'   and c.cod_empresa     = tc.cod_empresa',
'   and c.tip_comprobante = tc.tip_comprobante   ',
'   and (c.estado IS NULL OR c.estado <> ''A'')   ',
'   and d.cod_empresa  = a.cod_empresa ',
'   and d.cod_articulo = a.cod_articulo   ',
'   and c.cod_empresa  = su.cod_empresa(+)',
'   and c.cod_sucursal = su.cod_sucursal(+)   ',
'   and c.cod_moneda = m.cod_moneda   ',
'   and p1.parametro = ''TIPO_CONTADO''',
'   and p2.parametro = ''TIPO_CREDITO''',
'   and p3.parametro = ''TIPO_NOTACRE''   ',
'   and d.cod_empresa  = ca.cod_empresa',
'   and d.cod_articulo = ca.cod_articulo   ',
'   and NVL(instr(v.cod_vendedor, ''-''), 0) = 0   ',
'   and c.fec_comprobante >= ca.fec_comprobante',
'   and to_char(ca.fec_comprobante, ''YYYYMMDD'') || ca.rowid = (select max(to_char(co.fec_comprobante, ''YYYYMMDD'') || co.rowid)',
'                                                                from st_costos_art co',
'                                                               where co.cod_empresa = d.cod_empresa',
'                                                                 and co.cod_articulo = d.cod_articulo',
'                                                                 and co.fec_comprobante <= c.fec_comprobante)',
'   and :P17_AUX_CARGA_REPORTE = ''1''                                                                 ',
' group by c.cod_sucursal,su.descripcion,v.cod_vendedor_gru,v.cod_vendedor,v.cod_persona,v.descripcion,p.nombre,v.descripcion,c.cod_moneda,m.decimales,m.siglas',
'',
'UNION ALL',
'select p.nombre,',
'       c.cod_sucursal,',
'       su.descripcion     desc_sucursal,',
'       v.cod_vendedor_gru,',
'       v.cod_vendedor,',
'       v.cod_persona,',
'       v.descripcion      vend_desc,',
'       v.descripcion nomb_vendedor,',
'       c.cod_moneda,',
'       m.decimales,',
'       m.siglas,',
'       m.siglas siglas_vend,',
'       decimales deci_per,',
'       sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)) contado,',
'       sum(decode(c.tip_comprobante,p2.valor,nvl(d.monto_total, 0),p3.valor,nvl(d.monto_total, 0) * -1,0)) credito,',
'       sum(decode(tc.stock,''R'',nvl(d.descuento, 0),''S'',nvl(d.descuento, 0) * -1)) descuentos,       ',
'       sum(decode(tc.stock,''R'',nvl(d.recargo, 0),''S'',nvl(d.recargo, 0) * -1)) recargos,',
'       sum(decode(tc.stock,''R'',nvl(d.total_iva, 0),''S'',nvl(d.total_iva, 0) * -1)) iva,',
'       sum(decode(tc.stock,''R'',decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),''S'',(decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) *nvl(d.cantidad, 0)) * -1)) costo'
||',',
'       sum(nvl(d.cantidad, 0) * decode(tc.stock, ''S'', -1, 1)) cantidad,',
'       nvl(sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)) , 0 ) + nvl( sum(decode(c.tip_comprobante,p2.valor,nvl(d.monto_total, 0),p3.valor,nvl(d.monto_total, 0) * -1,0)), 0 ) tot_comprobante,',
'       nvl( nvl(sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)) , 0 ) + nvl( sum(decode(c.tip_comprobante,p2.valor,nvl(d.monto_total, 0),p3.valor,nvl(d.monto_total, 0) * -1,0)), 0 ), 0 ) + nvl( sum(decode(tc.stock,''R'',nvl(d.total_i'
||'va, 0),''S'',nvl(d.total_iva, 0) * -1)), 0 ) total_general,',
'       nvl( nvl(sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)) , 0 ) + nvl( sum(decode(c.tip_comprobante,p2.valor,nvl(d.monto_total, 0),p3.valor,nvl(d.monto_total, 0) * -1,0)), 0 ), 0 ) - nvl( sum(decode(tc.stock,''R'',decode(c.cod_'
||'moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),''S'',',
'                                                                                                                                      (decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) *nvl(d.cantidad, 0)) * -1)), 0 ) ut'
||'ilidad,',
'       case ',
'        when sum(decode(tc.stock,',
'                  ''R'',',
'                  decode(c.cod_moneda,',
'                         ''1'',',
'                         nvl(ca.costo_prom_nue, 0),',
'                         nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),',
'                  ''S'',',
'                  (decode(c.cod_moneda,',
'                          ''1'',',
'                          nvl(ca.costo_prom_nue, 0),',
'                          nvl(ca.costo_prom_nue_us, 0)) *',
'                  nvl(d.cantidad, 0)) * -1))  <> 0 then  round( nvl( nvl( nvl(sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)) , 0 ) + nvl( sum(decode(c.tip_comprobante,',
'                                                                                                      p2.valor,',
'                                                                                                      nvl(d.monto_total, 0),',
'                                                                                                      p3.valor,',
'                                                                                                      nvl(d.monto_total, 0) * -1,',
'                                                                                                      0)), 0 ), 0 ) - nvl( sum(decode(tc.stock,',
'                                                                                                                                      ''R'',',
'                                                                                                                                      decode(c.cod_moneda,',
'                                                                                                                                             ''1'',',
'                                                                                                                                             nvl(ca.costo_prom_nue, 0),',
'                                                                                                                                             nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),',
'                                                                                                                                      ''S'',',
'                                                                                                                                      (decode(c.cod_moneda,',
'                                                                                                                                              ''1'',',
'                                                                                                                                              nvl(ca.costo_prom_nue, 0),',
'                                                                                                                                              nvl(ca.costo_prom_nue_us, 0)) *',
'                                                                                                                                      nvl(d.cantidad, 0)) * -1)), 0 ), 0 ) / nvl( sum(decode(tc.stock,',
'                                                                                                                                                                                              ''R'',',
'                                                                                                                                                                                              decode(c.cod_moneda,',
'                                                                                                                                                                                                     ''1'',',
'                                                                                                                                                                                                     nvl(ca.costo_prom_nue, 0),',
'                                                                                                                                                                                                     nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),',
'                                                                                                                                                                                              ''S'',',
'                                                                                                                                                                                              (decode(c.cod_moneda,',
'                                                                                                                                                                                                      ''1'',',
'                                                                                                                                                                                                      nvl(ca.costo_prom_nue, 0),',
'                                                                                                                                                                                                      nvl(ca.costo_prom_nue_us, 0)) *',
'                                                                                                                                                                                              nvl(d.cantidad, 0)) * -1)) , 1 ) * 100, 2 )',
'        else 100 end margen                                                                                                                                                                                                                               '
||'                                                                                                                                                                                                                                                          '
||'   ',
'  from vt_comprobantes_cabecera c,',
'       vt_comprobantes_detalle  d,',
'       fv_vendedores            v,',
'       personas                 p,',
'       tipos_comprobantes       tc,',
'       sucursales               su,',
'       monedas                  m,',
'       st_costos_art            ca,',
'       st_articulos             a,',
'       parametros_generales     p1,',
'       parametros_generales     p2,',
'       parametros_generales     p3',
' where c.cod_empresa =  :p_cod_empresa',
'   and c.fec_comprobante between :P17_FEC_INICIAL and :P17_FEC_FINAL',
'   and (:P17_COD_SUCURSAL IS NULL OR c.cod_sucursal = :P17_COD_SUCURSAL)',
'   and (:P17_COD_PERSONA_VAR IS NULL OR p.cod_persona = :P17_COD_PERSONA_VAR)',
'   and (:P17_COD_MARCA is null or a.cod_marca = :P17_COD_MARCA)   ',
'   and c.cod_empresa     = d.cod_empresa',
'   and c.tip_comprobante = d.tip_comprobante',
'   and c.ser_comprobante = d.ser_comprobante',
'   and c.nro_comprobante = d.nro_comprobante   ',
'   and c.cod_empresa    = v.cod_empresa(+)',
'   and c.cod_vendedor   = v.cod_vendedor(+)',
'   and v.cod_persona    =  p.cod_persona(+)   --',
'   and c.cod_empresa     = tc.cod_empresa',
'   and c.tip_comprobante = tc.tip_comprobante   ',
'   and (c.estado IS NULL OR c.estado <> ''A'')   ',
'   and d.cod_empresa  = a.cod_empresa',
'   and d.cod_articulo = a.cod_articulo   ',
'   and c.cod_empresa  = su.cod_empresa(+)',
'   and c.cod_sucursal = su.cod_sucursal(+)   ',
'   and c.cod_moneda = m.cod_moneda   ',
'   and p1.parametro = ''TIPO_CONTADO''',
'   and p2.parametro = ''TIPO_CREDITO''',
'   and p3.parametro = ''TIPO_NOTACRE''  ',
'   and d.cod_empresa  = ca.cod_empresa',
'   and d.cod_articulo = ca.cod_articulo   ',
'   and c.fec_comprobante >= ca.fec_comprobante',
'   and to_char(ca.fec_comprobante, ''YYYYMMDD'') || ca.rowid =',
'       (select max(to_char(co.fec_comprobante, ''YYYYMMDD'') || co.rowid)',
'          from st_costos_art co',
'         where co.cod_empresa = d.cod_empresa',
'           and co.cod_articulo = d.cod_articulo',
'           and co.fec_comprobante <= c.fec_comprobante)',
'      ',
'   AND substr(V.cod_vendedor, 1, instr(v.cod_vendedor, ''-'') - 1) IN',
'       (select v1.cod_vendedor',
'          from fv_vendedores v1, personas p1',
'         where v1.cod_empresa = :P17_COD_EMPRESA_VAR',
'           and v1.cod_persona = p1.cod_persona',
'           and (:P17_COD_PERSONA_VAR IS NULL OR v1.cod_persona = :P17_COD_PERSONA_VAR))',
'           ',
'   and instr(v.cod_vendedor, ''-'') > 0',
'      and :P17_AUX_CARGA_REPORTE = ''1''',
' group by c.cod_sucursal,',
'          su.descripcion,',
'          v.cod_vendedor_gru,',
'          v.cod_vendedor,',
'          v.descripcion,',
'          c.cod_moneda,',
'          m.decimales,',
'          m.siglas,',
'          v.cod_persona,',
'          v.descripcion,',
'          p.nombre',
'',
'UNION ALL',
'select p.nombre,',
'       c.cod_sucursal,',
'       su.descripcion     desc_sucursal,',
'       v.cod_vendedor_gru,',
'       v.cod_vendedor,',
'       v.cod_persona,',
'       v.descripcion      vend_desc,',
'       v.descripcion nomb_vendedor,',
'       c.cod_moneda,',
'       m.decimales,',
'       m.siglas,',
'       m.siglas siglas_vend,',
'       decimales deci_per,',
'       sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)) contado,',
'       sum(decode(c.tip_comprobante,p2.valor,nvl(d.monto_total, 0),p3.valor,nvl(d.monto_total, 0) * -1,0)) credito,',
'       sum(decode(tc.stock,''R'',nvl(d.descuento, 0),''S'',nvl(d.descuento, 0) * -1)) descuentos,       ',
'       sum(decode(tc.stock,''R'',nvl(d.recargo, 0),''S'',nvl(d.recargo, 0) * -1)) recargos,',
'       sum(decode(tc.stock,''R'',nvl(d.total_iva, 0),''S'',nvl(d.total_iva, 0) * -1)) iva,',
'       sum(decode(tc.stock,''R'',',
'                  decode(c.cod_moneda,',
'                         ''1'',',
'                         nvl(ca.costo_prom_nue, 0),',
'                         nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),',
'                  ''S'',',
'                  (decode(c.cod_moneda,',
'                          ''1'',',
'                          nvl(ca.costo_prom_nue, 0),',
'                          nvl(ca.costo_prom_nue_us, 0)) *',
'                  nvl(d.cantidad, 0)) * -1)) costo,',
'       sum(nvl(d.cantidad, 0) * decode(tc.stock, ''S'', -1, 1)) cantidad,',
'       nvl( sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)), 0 ) + nvl( sum(decode(c.tip_comprobante,',
'                                                                                                      p2.valor,',
'                                                                                                      nvl(d.monto_total, 0),',
'                                                                                                      p3.valor,',
'                                                                                                      nvl(d.monto_total, 0) * -1,',
'                                                                                                      0)) , 0 ) tot_comprobante,',
'       nvl( nvl( sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)), 0 ) + nvl( sum(decode(c.tip_comprobante,',
'                                                                                                      p2.valor,',
'                                                                                                      nvl(d.monto_total, 0),',
'                                                                                                      p3.valor,',
'                                                                                                      nvl(d.monto_total, 0) * -1,',
'                                                                                                      0)) , 0 ), 0 ) + nvl( sum(decode(tc.stock,',
'                                                                                                                                      ''R'',',
'                                                                                                                                      nvl(d.total_iva, 0),',
'                                                                                                                                      ''S'',',
'                                                                                                                                      nvl(d.total_iva, 0) * -1)), 0 ) total_general,',
'        nvl( nvl( sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)), 0 ) + nvl( sum(decode(c.tip_comprobante,',
'                                                                                                      p2.valor,',
'                                                                                                      nvl(d.monto_total, 0),',
'                                                                                                      p3.valor,',
'                                                                                                      nvl(d.monto_total, 0) * -1,',
'                                                                                                      0)) , 0 ), 0 ) - nvl( sum(decode(tc.stock,',
'                                                                                                                                      ''R'',',
'                                                                                                                                      decode(c.cod_moneda,',
'                                                                                                                                             ''1'',',
'                                                                                                                                             nvl(ca.costo_prom_nue, 0),',
'                                                                                                                                             nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),',
'                                                                                                                                      ''S'',',
'                                                                                                                                      (decode(c.cod_moneda,',
'                                                                                                                                              ''1'',',
'                                                                                                                                              nvl(ca.costo_prom_nue, 0),',
'                                                                                                                                              nvl(ca.costo_prom_nue_us, 0)) *',
'                                                                                                                                      nvl(d.cantidad, 0)) * -1)), 0 ) utilidad,',
'        case ',
'        when sum(decode(tc.stock,',
'                  ''R'',',
'                  decode(c.cod_moneda,',
'                         ''1'',',
'                         nvl(ca.costo_prom_nue, 0),',
'                         nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),',
'                  ''S'',',
'                  (decode(c.cod_moneda,',
'                          ''1'',',
'                          nvl(ca.costo_prom_nue, 0),',
'                          nvl(ca.costo_prom_nue_us, 0)) *',
'                  nvl(d.cantidad, 0)) * -1))  <> 0 then round( nvl( nvl( nvl( sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)), 0 ) + nvl( sum(decode(c.tip_comprobante,',
'                                                                                                      p2.valor,',
'                                                                                                      nvl(d.monto_total, 0),',
'                                                                                                      p3.valor,',
'                                                                                                      nvl(d.monto_total, 0) * -1,',
'                                                                                                      0)) , 0 ), 0 ) - nvl( sum(decode(tc.stock,',
'                                                                                                                                      ''R'',',
'                                                                                                                                      decode(c.cod_moneda,',
'                                                                                                                                             ''1'',',
'                                                                                                                                             nvl(ca.costo_prom_nue, 0),',
'                                                                                                                                             nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),',
'                                                                                                                                      ''S'',',
'                                                                                                                                      (decode(c.cod_moneda,',
'                                                                                                                                              ''1'',',
'                                                                                                                                              nvl(ca.costo_prom_nue, 0),',
'                                                                                                                                              nvl(ca.costo_prom_nue_us, 0)) *',
'                                                                                                                                      nvl(d.cantidad, 0)) * -1)), 0 ), 0 ) / nvl( sum(decode(tc.stock,',
'                                                                                                                                                                                              ''R'',',
'                                                                                                                                                                                              decode(c.cod_moneda,',
'                                                                                                                                                                                                     ''1'',',
'                                                                                                                                                                                                     nvl(ca.costo_prom_nue, 0),',
'                                                                                                                                                                                                     nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),',
'                                                                                                                                                                                              ''S'',',
'                                                                                                                                                                                              (decode(c.cod_moneda,',
'                                                                                                                                                                                                      ''1'',',
'                                                                                                                                                                                                      nvl(ca.costo_prom_nue, 0),',
'                                                                                                                                                                                                      nvl(ca.costo_prom_nue_us, 0)) *',
'                                                                                                                                                                                              nvl(d.cantidad, 0)) * -1)), 1 ) * 100, 2 )',
'        else 100 end margen                                                                                                                                                                                                                               '
||'                                                                                                                                                                                                                                                          ',
'  from vt_comprobantes_cabecera c,',
'       vt_comprobantes_detalle  d,',
'       fv_vendedores            v,',
'       personas                 p,',
'       tipos_comprobantes       tc,',
'       sucursales               su,',
'       monedas                  m,',
'       st_costos_art            ca,',
'       st_articulos             a,',
'       parametros_generales     p1,',
'       parametros_generales     p2,',
'       parametros_generales     p3',
' where c.cod_empresa =  :p_cod_empresa',
'   and c.fec_comprobante between :P17_FEC_INICIAL and :P17_FEC_FINAL',
'   and (:P17_COD_SUCURSAL IS NULL OR c.cod_sucursal = :P17_COD_SUCURSAL)',
'   and (:P17_COD_PERSONA_VAR IS NULL OR p.cod_persona = :P17_COD_PERSONA_VAR)',
'   and (:P17_COD_MARCA is null or a.cod_marca = :P17_COD_MARCA)   ',
'   and c.cod_empresa     = d.cod_empresa',
'   and c.tip_comprobante = d.tip_comprobante',
'   and c.ser_comprobante = d.ser_comprobante',
'   and c.nro_comprobante = d.nro_comprobante   ',
'   and c.cod_empresa    = v.cod_empresa(+)',
'   and c.cod_vendedor   = v.cod_vendedor(+)',
'   and v.cod_persona    = p.cod_persona(+)   ',
'   and c.cod_empresa     = tc.cod_empresa',
'   and c.tip_comprobante = tc.tip_comprobante   ',
'   and (c.estado IS NULL OR c.estado <> ''A'')   ',
'   and d.cod_empresa  = a.cod_empresa   ',
'   and d.cod_articulo = a.cod_articulo   ',
'   and c.cod_empresa = su.cod_empresa(+)',
'   and c.cod_sucursal = su.cod_sucursal(+)   ',
'   and c.cod_moneda = m.cod_moneda   ',
'   and p1.parametro = ''TIPO_CONTADO''',
'   and p2.parametro = ''TIPO_CREDITO''',
'   and p3.parametro = ''TIPO_NOTACRE''   ',
'   and d.cod_empresa  = ca.cod_empresa',
'   and d.cod_articulo = ca.cod_articulo   ',
'   and c.fec_comprobante >= ca.fec_comprobante',
'    and to_char(ca.fec_comprobante, ''YYYYMMDD'') || ca.rowid =',
'       (select max(to_char(co.fec_comprobante, ''YYYYMMDD'') || co.rowid)',
'          from st_costos_art co',
'         where co.cod_empresa = d.cod_empresa',
'           and co.cod_articulo = d.cod_articulo',
'           and co.fec_comprobante <= c.fec_comprobante)',
'      ',
'   AND substr(V.cod_vendedor,',
'              instr(v.cod_vendedor, ''-'') + 1,',
'              length(v.cod_vendedor)) IN',
'       (select v1.cod_vendedor',
'          from fv_vendedores v1, personas p1',
'         where v1.cod_empresa = :P17_COD_EMPRESA_VAR',
'           and v1.cod_persona = p1.cod_persona',
'           and(:P17_COD_PERSONA_VAR IS NULL OR v1.cod_persona = :P17_COD_PERSONA_VAR))',
'           ',
'   and instr(v.cod_vendedor, ''-'') > 0',
'   and :P17_AUX_CARGA_REPORTE = ''1''',
' group by c.cod_sucursal,',
'          su.descripcion,',
'          v.cod_vendedor_gru,',
'          v.cod_vendedor,',
'          v.descripcion,',
'          c.cod_moneda,',
'          m.decimales,',
'          m.siglas,',
'          v.cod_persona,',
'          v.descripcion,',
'          p.nombre',
' order by 1',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P17_AUX_CARGA_REPORTE,P17_COD_PERSONA_VAR,P17_FEC_INICIAL,P17_FEC_FINAL,P17_COD_SUCURSAL,PP17_COD_VENDEDOR,P17_COD_MARCA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resumen de ventas por vendedores '
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
null;
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
 p_id=>wwv_flow_imp.id(14073623613370446)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se han encontrado datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>14073623613370446
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14073786125370447)
,p_db_column_name=>'NOMB_VENDEDOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14073829159370448)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14073922660370449)
,p_db_column_name=>'DECIMALES'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Decimales'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14074081393370450)
,p_db_column_name=>'SIGLAS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14569429659254901)
,p_db_column_name=>'CONTADO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Contado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14569595667254902)
,p_db_column_name=>'CREDITO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('Cr\00E9dito')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14569619109254903)
,p_db_column_name=>'DESCUENTOS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Descuento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14569722318254904)
,p_db_column_name=>'RECARGOS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Recargo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14569886035254905)
,p_db_column_name=>'IVA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'IVA'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14569917829254906)
,p_db_column_name=>'COSTO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Costo total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P17_AUX_VER_COSTOS'
,p_display_condition2=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14570060835254907)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14570114201254908)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14573763960254944)
,p_db_column_name=>'NOMBRE'
,p_display_order=>130
,p_column_identifier=>'Q'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14573837630254945)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>140
,p_column_identifier=>'R'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14573979737254946)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>150
,p_column_identifier=>'S'
,p_column_label=>'Desc Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14574042934254947)
,p_db_column_name=>'COD_VENDEDOR_GRU'
,p_display_order=>160
,p_column_identifier=>'T'
,p_column_label=>'Cod Vendedor Gru'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14574172917254948)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>170
,p_column_identifier=>'U'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14574214369254949)
,p_db_column_name=>'VEND_DESC'
,p_display_order=>180
,p_column_identifier=>'V'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14574365003254950)
,p_db_column_name=>'SIGLAS_VEND'
,p_display_order=>190
,p_column_identifier=>'W'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14594994029343801)
,p_db_column_name=>'DECI_PER'
,p_display_order=>200
,p_column_identifier=>'X'
,p_column_label=>'Deci Per'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14595309828343805)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>210
,p_column_identifier=>'Y'
,p_column_label=>'Venta neta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14595463661343806)
,p_db_column_name=>'TOTAL_GENERAL'
,p_display_order=>220
,p_column_identifier=>'Z'
,p_column_label=>'Venta total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14595553690343807)
,p_db_column_name=>'UTILIDAD'
,p_display_order=>230
,p_column_identifier=>'AA'
,p_column_label=>'Utilidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P17_AUX_VER_COSTOS'
,p_display_condition2=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14595652711343808)
,p_db_column_name=>'MARGEN'
,p_display_order=>240
,p_column_identifier=>'AB'
,p_column_label=>'Margen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P17_AUX_VER_COSTOS'
,p_display_condition2=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14588904185291738)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'145890'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_view_mode=>'REPORT'
,p_report_columns=>'COD_SUCURSAL:COD_VENDEDOR:VEND_DESC:SIGLAS_VEND:CANTIDAD:CONTADO:CREDITO:TOT_COMPROBANTE:DESCUENTOS:RECARGOS:TOTAL_GENERAL:IVA:COSTO:UTILIDAD:MARGEN:'
,p_break_on=>'COD_SUCURSAL:0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0'
,p_sum_columns_on_break=>'CREDITO:CANTIDAD:CONTADO:DESCUENTOS:RECARGOS:IVA:COSTO:TOT_COMPROBANTE:TOTAL_GENERAL:UTILIDAD'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14570606367254913)
,p_plug_name=>'Resumen por monedas '
,p_region_name=>'VTRVTVEN_NEW_RES'
,p_parent_plug_id=>wwv_flow_imp.id(13900427927572449)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select /*+ rule*/ c.cod_moneda RES_cod_moneda,',
'       m.decimales RES_decimales,',
'       m.siglas RES_siglas,',
'       sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)) RES_contado,',
'       sum(decode(c.tip_comprobante,p2.valor,nvl(d.monto_total, 0),p3.valor,nvl(d.monto_total, 0) * -1,0)) RES_credito,',
'       sum(decode(tc.stock,''R'',nvl(d.descuento, 0),''S'',nvl(d.descuento, 0) * -1)) RES_descuentos,',
'       sum(decode(tc.stock,''R'',nvl(d.recargo, 0),''S'',nvl(d.recargo, 0) * -1)) RES_recargos,',
'       sum(decode(tc.stock,''R'',nvl(d.total_iva, 0),''S'',nvl(d.total_iva, 0) * -1)) RES_iva,',
'       sum(decode(tc.stock,''R'',decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),''S'',',
'                  (decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) *nvl(d.cantidad, 0)) * -1)) RES_costo,',
'       sum(nvl(d.cantidad, 0) * decode(tc.stock, ''S'', -1, 1)) RES_cantidad,',
'       nvl( sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)), 0 ) + nvl( sum(decode(c.tip_comprobante,p2.valor,nvl(d.monto_total, 0),p3.valor,nvl(d.monto_total, 0) * -1,0)), 0 ) res_tot_comprobante,',
'       nvl( nvl( sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)), 0 ) + nvl( sum(decode(c.tip_comprobante,p2.valor,nvl(d.monto_total, 0),p3.valor,nvl(d.monto_total, 0) * -1,0)), 0 ), 0 ) + nvl( sum(decode(tc.stock,''R'',nvl(d.total_i'
||'va, 0),''S'',nvl(d.total_iva, 0) * -1)), 0 ) res_total_gen,',
'       nvl( nvl( sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)), 0 ) + nvl( sum(decode(c.tip_comprobante,p2.valor,nvl(d.monto_total, 0),p3.valor,nvl(d.monto_total, 0) * -1,0)), 0 ), 0 ) - nvl( sum(decode(tc.stock,''R'',decode(c.cod_'
||'moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),''S'',',
'                  (decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) *nvl(d.cantidad, 0)) * -1)) , 0 ) res_utilidad,',
'       case ',
'        when nvl(sum(decode(tc.stock,''R'',decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),''S'',',
'                  (decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) *nvl(d.cantidad, 0)) * -1)),0) <> 0 then round( nvl( nvl( nvl( sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)), 0 ) + nvl( sum(decod'
||'e(c.tip_comprobante,p2.valor,nvl(d.monto_total, 0),p3.valor,nvl(d.monto_total, 0) * -1,0)), 0 ), 0 ) - nvl( sum(decode(tc.stock,''R'',decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),''S'',',
'                  (decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) *nvl(d.cantidad, 0)) * -1)) , 0 ), 0 ) / nvl( sum(decode(tc.stock,''R'',decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) *'
||' nvl(d.cantidad, 0),''S'',',
'                  (decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) *nvl(d.cantidad, 0)) * -1)), 0 ) * 100, 2 ) ',
'        else 100 end res_margen',
'  from vt_comprobantes_cabecera c,',
'       vt_comprobantes_detalle  d,',
'       fv_vendedores            v,',
'       personas                 p,',
'       tipos_comprobantes       tc,',
'       sucursales               su,',
'       monedas                  m,',
'       st_costos_art            ca,',
'       st_articulos             a,',
'       parametros_generales     p1,',
'       parametros_generales     p2,',
'       parametros_generales     p3',
' where c.cod_empresa = :P17_COD_EMPRESA_VAR',
'   and c.fec_comprobante between :P17_FEC_INICIAL and :P17_FEC_FINAL',
'   and (:P17_COD_SUCURSAL IS NULL OR c.cod_sucursal = :P17_COD_SUCURSAL)',
'   --and (:p_cod_vendedor IS NULL OR v.cod_vendedor = :p_cod_vendedor)',
'   and (:P17_COD_PERSONA_VAR IS NULL OR p.cod_persona = :P17_COD_PERSONA_VAR)',
'   --and (:p_cod_condicion_venta IS NULL OR c.COD_CONDICION_VENTA = :p_cod_condicion_venta)',
'   and (:P17_COD_MARCA is null or a.cod_marca = :P17_COD_MARCA)   ',
'   and c.cod_empresa     = d.cod_empresa',
'   and c.tip_comprobante = d.tip_comprobante',
'   and c.ser_comprobante = d.ser_comprobante',
'   and c.nro_comprobante = d.nro_comprobante   ',
'   and c.cod_empresa  = v.cod_empresa',
'   and c.cod_vendedor = v.cod_vendedor',
'   and v.cod_persona  = p.cod_persona   ',
'   and c.cod_empresa     = tc.cod_empresa',
'   and c.tip_comprobante = tc.tip_comprobante   ',
'   and (c.estado IS NULL OR c.estado <> ''A'')   ',
'   and d.cod_empresa   = a.cod_empresa',
'   and d.cod_articulo  = a.cod_articulo   ',
'   and c.cod_empresa  = su.cod_empresa',
'   and c.cod_sucursal = su.cod_sucursal   ',
'   and c.cod_moneda = m.cod_moneda   ',
'   and p1.parametro = ''TIPO_CONTADO''',
'   and p2.parametro = ''TIPO_CREDITO''',
'   and p3.parametro = ''TIPO_NOTACRE''   ',
'   and d.cod_empresa  = ca.cod_empresa',
'   and d.cod_articulo = ca.cod_articulo   ',
'   and NVL(instr(v.cod_vendedor, ''-''), 0) = 0   ',
'   and c.fec_comprobante >= ca.fec_comprobante',
'   and to_char(ca.fec_comprobante, ''YYYYMMDD'') || ca.rowid = (select max(to_char(co.fec_comprobante, ''YYYYMMDD'') || co.rowid)',
'                                                                from st_costos_art co',
'                                                               where co.cod_empresa      = d.cod_empresa',
'                                                                 and co.cod_articulo     = d.cod_articulo',
'                                                                 and co.fec_comprobante <= c.fec_comprobante)',
'   and :P17_AUX_CARGA_REPORTE = ''1''                                                                 ',
' group by c.cod_moneda, m.decimales, m.siglas',
'',
'UNION ALL',
'',
'select /*+ rule*/c.cod_moneda RES_cod_moneda,',
'       m.decimales RES_decimales,',
'       m.siglas RES_siglas,',
'       sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)) RES_contado,',
'       sum(decode(c.tip_comprobante,p2.valor,nvl(d.monto_total, 0),p3.valor,nvl(d.monto_total, 0) * -1,0)) RES_credito,',
'       sum(decode(tc.stock,''R'',nvl(d.descuento, 0),''S'',nvl(d.descuento, 0) * -1)) RES_descuentos,',
'       sum(decode(tc.stock,''R'',nvl(d.recargo, 0),''S'',nvl(d.recargo, 0) * -1)) RES_recargos,',
'       sum(decode(tc.stock,''R'',nvl(d.total_iva, 0),''S'',nvl(d.total_iva, 0) * -1)) RES_iva,',
'       sum(decode(tc.stock,''R'',decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),''S'',',
'                  (decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0)) * -1)) RES_costo,',
'       sum(nvl(d.cantidad, 0) * decode(tc.stock, ''S'', -1, 1)) RES_cantidad,',
'       nvl( sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)) , 0 ) + nvl( sum(decode(c.tip_comprobante,p2.valor,nvl(d.monto_total, 0),p3.valor,nvl(d.monto_total, 0) * -1,0)), 0 ) res_tot_comprobante,',
'       nvl( nvl( sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)) , 0 ) + nvl( sum(decode(c.tip_comprobante,p2.valor,nvl(d.monto_total, 0),p3.valor,nvl(d.monto_total, 0) * -1,0)), 0 ), 0 ) + nvl( sum(decode(tc.stock,''R'',nvl(d.total_'
||'iva, 0),''S'',nvl(d.total_iva, 0) * -1)), 0 ) res_total_gen,',
'       nvl( nvl( sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)) , 0 ) + nvl( sum(decode(c.tip_comprobante,p2.valor,nvl(d.monto_total, 0),p3.valor,nvl(d.monto_total, 0) * -1,0)), 0 ), 0 ) - nvl( sum(decode(tc.stock,''R'',decode(c.cod'
||'_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),''S'',',
'                  (decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0)) * -1)) , 0 ) res_utilidad,',
'       case ',
'        when nvl(sum(decode(tc.stock,''R'',decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),''S'',',
'                  (decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0)) * -1)),0) <> 0 then round( nvl(nvl( nvl( sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)) , 0 ) + nvl( sum(deco'
||'de(c.tip_comprobante,p2.valor,nvl(d.monto_total, 0),p3.valor,nvl(d.monto_total, 0) * -1,0)), 0 ), 0 ) - nvl( sum(decode(tc.stock,''R'',decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),''S'',',
'                  (decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0)) * -1)) , 0 ), 0 ) / nvl( sum(decode(tc.stock,''R'',decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) '
||'* nvl(d.cantidad, 0),''S'',',
'                  (decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0)) * -1)), 0 ) * 100, 2 ) ',
'        else 100 end res_margen',
'  from vt_comprobantes_cabecera c,',
'       vt_comprobantes_detalle  d,',
'       fv_vendedores            v,',
'       personas                 p,',
'       tipos_comprobantes       tc,',
'       sucursales               su,',
'       monedas                  m,',
'       st_costos_art            ca,',
'       st_articulos             a,',
'       parametros_generales     p1,',
'       parametros_generales     p2,',
'       parametros_generales     p3',
' where c.cod_empresa = :P17_COD_EMPRESA_VAR',
'   and c.fec_comprobante between :P17_FEC_INICIAL and :P17_FEC_FINAL',
'   and (:P17_COD_SUCURSAL IS NULL OR c.cod_sucursal = :P17_COD_SUCURSAL)',
'   --and (:p_cod_vendedor IS NULL OR v.cod_vendedor = :p_cod_vendedor)',
'   and (:P17_COD_PERSONA_VAR IS NULL OR p.cod_persona = :P17_COD_PERSONA_VAR)',
'  -- and (:p_cod_condicion_venta IS NULL OR c.COD_CONDICION_VENTA = :p_cod_condicion_venta)',
'   and (:P17_COD_MARCA is null or a.cod_marca = :P17_COD_MARCA)   ',
'   and c.cod_empresa     = d.cod_empresa',
'   and c.tip_comprobante = d.tip_comprobante',
'   and c.ser_comprobante = d.ser_comprobante',
'   and c.nro_comprobante = d.nro_comprobante   ',
'   and c.cod_empresa   = v.cod_empresa',
'   and c.cod_vendedor  = v.cod_vendedor',
'   and v.cod_persona   = p.cod_persona    ',
'   and c.cod_empresa     = tc.cod_empresa',
'   and c.tip_comprobante = tc.tip_comprobante   ',
'   and (c.estado IS NULL OR c.estado <> ''A'')',
'   and d.cod_empresa  = a.cod_empresa',
'   and d.cod_articulo = a.cod_articulo',
'   and c.cod_empresa  = su.cod_empresa',
'   and c.cod_sucursal = su.cod_sucursal   ',
'   and c.cod_moneda = m.cod_moneda   ',
'   and p1.parametro = ''TIPO_CONTADO''',
'   and p2.parametro = ''TIPO_CREDITO''',
'   and p3.parametro = ''TIPO_NOTACRE''   ',
'   and d.cod_empresa = ca.cod_empresa',
'   and d.cod_articulo = ca.cod_articulo   ',
'   and c.fec_comprobante >= ca.fec_comprobante                        ',
'   and to_char(ca.fec_comprobante, ''YYYYMMDD'') || ca.rowid =',
'       (select max(to_char(co.fec_comprobante, ''YYYYMMDD'') || co.rowid)',
'          from st_costos_art co',
'         where co.cod_empresa = d.cod_empresa',
'           and co.cod_articulo = d.cod_articulo',
'           and co.fec_comprobante <= c.fec_comprobante)      ',
'   AND substr(V.cod_vendedor, 1, instr(v.cod_vendedor, ''-'') - 1) IN',
'       (select v1.cod_vendedor',
'          from fv_vendedores v1, personas p1',
'         where v1.cod_empresa = :P17_COD_EMPRESA_VAR',
'           and v1.cod_persona = p1.cod_persona',
'           and (:P17_COD_PERSONA_VAR IS NULL OR v1.cod_persona = :P17_COD_PERSONA_VAR))',
'           ',
'   and instr(v.cod_vendedor, ''-'') > 0',
'   and :P17_AUX_CARGA_REPORTE = ''1''',
' group by c.cod_moneda, m.decimales, m.siglas',
' ',
'UNION ALL',
'',
'select /*+ rule*/c.cod_moneda RES_cod_moneda,',
'       m.decimales RES_decimales,',
'       m.siglas RES_siglas,',
'       sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)) RES_contado,',
'       sum(decode(c.tip_comprobante,p2.valor,nvl(d.monto_total, 0),p3.valor,nvl(d.monto_total, 0) * -1,0)) RES_credito,',
'       sum(decode(tc.stock,''R'',nvl(d.descuento, 0),''S'',nvl(d.descuento, 0) * -1)) RES_descuentos,',
'       sum(decode(tc.stock,''R'',nvl(d.recargo, 0),''S'',nvl(d.recargo, 0) * -1)) RES_recargos,',
'       sum(decode(tc.stock,''R'',nvl(d.total_iva, 0),''S'',nvl(d.total_iva, 0) * -1)) RES_iva,',
'       sum(decode(tc.stock,''R'',decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),''S'',',
'                  (decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) *nvl(d.cantidad, 0)) * -1)) RES_costo,',
'       sum(nvl(d.cantidad, 0) * decode(tc.stock, ''S'', -1, 1)) RES_cantidad,',
'       nvl( sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)), 0 ) + nvl( sum(decode(c.tip_comprobante,p2.valor,nvl(d.monto_total, 0),p3.valor,nvl(d.monto_total, 0) * -1,0)), 0 ) res_tot_comprobante,',
'       nvl( nvl( sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)), 0 ) + nvl( sum(decode(c.tip_comprobante,p2.valor,nvl(d.monto_total, 0),p3.valor,nvl(d.monto_total, 0) * -1,0)), 0 ), 0 ) + nvl( sum(decode(tc.stock,''R'',nvl(d.total_i'
||'va, 0),''S'',nvl(d.total_iva, 0) * -1)), 0 ) res_total_gen,',
'       nvl( nvl( sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)), 0 ) + nvl( sum(decode(c.tip_comprobante,p2.valor,nvl(d.monto_total, 0),p3.valor,nvl(d.monto_total, 0) * -1,0)), 0 ), 0 ) - nvl( sum(decode(tc.stock,''R'',decode(c.cod_'
||'moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),''S'',',
'                  (decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) *nvl(d.cantidad, 0)) * -1)), 0 ) res_utilidad,',
'       case ',
'        when nvl(sum(decode(tc.stock,''R'',decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),''S'',',
'                  (decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) *nvl(d.cantidad, 0)) * -1)),0) <> 0 then round( nvl( nvl( nvl( sum(decode(c.tip_comprobante, p1.valor, nvl(d.monto_total, 0), 0)), 0 ) + nvl( sum(decod'
||'e(c.tip_comprobante,p2.valor,nvl(d.monto_total, 0),p3.valor,nvl(d.monto_total, 0) * -1,0)), 0 ), 0 ) - nvl( sum(decode(tc.stock,''R'',decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) * nvl(d.cantidad, 0),''S'',',
'                  (decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) *nvl(d.cantidad, 0)) * -1)), 0 ) , 0 ) / nvl( sum(decode(tc.stock,''R'',decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) *'
||' nvl(d.cantidad, 0),''S'',',
'                  (decode(c.cod_moneda,''1'',nvl(ca.costo_prom_nue, 0),nvl(ca.costo_prom_nue_us, 0)) *nvl(d.cantidad, 0)) * -1)) , 0 ) * 100, 2 ) ',
'        else 100 end res_margen           ',
'  from vt_comprobantes_cabecera c,',
'       vt_comprobantes_detalle  d,',
'       fv_vendedores            v,',
'       personas                 p,',
'       tipos_comprobantes       tc,',
'       sucursales               su,',
'       monedas                  m,',
'       st_costos_art            ca,',
'       st_articulos             a,',
'       parametros_generales     p1,',
'       parametros_generales     p2,',
'       parametros_generales     p3',
' where c.cod_empresa = :P17_COD_EMPRESA_VAR',
'   and c.fec_comprobante between :P17_FEC_INICIAL and :P17_FEC_FINAL',
'   and (:P17_COD_SUCURSAL IS NULL OR c.cod_sucursal = :P17_COD_SUCURSAL)',
'   --and (:p_cod_vendedor IS NULL OR v.cod_vendedor = :p_cod_vendedor)',
'   and (:P17_COD_PERSONA_VAR IS NULL OR p.cod_persona = :P17_COD_PERSONA_VAR)',
'   --and (:p_cod_condicion_venta IS NULL OR c.COD_CONDICION_VENTA = :p_cod_condicion_venta)',
'   and (:P17_COD_MARCA is null or a.cod_marca = :P17_COD_MARCA)   ',
'   and c.cod_empresa     = d.cod_empresa',
'   and c.tip_comprobante = d.tip_comprobante',
'   and c.ser_comprobante = d.ser_comprobante',
'   and c.nro_comprobante = d.nro_comprobante   ',
'   and c.cod_empresa  = v.cod_empresa',
'   and c.cod_vendedor = v.cod_vendedor',
'   and v.cod_persona  = p.cod_persona   ',
'   and c.cod_empresa     = tc.cod_empresa',
'   and c.tip_comprobante = tc.tip_comprobante   ',
'   and (c.estado IS NULL OR c.estado <> ''A'')   ',
'   and d.cod_empresa  = a.cod_empresa',
'   and d.cod_articulo = a.cod_articulo   ',
'   and c.cod_empresa  = su.cod_empresa',
'   and c.cod_sucursal = su.cod_sucursal   ',
'   and c.cod_moneda = m.cod_moneda   ',
'   and p1.parametro = ''TIPO_CONTADO''',
'   and p2.parametro = ''TIPO_CREDITO''',
'   and p3.parametro = ''TIPO_NOTACRE''   ',
'   and d.cod_empresa  = ca.cod_empresa',
'   and d.cod_articulo = ca.cod_articulo   ',
'   and c.fec_comprobante >= ca.fec_comprobante',
'   and to_char(ca.fec_comprobante, ''YYYYMMDD'') || ca.rowid =',
'       (select max(to_char(co.fec_comprobante, ''YYYYMMDD'') || co.rowid)',
'          from st_costos_art co',
'         where co.cod_empresa = d.cod_empresa',
'           and co.cod_articulo = d.cod_articulo',
'           and co.fec_comprobante <= c.fec_comprobante)      ',
'   AND substr(V.cod_vendedor,',
'              instr(v.cod_vendedor, ''-'') + 1,',
'              length(v.cod_vendedor)) IN',
'       (select v1.cod_vendedor',
'          from fv_vendedores v1, personas p1',
'         where v1.cod_empresa = :P17_COD_EMPRESA_VAR',
'           and v1.cod_persona = p1.cod_persona',
'           and (:P17_COD_PERSONA_VAR IS NULL OR v1.cod_persona = :P17_COD_PERSONA_VAR))',
'           ',
'   and instr(v.cod_vendedor, ''-'') > 0',
'   and :P17_AUX_CARGA_REPORTE = ''1''   ',
' group by c.cod_moneda, m.decimales, m.siglas'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P17_AUX_CARGA_REPORTE,P17_COD_PERSONA_VAR,P17_FEC_INICIAL,P17_FEC_FINAL,P17_COD_SUCURSAL,PP17_COD_VENDEDOR,P17_COD_MARCA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resumen por monedas '
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
 p_id=>wwv_flow_imp.id(14570702522254914)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se han encontrado datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>14570702522254914
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14570849217254915)
,p_db_column_name=>'RES_COD_MONEDA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Res Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14570971868254916)
,p_db_column_name=>'RES_DECIMALES'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Res Decimales'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14571098596254917)
,p_db_column_name=>'RES_SIGLAS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14571159069254918)
,p_db_column_name=>'RES_CONTADO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Contado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14571235825254919)
,p_db_column_name=>'RES_CREDITO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Cr\00E9dito')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14571398056254920)
,p_db_column_name=>'RES_DESCUENTOS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Descuento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14571424739254921)
,p_db_column_name=>'RES_RECARGOS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Recargo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14571562551254922)
,p_db_column_name=>'RES_IVA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'IVA'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14571608962254923)
,p_db_column_name=>'RES_COSTO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Costo total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P17_AUX_VER_COSTOS'
,p_display_condition2=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14571792605254924)
,p_db_column_name=>'RES_CANTIDAD'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14595765668343809)
,p_db_column_name=>'RES_TOT_COMPROBANTE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Venta neta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(14595830785343810)
,p_db_column_name=>'RES_TOTAL_GEN'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Venta total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14595976376343811)
,p_db_column_name=>'RES_UTILIDAD'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Utilidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P17_AUX_VER_COSTOS'
,p_display_condition2=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14596024675343812)
,p_db_column_name=>'RES_MARGEN'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Margen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P17_AUX_VER_COSTOS'
,p_display_condition2=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14589534661291746)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'145896'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RES_SIGLAS:RES_CANTIDAD:RES_CONTADO:RES_CREDITO:RES_TOT_COMPROBANTE:RES_DESCUENTOS:RES_RECARGOS:RES_TOTAL_GEN:RES_IVA:RES_COSTO:RES_UTILIDAD:RES_MARGEN:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14071138260370421)
,p_plug_name=>'POR FAVOR INGRESE SU CLAVE'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>15
,p_plug_grid_column_span=>4
,p_plug_display_column=>5
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14071362600370423)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14071138260370421)
,p_button_name=>'ACEPTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14071471594370424)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(14071138260370421)
,p_button_name=>'CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column=>7
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6430667702430901)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(5969106720783245)
,p_button_name=>'BT_EJECUTAR'
,p_button_static_id=>'BT_EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14069584493370405)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13900427927572449)
,p_button_name=>'LIMPIAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Limpiar'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5969213252783246)
,p_name=>'P17_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5969106720783245)
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
,p_lov_null_text=>'TODAS'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5969381027783247)
,p_name=>'P17_FEC_INICIAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5969106720783245)
,p_prompt=>'Fecha Desde'
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
 p_id=>wwv_flow_imp.id(5969460596783248)
,p_name=>'P17_COD_MARCA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5969106720783245)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MARCAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca||'' - ''||descripcion D, cod_marca R',
'from st_marcas',
'order by descripcion;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5969502540783249)
,p_name=>'P17_COD_VENDEDOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5969106720783245)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.cod_vendedor||'' - ''||nvl( p.nombre, p.nomb_fantasia ) nombre,  v.cod_vendedor',
'  from fv_vendedores v, personas p ',
' where v.cod_empresa = :p_cod_empresa',
'   and v.cod_persona = p.cod_persona ',
'   and v.cod_persona = :P17_COD_PERSONA_VAR ',
'union all',
'    select v.cod_vendedor||'' - ''||nvl( v.descripcion, v.descripcion ) nombre , v.cod_vendedor ',
'      from fv_vendedores v',
'     where v.cod_empresa = :p_cod_empresa',
'       and substr(cod_vendedor,1,instr(v.cod_vendedor,''-'')-1) ',
'       IN ',
'        (select  v1.cod_vendedor ',
'           from fv_vendedores v1, personas p1',
'         where v1.cod_empresa = :p_cod_empresa',
'           and v1.cod_persona = p1.cod_persona ',
'           and v1.cod_persona = :P17_COD_PERSONA_VAR )',
'           and instr(v.cod_vendedor,''-'')>0',
'UNION ALL ',
'    select v.cod_vendedor||'' - ''||nvl( v.descripcion, v.descripcion ) nombre, v.cod_vendedor ',
'      from fv_vendedores v',
'     where v.cod_empresa = :p_cod_empresa',
'       AND substr(cod_vendedor,instr(v.cod_vendedor,''-'')+1,length(v.cod_vendedor)) ',
'       IN ',
'        (select  v.cod_vendedor ',
'           from fv_vendedores v, personas p ',
'          where v.cod_empresa = :p_cod_empresa',
'           and v.cod_persona = p.cod_persona ',
'           and v.cod_persona = :P17_COD_PERSONA_VAR )',
'           and instr(v.cod_vendedor,''-'')>0',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_cascade_parent_items=>'P17_COD_PERSONA_VAR'
,p_ajax_items_to_submit=>'P17_COD_PERSONA_VAR'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5969618347783250)
,p_name=>'P17_FEC_FINAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5969106720783245)
,p_prompt=>'Fecha Hasta'
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
 p_id=>wwv_flow_imp.id(6430771441430902)
,p_name=>'P17_VER_COSTOS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5969106720783245)
,p_item_default=>'''N'''
,p_prompt=>'Costos'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_column=>10
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6430850252430903)
,p_name=>'P17_CONSOLIDADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5969106720783245)
,p_item_default=>'''N'''
,p_prompt=>'Consolidado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_grid_column=>11
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6433177475430926)
,p_name=>'P17_COD_PERSONA_VAR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5969106720783245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11641821120537409)
,p_name=>'P17_AUX_VTRVTVEN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11641724149537408)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14039592718161543)
,p_name=>'P17_COD_EMPRESA_VAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14039117463161539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14039605718161544)
,p_name=>'P17_NOM_EMPRESA_VAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14039117463161539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14039749339161545)
,p_name=>'P17_COD_USUARIO_VAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14039117463161539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14039889402161546)
,p_name=>'P17_COD_SUCURSAL_VAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(14039117463161539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14039915543161547)
,p_name=>'P17_NOM_SUCURSAL_VAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(14039117463161539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14040010327161548)
,p_name=>'P17_COD_MODULO_VAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(14039117463161539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14069131855370401)
,p_name=>'P17_AUX_VER_COSTOS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(14039117463161539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14070071402370410)
,p_name=>'P17_AUX_MSJ'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(14039117463161539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14071238497370422)
,p_name=>'P17_CLAVE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14071138260370421)
,p_prompt=>'Clave'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14073483574370444)
,p_name=>'P17_AUX_COLS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11641724149537408)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14572636140254933)
,p_name=>'P17_AUX_VTRVTVEN_NEW'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14073566243370445)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14595005356343802)
,p_name=>'P17_COD_PERSONA_PAR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(5969106720783245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14596110496343813)
,p_name=>'P17_AUX_REPORTES'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(14039117463161539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42564765113231249)
,p_name=>'P17_AUX_CARGA_REPORTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(14039117463161539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6433454916430929)
,p_name=>'DA_CONSOLIDADO'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6430667702430901)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item(''P17_FEC_INICIAL'').getValue() != '''' && apex.item(''P17_FEC_FINAL'').getValue() != '''''
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14069985349370409)
,p_event_id=>wwv_flow_imp.id(6433454916430929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P17_AUX_CARGA_REPORTE := ''1'';',
'IF TO_DATE(:P17_FEC_FINAL, ''dd/mm/yyyy'') < TO_DATE(:P17_FEC_INICIAL, ''dd/mm/yyyy'') THEN',
'    :P17_AUX_MSJ := ''La fecha final debe ser mayor que la fecha inicial.'';',
'    :P17_AUX_VTRVTVEN := 2;',
'    :P17_AUX_VTRVTVEN_NEW := 2;',
'ELSE',
'    ',
'    :P17_AUX_MSJ := NULL;',
'    IF :P17_CONSOLIDADO = ''N'' THEN',
'        NULL;',
'        :P17_AUX_VTRVTVEN := 2;',
'        :P17_AUX_VTRVTVEN_NEW := 1;',
'    ELSE',
'        :P17_AUX_VTRVTVEN := 1;',
'        :P17_AUX_VTRVTVEN_NEW := 2;',
'    END IF;    ',
'',
'    IF :P17_VER_COSTOS = ''S'' THEN',
'        :P17_AUX_VER_COSTOS := 1;',
'    ELSE',
'        :P17_AUX_VER_COSTOS := 2;',
'    END IF;        ',
'',
'    ',
'',
'    APEX_DEBUG.ERROR(''CONTROL DAMI ''||:P17_CONTROL_DAMI);',
'END IF;',
''))
,p_attribute_02=>'P17_VER_COSTOS,P17_CONSOLIDADO,P17_FEC_FINAL,P17_FEC_FINAL'
,p_attribute_03=>'P17_AUX_CARGA_REPORTE,P17_AUX_VTRVTVEN_NEW,P17_AUX_VER_COSTOS,P17_AUX_MSJ,P17_AUX_VTRVTVEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14070235288370412)
,p_event_id=>wwv_flow_imp.id(6433454916430929)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe seleccionar la fecha de inicio y fin del per\00EDodo.')
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14070196201370411)
,p_event_id=>wwv_flow_imp.id(6433454916430929)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P17_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P17_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14069859862370408)
,p_event_id=>wwv_flow_imp.id(6433454916430929)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11641724149537408)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14040170768161549)
,p_name=>'DA_VER_COSTOS'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14040295991161550)
,p_event_id=>wwv_flow_imp.id(14040170768161549)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P17_COD_USUARIO_VAR NOT IN (''PEDIDO'', ''ESPERANZA'', ''INV'') THEN',
'    :P17_AUX_VER_COSTOS := 2;',
'ELSE',
'    :P17_AUX_VER_COSTOS := 1;',
'END IF;    '))
,p_attribute_02=>'P17_COD_USUARIO_VAR'
,p_attribute_03=>'P17_AUX_VER_COSTOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14069201127370402)
,p_event_id=>wwv_flow_imp.id(14040170768161549)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_VER_COSTOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P17_AUX_VER_COSTOS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14069492767370404)
,p_event_id=>wwv_flow_imp.id(14040170768161549)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_VER_COSTOS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P17_AUX_VER_COSTOS'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14070326391370413)
,p_name=>'DA_HIDE'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14072192516370431)
,p_event_id=>wwv_flow_imp.id(14070326391370413)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14071138260370421)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14071848433370428)
,p_event_id=>wwv_flow_imp.id(14070326391370413)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13900427927572449)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14070476630370414)
,p_event_id=>wwv_flow_imp.id(14070326391370413)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11641724149537408)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14070510193370415)
,p_event_id=>wwv_flow_imp.id(14070326391370413)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14036676916161514)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14572442952254931)
,p_event_id=>wwv_flow_imp.id(14070326391370413)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14073566243370445)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14572550207254932)
,p_event_id=>wwv_flow_imp.id(14070326391370413)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14570606367254913)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14070625085370416)
,p_name=>'DA_SHOW'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_AUX_VTRVTVEN'
,p_condition_element=>'P17_AUX_VTRVTVEN'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14070948268370419)
,p_event_id=>wwv_flow_imp.id(14070625085370416)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11641724149537408)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14573466492254941)
,p_event_id=>wwv_flow_imp.id(14070625085370416)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14036676916161514)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14071010249370420)
,p_event_id=>wwv_flow_imp.id(14070625085370416)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14036676916161514)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14573365641254940)
,p_event_id=>wwv_flow_imp.id(14070625085370416)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11641724149537408)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14070716993370417)
,p_event_id=>wwv_flow_imp.id(14070625085370416)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11641724149537408)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14070876956370418)
,p_event_id=>wwv_flow_imp.id(14070625085370416)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14036676916161514)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14071528002370425)
,p_name=>'DA_VALIDAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14071362600370423)
,p_condition_element=>'P17_CLAVE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14071680349370426)
,p_event_id=>wwv_flow_imp.id(14071528002370425)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P17_COD_PERSONA_VAR := inv.vtrvtped.acceso(P_COD_EMPRESA => :P17_COD_EMPRESA_VAR,',
'                                            P_COD_CLAVE   => :P17_CLAVE);',
'                                            '))
,p_attribute_02=>'P17_COD_EMPRESA_VAR,P17_CLAVE'
,p_attribute_03=>'P17_COD_PERSONA_VAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14071795942370427)
,p_event_id=>wwv_flow_imp.id(14071528002370425)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe ingresar la clave.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14596223958343814)
,p_event_id=>wwv_flow_imp.id(14071528002370425)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P17_AUX_REPORTES := 1;'
,p_attribute_03=>'P17_AUX_REPORTES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14072307196370433)
,p_event_id=>wwv_flow_imp.id(14071528002370425)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13900427927572449)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P17_COD_PERSONA_VAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14596358528343815)
,p_event_id=>wwv_flow_imp.id(14071528002370425)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P17_AUX_REPORTES := 2;'
,p_attribute_03=>'P17_AUX_REPORTES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14072497247370434)
,p_event_id=>wwv_flow_imp.id(14071528002370425)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14071138260370421)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14572702579254934)
,p_name=>'DA_SHOW1'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_AUX_VTRVTVEN_NEW'
,p_condition_element=>'P17_AUX_VTRVTVEN_NEW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14572872219254935)
,p_event_id=>wwv_flow_imp.id(14572702579254934)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14073566243370445)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14573636954254943)
,p_event_id=>wwv_flow_imp.id(14572702579254934)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14570606367254913)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14572933662254936)
,p_event_id=>wwv_flow_imp.id(14572702579254934)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14570606367254913)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14573554841254942)
,p_event_id=>wwv_flow_imp.id(14572702579254934)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14073566243370445)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14573082804254937)
,p_event_id=>wwv_flow_imp.id(14572702579254934)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14073566243370445)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14573199124254938)
,p_event_id=>wwv_flow_imp.id(14572702579254934)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14570606367254913)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14595193223343803)
,p_name=>'DA_COD_PERSONA'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_COD_VENDEDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14595233036343804)
,p_event_id=>wwv_flow_imp.id(14595193223343803)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.cod_persona ',
'  into :P17_COD_PERSONA_PAR',
'  from fv_vendedores v, personas p',
' where v.cod_empresa  = :P17_COD_EMPRESA_VAR',
'   and v.cod_vendedor = :P17_COD_VENDEDOR',
'   and v.cod_persona = p.cod_persona;'))
,p_attribute_02=>'P17_COD_EMPRESA_VAR,P17_COD_VENDEDOR'
,p_attribute_03=>'P17_COD_PERSONA_PAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P17_COD_VENDEDOR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14072231829370432)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR_SESSION'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14039419992161542)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--WHEN NEW FORM INSTANCE',
':P_COD_MODULO := ''VT'';',
'',
'--INICIALIZA GLOBALES',
':P17_COD_USUARIO_VAR := NVL(:P_COD_USUARIO, :APP_USER);',
':P17_COD_EMPRESA_VAR := NVL(:P_COD_EMPRESA, ''1'');',
':P17_NOM_EMPRESA_VAR := NVL(:P_NOM_EMPRESA, NULL);',
':P17_COD_SUCURSAL_VAR := NVL(:P_COD_SUCURSAL, ''01'');',
':P17_NOM_SUCURSAL_VAR := NVL(:P_NOM_SUCURSAL, NULL);',
':P17_COD_MODULO_VAR := :P_COD_MODULO;',
'',
':P17_CONSOLIDADO := ''N'';',
'',
':P17_AUX_CARGA_REPORTE := ''2'';',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
