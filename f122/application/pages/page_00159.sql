prompt --application/pages/page_00159
begin
--   Manifest
--     PAGE: 00159
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
 p_id=>159
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Reporte VTRANUPE'
,p_alias=>'REPORTE-VTRANUPE'
,p_page_mode=>'MODAL'
,p_step_title=>'Reporte VTRANUPE'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'ANDRESDI'
,p_last_upd_yyyymmddhh24miss=>'20221104192652'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65109046972369980)
,p_plug_name=>'Reporte'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_sucursal, s.descripcion sucursal, c.fec_comprobante, c.fec_ESTADO ,',
'       c.tip_comprobante, c.ser_comprobante, c.nro_comprobante,',
'       c.cod_cliente, pc.nombre cliente, c.cod_condicion_venta,',
'       c.cod_moneda, m.descripcion moneda, m.siglas, m.decimales, c.tip_cambio,',
'       c.cod_vendedor, pv.nombre vendedor,',
'       r.cod_rubro rubro,',
'       tc.descripcion desc_tipo_comprobante,',
'       sum(det.total_iva)TOT_IVA, sum(det.descuento)DESCUENTO,',
'       sum(det.monto_total+nvl(det.total_iva,0)) monto_total,',
'       anu.cod_motivo_anu, anu.descripcion motivo_cierre,',
'       det.cod_articulo articulo, ',
'       SUM(DET.CANTIDAD+NVL(DET.CANTIDAD_PENDIENTE,0)-NVL(DET.CANTIDAD_FACTURADA,0))CANTIDAD',
' from  vt_pedidos_cabecera c,  ',
'       monedas m, ',
'       sucursales s, ',
'       tipos_comprobantes tc, ',
'       cc_clientes cc, ',
'       personas pc, ',
'       fv_vendedores v, ',
'       personas pv, ',
'       vt_motivo_anulacion anu, ',
'       VT_PEDIDOS_DETALLE DET,',
'       st_rubro r',
' where c.cod_empresa        =  :P125_COD_EMPRESA',
'  and ( c.cod_sucursal     =  :P125_COD_SUCURSAL or :P125_COD_SUCURSAL is null )',
'  and ( c.fec_ESTADO >= to_date(:P125_FEC_PED_INICIAL,''dd/mm/yyyy'') or :P125_FEC_PED_INICIAL is null )',
'  and ( c.fec_ESTADO  <= to_date(:P125_FEC_PED_FINAL,''dd/mm/yyyy'') or :P125_FEC_PED_FINAL is null )',
'  and ( c.cod_cliente  =  :P125_COD_CLIENTE or :P125_COD_CLIENTE is null )',
'  and ( c.cod_vendedor =  :P125_COD_VENDEDOR or :P125_COD_VENDEDOR is null )',
'  and ( c.ser_comprobante = :P125_SER_COMPROBANTE or :P125_SER_COMPROBANTE is null )',
'  and ( det.cod_articulo = :P125_COD_ARTICULO or :P125_COD_ARTICULO is null )',
'   ',
'  and (r.cod_rubro = :P125_COD_RUBRO or :P125_COD_RUBRO is null )',
'  and c.cod_empresa = cc.cod_empresa',
'  and c.cod_cliente = cc.cod_cliente',
'  and cc.cod_persona = pc.cod_persona',
'  and (nvl(det.cod_motivo_anu,c.cod_motivo_anu) = :P125_COD_MOTIVO_ANU or :P125_COD_MOTIVO_ANU is null)',
'  and c.cod_empresa=anu.cod_empresa(+)',
'  and nvl(det.cod_motivo_anu,c.cod_motivo_anu)  = anu.cod_motivo_anu(+)',
'  and c.cod_empresa        = tc.cod_empresa',
'  and c.tip_comprobante    = tc.tip_comprobante',
'  and c.cod_empresa        = s.cod_empresa',
'  and c.cod_sucursal       = s.cod_sucursal',
'  and c.cod_moneda         = m.cod_moneda',
'  and c.cod_empresa        = v.cod_empresa',
'  and c.cod_vendedor       = v.cod_vendedor',
'  and v.cod_persona        = pv.cod_persona',
'  and c.cod_empresa=det.cod_empresa',
'  and c.tip_comprobante=det.tip_comprobante',
'  and c.ser_comprobante=det.ser_comprobante',
'  and c.nro_comprobante=det.nro_comprobante',
'  and (  c.estado in( ''A'' ,''C'') or nvl(det.cantidad_pendiente,0)>0  )',
'group by  c.cod_sucursal, s.descripcion  , c.fec_comprobante, c.fec_ESTADO ,',
'       c.tip_comprobante, c.ser_comprobante, c.nro_comprobante,',
'       c.cod_cliente, pc.nombre  , c.cod_condicion_venta,',
'       c.cod_moneda, m.descripcion  , m.siglas, m.decimales, c.tip_cambio,',
'       c.cod_vendedor, pv.nombre,',
'       tc.descripcion  ,anu.cod_motivo_anu, anu.descripcion, det.cod_articulo , r.cod_rubro',
'order by c.cod_sucursal, c.cod_moneda, c.tip_comprobante, c.ser_comprobante, c.nro_comprobante'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte'
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
 p_id=>wwv_flow_imp.id(66815909813348390)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>66815909813348390
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34313508686477781)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34313931558477781)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34314384508477781)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34314749031477781)
,p_db_column_name=>'FEC_ESTADO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fec Estado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34315159537477782)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34315577857477782)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34315965740477782)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34316396021477782)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34316708545477782)
,p_db_column_name=>'CLIENTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34317145257477782)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34317530999477783)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34317955906477783)
,p_db_column_name=>'MONEDA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34318349033477783)
,p_db_column_name=>'SIGLAS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Siglas'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34318738164477783)
,p_db_column_name=>'DECIMALES'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Decimales'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34319135039477783)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Tip Cambio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34319574949477783)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34319901450477784)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34320399286477784)
,p_db_column_name=>'DESC_TIPO_COMPROBANTE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Desc Tipo Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34320782188477784)
,p_db_column_name=>'TOT_IVA'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Tot Iva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34321120174477784)
,p_db_column_name=>'DESCUENTO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Descuento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34321587924477784)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Monto Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34321917216477784)
,p_db_column_name=>'COD_MOTIVO_ANU'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Cod Motivo Anu'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34322309585477785)
,p_db_column_name=>'MOTIVO_CIERRE'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Motivo Cierre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34322784462477785)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34313154036477780)
,p_db_column_name=>'ARTICULO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(41129083358113455)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34323115868477785)
,p_db_column_name=>'RUBRO'
,p_display_order=>260
,p_column_identifier=>'AA'
,p_column_label=>'Rubro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(67443802035740033)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'331310'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_SUCURSAL:SUCURSAL:FEC_COMPROBANTE:FEC_ESTADO:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:COD_CLIENTE:CLIENTE:COD_CONDICION_VENTA:COD_MONEDA:MONEDA:SIGLAS:DECIMALES:TIP_CAMBIO:COD_VENDEDOR:VENDEDOR:DESC_TIPO_COMPROBANTE:TOT_IVA:DESCUENTO:MONTO'
||'_TOTAL:COD_MOTIVO_ANU:MOTIVO_CIERRE:ARTICULO:RUBRO:CANTIDAD:'
);
wwv_flow_imp.component_end;
end;
/
