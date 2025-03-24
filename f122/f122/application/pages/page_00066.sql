prompt --application/pages/page_00066
begin
--   Manifest
--     PAGE: 00066
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
 p_id=>66
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Productos en Guarda'
,p_alias=>'PRODUCTOS-EN-GUARDA'
,p_step_title=>'Productos en Guarda'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240920112245'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(260786538660381819)
,p_plug_name=>'Guarda'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(260789186374381845)
,p_plug_name=>'Guarda Cta Cte'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'COD_SUCURSAL,  FECHA_GUARDA , FECHA_FACT , FECHA_ENTREGA , COD_CLIENTE , NOMBRE  ,PEDIDO,  CANTIDAD_factura , REMISION  ,NCR , SALDO , VOLUMEN , VENDEDOR_FACTURA,   FACTURA,',
'(SELECT SUM(SAL.SALDO_CUOTA)',
'FROM CC_SALDOS SAL',
'WHERE SAL.COD_EMPRESA=:P_COD_EMPRESA',
'AND SAL.COD_CLIENTE=C.COD_CLIENTE',
'AND SAL.tipO_comprobante=C.Tip_comprobante_REF',
'AND SAL.SER_COMPROBANTE=C.ser_comprobante_REF',
'AND SAL.NRO_COMPROBANTE=C.nro_comprobante_REF)TOTAL_SALDO,',
'(SELECT SUM(SAL.MONTO_CUOTA)',
'FROM CC_SALDOS SAL',
'WHERE SAL.COD_EMPRESA=:P_COD_EMPRESA',
'AND SAL.COD_CLIENTE=C.COD_CLIENTE',
'AND SAL.tipO_comprobante=C.Tip_comprobante_REF',
'AND SAL.SER_COMPROBANTE=C.ser_comprobante_REF',
'AND SAL.NRO_COMPROBANTE=C.nro_comprobante_REF)TOTAL_CUOTA,',
'(SELECT MAX(SAL.FEC_VENCIMIENTO)',
'FROM CC_SALDOS SAL',
'WHERE SAL.COD_EMPRESA=:P_COD_EMPRESA',
'AND SAL.COD_CLIENTE=C.COD_CLIENTE',
'AND SAL.tipO_comprobante=C.Tip_comprobante_REF',
'AND SAL.SER_COMPROBANTE=C.ser_comprobante_REF',
'AND SAL.NRO_COMPROBANTE=C.nro_comprobante_REF)VENCIMIENTO',
'',
'FROM (select COD_SUCURSAL,',
' ',
'FECHA_GUARDA,',
'FECHA_FACT,',
'FECHA_ENTREGA,',
'COD_CLIENTE,',
'NOMBRE,',
'PEDIDO,',
'sum(CANT_FACT)CANTIDAD_factura,',
'sum(CANT_REM)remision,',
'sum(CANT_NCR)ncr,',
'sum(SALDO)saldo,',
'sum(VOLUMEN)volumen,',
'VENDEDOR_FACTURA,',
'FACTURA,',
'      Tip_comprobante_REF ,ser_comprobante_REF ,nro_comprobante_REF  ',
' from v_productos_guarda c',
' where     c.Fecha_Guarda  between  :P66_FECHA_DES  and  :P66_FECHA_HAS',
'and c.cod_empresa=:p_cod_empresa',
'   AND (C.COD_CLIENTE = :P66_COD_CLIENTE OR :P66_COD_CLIENTE IS NULL)',
'',
' group by  COD_SUCURSAL,',
'',
'FECHA_GUARDA,',
'FECHA_FACT,',
'FECHA_ENTREGA,',
'COD_CLIENTE,',
'NOMBRE,',
'PEDIDO, ',
'VENDEDOR_FACTURA,',
'FACTURA,      Tip_comprobante_REF ,ser_comprobante_REF ,nro_comprobante_REF  ',
'   )C'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P66_SUCURSAL,P66_DIVISION,P66_MARCA,P66_FAMILIA,P66_COD_ART_CORTO,P66_COD_VENDEDOR,P66_COD_CLIENTE,P66_SER,P66_NRO,P66_FECHA_DES,P66_FECHA_HAS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
 p_id=>wwv_flow_imp.id(260789267188381846)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>260789267188381846
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12993615209417282)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12994058354417282)
,p_db_column_name=>'PEDIDO'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Pedido'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12994475896417282)
,p_db_column_name=>'FECHA_ENTREGA'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Fecha Entrega'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12994813692417283)
,p_db_column_name=>'VENDEDOR_FACTURA'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Vendedor Factura'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12998092188417284)
,p_db_column_name=>'CANTIDAD_FACTURA'
,p_display_order=>60
,p_column_identifier=>'L'
,p_column_label=>'Cantidad Factura'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12998485368417284)
,p_db_column_name=>'REMISION'
,p_display_order=>70
,p_column_identifier=>'M'
,p_column_label=>'Cantidad Remision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12998826025417285)
,p_db_column_name=>'NCR'
,p_display_order=>80
,p_column_identifier=>'N'
,p_column_label=>'Cantidad Ncr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12995649805417283)
,p_db_column_name=>'SALDO'
,p_display_order=>90
,p_column_identifier=>'F'
,p_column_label=>'Cantidad Pendiente'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12996055175417283)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>100
,p_column_identifier=>'G'
,p_column_label=>'Volumen'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12996855044417284)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>110
,p_column_identifier=>'I'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12997241581417284)
,p_db_column_name=>'NOMBRE'
,p_display_order=>120
,p_column_identifier=>'J'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12995231648417283)
,p_db_column_name=>'FACTURA'
,p_display_order=>130
,p_column_identifier=>'E'
,p_column_label=>'Factura'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12997613096417284)
,p_db_column_name=>'FECHA_GUARDA'
,p_display_order=>140
,p_column_identifier=>'K'
,p_column_label=>'Fecha Guarda'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12996462366417283)
,p_db_column_name=>'FECHA_FACT'
,p_display_order=>150
,p_column_identifier=>'H'
,p_column_label=>'Fecha Fact'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13000076759417285)
,p_db_column_name=>'VENCIMIENTO'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'Vencimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12999644422417285)
,p_db_column_name=>'TOTAL_CUOTA'
,p_display_order=>170
,p_column_identifier=>'P'
,p_column_label=>'Total Cuota'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12999273735417285)
,p_db_column_name=>'TOTAL_SALDO'
,p_display_order=>180
,p_column_identifier=>'O'
,p_column_label=>'Total Saldo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(261772821132082241)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2375611'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PEDIDO:FECHA_ENTREGA:VENDEDOR_FACTURA:FACTURA:CANTIDAD_FACTURA:REMISION:SALDO:NCR:COD_CLIENTE:NOMBRE:FECHA_GUARDA:FECHA_FACT:VENCIMIENTO:TOTAL_CUOTA:TOTAL_SALDO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(261650976367920867)
,p_plug_name=>'Consulta de Guarda'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(261709726391035158)
,p_plug_name=>'Guarda Detalle'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'NRO_COMPROBANTE,	FECHA_ALTA	,FECHA_FACT,	FACTURA,	COD_ARTICULO,	DESC_ARTICULO	,CANT_FACT	,CANT_REMITIDA,',
'	CANT_DISPONIBLE	,CANTIDAD,	COD_CLIENTE,	NOMBRE,	CANT_REM	,CANT_NCR,	COD_SUCURSAL,	VOLUMEN	,PEDIDO,	COD_ART_CORTO,	FECHA_ENTREGA	,VENDEDOR_FACTURA	,PLA_REPARTO	,COD_VENDEDOR,',
'   nvl((cant_fact - Cant_rem-cant_ncr),0) saldo,',
'   nvl((cant_fact - Cant_rem-cant_ncr),0)',
'* MONTO_UNITARIO MONTO_TOTAL, monto_unitario',
'',
'',
'from (select c.nro_comprobante,',
'       C.FECHA_ALTA,',
'       c.fec_comprobante FECHA_FACT,',
'       c.tip_comprobante_REF || '' - ''||     c.ser_comprobante_REF || '' - ''||    c.nro_comprobante_REF FACTURA,',
'       d.cod_articulo,',
'       s.descripcion desc_articulo,',
'       d.cantidad cant_FACT,',
'       D.CANT_REMITIDA,',
'       D.CANT_DISPONIBLE,',
'       D.CANTIDAD,',
'       c.cod_cliente,       ',
'       p.nombre,',
'',
'nvl((select sum( rd.cantidad)',
'      from st_remision_cab rc,',
'           st_remision_det rd',
'      where rc.cod_empresa= c.cod_empresa',
'      AND   RC.COD_CLIENTE= c.COD_CLIENTE',
'      and   rc.nro_comprobante_ref= c.nro_comprobante_ref',
'      and   rc.ser_comprobante_ref= c.ser_comprobante_ref',
'      and   rc.cod_empresa=rd.cod_empresa',
'      and   rc.tip_comprobante= rd.tip_comprobante',
'      and   rc.ser_comprobante= rd.ser_comprobante',
'      and   rc.nro_comprobante= rd.nro_comprobante',
'      and   rd.cod_articulo=d.cod_articulo',
'      and   rc.tip_comprobante_ref=''FAC''',
'      and   nvl(rc.anulado,''N'')=''N''',
'    ),0) cant_rem,',
'    nvl(  (select sum(nd.cantidad)',
'    from vt_comprobantes_cabecera nc,',
'         vt_comprobantes_detalle nd',
'    where nc.cod_empresa=c.cod_empresa',
'    and   nc.tip_comprobante=''NCR''',
' and nvl(columna,''x'')<>''1''',
'    and   nc.nro_comprobante_ref= c.nro_comprobante_ref',
'    and   nc.ser_comprobante_ref=c.ser_comprobante_ref',
'    and   nc.tip_comprobante_ref=c.tip_comprobante_ref',
'    and   nc.tip_comprobante=nd.tip_comprobante',
'    and   nc.ser_comprobante=nd.ser_comprobante',
'    and   nc.nro_comprobante=nd.nro_comprobante',
'    and   nc.cod_empresa=nd.cod_empresa',
'    and   nd.cod_articulo= d.cod_articulo',
'and nvl(estado,''P'')<>''A''',
'    ),0) CANT_NCR',
',',
'',
'',
'',
' ',
'  nvl(  (select nvl(nd.cod_sucursal,nc.cod_sucursal)',
'    from vt_comprobantes_cabecera nc,',
'         vt_comprobantes_detalle nd',
'    where nc.cod_empresa=c.cod_empresa',
'    and   nc.nro_comprobante= c.nro_comprobante_ref',
'    and   nc.ser_comprobante=c.ser_comprobante_ref',
'    and   nc.tip_comprobante=c.tip_comprobante_ref',
'    and   nc.tip_comprobante=nd.tip_comprobante',
'    and   nc.ser_comprobante=nd.ser_comprobante',
'    and   nc.nro_comprobante=nd.nro_comprobante',
'    and   nc.cod_empresa=nd.cod_empresa',
'    and   nd.cod_articulo= d.cod_articulo',
'and nvl(estado,''P'')<>''A''',
'and rownum=1',
'    ),c.cod_sucursal)cod_sucursal,',
'((s.largo_cm/100*s.ancho_cm/100*s.alto_cm/100)/',
'CASE WHEN NVL(s.CANT_X_PAQUETE,0 )> 0 THEN',
'/*s.CANT_X_PAQUETE*/1',
'ELSE 1',
'END',
'*1)volumen,',
'  (select nc.nro_comprobante_ref',
'    from vt_comprobantes_cabecera nc ',
'    where nc.cod_empresa=c.cod_empresa',
'    and   nc.nro_comprobante= c.nro_comprobante_ref',
'    and   nc.ser_comprobante=c.ser_comprobante_ref',
'    and   nc.tip_comprobante=c.tip_comprobante_ref',
'and nvl(nc.estado,''P'')<>''A'')pedido, s.cod_art_corto,',
'',
'',
'',
'( SELECT (A.FECHA_ENTREGA)',
'',
'        FROM VT_PEDIDOS_CABECERA A, VT_COMPROBANTES_CABECERA Cc',
'       where Cc.cod_empresa = c.cod_empresa',
'       AND cc.TIP_COMPROBANTE IN (''FCO'',''FCR'')',
'       AND cc.NRO_COMPROBANTE=c.nro_comprobante_REF',
'       AND cc.SER_COMPROBANTE=c.ser_comprobante_REF',
'       AND a.COD_EMPRESA=Cc.COD_EMPRESA',
'         and A.tip_comprobante = Cc.tip_comprobante_ref',
'         and A.ser_comprobante = Cc.ser_comprobante_ref',
'         and A.nro_comprobante = Cc.nro_comprobante_ref)fecha_entrega,',
'NVL((select DESCRIPCION',
'         from   fv_vendedores  fvv',
'         where fvv.cod_empresa=ccc.cod_empresa',
'         and fvv.cod_vendedor=ccc.cod_vendedor),''N/A'')VENDEDOR_factura,',
' ',
'         (select max(rc.nro_planilla)',
'         from rp_reparto_detalle rc',
'         where rc.cod_empresa=c.cod_empresa',
'         and rc.tip_comprobante=ccc.tip_comprobante',
'         and rc.ser_comprobante=ccc.ser_comprobante',
'         and rc.nro_comprobante=ccc.nro_comprobante)pla_reparto, ccc.cod_vendedor,',
'         ((select round( (SUM(nc.monto_total+nc.total_iva)/SUM(nc.cantidad)))*ccc.tip_cambio',
'    from vt_comprobantes_detalle nc ',
'    where nc.cod_empresa=c.cod_empresa',
'    and   nc.nro_comprobante= c.nro_comprobante_ref',
'    and   nc.ser_comprobante=c.ser_comprobante_ref',
'    and   nc.tip_comprobante=c.tip_comprobante_ref',
'    and nc.cod_articulo=d.cod_articulo',
'))monto_unitario',
'',
'',
'  from ST_STOCK_CLIENTE_CAB c,',
'       cc_clientes     cl,',
'       personas        p,',
'       ST_STOCK_CLIENTE_DET d,',
'       st_articulos    s, VT_COMPROBANTES_CABECERA CCC',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and  c.FEC_COMPROBANTE between  :P66_FECHA_DES  and  :P66_FECHA_HAS',
'',
'   AND (C.COD_CLIENTE = :P66_COD_CLIENTE OR :P66_COD_CLIENTE IS NULL)',
'   AND (c.nro_comprobante_ref = :P66_NRO OR :P66_NRO IS NULL)',
'   AND (c.SER_comprobante_ref = :P66_SER OR :P66_SER IS NULL)',
'   AND (s.COD_ART_CORTO = :P66_COD_ART_CORTO or :P66_COD_ART_CORTO is null)',
'   AND (s.COD_ARTiculo = :P66_COD_ARTICULO or :P66_COD_ARTICULO is null)',
'   AND (S.COD_MARCA= :P66_MARCA or :P66_MARCA is null)',
'   AND (S.COD_DIVISION = :P66_DIVISION or :P66_DIVISION is null)',
'   AND C.COD_CLIENTE=CL.COD_CLIENTE',
'   AND C.COD_EMPRESA=CL.COD_EMPRESA',
'   AND CL.COD_PERSONA=P.COD_PERSONA',
'   AND C.COD_EMPRESA=D.COD_EMPRESA',
'   AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'   AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'   AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'',
'   AND (CCC.COD_VENDEDOR = :P66_COD_VENDEDOR OR :P66_COD_VENDEDOR IS NULL)',
'   AND C.COD_EMPRESA=CCC.COD_EMPRESA',
'   AND C.NRO_COMPROBANTE_REF=CCC.NRO_COMPROBANTE',
'   AND C.SER_COMPROBANTE_REF=CCC.SER_COMPROBANTE',
'   AND C.TIP_COMPROBANTE_REF=CCC.TIP_COMPROBANTE',
'',
'   AND D.COD_EMPRESA=S.COD_EMPRESA',
'   AND D.COD_ARTICULO=S.COD_ARTICULO',
' ',
'   AND (D.CANTIDAD-nvl((select sum( rd.cantidad)',
'      from st_remision_cab rc,',
'           st_remision_det rd',
'      where rc.cod_empresa= c.cod_empresa',
'      AND   RC.COD_CLIENTE= c.COD_CLIENTE',
'      and   rc.nro_comprobante_ref= c.nro_comprobante_ref',
'      and   rc.ser_comprobante_ref= c.ser_comprobante_ref',
'      and   rc.cod_empresa=rd.cod_empresa',
'      and   rc.tip_comprobante= rd.tip_comprobante',
'      and   rc.ser_comprobante= rd.ser_comprobante',
'      and   rc.nro_comprobante= rd.nro_comprobante',
'      and   rd.cod_articulo=d.cod_articulo',
'      and   rc.tip_comprobante_ref=''FAC''',
'      and   nvl(rc.anulado,''N'')=''N''',
'    ),0)-',
'    ',
'    nvl(  (select sum(nd.cantidad)',
'    from vt_comprobantes_cabecera nc,',
'         vt_comprobantes_detalle nd',
'    where nc.cod_empresa=c.cod_empresa',
'    and   nc.tip_comprobante=''NCR''',
' and nvl(columna,''x'')<>''1''',
'    and   nc.nro_comprobante_ref= c.nro_comprobante_ref',
'    and   nc.ser_comprobante_ref=c.ser_comprobante_ref',
'    and   nc.tip_comprobante_ref=c.tip_comprobante_ref',
'    and   nc.tip_comprobante=nd.tip_comprobante',
'    and   nc.ser_comprobante=nd.ser_comprobante',
'    and   nc.nro_comprobante=nd.nro_comprobante',
'    and   nc.cod_empresa=nd.cod_empresa',
'    and   nd.cod_articulo= d.cod_articulo',
'and nvl(estado,''P'')<>''A''',
'    ),0)',
'     )>0   ',
'',
' and         (D.CANTIDAD-nvl(  (select sum(nd.cantidad)',
'    from vt_comprobantes_cabecera nc,',
'         vt_comprobantes_detalle nd',
'    where nc.cod_empresa=c.cod_empresa',
'    and   nc.tip_comprobante=''NCR''',
' and nvl(columna,''x'')<>''1''',
'    and   nc.nro_comprobante_ref= c.nro_comprobante_ref',
'    and   nc.ser_comprobante_ref=c.ser_comprobante_ref',
'    and   nc.tip_comprobante_ref=c.tip_comprobante_ref',
'    and   nc.tip_comprobante=nd.tip_comprobante',
'    and   nc.ser_comprobante=nd.ser_comprobante',
'    and   nc.nro_comprobante=nd.nro_comprobante',
'    and   nc.cod_empresa=nd.cod_empresa',
'    and   nd.cod_articulo= d.cod_articulo',
'and nvl(estado,''P'')<>''A''',
'    ),0) )>0  ',
'',
'',
')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P66_SUCURSAL,P66_DIVISION,P66_MARCA,P66_FAMILIA,P66_COD_ART_CORTO,P66_COD_VENDEDOR,P66_COD_CLIENTE,P66_SER,P66_NRO,P66_FECHA_DES,P66_FECHA_HAS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(261709842573035158)
,p_name=>'Stock'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>261709842573035158
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13014140770417296)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13014591722417296)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13014993417417297)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13015365920417297)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Desc Articulo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13015749626417297)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Volumen'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D0000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13006920716417290)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>22
,p_column_identifier=>'O'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13007352139417291)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>32
,p_column_identifier=>'P'
,p_column_label=>'Fecha Guarda'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13007702074417291)
,p_db_column_name=>'FECHA_FACT'
,p_display_order=>42
,p_column_identifier=>'Q'
,p_column_label=>'Fecha Fact'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13008161755417291)
,p_db_column_name=>'CANT_FACT'
,p_display_order=>82
,p_column_identifier=>'U'
,p_column_label=>'Cant Fact'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13008597514417292)
,p_db_column_name=>'CANT_REMITIDA'
,p_display_order=>92
,p_column_identifier=>'V'
,p_column_label=>'Cant Remitida'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13008990235417292)
,p_db_column_name=>'CANT_DISPONIBLE'
,p_display_order=>102
,p_column_identifier=>'W'
,p_column_label=>'Cant Disponible'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13009320290417292)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>112
,p_column_identifier=>'X'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13009726135417293)
,p_db_column_name=>'NOMBRE'
,p_display_order=>122
,p_column_identifier=>'Y'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13010126423417293)
,p_db_column_name=>'CANT_REM'
,p_display_order=>132
,p_column_identifier=>'Z'
,p_column_label=>'Cant Rem'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13010564830417293)
,p_db_column_name=>'CANT_NCR'
,p_display_order=>142
,p_column_identifier=>'AA'
,p_column_label=>'Cant Ncr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13010916865417294)
,p_db_column_name=>'PEDIDO'
,p_display_order=>152
,p_column_identifier=>'AB'
,p_column_label=>'Pedido'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13011321775417294)
,p_db_column_name=>'FECHA_ENTREGA'
,p_display_order=>162
,p_column_identifier=>'AC'
,p_column_label=>'Fecha Entrega'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13011702835417294)
,p_db_column_name=>'VENDEDOR_FACTURA'
,p_display_order=>172
,p_column_identifier=>'AD'
,p_column_label=>'Vendedor Factura'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13012199918417295)
,p_db_column_name=>'PLA_REPARTO'
,p_display_order=>182
,p_column_identifier=>'AE'
,p_column_label=>'Pla Reparto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13012593593417295)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>192
,p_column_identifier=>'AF'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13012947670417295)
,p_db_column_name=>'FACTURA'
,p_display_order=>202
,p_column_identifier=>'AG'
,p_column_label=>'Factura'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13013341438417295)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>212
,p_column_identifier=>'AH'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13013723407417296)
,p_db_column_name=>'SALDO'
,p_display_order=>222
,p_column_identifier=>'AI'
,p_column_label=>'Saldo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(739759396376900434)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>232
,p_column_identifier=>'AJ'
,p_column_label=>'Monto Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(739759435886900435)
,p_db_column_name=>'MONTO_UNITARIO'
,p_display_order=>242
,p_column_identifier=>'AK'
,p_column_label=>'Monto Unitario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(261726866864859941)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'1760676'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_SUCURSAL:COD_ART_CORTO:COD_ARTICULO:DESC_ARTICULO:FECHA_ALTA:FECHA_FACT:FECHA_ENTREGA:FACTURA:COD_CLIENTE:NOMBRE:PEDIDO:CANT_FACT:CANT_REM:CANT_NCR:SALDO:VOLUMEN:VENDEDOR_FACTURA:MONTO_TOTAL:'
,p_sum_columns_on_break=>'CANT_DISPON:VOLUMEN:SALDO:CANT_FACT:CANT_REM:CANT_NCR'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13001012840417286)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(261650976367920867)
,p_button_name=>'Buscar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13001414072417287)
,p_name=>'P66_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(261650976367920867)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion||''-''||cod_sucursal, cod_sucursal ',
'from sucursales ',
'where cod_empresa=:p_cod_empresa'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13001839863417287)
,p_name=>'P66_DIVISION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(261650976367920867)
,p_prompt=>'Division'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_DIVISION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESC_DIVISION, COD_DIVISION FROM ST_DIVISION_ARTICULOS',
'WHERE ESTADO=''A''',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(13002226854417287)
,p_name=>'P66_MARCA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(261650976367920867)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION, COD_MARCA',
'FROM ST_MARCAS ',
'WHERE ESTADO=''S''',
'ORDER BY DESCRIPCION'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(13002610157417287)
,p_name=>'P66_FAMILIA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(261650976367920867)
,p_prompt=>'Familia'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_FAMILIAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION, COD_FAMILIA FROM ST_FAMILIA',
'WHERE ESTADO=''S''',
'and cod_empresa=:p_cod_empresa',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(13003038131417288)
,p_name=>'P66_CATEGORIA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(261650976367920867)
,p_prompt=>'Categoria'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_CATEGORIAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_categoria||'' - '' ||descripcion D, ',
'         cod_categoria R',
'    FROM st_categorias',
'  ',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND ESTADO IN(''S'',''A'');',
' '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
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
 p_id=>wwv_flow_imp.id(13003472898417288)
