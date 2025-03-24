prompt --application/pages/page_00175
begin
--   Manifest
--     PAGE: 00175
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
 p_id=>175
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTPEDAUTRES'
,p_alias=>'VTPEDAUTRES'
,p_step_title=>'VTPEDAUTRES'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20221114103935'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36029568775048644)
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
 p_id=>wwv_flow_imp.id(36359346703207603)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(40070279985263645)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(40189153869263678)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36369007008322807)
,p_plug_name=>'CABECERA'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
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
'           where c.cod_empresa = :P175_P_COD_EMPRESA',
'           and c.ind_tipo_pedido = ''PE'' --Se excluyen los PRE PEDIDOS',
'           and (trunc(nvl(c.fec_confirma_pedido, c.fec_comprobante)) >= :P175_P_FEC_INICIAL or :P175_P_FEC_INICIAL is null)',
'           and (trunc(nvl(c.fec_confirma_pedido, c.fec_comprobante)) <= :P175_P_FEC_FINAL or :P175_P_FEC_FINAL is null)',
'           and (c.ser_comprobante >= :P175_P_SER_COMPROBANTE_DESDE or :P175_P_SER_COMPROBANTE_DESDE is null)',
'           and (c.nro_comprobante >= :P175_P_NRO_COMPROBANTE_DESDE or :P175_P_NRO_COMPROBANTE_DESDE is null)',
'           and (c.ser_comprobante <= :P175_P_SER_COMPROBANTE_HASTA or :P175_P_SER_COMPROBANTE_HASTA is null)',
'           and (c.nro_comprobante <= :P175_P_NRO_COMPROBANTE_HASTA or :P175_P_NRO_COMPROBANTE_HASTA is null)',
'           --and (c.ser_comprobante >= :p_ser_comprobante  or :p_ser_comprobante  is null)',
'           and (c.cod_vendedor = :P175_P_COD_VENDEDOR or :P175_P_COD_VENDEDOR is null)',
'           and (c.cod_sucursal = :P175_P_COD_SUCURSAL or :P175_P_COD_SUCURSAL is null)',
'           and (c.cod_cliente = :P175_P_COD_CLIENTE or :P175_P_COD_CLIENTE is null)',
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
,p_ajax_items_to_submit=>'P175_P_COD_EMPRESA,P175_P_FEC_INICIAL,P175_P_FEC_FINAL,P175_P_SER_COMPROBANTE_DESDE,P175_P_NRO_COMPROBANTE_DESDE,P175_P_SER_COMPROBANTE_HASTA,P175_P_NRO_COMPROBANTE_HASTA,P175_P_COD_SUCURSAL,P175_P_COD_VENDEDOR,P175_P_COD_CLIENTE'
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
 p_id=>wwv_flow_imp.id(36369401406322811)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>36369401406322811
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36369547653322812)
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
 p_id=>wwv_flow_imp.id(36369659664322813)
,p_db_column_name=>'CANTIDAD_PEDIDOS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cantidad Pedidos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36369723032322814)
,p_db_column_name=>'AUTORIZADO_SISTEMA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Autorizado Sistema'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36369810289322815)
,p_db_column_name=>'AUTORIZADO_MANUAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Autorizado Manual'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36369928952322816)
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
 p_id=>wwv_flow_imp.id(36370009105322817)
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
 p_id=>wwv_flow_imp.id(36370196477322818)
