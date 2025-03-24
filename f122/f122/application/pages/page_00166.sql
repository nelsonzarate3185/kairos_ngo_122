prompt --application/pages/page_00166
begin
--   Manifest
--     PAGE: 00166
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
 p_id=>166
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTRPEAUT'
,p_alias=>'VTRPEAUT'
,p_step_title=>'VTRPEAUT'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230204103204'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34258176665843125)
,p_plug_name=>'VTRPEAUT'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_display_column=>4
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34258225911843126)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77364877333224633)
,p_plug_name=>'REPORTE VTPEDAUT'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.fec_comprobante,',
'         c.fec_confirma_pedido,',
'       c.cod_sucursal,',
'       s.descripcion sucursal,',
'       c.tip_comprobante,',
'       c.ser_comprobante,',
'       c.nro_comprobante,',
'       c.cod_cliente,',
'       pc.nombre cliente,',
'       c.cod_condicion_venta,',
'       c.cod_moneda,',
'       m.descripcion moneda,',
'       m.siglas,',
'       c.tip_cambio,',
'       c.cod_vendedor,',
'       pv.nombre vendedor,',
'       DERIVADO,',
'       C.RECHAZADO_POR,',
'       tc.descripcion desc_tipo_comprobante,',
'       m.decimales,',
'       d.cod_articulo,',
'       art.descripcion,',
'       art.cod_origen_art,',
'       nvl(d.cantidad_facturada, 0) cantidad_facturada,',
'       nvl(d.cantidad, 0) cantidad,',
'       d.precio_unitario,',
'       d.total_iva,',
'       d.descuento,',
'       (nvl(d.cantidad, 0) * ((d.monto_total + d.total_iva) / d.cantidad)) *',
'       c.tip_cambio monto_total,',
'       c.fec_vencimiento,',
'       c.comentario,',
'       art.cod_art_corto,',
'       art.cod_ean,',
'       C.FEC_RECHAZADO,',
'       C.FEC_AUTORIZACION,',
'       C.FEC_APRO_RECHA,',
'       C.AUTORIZADO_POR,',
'       C.PR_FMA,',
'       C.SA_FMA,',
'       ',
'       (select c2.comentario',
'          from VT_SEGUIMIENTO_PEDIDOS c2',
'         where c2.cod_empresa = c.cod_empresa',
'           and c2.tip_comprobante = c.tip_comprobante',
'           and c2.ser_comprobante = c.ser_comprobante',
'           and c2.NRO_COMPROBANTE = c.NRO_comprobante',
'           and c2.fecha in',
'               (select max(c1.fecha)',
'                  from VT_SEGUIMIENTO_PEDIDOS c1',
'                 where c1.cod_empresa = c.cod_empresa',
'                   and c1.tip_comprobante = c.tip_comprobante',
'                   and c1.ser_comprobante = c.ser_comprobante',
'                   and c1.NRO_COMPROBANTE = c.NRO_comprobante',
'                   )',
' and rownum= 1) ultimo_comentario',
'',
'  from vt_pedidos_cabecera c,',
'       cc_clientes         cc,',
'       personas            pc,',
'       monedas             m,',
'       fv_vendedores       v,',
'       personas            pv,',
'       sucursales          s,',
'       tipos_comprobantes  tc,',
'       vt_pedidos_detalle  d,',
'       st_articulos        art',
' where :P166_AUX_CONTROL_REPORTE IS NOT NULL',
'    AND c.cod_empresa = :P166_COD_EMPRESA',
'   and c.ind_tipo_pedido = ''PE'' /*Se excluyen los PRE-PEDIDOS*/',
'   and (trunc(nvl(c.fec_confirma_pedido, c.fec_comprobante)) >= :P166_FEC_INICIAL or :P166_FEC_INICIAL is null)',
'   and (trunc(nvl(c.fec_confirma_pedido, c.fec_comprobante)) <= :P166_FEC_FINAL or :P166_FEC_FINAL is null)',
' and (c.ser_comprobante >= :P166_SER_COMPROBANTE_DESDE or :P166_SER_COMPROBANTE_DESDE is null)',
'   and (c.nro_comprobante >= :P166_NRO_COMPROBANTE_DESDE or :P166_NRO_COMPROBANTE_DESDE is null)',
'   and (c.ser_comprobante <= :P166_SER_COMPROBANTE_HASTA or :P166_SER_COMPROBANTE_HASTA is null)',
'   and (c.nro_comprobante <= :P166_NRO_COMPROBANTE_HASTA or :P166_NRO_COMPROBANTE_HASTA is null)',
' --  and (c.ser_comprobante >= :P166_SER_COMPROBANTE or :P166_SER_COMPROBANTE is null)',
'   and (c.cod_vendedor = :P166_COD_VENDEDOR or :P166_COD_VENDEDOR is null)',
'   and (c.cod_sucursal = :P166_COD_SUCURSAL or :P166_COD_SUCURSAL is null)',
'   and (c.cod_cliente = :P166_COD_CLIENTE or :P166_COD_CLIENTE is null)',
'  and c.cod_empresa = cc.cod_empresa',
'  -- and (c.ser_comprobante = :P166_SER_COMPROBANTE or :P166_SER_COMPROBANTE is null)',
'   and c.cod_cliente = cc.cod_cliente',
'   and cc.cod_persona = pc.cod_persona',
'   and c.cod_empresa = tc.cod_empresa',
'   and c.tip_comprobante = tc.tip_comprobante',
'   and (c.estado <> ''A'' or c.estado is null)',
'   and c.cod_empresa = s.cod_empresa',
'   and c.cod_sucursal = s.cod_sucursal',
'   and c.cod_moneda = m.cod_moneda',
'   and c.cod_empresa = v.cod_empresa',
'   and c.cod_vendedor = v.cod_vendedor',
'   and v.cod_persona = pv.cod_persona',
'   and c.cod_empresa = d.cod_empresa',
'   and c.tip_comprobante = d.tip_comprobante',
'   and c.ser_comprobante = d.ser_comprobante',
'   and c.nro_comprobante = d.nro_comprobante',
'   and d.cantidad > 0',
'   and d.monto_total > 0',
'   and d.cod_empresa = art.cod_empresa',
'   and d.cod_articulo = art.cod_articulo',
'   and (c.resultado_canal_verde = :P166_V_CANAL_VERDE or :P166_V_CANAL_VERDE is null)',
'  ',
'   and (:P166_ESTADO IS NULL ',
'       OR ((NVL(:P166_ESTADO, ''NN'') = ''AP'' AND',
'            NVL(C.ORDEN_AUTORIZADA, ''N'') <> ''S'' AND',
'            NVL(C.DERIVADO, ''NN'') <> ''AN'' AND NVL(RECHAZAR, ''N'') <> ''S'') ',
'            OR (NVL(:P166_ESTADO, ''NN'') = ''PA'' AND',
'            (NVL(C.ESTADO, ''P'') = ''A'' or NVL(C.DERIVADO, ''NN'') = ''AN''))',
'            OR (NVL(:P166_ESTADO, ''NN'') = ''PR'' AND NVL(RECHAZAR, ''N'') = ''S'') ',
'            OR (NVL(:P166_ESTADO, ''NN'') = ''AU'' AND NVL(C.AUTORIZADO, ''N'') = ''S'') ',
'            OR (NVL(:P166_ESTADO, ''NN'') = ''AF'' AND NVL(C.ESTADO, ''P'') = ''F'' AND',
'            NVL(C.ORDEN_AUTORIZADA, ''N'') = ''S'' AND',
'            NVL(C.DERIVADO, ''NN'') <> ''AN'' AND NVL(RECHAZAR, ''N'') <> ''S'') ',
'            OR (NVL(:P166_ESTADO, ''NN'') = ''PF'' AND NVL(C.ESTADO, ''P'') = ''P'' AND',
'            NVL(C.ORDEN_AUTORIZADA, ''N'') = ''S'' AND',
'            NVL(C.DERIVADO, ''NN'') <> ''AN'' AND NVL(RECHAZAR, ''N'') <> ''S'')',
'       ',
'       ))',
'-- order by c.cod_sucursal, c.cod_moneda, c.tip_comprobante, c.ser_comprobante, c.nro_comprobante, d.cod_articulo',
' order by fec_comprobante',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P168_COD_EMPRESA,P168_FEC_INICIAL,P168_FEC_FINAL,P168_SER_COMPROBANTE_DESDE,P168_NRO_COMPROBANTE_DESDE,P168_SER_COMPROBANTE_HASTA,P168_NRO_COMPROBANTE_HASTA,P168_COD_VENDEDOR,P168_COD_SUCURSAL,P168_COD_CLIENTE, P168_V_CANAL_VERDE,P166_AUX_CONTROL_REP'
||'ORTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE VTPEDAUT'
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
 p_id=>wwv_flow_imp.id(77365017866224634)
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
,p_internal_uid=>77365017866224634
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41960200050914108)
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
 p_id=>wwv_flow_imp.id(41960652994914109)
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
 p_id=>wwv_flow_imp.id(41961025163914109)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41961425596914109)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41961885752914110)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41962270066914110)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41962632976914110)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41963054594914110)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41963469472914111)
