prompt --application/pages/page_00546
begin
--   Manifest
--     PAGE: 00546
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
 p_id=>546
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Seguimiento de Prestamos de Productos'
,p_alias=>'SEGUIMIENTO-DE-PRESTAMOS-DE-PRODUCTOS'
,p_step_title=>'Seguimiento de Prestamos de Productos'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  .a-IRR-header , .a-IRR-headerLink{',
'      background: #003a85!important;',
'       color: yellow !important; ',
' }',
'',
' #parametros { ',
'      background: #003a85!important;',
'',
' }',
'',
' .t-Form-label{color: darkblue !important;}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230615095637'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(161540990473493248)
,p_plug_name=>'Detalle de Prestamos de Productos'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'FECHA,  CANTIDAD_DEVUELTA,',
'  CANTIDAD_PRESTAMO , TIP_COMPROBANTE_REF,',
'    SER_COMPROBANTE_REF , NRO_COMPROBANTE_REF ,',
'     COD_CLIENTE , CLIENTE,  DIAS_VTO , DIAS , SER_PEDIDO , NRO_PEDIDO ,',
'      TOT_COMPROBANTE, estado, PRESTAMO_DEVUELTO_MONTO,',
'SECCION_PRESTAMO,',
' (select sum(sal.saldo_cuota)',
'from cc_saldos sal',
'where sal.cod_empresa=''1''',
'and  sal.TIPo_comprobante= TIP_COMPROBANTE_REF',
'and   sal.nro_comprobante= NRO_COMPROBANTE_REF',
'and   sal.ser_comprobante= SER_COMPROBANTE_REF)SALDO_CUENTA',
'      FROM ',
'      (',
'select ',
'FECHA,  sum(CANTIDAD_DEVUELTA)CANTIDAD_DEVUELTA,',
'  sum(CANTIDAD_PRESTAMO)CANTIDAD_PRESTAMO , TIP_COMPROBANTE_REF,',
'    SER_COMPROBANTE_REF , NRO_COMPROBANTE_REF ,',
'     COD_CLIENTE , CLIENTE,  DIAS_VTO , DIAS , SER_PEDIDO , NRO_PEDIDO ,',
'      sum(TOT_COMPROBANTE)TOT_COMPROBANTE,sum(PRESTAMO_DEVUELTO_MONTO)PRESTAMO_DEVUELTO_MONTO,',
'      case when sum(NVL(cantidad_prestamo,0))=sum(NVL(cantidad_devuelta,0)) or estado=''D'' then ''DEVUELTO'' ',
'when sum(NVL(cantidad_prestamO,0))>sum(NVL(cantidad_devuelta,0))',
'   AND sum(NVL(CANTIDAD_DEVUELTA,0))>0 then ''PARCIAL DEVUELTO'' WHEN estado = ''C'' THEN',
'                   ''A CUENTA''',
'  ELSE ''PENDIENTE'' END ESTADO,',
'     case when sum(NVL(cantidad_prestamo,0))=sum(NVL(cantidad_devuelta,0)) or estado=''D''then ''D'' ',
'when sum(NVL(cantidad_prestamO,0))>sum(NVL(cantidad_devuelta,0))',
'   AND sum(NVL(CANTIDAD_DEVUELTA,0))>0 then ''P''',
'WHEN estado = ''C'' THEN',
'                   ''C''',
'  ELSE ''P'' END ESTADO_WHERE,',
'SECCION_PRESTAMO',
'',
'',
'',
'from (select TRUNC(VT.FEC_COMPROBANTE)FECHA, ',
' ',
'',
'NVL((SELECT  sum(nd.cantidad)',
'FROM VT_COMPROBANTES_CABECERA NC, vt_comprobantes_detalle nd',
'WHERE  nc.cod_empresa=vt.cod_empresa',
'and NC.TIP_COMPROBANTE_REF=VT.TIP_COMPROBANTE',
'AND NC.SER_COMPROBANTE_REF=VT.SER_COMPROBANTE',
'AND NC.NRO_COMPROBANTE_REF=VT.NRO_COMPROBANTE',
'',
' and nc.cod_empresa=nd.cod_empresa',
'and   nc.TIP_comprobante= nd.TIP_comprobante',
'and   nc.nro_comprobante= nd.nro_comprobante',
'and   nc.ser_comprobante= nd.ser_comprobante',
'and nd.cod_articulo=vd.cod_articulo',
'AND NVL(NC.ESTADO,''P'')<>''A''),0)cantidad_devuelta,',
'sum(vd.cantidad)cantidad_prestamo,',
' ',
'',
'',
'       VT.TIP_COMPROBANTE TIP_COMPROBANTE_REF,',
'      VT.SER_COMPROBANTE SER_COMPROBANTE_REF ,',
'      VT.NRO_COMPROBANTE NRO_COMPROBANTE_REF,',
'       VT.COD_CLIENTE,',
'       nvl(p.nombre,p.nomb_fantasia) CLIENTE,',
'       decode(VT.estado,''P'',decode(nvl(pd.dias,0),0,0,pd.dias-(trunc(sysdate) - trunc(VT.FEC_COMPROBANTE))),0)dias_vto',
'       ,nvl(pd.dias,0)dias',
'       , pd.ser_comprobante ser_pedido',
',pd.nro_comprobante Nro_pedido',
'',
', sum(nvl(vd.monto_total,0)+nvl(vd.total_iva,0)) tot_comprobante  ,',
'NVL((SELECT  sum(nvl(ND.monto_total,0)+nvl(ND.total_iva,0)) ',
'FROM VT_COMPROBANTES_CABECERA NC, vt_comprobantes_detalle nd',
'WHERE nc.cod_empresa=vt.cod_empresa',
'and  NC.TIP_COMPROBANTE_REF=VT.TIP_COMPROBANTE',
'AND NC.SER_COMPROBANTE_REF=VT.SER_COMPROBANTE',
'AND NC.NRO_COMPROBANTE_REF=VT.NRO_COMPROBANTE',
'',
' and nc.cod_empresa=nd.cod_empresa',
'and   nc.TIP_comprobante= nd.TIP_comprobante',
'and   nc.nro_comprobante= nd.nro_comprobante',
'and   nc.ser_comprobante= nd.ser_comprobante',
'and nd.cod_articulo=vd.cod_articulo',
'',
'AND NVL(NC.ESTADO,''P'')<>''A''),0)     PRESTAMO_DEVUELTO_MONTO, pd.SECCION_PRESTAMO,',
'                          pp.estado',
'from   vt_comprobantes_cabecera Vt,',
'cc_clientes c',
'      , personas p',
' ,',
'                       st_prestamo_prod pp             ',
'      , vt_pedidos_cabecera pd, vt_comprobantes_detalle vd',
'where VT.COD_EMPRESA= :P_cod_empresa',
'and   c.cod_empresa=VT.COD_EMPRESA',
'and   c.cod_cliente=VT.cod_cliente',
'AND   c.cod_persona=p.cod_persona',
' ',
' and pd.cod_empresa=vt.cod_empresa',
'and   pd.TIP_comprobante= Vt.TIP_comprobante_ref',
'and   pd.nro_comprobante= Vt.nro_comprobante_ref',
'and   pd.ser_comprobante= Vt.ser_comprobante_ref',
' and Vt.cod_empresa=vd.cod_empresa',
'and   Vt.TIP_comprobante= vd.TIP_comprobante',
'and   Vt.nro_comprobante= vd.nro_comprobante',
'and   Vt.ser_comprobante= vd.ser_comprobante',
'                   and vt.cod_empresa=pp.cod_empresa',
'                   and vt.tip_comprobante=pp.tip_comprobante_ref',
'                   and vt.ser_comprobante=pp.ser_comprobante_ref',
'                   and vt.nro_comprobante=pp.nro_comprobante_ref',
' ',
'',
'and VT.tip_comprobante in (''FCO'',''FCR'')',
'AND VT.COD_VENDEDOR IN (''193'',''194'')',
'',
'AND (VT.FEC_COMPROBANTE BETWEEN :P546_FEC_INI AND :P546_FEC_FIN)',
' ',
'',
'--AND (pp.ESTADO= :P_ESTADO OR NVL(:P_ESTADO,''TODOS'')=''TODOS'')',
'AND NVL(VT.ESTADO,''P'')<>''A''',
'group by vt.fec_comprobante,VT.TIP_COMPROBANTE, vt.ser_comprobante, vt.nro_comprobante,',
'vt.cod_cliente, vt.cod_empresa,',
' nvl(p.nombre,p.nomb_fantasia), vt.estado, pd.dias,',
' pd.ser_comprobante ',
',pd.nro_comprobante , vd.cod_articulo, vt.cod_empresa,',
' pd.SECCION_PRESTAMO,',
'                          pp.estado',
'order by 1, 2 asc ',
'',
'',
'',
')',
'',
'  group by FECHA,  ',
'   TIP_COMPROBANTE_REF,',
'    SER_COMPROBANTE_REF , NRO_COMPROBANTE_REF ,',
'     COD_CLIENTE , CLIENTE,  DIAS_VTO , DIAS , SER_PEDIDO , NRO_PEDIDO,',
'SECCION_PRESTAMO,estado',
' )',
'',
'   ',
' WHERE (FECha BETWEEN :P546_FEC_INI AND :P546_FEC_FIN)',
'AND (ESTADO_WHERE= :P546_ESTADO OR NVL(:P546_ESTADO,''TODOS'')=''TODOS'')',
'AND (cod_cliente= :P546_cliente OR :P546_cliente is null)',
'AND (SECCION_prestamo= :p546_seccion OR :p546_seccion =''TODOS'')',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P546_ESTADO,P546_SECCION,P546_FEC_INI,P546_FEC_FIN,P546_CLIENTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Detalle de Prestamos de Productos'
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
 p_id=>wwv_flow_imp.id(161541017782493249)
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ning\00FAn dato.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>161541017782493249
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171713067652910402)
,p_db_column_name=>'FECHA'
,p_display_order=>30
,p_column_identifier=>'A'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171713210032910404)
,p_db_column_name=>'ESTADO'
,p_display_order=>50
,p_column_identifier=>'B'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171713479553910406)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>70
,p_column_identifier=>'C'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171713581804910407)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>80
,p_column_identifier=>'D'
,p_column_label=>'Ser Comprobante Ref'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171713642230910408)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>90
,p_column_identifier=>'E'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171713739491910409)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>100
,p_column_identifier=>'F'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171714301788910415)
,p_db_column_name=>'SECCION_PRESTAMO'
,p_display_order=>160
,p_column_identifier=>'G'
,p_column_label=>'Seccion Prestamo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171714584527910417)
,p_db_column_name=>'CANTIDAD_DEVUELTA'
,p_display_order=>170
,p_column_identifier=>'H'
,p_column_label=>'Cantidad Devuelta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171714672085910418)
,p_db_column_name=>'CANTIDAD_PRESTAMO'
,p_display_order=>180
,p_column_identifier=>'I'
,p_column_label=>'Cantidad Prestamo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171714717602910419)
,p_db_column_name=>'CLIENTE'
,p_display_order=>190
,p_column_identifier=>'J'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171714861987910420)
,p_db_column_name=>'DIAS_VTO'
,p_display_order=>200
,p_column_identifier=>'K'
,p_column_label=>'Dias Vto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171714997442910421)
,p_db_column_name=>'DIAS'
,p_display_order=>210
,p_column_identifier=>'L'
,p_column_label=>'Dias'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171715030037910422)
,p_db_column_name=>'SER_PEDIDO'
,p_display_order=>220
,p_column_identifier=>'M'
,p_column_label=>'Ser Pedido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171715152941910423)
,p_db_column_name=>'NRO_PEDIDO'
,p_display_order=>230
,p_column_identifier=>'N'
,p_column_label=>'Nro Pedido'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171715243163910424)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>240
,p_column_identifier=>'O'
,p_column_label=>'Tot Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171715317467910425)
,p_db_column_name=>'PRESTAMO_DEVUELTO_MONTO'
,p_display_order=>250
,p_column_identifier=>'P'
,p_column_label=>'Prestamo Devuelto Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171715437750910426)
,p_db_column_name=>'SALDO_CUENTA'
,p_display_order=>260
,p_column_identifier=>'Q'
,p_column_label=>'Saldo Cuenta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(171724383040904827)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1717244'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FECHA:ESTADO:TIP_COMPROBANTE_REF:SER_COMPROBANTE_REF:NRO_COMPROBANTE_REF:COD_CLIENTE:SECCION_PRESTAMO:CANTIDAD_PRESTAMO:CANTIDAD_DEVUELTA:CLIENTE:DIAS_VTO:DIAS:SER_PEDIDO:NRO_PEDIDO:TOT_COMPROBANTE:PRESTAMO_DEVUELTO_MONTO:SALDO_CUENTA:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(171691733794307989)
,p_plug_name=>'Resumen de Prestamos de Productos'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       NRO_PRESTAMO,',
'       FECHA,',
'       COD_USUARIO,',
'       ESTADO,',
'       ESTADO_DESC,',
'       TIP_COMPROBANTE_REF,',
'       SER_COMPROBANTE_REF,',
'       NRO_COMPROBANTE_REF,',
'       COD_CLIENTE,',
'       DIAS_PEND,',
'       PLAZO,',
'       NOM_CLIENTE,',
'       SER_PED,',
'       NRO_PED,',
'       SECCION_PRESTAMO,(	 ',
'	  SELECT  suM(c.saldo_cuota)',
'	   ',
'	  FROM CC_saldos c',
'	  WHERE c.COD_EMPRESA=v.COD_EMPRESA ',
'	  AND   C.TIPo_COMPROBANTE=v.TIP_COMPROBANTE_REF',
'	  AND   C.SER_COMPROBANTE=v.ser_comprobante_ref',
'	  AND   C.NRO_COMPROBANTE=v.nro_comprobante_ref )saldo',
'  from VW_ST_PRESTAMO_PROD v',
'  WHERE cod_empresa = :p_cod_empresa ',
'AND (FECha BETWEEN :P546_FEC_INI AND :P546_FEC_FIN)',
'AND (ESTADO= :P546_ESTADO OR NVL(:P546_ESTADO,''TODOS'')=''TODOS'')',
'AND (cod_cliente= :P546_cliente OR :P546_cliente is null)',
'AND (SECCION_prestamo= :p546_seccion OR :p546_seccion =''TODOS'')',
' ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P546_ESTADO,P546_SECCION,P546_FEC_INI,P546_FEC_FIN,P546_CLIENTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resumen de Prestamos de Productos'
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
 p_id=>wwv_flow_imp.id(171691868413307989)
