prompt --application/pages/page_00174
begin
--   Manifest
--     PAGE: 00174
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
 p_id=>174
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTPEDAUT'
,p_alias=>'VTPEDAUT'
,p_step_title=>'VTPEDAUT'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20221115115701'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35404927810310529)
,p_plug_name=>'REPORTE VTPEDAUT'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
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
' where c.cod_empresa = :P174_P_COD_EMPRESA',
'   and c.ind_tipo_pedido = ''PE'' /*Se excluyen los PRE-PEDIDOS*/',
'   and (trunc(nvl(c.fec_confirma_pedido, c.fec_comprobante)) >= :P174_P_FEC_INICIAL or :P174_P_FEC_INICIAL is null)',
'   and (trunc(nvl(c.fec_confirma_pedido, c.fec_comprobante)) <= :P174_P_FEC_FINAL or :P174_P_FEC_FINAL is null)',
' and (c.ser_comprobante >= :P174_P_SER_COMPROBANTE_DESDE or :P174_P_SER_COMPROBANTE_DESDE is null)',
'   and (c.nro_comprobante >= :P174_P_NRO_COMPROBANTE_DESDE or :P174_P_NRO_COMPROBANTE_DESDE is null)',
'   and (c.ser_comprobante <= :P174_P_SER_COMPROBANTE_HASTA or :P174_P_SER_COMPROBANTE_HASTA is null)',
'   and (c.nro_comprobante <= :P174_P_NRO_COMPROBANTE_HASTA or :P174_P_NRO_COMPROBANTE_HASTA is null)',
' --  and (c.ser_comprobante >= :P174_P_SER_COMPROBANTE or :P174_P_SER_COMPROBANTE is null)',
'   and (c.cod_vendedor = :P174_P_COD_VENDEDOR or :P174_P_COD_VENDEDOR is null)',
'   and (c.cod_sucursal = :P174_P_COD_SUCURSAL or :P174_P_COD_SUCURSAL is null)',
'   and (c.cod_cliente = :P174_P_COD_CLIENTE or :P174_P_COD_CLIENTE is null)',
'  and c.cod_empresa = cc.cod_empresa',
'  -- and (c.ser_comprobante = :P174_P_SER_COMPROBANTE or :P174_P_SER_COMPROBANTE is null)',
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
'   and (c.resultado_canal_verde = :P174_P_CANAL_VERDE or :P174_P_CANAL_VERDE is null)',
'     /*    ',
'   and (:P174_P_ESTADO IS NULL ',
'       OR ((NVL(:P174_P_ESTADO, ''NN'') = ''AP'' AND',
'            NVL(C.ORDEN_AUTORIZADA, ''N'') <> ''S'' AND',
'            NVL(C.DERIVADO, ''NN'') <> ''AN'' AND NVL(RECHAZAR, ''N'') <> ''S'') ',
'            OR (NVL(:P174_P_ESTADO, ''NN'') = ''PA'' AND',
'            (NVL(C.ESTADO, ''P'') = ''A'' or NVL(C.DERIVADO, ''NN'') = ''AN''))',
'            OR (NVL(:P174_P_ESTADO, ''NN'') = ''PR'' AND NVL(RECHAZAR, ''N'') = ''S'') ',
'            OR (NVL(:P174_P_ESTADO, ''NN'') = ''AU'' AND NVL(C.AUTORIZADO, ''N'') = ''S'') ',
'            OR (NVL(:P174_P_ESTADO, ''NN'') = ''AF'' AND NVL(C.ESTADO, ''P'') = ''F'' AND',
'            NVL(C.ORDEN_AUTORIZADA, ''N'') = ''S'' AND',
'            NVL(C.DERIVADO, ''NN'') <> ''AN'' AND NVL(RECHAZAR, ''N'') <> ''S'') ',
'            OR (NVL(:P174_P_ESTADO, ''NN'') = ''PF'' AND NVL(C.ESTADO, ''P'') = ''P'' AND',
'            NVL(C.ORDEN_AUTORIZADA, ''N'') = ''S'' AND',
'            NVL(C.DERIVADO, ''NN'') <> ''AN'' AND NVL(RECHAZAR, ''N'') <> ''S'')',
'       ',
'       ))',
'-- order by c.cod_sucursal, c.cod_moneda, c.tip_comprobante, c.ser_comprobante, c.nro_comprobante, d.cod_articulo',
' order by fec_comprobante',
'*/'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P174_P_COD_EMPRESA,P174_P_COD_SUCURSAL,P174_P_COD_CLIENTE,P174_P_ESTADO,P174_P_CANAL_VERDE,P174_P_COD_VENDEDOR,P174_P_SER_COMPROBANTE_DESDE,P174_P_SER_COMPROBANTE_HASTA,P174_P_FEC_INICIAL,P174_P_FEC_FINAL,P174_P_NRO_COMPROBANTE_DESDE,P174_P_NRO_COMPR'
||'OBANTE_HASTA'
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
 p_id=>wwv_flow_imp.id(35405068343310530)
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
,p_internal_uid=>35405068343310530
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35405126666310531)
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
 p_id=>wwv_flow_imp.id(35405250718310532)
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
 p_id=>wwv_flow_imp.id(35405347548310533)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35405434621310534)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35405587362310535)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35405684549310536)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35405725032310537)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35405846382310538)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35405918562310539)