,p_db_column_name=>'CLIENTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41963819837914111)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41964263973914111)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41964665034914111)
,p_db_column_name=>'MONEDA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41965064563914112)
,p_db_column_name=>'SIGLAS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Siglas'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41965460860914112)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Tip Cambio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41965888801914113)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41966210286914113)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41966659644914113)
,p_db_column_name=>'DERIVADO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Derivado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41967062284914113)
,p_db_column_name=>'RECHAZADO_POR'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Rechazado Por'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41967420616914114)
,p_db_column_name=>'DESC_TIPO_COMPROBANTE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Desc Tipo Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41967809355914114)
,p_db_column_name=>'DECIMALES'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Decimales'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41968244292914114)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41968680154914114)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41969080758914115)
,p_db_column_name=>'COD_ORIGEN_ART'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Cod Origen Art'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41969487240914115)
,p_db_column_name=>'CANTIDAD_FACTURADA'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Cantidad Facturada'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41969858730914115)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41970203685914115)
,p_db_column_name=>'PRECIO_UNITARIO'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Precio Unitario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41970636873914116)
,p_db_column_name=>'TOTAL_IVA'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Total Iva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41971017237914116)
,p_db_column_name=>'DESCUENTO'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Descuento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41971444038914116)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Monto Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41971862380914116)
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
 p_id=>wwv_flow_imp.id(41972216390914117)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41972603697914117)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41973026728914117)
,p_db_column_name=>'COD_EAN'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Cod Ean'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41973456745914117)
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
 p_id=>wwv_flow_imp.id(41973844335914118)
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
 p_id=>wwv_flow_imp.id(41974229528914118)
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
 p_id=>wwv_flow_imp.id(41974644390914118)