,p_name=>'P66_COD_ARTICULO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(261650976367920867)
,p_prompt=>'Cod Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION||'' ''||COD_ARTICULO, COD_ARTICULO',
'from st_articuloS',
'where cod_empresa=:p_cod_empresa',
'and (cod_rubro =:P66_RUBRO OR :P66_RUBRO IS NULL)',
'AND NVL(ESTADO,''N'') NOT IN (''N'',''I'')'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13003881016417288)
,p_name=>'P66_COD_ART_CORTO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(261650976367920867)
,p_prompt=>'Cod Art Corto'
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
 p_id=>wwv_flow_imp.id(13004245479417288)
,p_name=>'P66_COD_VENDEDOR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(261650976367920867)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_VENDEDORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  F.COD_VENDEDOR||'' - ''||P.NOMBRE nombre,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=:P_COD_EMPRESA',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13004617627417288)
,p_name=>'P66_COD_CLIENTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(261650976367920867)
,p_prompt=>'Cod Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT  c.cod_cliente||'' - ''||p.nombre L, ',
'          c.cod_cliente V ',
'    FROM cc_clientes c, personas p, ident_personas i',
'    WHERE c.cod_empresa = :p_cod_empresa',
'      AND c.cod_persona = p.cod_persona',
'      AND c.estado =''A''',
'      AND I.COD_IDENT IN (''RUC'',''CI'')',
'      AND i.cod_persona = c.cod_persona',
' ORDER BY 1'))
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
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13005063073417289)
,p_name=>'P66_SER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(261650976367920867)
,p_prompt=>'Serie Factura'
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
 p_id=>wwv_flow_imp.id(13005466678417289)
,p_name=>'P66_NRO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(261650976367920867)
,p_prompt=>'Nro'
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
 p_id=>wwv_flow_imp.id(13005857501417289)
,p_name=>'P66_FECHA_DES'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(261650976367920867)
,p_item_default=>'sysdate-360'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Inicio'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13006223727417289)
,p_name=>'P66_FECHA_HAS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(261650976367920867)
,p_item_default=>'SYSDATE+5'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fin'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13016491424417298)
,p_name=>'buscar'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13001012840417286)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13016979281417299)
,p_event_id=>wwv_flow_imp.id(13016491424417298)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(261709726391035158)
);
wwv_flow_imp.component_end;
end;
/