,p_name=>'Seguimiento de Prestamos de Productos'
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ning\00FAn dato.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>171691868413307989
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171692112899307840)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171692506113307838)
,p_db_column_name=>'NRO_PRESTAMO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nro Prestamo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171692922985307838)
,p_db_column_name=>'FECHA'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171693349347307838)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171693776892307838)
,p_db_column_name=>'ESTADO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171694153854307837)
,p_db_column_name=>'ESTADO_DESC'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Estado Desc'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171694533886307837)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171694906631307837)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Ser Comprobante Ref'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171695374525307837)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171695786297307836)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171696166503307836)
,p_db_column_name=>'DIAS_PEND'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Dias Pend'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171696568674307836)
,p_db_column_name=>'PLAZO'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Plazo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171696910562307836)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Nom Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171697396644307836)
,p_db_column_name=>'SER_PED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Ser Ped'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171697769002307835)
,p_db_column_name=>'NRO_PED'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Nro Ped'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(161540486826493243)
,p_db_column_name=>'SECCION_PRESTAMO'
,p_display_order=>35
,p_column_identifier=>'P'
,p_column_label=>'Seccion Prestamo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(161540654652493245)
,p_db_column_name=>'SALDO'
,p_display_order=>45
,p_column_identifier=>'Q'
,p_column_label=>'Saldo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(171698377373306719)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1716984'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIP_COMPROBANTE_REF:SER_COMPROBANTE_REF:NRO_COMPROBANTE_REF:COD_CLIENTE:NOM_CLIENTE:SECCION_PRESTAMO:SALDO:DIAS_PEND:ESTADO_DESC:FECHA:NRO_PED:NRO_PRESTAMO:PLAZO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(304210138818780891)
,p_plug_name=>'PARAMETROS'
,p_region_name=>'parametros'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(171699241782262985)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(304210138818780891)
,p_button_name=>'filtrar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Filtrar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(171699647068262984)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(304210138818780891)
,p_button_name=>'Limpiar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171700004900262980)
,p_name=>'P546_ESTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(304210138818780891)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:TODOS;TODOS,Pendientes;P,Devueltos;D,A Cuenta;C'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171701229271262975)
,p_name=>'P546_CLIENTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(304210138818780891)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT P.NOMBRE ||'' - ''||  O.COD_CLIENTE, O.COD_CLIENTE',
'from SM_OT_OBRA o,',
'     CC_CLIENTES C,',
'     PERSONAS P',
'where O.cod_empresa = :P_COD_EMPRESA ',
'AND   O.COD_EMPRESA = C.COD_EMPRESA',
'AND   O.COD_CLIENTE = C.COD_CLIENTE',
'AND   C.COD_PERSONA = P.COD_PERSONA',
';'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
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
 p_id=>wwv_flow_imp.id(171702050414262975)