,p_db_column_name=>'AUTORIZADO_POR'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Autorizado Por'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41975076543914118)
,p_db_column_name=>'PR_FMA'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Pr Fma'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41975438511914119)
,p_db_column_name=>'SA_FMA'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Sa Fma'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41975831270914119)
,p_db_column_name=>'ULTIMO_COMENTARIO'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Ultimo Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(78173352333188613)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'362135'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'FEC_COMPROBANTE:FEC_CONFIRMA_PEDIDO:COD_SUCURSAL:SUCURSAL:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:COD_CLIENTE:CLIENTE:COD_CONDICION_VENTA:COD_MONEDA:MONEDA:SIGLAS:TIP_CAMBIO:COD_VENDEDOR:VENDEDOR:DERIVADO:RECHAZADO_POR:DESC_TIPO_COMPROBANTE:D'
||'ECIMALES:COD_ARTICULO:DESCRIPCION:COD_ORIGEN_ART:CANTIDAD_FACTURADA:CANTIDAD:PRECIO_UNITARIO:TOTAL_IVA:DESCUENTO:MONTO_TOTAL:FEC_VENCIMIENTO:COMENTARIO:COD_ART_CORTO:COD_EAN:FEC_RECHAZADO:FEC_AUTORIZACION:FEC_APRO_RECHA:AUTORIZADO_POR:PR_FMA:SA_FMA:U'
||'LTIMO_COMENTARIO'
,p_sort_column_1=>'NRO_COMPROBANTE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78401885712415171)
,p_plug_name=>'CABECERA VTPEDAUTRES'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FEC_COMPROBANTE,',
'       CANTIDAD_PEDIDOS,',
'       AUTORIZADO_SISTEMA,',
'       AUTORIZADO_MANUAL,',
'       IMPORTE_AUTORIZADO_SISTEMA,',
'       IMPORTE_AUTORIZADO_MANUAL,',
'        round(AUTORIZADO_SISTEMA * 100 / CANTIDAD_PEDIDOS, 2) porcentaje_canal_verde,',
'       0 decimales',
'  from (select nvl(c.fec_confirma_pedido, c.fec_comprobante) fec_comprobante,',
'               count(distinct(c.ser_comprobante || c.nro_comprobante)) cantidad_pediDOS,',
'               sum(case',
'                     when c.autorizado_por = ''CANAL_VERDE'' THEN',
'                      1',
'                     ELSE',
'                      0',
'                   END) autorizado_sistema,',
'               sum(case',
'                     when c.autorizado_por <> ''CANAL_VERDE'' THEN',
'                      1',
'                     ELSE',
'                      0',
'                   END) autorizado_manual,',
'               ',
'               sum(case',
'                     when c.autorizado_por = ''CANAL_VERDE'' THEN',
'                      (select round(sum(d.monto_total * c.tip_cambio))',
'                         from vt_pedidos_detalle d',
'                        where c.cod_empresa     = d.cod_empresa',
'                          and c.tip_comprobante = d.tip_comprobante',
'                          and c.ser_comprobante = d.ser_comprobante',
'                          and c.nro_comprobante = d.nro_comprobante)',
'                     else',
'                      0',
'                   end) importe_autorizado_sistema,',
'               sum(case',
'                     when c.autorizado_por <> ''CANAL_VERDE'' THEN',
'                      (select round(sum(d.monto_total * c.tip_cambio))',
'                         from vt_pedidos_detalle d',
'                        where c.cod_empresa     = d.cod_empresa',
'                          and c.tip_comprobante = d.tip_comprobante',
'                          and c.ser_comprobante = d.ser_comprobante',
'                          and c.nro_comprobante = d.nro_comprobante)',
'                     else',
'                      0',
'                   end) importe_autorizado_manual',
'        ',
'          from vt_pedidos_cabecera c,',
'               cc_clientes         cc,',
'               personas            pc,',
'               monedas             m,',
'               fv_vendedores       v,',
'               personas            pv,',
'               sucursales          s,',
'               tipos_comprobantes  tc',
'           where :P166_AUX_CONTROL_REPORTE IS NOT NULL',
'           AND c.cod_empresa = :P166_COD_EMPRESA',
'           and c.ind_tipo_pedido = ''PE'' --Se excluyen los PRE PEDIDOS',
'           and (trunc(nvl(c.fec_confirma_pedido, c.fec_comprobante)) >= :P166_FEC_INICIAL or :P166_FEC_INICIAL is null)',
'           and (trunc(nvl(c.fec_confirma_pedido, c.fec_comprobante)) <= :P166_FEC_FINAL or :P166_FEC_FINAL is null)',
'           and (c.ser_comprobante >= :P166_SER_COMPROBANTE_DESDE or :P166_SER_COMPROBANTE_DESDE is null)',
'           and (c.nro_comprobante >= :P166_NRO_COMPROBANTE_DESDE or :P166_NRO_COMPROBANTE_DESDE is null)',
'           and (c.ser_comprobante <= :P166_SER_COMPROBANTE_HASTA or :P166_SER_COMPROBANTE_HASTA is null)',
'           and (c.nro_comprobante <= :P166_NRO_COMPROBANTE_HASTA or :P166_NRO_COMPROBANTE_HASTA is null)',
'           --and (c.ser_comprobante >= :p_ser_comprobante  or :p_ser_comprobante  is null)',
'           and (c.cod_vendedor = :P166_COD_VENDEDOR or :P166_COD_VENDEDOR is null)',
'           and (c.cod_sucursal = :P166_COD_SUCURSAL or :P166_COD_SUCURSAL is null)',
'           and (c.cod_cliente = :P166_COD_CLIENTE or :P166_COD_CLIENTE is null)',
'           and c.cod_empresa = cc.cod_empresa',
'           --and (c.ser_comprobante = :p_ser_comprobante or :p_ser_comprobante is null)',
'           and c.cod_cliente = cc.cod_cliente',
'           and cc.cod_persona = pc.cod_persona',
'           and c.cod_empresa = tc.cod_empresa',
'           and c.tip_comprobante = tc.tip_comprobante',
'           and (c.estado <> ''A'' or c.estado is null)',
'           and c.cod_empresa = s.cod_empresa',
'           and c.cod_sucursal = s.cod_sucursal',
'           and c.cod_moneda = m.cod_moneda',
'           and c.cod_empresa = v.cod_empresa',
'           and c.cod_vendedor = v.cod_vendedor',
'           and v.cod_persona = pv.cod_persona     ',
'        /* and (nvl(c.autorizado_por,''x'') =  ',
'        decode (:P_CANAL_VERDE,''1'', ''CANAL_VERDE'', C.AUTORIZADO_POR))*/',
'   ',
'         group by nvl(c.fec_confirma_pedido, c.fec_comprobante))',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P168_COD_EMPRESA, P168_FEC_INICIAL, P168_FEC_FINAL, P168_SER_COMPROBANTE_DESDE, P168_NRO_COMPROBANTE_DESDE, P168_SER_COMPROBANTE_HASTA, P168_NRO_COMPROBANTE_HASTA, P168_COD_VENDEDOR, P168_COD_SUCURSAL, P168_COD_CLIENTE, P168_V_CANAL_VERDE,P166_AUX_CO'
||'NTROL_REPORTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CABECERA'
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
 p_id=>wwv_flow_imp.id(78402280110415175)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>78402280110415175
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42033113907092366)
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
 p_id=>wwv_flow_imp.id(42033561355092367)