,p_db_column_name=>'CLIENTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35406023509310540)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35406147157310541)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35406211489310542)
,p_db_column_name=>'MONEDA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35406358784310543)
,p_db_column_name=>'SIGLAS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Siglas'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35406430272310544)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Tip Cambio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35406532335310545)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35406665312310546)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35406785501310547)
,p_db_column_name=>'DERIVADO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Derivado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35406866674310548)
,p_db_column_name=>'RECHAZADO_POR'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Rechazado Por'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35406931035310549)
,p_db_column_name=>'DESC_TIPO_COMPROBANTE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Desc Tipo Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35407042503310550)
,p_db_column_name=>'DECIMALES'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Decimales'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36025282418048601)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36025324246048602)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36025471805048603)
,p_db_column_name=>'COD_ORIGEN_ART'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Cod Origen Art'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36025534112048604)
,p_db_column_name=>'CANTIDAD_FACTURADA'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Cantidad Facturada'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36025688587048605)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36025774906048606)
,p_db_column_name=>'PRECIO_UNITARIO'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Precio Unitario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36025876166048607)
,p_db_column_name=>'TOTAL_IVA'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Total Iva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36025983243048608)
,p_db_column_name=>'DESCUENTO'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Descuento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36026058540048609)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Monto Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36026142158048610)
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
 p_id=>wwv_flow_imp.id(36026262326048611)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36026353356048612)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36026478431048613)
,p_db_column_name=>'COD_EAN'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Cod Ean'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36026570521048614)
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
 p_id=>wwv_flow_imp.id(36026602466048615)
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
 p_id=>wwv_flow_imp.id(36026710510048616)
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
 p_id=>wwv_flow_imp.id(36026800326048617)
,p_db_column_name=>'AUTORIZADO_POR'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Autorizado Por'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36026911542048618)
,p_db_column_name=>'PR_FMA'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Pr Fma'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36027013754048619)
,p_db_column_name=>'SA_FMA'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Sa Fma'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36027198700048620)
,p_db_column_name=>'ULTIMO_COMENTARIO'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Ultimo Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(36213402810274509)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'362135'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FEC_COMPROBANTE:FEC_CONFIRMA_PEDIDO:COD_SUCURSAL:SUCURSAL:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:COD_CLIENTE:CLIENTE:COD_CONDICION_VENTA:COD_MONEDA:MONEDA:SIGLAS:TIP_CAMBIO:COD_VENDEDOR:VENDEDOR:DERIVADO:RECHAZADO_POR:DESC_TIPO_COMPROBANTE:D'
||'ECIMALES:COD_ARTICULO:DESCRIPCION:COD_ORIGEN_ART:CANTIDAD_FACTURADA:CANTIDAD:PRECIO_UNITARIO:TOTAL_IVA:DESCUENTO:MONTO_TOTAL:FEC_VENCIMIENTO:COMENTARIO:COD_ART_CORTO:COD_EAN:FEC_RECHAZADO:FEC_AUTORIZACION:FEC_APRO_RECHA:AUTORIZADO_POR:PR_FMA:SA_FMA:U'
||'LTIMO_COMENTARIO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36027204226048621)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36027305982048622)
,p_name=>'P174_P_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36027204226048621)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36027461017048623)
,p_name=>'P174_P_FEC_INICIAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(36027204226048621)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36027506503048624)
,p_name=>'P174_P_FEC_FINAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(36027204226048621)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36027698063048625)
,p_name=>'P174_P_SER_COMPROBANTE_HASTA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(36027204226048621)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36027722800048626)
,p_name=>'P174_P_SER_COMPROBANTE_DESDE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(36027204226048621)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36027829236048627)
,p_name=>'P174_P_NRO_COMPROBANTE_DESDE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(36027204226048621)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36027937331048628)
,p_name=>'P174_P_NRO_COMPROBANTE_HASTA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(36027204226048621)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36028050719048629)
,p_name=>'P174_P_COD_VENDEDOR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(36027204226048621)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36028140206048630)
,p_name=>'P174_P_COD_SUCURSAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(36027204226048621)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36028221900048631)
,p_name=>'P174_P_COD_CLIENTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(36027204226048621)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36028332107048632)
,p_name=>'P174_P_SER_COMPROBANTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(36027204226048621)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36028417441048633)
,p_name=>'P174_P_CANAL_VERDE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(36027204226048621)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36028570897048634)
,p_name=>'P174_P_ESTADO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(36027204226048621)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36028977321048638)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  c001 cod_empresa,',
'        c002 cod_sucursal,',
'        c003 cod_cliente,    ',
'        c004 estado,   ',
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
'        :P174_P_COD_EMPRESA,',
'        :P174_P_COD_SUCURSAL,',
'        :P174_P_COD_CLIENTE,',
'        :P174_P_ESTADO,',
'        :P174_P_CANAL_VERDE,',
'        :P174_P_COD_VENDEDOR,',
'        :P174_P_SER_COMPROBANTE_DESDE,',
'        :P174_P_SER_COMPROBANTE_HASTA,',
'        :P174_P_FEC_INICIAL,',
'        :P174_P_FEC_FINAL,',
'        :P174_P_NRO_COMPROBANTE_DESDE,',
'        :P174_P_NRO_COMPROBANTE_HASTA  ',
'       from apex_collections',
'       where collection_name = ''PARAMETROS_VTPEDAUT''',
'       and seq_id = 1; '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