,p_name=>'P546_FEC_INI'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(304210138818780891)
,p_item_default=>'sysdate-1000'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>' Fecha desde'
,p_format_mask=>'DD/MM/YYYY'
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
 p_id=>wwv_flow_imp.id(171702411211262975)
,p_name=>'P546_SECCION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(304210138818780891)
,p_item_default=>'TODOS'
,p_prompt=>'Seccion'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:VENTAS;VENTAS,MARKETING;MARKETING,SERVICIO TECNICO;SERVICIO TECNICO,REPUESTOS;REPUESTOS,GASTRONOMIA;GASTRONOMIA,CORPORATIVO;CORPORATIVO,TODOS;TODOS'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171702890101262975)
,p_name=>'P546_FEC_FIN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(304210138818780891)
,p_item_default=>'sysdate+360'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha hasta'
,p_format_mask=>'DD/MM/YYYY'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(161540169871493240)
,p_name=>'Nuevo'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(171699647068262984)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161540275907493241)
,p_event_id=>wwv_flow_imp.id(161540169871493240)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P546_ESTADO,P546_CLIENTE,P546_FEC_INI,P546_FEC_FIN,P546_SECCION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(161540776761493246)
,p_name=>'Nuevo_1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(171699241782262985)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161540815757493247)
,p_event_id=>wwv_flow_imp.id(161540776761493246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(171691733794307989)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(171715515386910427)
,p_event_id=>wwv_flow_imp.id(161540776761493246)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(161540990473493248)
);
wwv_flow_imp.component_end;
end;
/