,p_db_column_name=>'CANTIDAD_PEDIDOS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cantidad Pedidos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42033932764092367)
,p_db_column_name=>'AUTORIZADO_SISTEMA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Autorizado Sistema'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42034362904092368)
,p_db_column_name=>'AUTORIZADO_MANUAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Autorizado Manual'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42034757893092368)
,p_db_column_name=>'IMPORTE_AUTORIZADO_SISTEMA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Importe Autorizado Sistema'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42035160983092369)
,p_db_column_name=>'IMPORTE_AUTORIZADO_MANUAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Importe Autorizado Manual'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42035533067092369)
,p_db_column_name=>'PORCENTAJE_CANAL_VERDE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Porcentaje Canal Verde'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42035994433092370)
,p_db_column_name=>'DECIMALES'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Decimales'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(78477018495067564)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'364442'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FEC_COMPROBANTE:CANTIDAD_PEDIDOS:AUTORIZADO_SISTEMA:AUTORIZADO_MANUAL:IMPORTE_AUTORIZADO_SISTEMA:IMPORTE_AUTORIZADO_MANUAL:PORCENTAJE_CANAL_VERDE:DECIMALES'
,p_sum_columns_on_break=>'CANTIDAD_PEDIDOS:AUTORIZADO_SISTEMA:AUTORIZADO_MANUAL:IMPORTE_AUTORIZADO_SISTEMA:IMPORTE_AUTORIZADO_MANUAL:PORCENTAJE_CANAL_VERDE:DECIMALES'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78405798468416445)
,p_plug_name=>'DETALLE VTPEDAUTRES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select fec_comprobante fec_detalle,',
'       fec_confirma_pedido,',
'       ser_comprobante,',
'       nro_comprobante,',
'       cod_cliente,',
'       nom_cliente,',
'       vendedor,',
'       monto,',
'       autorizado_por',
'  from (select c.fec_comprobante,',
'              c.fec_confirma_pedido, ',
'              c.ser_comprobante,',
'               c.nro_comprobante,',
'               c.cod_cliente,',
'               c.nom_cliente,',
'               (select round(sum(d.monto_total * c.tip_cambio))',
'                  from vt_pedidos_detalle d',
'                 where c.cod_empresa = d.cod_empresa',
'                   and c.tip_comprobante = d.tip_comprobante',
'                   and c.ser_comprobante = d.ser_comprobante',
'                   and c.nro_comprobante = d.nro_comprobante) monto,',
'               c.autorizado_por,',
'               pv.nombre vendedor',
'        ',
'          from vt_pedidos_cabecera c,',
'               cc_clientes         cc,',
'               personas            pc,',
'               monedas             m,',
'               fv_vendedores       v,',
'               personas            pv,',
'               sucursales          s,',
'               tipos_comprobantes  tc',
'         where :P166_AUX_CONTROL_REPORTE IS NOT NULL',
'         AND c.cod_empresa = :P166_COD_EMPRESA',
'           and c.ind_tipo_pedido = ''PE'' /*Se excluyen los PRE PEDIDOS*/',
'           and (trunc(nvl(c.fec_confirma_pedido, c.fec_comprobante)) >= :P166_FEC_INICIAL or :P166_FEC_INICIAL is null)',
'           and (trunc(nvl(c.fec_confirma_pedido, c.fec_comprobante)) <= :P166_FEC_FINAL or :P166_FEC_FINAL is null)',
'           and (c.ser_comprobante >= :P166_SER_COMPROBANTE_DESDE or :P166_SER_COMPROBANTE_DESDE is null)',
'           and (c.nro_comprobante >= :P166_NRO_COMPROBANTE_DESDE or :P166_NRO_COMPROBANTE_DESDE is null)',
'           and (c.ser_comprobante <= :P166_SER_COMPROBANTE_HASTA or :P166_SER_COMPROBANTE_HASTA is null)',
'           and (c.nro_comprobante <= :P166_NRO_COMPROBANTE_HASTA or :P166_NRO_COMPROBANTE_HASTA is null)',
'           --and (c.ser_comprobante >= :p_ser_comprobante or :p_ser_comprobante is null)',
'           and (c.cod_vendedor = :P166_COD_VENDEDOR or :P166_COD_VENDEDOR is null)',
'           and (c.cod_sucursal = :P166_COD_SUCURSAL or :P166_COD_SUCURSAL is null)',
'           and (c.cod_cliente = :P166_COD_CLIENTE or :P166_COD_CLIENTE is null)',
'           and c.cod_empresa = cc.cod_empresa',
'         --  and (c.ser_comprobante = :p_ser_comprobante or :p_ser_comprobante is null)',
'           and c.cod_cliente = cc.cod_cliente',
'           and cc.cod_persona = pc.cod_persona',
'           and c.cod_empresa = tc.cod_empresa',
'           and c.tip_comprobante = tc.tip_comprobante',
'           and (c.estado <> ''A'' or c.estado is null)',
'           and c.cod_empresa = s.cod_empresa',
'           and c.cod_sucursal = s.cod_sucursal',
'           and c.cod_moneda = m.cod_moneda',
'           and c.cod_empresa = v.cod_empresa',
'           and c.cod_vendedor = v.cod_vendedor',
'           and v.cod_persona = pv.cod_persona',
'           and (nvl(c.autorizado_por, ''x'') =',
'               decode(:P166_V_CANAL_VERDE, ''1'', ''CANAL_VERDE'', C.AUTORIZADO_POR))',
'        ',
'        )',
' order by 1'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P168_COD_EMPRESA, P168_FEC_INICIAL, P168_FEC_FINAL, P168_SER_COMPROBANTE_DESDE, P168_NRO_COMPROBANTE_DESDE, P168_SER_COMPROBANTE_HASTA, P168_NRO_COMPROBANTE_HASTA, P168_COD_VENDEDOR, P168_COD_SUCURSAL, P168_COD_CLIENTE, P168_V_CANAL_VERDE,P166_AUX_CO'
||'NTROL_REPORTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'20'
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
 p_id=>wwv_flow_imp.id(78407606390416464)
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
,p_internal_uid=>78407606390416464
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42036989627093638)
,p_db_column_name=>'FEC_DETALLE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Fec Detalle'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42037336529093639)
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
 p_id=>wwv_flow_imp.id(42037747508093639)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42038187688093639)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42038591074093640)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42038964398093640)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nom Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42039315747093640)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42039759013093640)
