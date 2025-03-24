prompt --application/pages/page_00168
begin
--   Manifest
--     PAGE: 00168
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
 p_id=>168
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTPEDSEG'
,p_alias=>'VTPEDSEG'
,p_step_title=>'VTPEDSEG'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20221115112242'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37147371858315040)
,p_plug_name=>'PARAMETROS_PARA_REPORTE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37147482112315041)
,p_plug_name=>'VTPEDSEG'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  c.fec_comprobante, c.fec_confirma_pedido, c.cod_sucursal, s.descripcion sucursal, c.tip_comprobante, c.ser_comprobante, c.nro_comprobante,',
'        c.cod_cliente, pc.nombre cliente, c.cod_condicion_venta,',
'        c.cod_moneda, m.descripcion moneda, m.siglas, c.tip_cambio, c.cod_vendedor, pv.nombre vendedor, DERIVADO,',
'        C.RECHAZADO_POR,',
'        tc.descripcion desc_tipo_comprobante, m.decimales,',
'        d.cod_articulo, art.descripcion, art.cod_origen_art,',
'        nvl( d.cantidad_facturada, 0 ) cantidad_facturada,',
'        nvl( d.cantidad, 0 ) cantidad, d.precio_unitario, d.total_iva, d.descuento,',
'        ( nvl( d.cantidad, 0 ) * ( d.monto_total / d.cantidad ) ) monto_total, c.fec_vencimiento, c.comentario, art.cod_art_corto, art.cod_ean',
',        C.FEC_RECHAZADO,',
'        C.FEC_AUTORIZACION,',
'        C.FEC_APRO_RECHA,',
'        C.AUTORIZADO_POR,',
'        C.PR_FMA,',
'        C.SA_FMA,',
'        seg.cod_usuario usuario_seguimiento,seg.fecha fecha_seguimiento,',
'        seg.comentario seguimiento',
'   from vt_pedidos_cabecera c, cc_clientes cc, personas pc, monedas m, fv_vendedores v, personas pv, sucursales s,',
'        tipos_comprobantes tc, vt_pedidos_detalle d, st_articulos art,',
'        VT_SEGUIMIENTO_PEDIDOS seg',
'   where c.cod_empresa = :P168_P_COD_EMPRESA',
'     and ( trunc(nvl(c.fec_confirma_pedido, c.fec_comprobante)) >= TO_DATE(:P168_P_FEC_INICIAL,''DD/MM/YYYY'') or to_date(:P168_P_FEC_INICIAL,''DD/MM/YYYY'') is null )',
'     and ( trunc(nvl(c.fec_confirma_pedido, c.fec_comprobante)) <= to_date(:P168_P_FEC_FINAL,''DD/MM/YYYY'')   or to_date(:P168_P_FEC_FINAL,''DD/MM/YYYY'')   is null )',
'     and ( c.ser_comprobante >= :P168_P_SER_COMPROBANTE_DESDE or :P168_P_SER_COMPROBANTE_DESDE is null )',
'     and ( c.nro_comprobante >= :P168_P_NRO_COMPROBANTE_DESDE or :P168_P_NRO_COMPROBANTE_DESDE is null )',
'     and ( c.ser_comprobante <= :P168_P_SER_COMPROBANTE_HASTA or :P168_P_SER_COMPROBANTE_HASTA is null )',
'     and ( c.nro_comprobante <= :P168_P_NRO_COMPROBANTE_HASTA or :P168_P_NRO_COMPROBANTE_HASTA is null )',
'     --and ( c.ser_comprobante >= :p_ser_comprobante or :p_ser_comprobante is null )',
'     and ( c.cod_vendedor  = :P168_P_COD_VENDEDOR or :P168_P_COD_VENDEDOR is null )',
'     and ( c.cod_sucursal  = :P168_P_COD_SUCURSAL or :P168_P_COD_SUCURSAL is null )',
'     and ( c.cod_cliente   = :P168_P_COD_CLIENTE  or :P168_P_COD_CLIENTE  is null )',
'     and c.cod_empresa     = cc.cod_empresa',
'     --and  (c.ser_comprobante    = :p_ser_comprobante or :p_ser_comprobante  is null )',
'      and c.cod_cliente     = cc.cod_cliente',
'     and cc.cod_persona    = pc.cod_persona',
'     and c.cod_empresa     = tc.cod_empresa',
'     and c.tip_comprobante = tc.tip_comprobante',
'     and ( c.estado        <> ''A'' or c.estado is null )',
'     and c.cod_empresa     = s.cod_empresa',
'     and c.cod_sucursal    = s.cod_sucursal',
'     and c.cod_moneda      = m.cod_moneda',
'     and c.cod_empresa     = v.cod_empresa',
'     and c.cod_vendedor    = v.cod_vendedor',
'     and v.cod_persona     = pv.cod_persona',
'     and c.cod_empresa     = d.cod_empresa',
'     and c.tip_comprobante = d.tip_comprobante',
'     and c.ser_comprobante = d.ser_comprobante',
'     and c.nro_comprobante = d.nro_comprobante',
'     and d.cantidad        > 0',
'     and d.monto_total     > 0',
'     and  seg.comentario is not null',
'     and (c.resultado_canal_verde = :P168_P_CANAL_VERDE or :P168_P_CANAL_VERDE is null )',
'     and d.cod_empresa     = art.cod_empresa',
'     and d.cod_articulo    = art.cod_articulo',
' and c.cod_empresa     = seg.cod_empresa',
'and c.tip_comprobante=seg.tip_comprobante',
'and c.ser_comprobante=seg.ser_comprobante',
' and  c.NRO_COMPROBANTE     = seg.NRO_comprobante',
'   -- order by c.cod_sucursal, c.cod_moneda, c.tip_comprobante, c.ser_comprobante, c.nro_comprobante, d.cod_articulo',
' ',
'   '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P168_P_COD_EMPRESA,P168_P_FEC_INICIAL,P168_P_FEC_FINAL,P168_P_SER_COMPROBANTE_DESDE,P168_P_NRO_COMPROBANTE_DESDE,P168_P_SER_COMPROBANTE_HASTA,P168_P_NRO_COMPROBANTE_HASTA,P168_P_COD_VENDEDOR,P168_P_COD_SUCURSAL,P168_P_COD_CLIENTE,P168_P_CANAL_VERDE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'VTPEDSEG'
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
 p_id=>wwv_flow_imp.id(37147566266315042)
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
,p_internal_uid=>37147566266315042
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37147612732315043)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37147751503315044)
,p_db_column_name=>'FEC_CONFIRMA_PEDIDO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fec Confirma Pedido'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37147808278315045)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37147972361315046)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37148010729315047)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37148167011315048)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37148207922315049)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37148352627315050)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37153708670336701)
,p_db_column_name=>'CLIENTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37153807335336702)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37153995695336703)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37154068399336704)
,p_db_column_name=>'MONEDA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37154162468336705)
,p_db_column_name=>'SIGLAS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Siglas'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37154271325336706)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Tip Cambio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37154329931336707)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37154451979336708)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37154560332336709)
,p_db_column_name=>'DERIVADO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Derivado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37154679575336710)
,p_db_column_name=>'RECHAZADO_POR'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Rechazado Por'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37154704767336711)
,p_db_column_name=>'DESC_TIPO_COMPROBANTE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Desc Tipo Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37154892201336712)
,p_db_column_name=>'DECIMALES'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Decimales'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37154919710336713)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37155071628336714)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37155115753336715)
,p_db_column_name=>'COD_ORIGEN_ART'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Cod Origen Art'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37155268363336716)
,p_db_column_name=>'CANTIDAD_FACTURADA'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Cantidad Facturada'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37155330768336717)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37155461899336718)
,p_db_column_name=>'PRECIO_UNITARIO'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Precio Unitario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37155507735336719)
,p_db_column_name=>'TOTAL_IVA'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Total Iva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37155648286336720)
,p_db_column_name=>'DESCUENTO'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Descuento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37155727292336721)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Monto Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37155880166336722)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Fec Vencimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37155909685336723)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37156026985336724)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37156108828336725)
,p_db_column_name=>'COD_EAN'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Cod Ean'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37156267358336726)
,p_db_column_name=>'FEC_RECHAZADO'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Fec Rechazado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37156302896336727)
,p_db_column_name=>'FEC_AUTORIZACION'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Fec Autorizacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37156428744336728)
,p_db_column_name=>'FEC_APRO_RECHA'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Fec Apro Recha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37156539046336729)
,p_db_column_name=>'AUTORIZADO_POR'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Autorizado Por'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37156687961336730)
,p_db_column_name=>'PR_FMA'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Pr Fma'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37156705757336731)
,p_db_column_name=>'SA_FMA'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Sa Fma'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37156821998336732)
,p_db_column_name=>'USUARIO_SEGUIMIENTO'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Usuario Seguimiento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37156987098336733)
,p_db_column_name=>'FECHA_SEGUIMIENTO'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Fecha Seguimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37157063775336734)
,p_db_column_name=>'SEGUIMIENTO'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Seguimiento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(37214644527517994)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'372147'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FEC_COMPROBANTE:FEC_CONFIRMA_PEDIDO:COD_SUCURSAL:SUCURSAL:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:COD_CLIENTE:CLIENTE:COD_CONDICION_VENTA:COD_MONEDA:MONEDA:SIGLAS:TIP_CAMBIO:COD_VENDEDOR:VENDEDOR:DERIVADO:RECHAZADO_POR:DESC_TIPO_COMPROBANTE:D'
||'ECIMALES:COD_ARTICULO:DESCRIPCION:COD_ORIGEN_ART:CANTIDAD_FACTURADA:CANTIDAD:PRECIO_UNITARIO:TOTAL_IVA:DESCUENTO:MONTO_TOTAL:FEC_VENCIMIENTO:COMENTARIO:COD_ART_CORTO:COD_EAN:FEC_RECHAZADO:FEC_AUTORIZACION:FEC_APRO_RECHA:AUTORIZADO_POR:PR_FMA:SA_FMA:U'
||'SUARIO_SEGUIMIENTO:FECHA_SEGUIMIENTO:SEGUIMIENTO'
,p_sum_columns_on_break=>'TOTAL_IVA:DESCUENTO:PRECIO_UNITARIO:MONTO_TOTAL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37157199016336735)
,p_name=>'P168_P_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37147371858315040)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37157259145336736)
,p_name=>'P168_P_FEC_INICIAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(37147371858315040)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37157319967336737)
,p_name=>'P168_P_FEC_FINAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(37147371858315040)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37157486483336738)
,p_name=>'P168_P_SER_COMPROBANTE_DESDE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(37147371858315040)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37157507286336739)
,p_name=>'P168_P_SER_COMPROBANTE_HASTA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(37147371858315040)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37157701534336741)
,p_name=>'P168_P_NRO_COMPROBANTE_HASTA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(37147371858315040)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37157853571336742)
,p_name=>'P168_P_NRO_COMPROBANTE_DESDE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(37147371858315040)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37157924991336743)
,p_name=>'P168_P_COD_VENDEDOR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(37147371858315040)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37158058484336744)
,p_name=>'P168_P_COD_SUCURSAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(37147371858315040)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37158199624336745)
,p_name=>'P168_P_COD_CLIENTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(37147371858315040)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37158256322336746)
,p_name=>'P168_P_CANAL_VERDE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(37147371858315040)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37158316582336747)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  c001 cod_empresa,',
'        c002 cod_sucursal,',
'        c003 cod_cliente,       ',
'        c005 canal_verde,      ',
'        c006 cod_vendedor,',
'        c007 SER_COMPROBANTE_DESDE,',
'        c008 SER_COMPROBANTE_HASTA,',
'        c009 FEC_INICIAL,',
'        C010 FEC_FINAL,',
'        C011 NRO_COMPROBANTE_DESDE,',
'        C012 NRO_COMPROBANTE_HASTA',
'',
'        into',
'        :P168_P_COD_EMPRESA,',
'        :P168_P_COD_SUCURSAL,',
'        :P168_P_COD_CLIENTE,',
'        :P168_P_CANAL_VERDE,',
'        :P168_P_COD_VENDEDOR,',
'        :P168_P_SER_COMPROBANTE_DESDE,',
'        :P168_P_SER_COMPROBANTE_HASTA,',
'        :P168_P_FEC_INICIAL,',
'        :P168_P_FEC_FINAL,',
'        :P168_P_NRO_COMPROBANTE_DESDE,',
'        :P168_P_NRO_COMPROBANTE_HASTA  ',
'        ',
'        ',
'       from apex_collections',
'       where collection_name = ''PARAMETROS_VTPEDSEG'' ',
'        and seq_id = 1;  '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