,p_db_column_name=>'PORCENTAJE_CANAL_VERDE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Porcentaje Canal Verde'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36370265265322819)
,p_db_column_name=>'DECIMALES'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Decimales'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(36444139790975200)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'364442'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FEC_COMPROBANTE:CANTIDAD_PEDIDOS:AUTORIZADO_SISTEMA:AUTORIZADO_MANUAL:IMPORTE_AUTORIZADO_SISTEMA:IMPORTE_AUTORIZADO_MANUAL:PORCENTAJE_CANAL_VERDE:DECIMALES'
,p_sum_columns_on_break=>'CANTIDAD_PEDIDOS:AUTORIZADO_SISTEMA:AUTORIZADO_MANUAL:IMPORTE_AUTORIZADO_SISTEMA:IMPORTE_AUTORIZADO_MANUAL:PORCENTAJE_CANAL_VERDE:DECIMALES'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36369197886322808)
,p_plug_name=>'DETALLE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>50
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
'         where c.cod_empresa = :P175_P_COD_EMPRESA',
'           and c.ind_tipo_pedido = ''PE'' /*Se excluyen los PRE PEDIDOS*/',
'           and (trunc(nvl(c.fec_confirma_pedido, c.fec_comprobante)) >= :P175_P_FEC_INICIAL or :P175_P_FEC_INICIAL is null)',
'           and (trunc(nvl(c.fec_confirma_pedido, c.fec_comprobante)) <= :P175_P_FEC_FINAL or :P175_P_FEC_FINAL is null)',
'           and (c.ser_comprobante >= :P175_P_SER_COMPROBANTE_DESDE or :P175_P_SER_COMPROBANTE_DESDE is null)',
'           and (c.nro_comprobante >= :P175_P_NRO_COMPROBANTE_DESDE or :P175_P_NRO_COMPROBANTE_DESDE is null)',
'           and (c.ser_comprobante <= :P175_P_SER_COMPROBANTE_HASTA or :P175_P_SER_COMPROBANTE_HASTA is null)',
'           and (c.nro_comprobante <= :P175_P_NRO_COMPROBANTE_HASTA or :P175_P_NRO_COMPROBANTE_HASTA is null)',
'           --and (c.ser_comprobante >= :p_ser_comprobante or :p_ser_comprobante is null)',
'           and (c.cod_vendedor = :P175_P_COD_VENDEDOR or :P175_P_COD_VENDEDOR is null)',
'           and (c.cod_sucursal = :P175_P_COD_SUCURSAL or :P175_P_COD_SUCURSAL is null)',
'           and (c.cod_cliente = :P175_P_COD_CLIENTE or :P175_P_COD_CLIENTE is null)',
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
'               decode(:P175_P_CANAL_VERDE, ''1'', ''CANAL_VERDE'', C.AUTORIZADO_POR))',
'        ',
'        )',
' order by 1'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P175_P_COD_EMPRESA,P175_P_FEC_INICIAL,P175_P_FEC_FINAL,P175_P_SER_COMPROBANTE_DESDE,P175_P_NRO_COMPROBANTE_DESDE,P175_P_SER_COMPROBANTE_HASTA,P175_P_NRO_COMPROBANTE_HASTA,P175_P_COD_VENDEDOR,P175_P_COD_SUCURSAL,P175_P_COD_CLIENTE,P175_P_CANAL_VERDE'
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
,p_plug_header=>'DETALLE'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(36371005808322827)
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
,p_internal_uid=>36371005808322827
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36371122135322828)
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
 p_id=>wwv_flow_imp.id(36371292704322829)
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
 p_id=>wwv_flow_imp.id(36371391736322830)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36371456295322831)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36371556804322832)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36371640810322833)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nom Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36371704984322834)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36371810252322835)
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
 p_id=>wwv_flow_imp.id(36371929101322836)
,p_db_column_name=>'AUTORIZADO_POR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Autorizado Por'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(37121617844155200)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'371217'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FEC_DETALLE:FEC_CONFIRMA_PEDIDO:SER_COMPROBANTE:NRO_COMPROBANTE:COD_CLIENTE:NOM_CLIENTE:VENDEDOR:MONTO:AUTORIZADO_POR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36029682691048645)
,p_name=>'P175_P_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36029568775048644)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36029710885048646)
,p_name=>'P175_P_FEC_INICIAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(36029568775048644)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36029865837048647)
,p_name=>'P175_P_FEC_FINAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(36029568775048644)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36029943486048648)
,p_name=>'P175_P_SER_COMPROBANTE_DESDE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(36029568775048644)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36030008789048649)
,p_name=>'P175_P_NRO_COMPROBANTE_DESDE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(36029568775048644)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36030143893048650)
,p_name=>'P175_P_SER_COMPROBANTE_HASTA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(36029568775048644)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36368427596322801)
,p_name=>'P175_P_NRO_COMPROBANTE_HASTA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(36029568775048644)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36368521374322802)
,p_name=>'P175_P_COD_VENDEDOR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(36029568775048644)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36368683144322803)
,p_name=>'P175_P_COD_SUCURSAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(36029568775048644)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36368821825322805)
,p_name=>'P175_P_COD_CLIENTE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(36029568775048644)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36368951324322806)
,p_name=>'P175_P_CANAL_VERDE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(36029568775048644)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36029480887048643)
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
'        :P175_P_COD_EMPRESA,',
'        :P175_P_COD_SUCURSAL,',
'        :P175_P_COD_CLIENTE,',
'        :P175_P_CANAL_VERDE,',
'        :P175_P_COD_VENDEDOR,',
'        :P175_P_SER_COMPROBANTE_DESDE,',
'        :P175_P_SER_COMPROBANTE_HASTA,',
'        :P175_P_FEC_INICIAL,',
'        :P175_P_FEC_FINAL,',
'        :P175_P_NRO_COMPROBANTE_DESDE,',
'        :P175_P_NRO_COMPROBANTE_HASTA  ',
'        ',
'        ',
'       from apex_collections',
'       where collection_name = ''PARAMETROS_VTPEDAUTRES'' ',
'        and seq_id = 1;  '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