,p_db_column_name=>'MONTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42040179464093641)
,p_db_column_name=>'AUTORIZADO_POR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Autorizado Por'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(79158218426248837)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'371217'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FEC_DETALLE:FEC_CONFIRMA_PEDIDO:SER_COMPROBANTE:NRO_COMPROBANTE:COD_CLIENTE:NOM_CLIENTE:VENDEDOR:MONTO:AUTORIZADO_POR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79193703852459585)
,p_plug_name=>'REPORTE VTPEDSEG'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>70
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
'   where c.cod_empresa = :P166_COD_EMPRESA',
'     and ( trunc(nvl(c.fec_confirma_pedido, c.fec_comprobante)) >= TO_DATE(:P166_FEC_INICIAL,''DD/MM/YYYY'') or to_date(:P166_FEC_INICIAL,''DD/MM/YYYY'') is null )',
'     and ( trunc(nvl(c.fec_confirma_pedido, c.fec_comprobante)) <= to_date(:P166_FEC_FINAL,''DD/MM/YYYY'')   or to_date(:P166_FEC_FINAL,''DD/MM/YYYY'')   is null )',
'     and ( c.ser_comprobante >= :P166_SER_COMPROBANTE_DESDE or :P166_SER_COMPROBANTE_DESDE is null )',
'     and ( c.nro_comprobante >= :P166_NRO_COMPROBANTE_DESDE or :P166_NRO_COMPROBANTE_DESDE is null )',
'     and ( c.ser_comprobante <= :P166_SER_COMPROBANTE_HASTA or :P166_SER_COMPROBANTE_HASTA is null )',
'     and ( c.nro_comprobante <= :P166_NRO_COMPROBANTE_HASTA or :P166_NRO_COMPROBANTE_HASTA is null )',
'     --and ( c.ser_comprobante >= :p_ser_comprobante or :p_ser_comprobante is null )',
'     and ( c.cod_vendedor  = :P166_COD_VENDEDOR or :P166_COD_VENDEDOR is null )',
'     and ( c.cod_sucursal  = :P166_COD_SUCURSAL or :P166_COD_SUCURSAL is null )',
'     and ( c.cod_cliente   = :P166_COD_CLIENTE  or :P166_COD_CLIENTE  is null )',
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
'     and (c.resultado_canal_verde = :P166_V_CANAL_VERDE or :P166_V_CANAL_VERDE is null )',
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
,p_ajax_items_to_submit=>'P168_COD_EMPRESA, P168_FEC_INICIAL, P168_FEC_FINAL, P168_SER_COMPROBANTE_DESDE, P168_NRO_COMPROBANTE_DESDE, P168_SER_COMPROBANTE_HASTA, P168_NRO_COMPROBANTE_HASTA, P168_COD_VENDEDOR, P168_COD_SUCURSAL, P168_COD_CLIENTE, P168_V_CANAL_VERDE'
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
 p_id=>wwv_flow_imp.id(79193788006459586)
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
,p_internal_uid=>79193788006459586
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42046533236144545)
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
 p_id=>wwv_flow_imp.id(42046970478144545)
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
 p_id=>wwv_flow_imp.id(42047323108144545)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42047788199144546)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42048193807144546)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42048510969144546)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42048969068144546)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42049331596144547)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42049744770144547)
,p_db_column_name=>'CLIENTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42050112052144547)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42050575713144547)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42050956322144547)
,p_db_column_name=>'MONEDA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42051310913144548)
,p_db_column_name=>'SIGLAS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Siglas'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42051791847144548)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Tip Cambio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42052194792144548)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42052507054144548)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42052988405144549)
,p_db_column_name=>'DERIVADO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Derivado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42053310323144549)
,p_db_column_name=>'RECHAZADO_POR'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Rechazado Por'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42053707155144549)
,p_db_column_name=>'DESC_TIPO_COMPROBANTE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Desc Tipo Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42054106942144549)
,p_db_column_name=>'DECIMALES'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Decimales'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42054505400144549)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42054998693144550)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42055377405144550)
,p_db_column_name=>'COD_ORIGEN_ART'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Cod Origen Art'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42055788330144550)
,p_db_column_name=>'CANTIDAD_FACTURADA'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Cantidad Facturada'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42056138245144550)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42056505377144550)
,p_db_column_name=>'PRECIO_UNITARIO'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Precio Unitario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42056974541144551)
,p_db_column_name=>'TOTAL_IVA'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Total Iva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42057369561144551)
,p_db_column_name=>'DESCUENTO'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Descuento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42057736126144551)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Monto Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42058104559144551)
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
 p_id=>wwv_flow_imp.id(42058589012144551)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42058917935144552)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42059306649144552)
,p_db_column_name=>'COD_EAN'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Cod Ean'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42059733896144552)
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
 p_id=>wwv_flow_imp.id(42060185878144552)
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
 p_id=>wwv_flow_imp.id(42060556664144553)
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
 p_id=>wwv_flow_imp.id(42060989523144553)
,p_db_column_name=>'AUTORIZADO_POR'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Autorizado Por'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42061388871144553)
,p_db_column_name=>'PR_FMA'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Pr Fma'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42061760676144553)
,p_db_column_name=>'SA_FMA'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Sa Fma'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42062143824144554)
,p_db_column_name=>'USUARIO_SEGUIMIENTO'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Usuario Seguimiento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42062597661144554)
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
 p_id=>wwv_flow_imp.id(42062983667144554)
,p_db_column_name=>'SEGUIMIENTO'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Seguimiento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(79260866267662538)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'372147'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'FEC_COMPROBANTE:FEC_CONFIRMA_PEDIDO:COD_SUCURSAL:SUCURSAL:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:COD_CLIENTE:CLIENTE:COD_CONDICION_VENTA:COD_MONEDA:MONEDA:SIGLAS:TIP_CAMBIO:COD_VENDEDOR:VENDEDOR:DERIVADO:RECHAZADO_POR:DESC_TIPO_COMPROBANTE:D'
||'ECIMALES:COD_ARTICULO:DESCRIPCION:COD_ORIGEN_ART:CANTIDAD_FACTURADA:CANTIDAD:PRECIO_UNITARIO:TOTAL_IVA:DESCUENTO:MONTO_TOTAL:FEC_VENCIMIENTO:COMENTARIO:COD_ART_CORTO:COD_EAN:FEC_RECHAZADO:FEC_AUTORIZACION:FEC_APRO_RECHA:AUTORIZADO_POR:PR_FMA:SA_FMA:U'
||'SUARIO_SEGUIMIENTO:FECHA_SEGUIMIENTO:SEGUIMIENTO'
,p_sort_column_1=>'NRO_COMPROBANTE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_sum_columns_on_break=>'TOTAL_IVA:DESCUENTO:PRECIO_UNITARIO:MONTO_TOTAL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34260446653843148)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(34258176665843125)
,p_button_name=>'Ejecutar_REPORTE_VTPEDAUT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36370316339322820)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_imp.id(34258176665843125)
,p_button_name=>'Ejecutar_REPORTE_VTPEDAUTRES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36372295804322839)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_imp.id(34258176665843125)
,p_button_name=>'Ejecutar_REPORTE_VTPEDSEG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34258348893843127)
,p_name=>'P166_COD_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(34258225911843126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34258416310843128)
,p_name=>'P166_COD_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(34258225911843126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34258516792843129)
,p_name=>'P166_NOM_EMPRESA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(34258225911843126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34258627964843130)
,p_name=>'P166_COD_MODULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(34258225911843126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34258719394843131)
,p_name=>'P166_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(34258176665843125)
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
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
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
 p_id=>wwv_flow_imp.id(34258808290843132)
,p_name=>'P166_NOM_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(34258176665843125)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34259175581843135)
,p_name=>'P166_SER_COMPROBANTE_DESDE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(34258176665843125)
,p_prompt=>'Serie Comprobante Desde'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34259258201843136)
,p_name=>'P166_NRO_COMPROBANTE_DESDE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(34258176665843125)
,p_prompt=>'NRO COMPROBANTE DESDE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34259327309843137)
,p_name=>'P166_SER_COMPROBANTE_HASTA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(34258176665843125)
,p_prompt=>'Serie Comprobante Hasta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34259490964843138)
,p_name=>'P166_NRO_COMPROBANTE_HASTA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(34258176665843125)
,p_prompt=>'NRO COMPROBANTE HASTA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34259550693843139)
,p_name=>'P166_FEC_INICIAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(34258176665843125)
,p_prompt=>'Fecha Inicial'
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
 p_id=>wwv_flow_imp.id(34259693105843140)
,p_name=>'P166_FEC_FINAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(34258176665843125)
,p_prompt=>'Fecha Final'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(34259737021843141)
,p_name=>'P166_NOM_CLIENTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(34258176665843125)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34259875567843142)
,p_name=>'P166_COD_CLIENTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(34258176665843125)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_VTRPEAUT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_cliente, ',
'    nvl( nomb_fantasia, nombre ) nombre ',
'from cc_clientes, ',
'    personas ',
'where cc_clientes.cod_cliente = personas.cod_persona ',
'--order by nombre',
'order by cod_cliente;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
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
 p_id=>wwv_flow_imp.id(34259962705843143)
,p_name=>'P166_COD_VENDEDOR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(34258176665843125)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDORES_VTRPEAUT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre, cod_vendedor ',
'from fv_vendedores v, personas p ',
'where v.cod_empresa = :P_COD_EMPRESA',
'and v.cod_persona = p.cod_persona ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
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
 p_id=>wwv_flow_imp.id(34260010526843144)
,p_name=>'P166_NOM_VENDEDOR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(34258176665843125)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34260183338843145)
,p_name=>'P166_USUARIO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(34258176665843125)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34260220245843146)
,p_name=>'P166_ESTADO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(34258176665843125)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:AUTORIZACION PENDIENTE;AP,AUTORIZACIONES FACTURADAS;AF,AUTORIZADOS PARA FACTURAR;PF,PEDIDOS RECHAZADOS;PR,PEDIDOS ANULADOS;PA,SEGUIMIENTO EN PEDIDO;SP,PEDIDOS AUTORIZADOS;AU,RESUMEN AUTORIZADOS;RES'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34260312431843147)
,p_name=>'P166_CANAL_VERDE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(34258176665843125)
,p_prompt=>'Solo Autorizados Canal Verde'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
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
 p_id=>wwv_flow_imp.id(36029109497048640)
,p_name=>'P166_URL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(34258225911843126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41980941787929802)
,p_name=>'P166_V_CANAL_VERDE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(34258225911843126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41981991253929812)
,p_name=>'P166_AUX_CONTROL_REPORTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(34258225911843126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55469905401684404)
,p_name=>'P166_AUX_MSJ_CONTROL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(34258225911843126)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36028672030048635)
,p_name=>'DA_MOSTRAR_VTPEDAUT'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(34260446653843148)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55469894249684403)
,p_event_id=>wwv_flow_imp.id(36028672030048635)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P166_FEC_INICIAL IS NULL OR :P166_FEC_FINAL IS NULL THEN',
'        :P166_AUX_MSJ_CONTROL := ''LA FECHA NO PUEDE SER NULA'';',
'        ELSIF TO_DATE(:P166_FEC_INICIAL, ''dd/mm/yyyy'') > TO_DATE(:P166_FEC_FINAL, ''dd/mm/yyyy'') THEN',
'            :P166_AUX_MSJ_CONTROL := ''LA FECHA INICIAL NO PUEDE SER MAYOR A LA FECHA FINAL''; ',
'            ELSE ',
'                 :P166_AUX_MSJ_CONTROL := NULL; ',
'     END IF;         ',
'END;'))
,p_attribute_02=>'P166_AUX_MSJ_CONTROL,,P166_FEC_INICIAL,P166_FEC_FINAL'
,p_attribute_03=>'P166_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36028830815048637)
,p_event_id=>wwv_flow_imp.id(36028672030048635)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF NVL(:P166_CANAL_VERDE,''N'')=''S'' THEN',
'       :P166_V_CANAL_VERDE:=''1'';',
'       ELSE :P166_V_CANAL_VERDE:=NULL; ',
'END IF;',
'IF :P166_AUX_CONTROL_REPORTE IS NULL THEN',
'    :P166_AUX_CONTROL_REPORTE := ''EJECUTAR'';',
'END IF;',
'/*APEX_COLLECTION.ADD_MEMBER(',
'    p_collection_name => ''PARAMETROS_VTPEDAUT'',',
'    p_c001 => :P166_COD_EMPRESA,',
'    p_c002 => :P166_COD_SUCURSAL,',
'    p_c003 => :P166_COD_CLIENTE,',
'    p_c004 => v_canal_verde,',
'    p_c005 => :P166_CANAL_VERDE,',
'    p_c006 => :P166_COD_VENDEDOR,',
'    p_c007 => :P166_SER_COMPROBANTE_DESDE,',
'    p_c008 => :P166_SER_COMPROBANTE_HASTA,',
'    p_c009 => :P166_FEC_INICIAL,',
'    p_c010 => :P166_FEC_FINAL,',
'    p_c011 => :P166_NRO_COMPROBANTE_DESDE,',
'    p_c012 => :P166_NRO_COMPROBANTE_HASTA );',
'end;',
'',
'*/',
'',
'end;'))
,p_attribute_02=>'P166_COD_EMPRESA,P166_COD_SUCURSAL,P166_COD_CLIENTE,P166_ESTADO,P166_CANAL_VERDE,P166_COD_VENDEDOR,P166_SER_COMPROBANTE_DESDE,P166_SER_COMPROBANTE_HASTA,P166_FEC_INICIAL,P166_FEC_FINAL,P166_NRO_COMPROBANTE_DESDE,P166_NRO_COMPROBANTE_HASTA'
,p_attribute_03=>'P166_AUX_CONTROL_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P166_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55470031105684405)
,p_event_id=>wwv_flow_imp.id(36028672030048635)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P166_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P166_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41980819089929801)
,p_event_id=>wwv_flow_imp.id(36028672030048635)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77364877333224633)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P166_AUX_CONTROL_REPORTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39859838616467050)
,p_event_id=>wwv_flow_imp.id(36028672030048635)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77364877333224633)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P166_AUX_CONTROL_REPORTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55470561792684410)
,p_event_id=>wwv_flow_imp.id(36028672030048635)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(78401885712415171)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P166_AUX_CONTROL_REPORTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55470610728684411)
,p_event_id=>wwv_flow_imp.id(36028672030048635)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(78405798468416445)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P166_AUX_CONTROL_REPORTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55470726952684412)
,p_event_id=>wwv_flow_imp.id(36028672030048635)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79193703852459585)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P166_AUX_CONTROL_REPORTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36370402463322821)
,p_name=>'DA_MOSTRAR_VTPEDAUTRES'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(36370316339322820)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55470196921684406)
,p_event_id=>wwv_flow_imp.id(36370402463322821)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P166_FEC_INICIAL IS NULL OR :P166_FEC_FINAL IS NULL THEN',
'        :P166_AUX_MSJ_CONTROL := ''LA FECHA NO PUEDE SER NULA'';',
'        ELSIF TO_DATE(:P166_FEC_INICIAL, ''dd/mm/yyyy'') > TO_DATE(:P166_FEC_FINAL, ''dd/mm/yyyy'') THEN',
'            :P166_AUX_MSJ_CONTROL := ''LA FECHA INICIAL NO PUEDE SER MAYOR A LA FECHA INCIAL''; ',
'            ELSE ',
'                 :P166_AUX_MSJ_CONTROL := NULL; ',
'     END IF;         ',
'END;'))
,p_attribute_02=>'P166_AUX_MSJ_CONTROL,,P166_FEC_INICIAL,P166_FEC_FINAL'
,p_attribute_03=>'P166_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36370600910322823)
,p_event_id=>wwv_flow_imp.id(36370402463322821)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF NVL(:P166_CANAL_VERDE,''N'')=''S'' THEN',
'       :P166_V_CANAL_VERDE:=''1'';',
'       ELSE :P166_V_CANAL_VERDE:=NULL; ',
'END IF;',
'IF :P166_AUX_CONTROL_REPORTE IS NULL THEN',
'    :P166_AUX_CONTROL_REPORTE := ''EJECUTAR'';',
'END IF;',
'/*APEX_COLLECTION.ADD_MEMBER(',
'    p_collection_name => ''PARAMETROS_VTPEDAUTRES'',',
'    p_c001 => :P166_COD_EMPRESA,',
'    p_c002 => :P166_COD_SUCURSAL,',
'    p_c003 => :P166_COD_CLIENTE,',
'    p_c005 => :P166_CANAL_VERDE,',
'    p_c006 => :P166_COD_VENDEDOR,',
'    p_c007 => :P166_SER_COMPROBANTE_DESDE,',
'    p_c008 => :P166_SER_COMPROBANTE_HASTA,',
'    p_c009 => :P166_FEC_INICIAL,',
'    p_c010 => :P166_FEC_FINAL,',
'    p_c011 => :P166_NRO_COMPROBANTE_DESDE,',
'    p_c012 => :P166_NRO_COMPROBANTE_HASTA );',
'*/',
'end;'))
,p_attribute_02=>'P166_COD_EMPRESA,P166_COD_SUCURSAL,P166_COD_CLIENTE, P166_CANAL_VERDE,P166_COD_VENDEDOR,P166_SER_COMPROBANTE_DESDE,P166_SER_COMPROBANTE_HASTA,P166_FEC_INICIAL,P166_FEC_FINAL,P166_NRO_COMPROBANTE_DESDE,P166_NRO_COMPROBANTE_HASTA'
,p_attribute_03=>'P166_AUX_CONTROL_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P166_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55470229854684407)
,p_event_id=>wwv_flow_imp.id(36370402463322821)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P166_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P166_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41981272318929805)
,p_event_id=>wwv_flow_imp.id(36370402463322821)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(78401885712415171)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P166_AUX_CONTROL_REPORTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41981352556929806)
,p_event_id=>wwv_flow_imp.id(36370402463322821)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(78405798468416445)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P166_AUX_CONTROL_REPORTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41981455972929807)
,p_event_id=>wwv_flow_imp.id(36370402463322821)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(78401885712415171)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P166_AUX_CONTROL_REPORTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41981575622929808)
,p_event_id=>wwv_flow_imp.id(36370402463322821)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(78405798468416445)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P166_AUX_CONTROL_REPORTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55470858344684413)
,p_event_id=>wwv_flow_imp.id(36370402463322821)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77364877333224633)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P166_AUX_CONTROL_REPORTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55470988471684414)
,p_event_id=>wwv_flow_imp.id(36370402463322821)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79193703852459585)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P166_AUX_CONTROL_REPORTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36672909520861101)
,p_name=>'da_ocultar_botones'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36673078219861102)
,p_event_id=>wwv_flow_imp.id(36672909520861101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(34260446653843148)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36673116125861103)
,p_event_id=>wwv_flow_imp.id(36672909520861101)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(36370316339322820)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39859488811467046)
,p_event_id=>wwv_flow_imp.id(36672909520861101)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(36372295804322839)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36673262495861104)
,p_name=>'da_cambio_Estado_RES'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P166_ESTADO'
,p_condition_element=>'P166_ESTADO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'RES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36673523103861107)
,p_event_id=>wwv_flow_imp.id(36673262495861104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(36370316339322820)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36673614568861108)
,p_event_id=>wwv_flow_imp.id(36673262495861104)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(34260446653843148)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36372792842322844)
,p_event_id=>wwv_flow_imp.id(36673262495861104)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(36372295804322839)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36673825890861110)
,p_name=>'da_cambio_Estado_SP'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P166_ESTADO'
,p_condition_element=>'P166_ESTADO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'SP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36372016699322837)
,p_event_id=>wwv_flow_imp.id(36673825890861110)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(36372295804322839)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36372183752322838)
,p_event_id=>wwv_flow_imp.id(36673825890861110)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(36370316339322820)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36372896695322845)
,p_event_id=>wwv_flow_imp.id(36673825890861110)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(34260446653843148)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36674190796861113)
,p_name=>'da_cambio_Estado_distinto_a_SP,RES'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P166_ESTADO'
,p_condition_element=>'P166_ESTADO'
,p_triggering_condition_type=>'NOT_IN_LIST'
,p_triggering_expression=>'SP,RES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36674386912861115)
,p_event_id=>wwv_flow_imp.id(36674190796861113)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(34260446653843148)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36674487776861116)
,p_event_id=>wwv_flow_imp.id(36674190796861113)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(36372295804322839)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36372639024322843)
,p_event_id=>wwv_flow_imp.id(36674190796861113)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(36370316339322820)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36372392146322840)
,p_name=>'DA_MOSTRAR_VTPEDSEG'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(36372295804322839)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55470328830684408)
,p_event_id=>wwv_flow_imp.id(36372392146322840)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P166_FEC_INICIAL IS NULL OR :P166_FEC_FINAL IS NULL THEN',
'        :P166_AUX_MSJ_CONTROL := ''LA FECHA NO PUEDE SER NULA'';',
'        ELSIF TO_DATE(:P166_FEC_INICIAL, ''dd/mm/yyyy'') > TO_DATE(:P166_FEC_FINAL, ''dd/mm/yyyy'') THEN',
'            :P166_AUX_MSJ_CONTROL := ''LA FECHA INICIAL NO PUEDE SER MAYOR A LA FECHA INCIAL''; ',
'            ELSE ',
'                 :P166_AUX_MSJ_CONTROL := NULL; ',
'     END IF;         ',
'END;'))
,p_attribute_02=>'P166_AUX_MSJ_CONTROL,,P166_FEC_INICIAL,P166_FEC_FINAL'
,p_attribute_03=>'P166_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37158455679336748)
,p_event_id=>wwv_flow_imp.id(36372392146322840)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF NVL(:P166_CANAL_VERDE,''N'')=''S'' THEN',
'       :P166_V_CANAL_VERDE:=''1'';',
'       ELSE :P166_V_CANAL_VERDE:=NULL; ',
'END IF;',
'IF :P166_AUX_CONTROL_REPORTE IS NULL THEN',
'    :P166_AUX_CONTROL_REPORTE := ''EJECUTAR'';',
'END IF;',
'/*',
'APEX_COLLECTION.ADD_MEMBER(',
'    p_collection_name => ''PARAMETROS_VTPEDSEG'',',
'    p_c001 => :P166_COD_EMPRESA,',
'    p_c002 => :P166_COD_SUCURSAL,',
'    p_c003 => :P166_COD_CLIENTE,',
'    p_c005 => v_canal_verde,',
'    p_c006 => :P166_COD_VENDEDOR,',
'    p_c007 => :P166_SER_COMPROBANTE_DESDE,',
'    p_c008 => :P166_SER_COMPROBANTE_HASTA,',
'    p_c009 => :P166_FEC_INICIAL,',
'    p_c010 => :P166_FEC_FINAL,',
'    p_c011 => :P166_NRO_COMPROBANTE_DESDE,',
'    p_c012 => :P166_NRO_COMPROBANTE_HASTA );',
'',
'end;',
'*/',
'END;'))
,p_attribute_02=>'P166_COD_EMPRESA,P166_COD_SUCURSAL,P166_COD_CLIENTE, P166_CANAL_VERDE,P166_COD_VENDEDOR,P166_SER_COMPROBANTE_DESDE,P166_SER_COMPROBANTE_HASTA,P166_FEC_INICIAL,P166_FEC_FINAL,P166_NRO_COMPROBANTE_DESDE,P166_NRO_COMPROBANTE_HASTA'
,p_attribute_03=>'P166_AUX_CONTROL_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P166_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55470480009684409)
,p_event_id=>wwv_flow_imp.id(36372392146322840)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P166_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P166_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41981649692929809)
,p_event_id=>wwv_flow_imp.id(36372392146322840)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79193703852459585)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P166_AUX_CONTROL_REPORTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41981712252929810)
,p_event_id=>wwv_flow_imp.id(36372392146322840)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79193703852459585)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P166_AUX_CONTROL_REPORTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55471010753684415)
,p_event_id=>wwv_flow_imp.id(36372392146322840)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(78401885712415171)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P166_AUX_CONTROL_REPORTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55471159424684416)
,p_event_id=>wwv_flow_imp.id(36372392146322840)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(78405798468416445)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P166_AUX_CONTROL_REPORTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55471231063684417)
,p_event_id=>wwv_flow_imp.id(36372392146322840)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77364877333224633)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P166_AUX_CONTROL_REPORTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39859611900467048)
,p_name=>'da_ocultar_reportes'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39859792722467049)
,p_event_id=>wwv_flow_imp.id(39859611900467048)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77364877333224633)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41981006356929803)
,p_event_id=>wwv_flow_imp.id(39859611900467048)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(78401885712415171)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41981178888929804)
,p_event_id=>wwv_flow_imp.id(39859611900467048)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(78405798468416445)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41981803784929811)
,p_event_id=>wwv_flow_imp.id(39859611900467048)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79193703852459585)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36029071756048639)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'LIMPIAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34257914186843123)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P166_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
':P166_COD_EMPRESA := ''1'';',
':P166_NOM_EMPRESA := NVL(:P_NOM_EMPRESA, NULL);',
':P166_COD_SUCURSAL:= ''01'';',
':P166_NOM_SUCURSAL   := NVL(:P_NOM_SUCURSAL,NULL);',
':P166_COD_MODULO  := nvl(:P_COD_MODULO,''VT'');',
'--:P_COD_VENDEDOR := null;',
'',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''PARAMETROS_VTPEDAUT''); --pag 174',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''PARAMETROS_VTPEDAUTRES''); --pag 175 Funcionando estado RES',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''PARAMETROS_VTPEDSEG''); --pag  168',
':P166_AUX_CONTROL_REPORTE := null;',
':P166_AUX_MSJ_CONTROL := NULL;',
'--:P166_SER_COMPROBANTE_DESDE := ''A'';',
'--:P166_SER_COMPROBANTE_HASTA := ''A'';',
'',
'--#################### REPORTE VTPEDAUT ########################',
'--:P166_FEC_INICIAL := ''01/01/2022'';',
'--:P166_FEC_FINAL := ''31/01/2022'';',
'--:P166_NRO_COMPROBANTE_DESDE := ''1241757'';',
'--:P166_NRO_COMPROBANTE_HASTA := ''1245800'';',
'--:P166_ESTADO := ''AP'';distinto de RES y SP -- probar con AUTORIZACIONES PENDIENTES',
'',
'--################ REPORTE VTPEDSEG #############################',
'--:P166_FEC_INICIAL := ''01/01/2022'';',
'--:P166_FEC_FINAL := ''05/01/2022'';',
'--:P166_NRO_COMPROBANTE_DESDE :=  ''1241751'';',
'--:P166_NRO_COMPROBANTE_HASTA := ''1242042'';',
'--:P166_COD_VENDEDOR := null;',
'--:P166_ESTADO := ''SP''; --AUTORIZACIONES PENDIENTES',
'',
'--#############  REPORTE VTPEDAUTRES  #############################',
'--:P166_FEC_INICIAL := ''01/01/2019'';',
'--:P166_FEC_FINAL := ''05/01/2022'';',
'--:P166_NRO_COMPROBANTE_DESDE :=  ''1255131'';',
'--:P166_NRO_COMPROBANTE_HASTA := ''1255249'';',
'--:P166_ESTADO := ''RES'';',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
