prompt --application/pages/page_00415
begin
--   Manifest
--     PAGE: 00415
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
 p_id=>415
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Detalle de recibos cobrados - CCRECOME'
,p_alias=>'DETALLE-DE-RECIBOS-COBRADOS-CCRECOME'
,p_step_title=>'Detalle de recibos cobrados - CCRECOME'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.ui-dialog{',
'    width: 1200px !important;',
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DFINO'
,p_last_upd_yyyymmddhh24miss=>'20230303164126'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118481107202648249)
,p_plug_name=>'Detalle de recibos cobrados - CCRECOME'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(120960896804709413)
,p_plug_name=>'Contenedor Variables'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(120961217185709417)
,p_plug_name=>'REPORTE 2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rc.cod_cliente, ',
'       ltrim(rtrim(nvl( pc.nombre, pc.nomb_fantasia))) nom_cliente,',
'       rc.fec_recibo,',
'       rd.tip_factura_ref, ',
'       rd.ser_factura_ref,  ',
'       rd.nro_factura_ref,',
'       rd.nro_cuota,',
'       rc.ser_recibo, ',
'       rc.nro_recibo,',
'       rd.cod_moneda_cuota cod_moneda, ',
'       rd.tip_cambio,  ',
'       mo.descripcion desc_moneda,',
'       rd.sub_tipo_trans,',
'       sb.descripcion desc_tipo_trans,',
'       rc.ser_mov_caj,  ',
'       rc.nro_mov_caj,',
'       rc.TIP_MOV_CAJ,',
'       decode(rd.cod_moneda_cuota, ''1'', nvl(rd.monto_cuota, 0), 0) importe_gs,',
'       decode(rd.cod_moneda_cuota, ''2'', nvl(rd.monto_cuota, 0), 0) importe_us,',
'       REPLACE(sal.factura,''|'','''') factura,',
'       NULL FORMA_COBRO',
'  from cc_recibos rc,',
'       cc_detalle_recibos rd,',
'       cc_clientes cl,',
'       monedas mo,',
'       personas pc,',
'       subtipos_trans sb,         ',
'       cc_saldos sal',
' where rc.cod_empresa = :P_COD_EMPRESA',
'   and ((:P415_FEC_INICIAL is null and :P415_FEC_FINAL is null ) or',
'       rc.fec_recibo between :P415_FEC_INICIAL and :P415_FEC_FINAL)',
'   and (:P415_COD_CLIENTE is null or rc.cod_cliente = :P415_COD_CLIENTE)',
'   and (:P415_SER_RECIBO is null or rc.ser_recibo = :P415_SER_RECIBO)',
'   and (:P415_NRO_RECIBO is null or rc.nro_recibo = :P415_NRO_RECIBO)',
'   and nvl(rc.anulado, ''N'') <> ''S''',
'   and (:P415_TIP_CLIENTE is null or cl.tip_cliente = :P415_TIP_CLIENTE)',
'   and (:P415_COD_SECCION is null or sal.cod_sector = :P415_COD_SECCION)',
'   and rc.cod_empresa = cl.cod_empresa',
'   and rc.cod_cliente = cl.cod_cliente',
'   and cl.cod_persona = pc.cod_persona(+)',
'   and rc.cod_empresa = rd.cod_empresa',
'   and rc.tip_recibo = rd.tip_recibo',
'   and rc.ser_recibo = rd.ser_recibo',
'   and rc.nro_recibo = rd.nro_recibo',
'   and rd.cod_moneda_cuota = mo.cod_moneda(+)',
'   and rd.cod_empresa = sb.cod_empresa',
'   and rd.tipo_trans = sb.tipo_trans',
'   and rd.sub_tipo_trans = sb.subtipo_trans',
'   and rc.nro_mov_caj is not null',
'   and (rd.sub_tipo_trans = :P415_SUB_TIPO_TRANS or :P415_SUB_TIPO_TRANS is null)',
'   and rd.cod_empresa = sal.cod_empresa',
'   and rd.tip_factura_ref = sal.tipo_comprobante',
'   and rd.ser_factura_ref = sal.ser_comprobante',
'   and rd.nro_factura_ref = sal.nro_comprobante',
'   and rd.nro_cuota = sal.nro_cuota',
'   and (:P415_COD_CUSTODIO is null or rc.cod_custodio = :P415_COD_CUSTODIO) -- agregado',
'   and (:P415_COD_COBRADOR is null or rc.cod_cobrador = :P415_COD_COBRADOR) -- agregado',
'   and :P415_CONTROL = 2',
'  order by 2, rc.fec_recibo, rc.ser_recibo, rc.nro_recibo,',
'            rd.tip_factura_ref, rd.ser_factura_ref, rd.nro_factura_ref, rd.nro_cuota'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P415_COD_CLIENTE,P415_TIP_CLIENTE,P415_COD_SECCION,P415_COD_COBRADOR,P415_COD_CUSTODIO,P415_SER_RECIBO,P415_NRO_RECIBO,P415_SUB_TIPO_TRANS,P415_FEC_INICIAL,P415_FEC_FINAL,P415_CONTROL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE 2'
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
 p_id=>wwv_flow_imp.id(121308566157097620)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>121308566157097620
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121308611979097621)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121308765171097622)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121308889796097623)
,p_db_column_name=>'FEC_RECIBO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121308951004097624)
,p_db_column_name=>'TIP_FACTURA_REF'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tipo Factura'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121309036776097625)
,p_db_column_name=>'SER_FACTURA_REF'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Serie Factura'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121309154355097626)
,p_db_column_name=>'NRO_FACTURA_REF'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nro. Factura'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121309210377097627)
,p_db_column_name=>'NRO_CUOTA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cuota'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121309308138097628)
,p_db_column_name=>'SER_RECIBO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Serie Recibo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121309411529097629)
,p_db_column_name=>'NRO_RECIBO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Nro. Recibo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121309509594097630)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121309681998097631)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>unistr('Cotizaci\00F3n')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121309751221097632)
,p_db_column_name=>'DESC_MONEDA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121309832851097633)
,p_db_column_name=>'SUB_TIPO_TRANS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Sub Tipo Trans'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121309973187097634)
,p_db_column_name=>'DESC_TIPO_TRANS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Concepto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121310027072097635)
,p_db_column_name=>'SER_MOV_CAJ'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Ser Mov Caj'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121310123802097636)
,p_db_column_name=>'NRO_MOV_CAJ'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Nro Mov Caj'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121310205900097637)
,p_db_column_name=>'TIP_MOV_CAJ'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Tip Mov Caj'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121310367595097638)
,p_db_column_name=>'IMPORTE_GS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Monto Gs.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121310452889097639)
,p_db_column_name=>'IMPORTE_US'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Monto Us$'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121310538249097640)
,p_db_column_name=>'FACTURA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Factura'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121310636779097641)
,p_db_column_name=>'FORMA_COBRO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Forma de Cobro'
,p_column_link=>'javascript:$s(''P415_TIP_MOV_CAJ_DET'',''#TIP_MOV_CAJ#''),$s(''P415_SER_MOV_CAJ_DET'',''#SER_MOV_CAJ#''),$s(''P415_NRO_MOV_CAJ_DET'',''#NRO_MOV_CAJ#'');'
,p_column_linktext=>'<span class="fa fa-search">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(121733747702246694)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1217338'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_CLIENTE:NOM_CLIENTE:FEC_RECIBO:TIP_FACTURA_REF:SER_FACTURA_REF:NRO_FACTURA_REF:NRO_CUOTA:SER_RECIBO:NRO_RECIBO:COD_MONEDA:TIP_CAMBIO:DESC_MONEDA:SUB_TIPO_TRANS:DESC_TIPO_TRANS:SER_MOV_CAJ:NRO_MOV_CAJ:TIP_MOV_CAJ:IMPORTE_GS:IMPORTE_US:FACTURA:FORM'
||'A_COBRO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121307974470097614)
,p_plug_name=>'Totales por moneda'
,p_parent_plug_id=>wwv_flow_imp.id(120961217185709417)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rc.cod_moneda res_cod_moneda, ',
'       mo.descripcion res_desc_moneda, ',
'       sum(nvl(rd.monto_cuota, 0)) total ',
'  from cc_recibos rc,',
'       cc_detalle_recibos rd,',
'       cc_clientes cl,',
'       monedas mo,',
'       personas pc,',
'       subtipos_trans sb,',
'       cc_movimientos_cajas mv,',
'       cc_saldos sal',
' where rc.cod_empresa = :P_COD_EMPRESA',
'   and ((:P415_FEC_INICIAL is null and :P415_FEC_FINAL is null) or',
'       rc.fec_recibo between :P415_FEC_INICIAL and :P415_FEC_FINAL)',
'   and (:P415_TIP_CLIENTE is null or cl.tip_cliente = :P415_TIP_CLIENTE)',
'   and (:P415_COD_CLIENTE is null or rc.cod_cliente = :P415_COD_CLIENTE)',
'   and (:P415_COD_SECCION is null or sal.cod_sector = :P415_COD_SECCION)',
'   and (:P415_SER_RECIBO is null or rc.ser_recibo = :P415_SER_RECIBO)',
'   and (:P415_NRO_RECIBO is null or rc.nro_recibo = :P415_NRO_RECIBO)',
'   and (rd.sub_tipo_trans = :P415_SUB_TIPO_TRANS or :P415_SUB_TIPO_TRANS is null)',
'   and nvl(rc.anulado, ''N'') <> ''S''',
'   and rc.cod_empresa = cl.cod_empresa',
'   and rc.cod_cliente = cl.cod_cliente',
'   and cl.cod_persona = pc.cod_persona(+)',
'   and rc.cod_empresa = rd.cod_empresa',
'   and rc.tip_recibo = rd.tip_recibo',
'   and rc.ser_recibo = rd.ser_recibo',
'   and rc.nro_recibo = rd.nro_recibo',
'   and rd.cod_moneda_cuota = mo.cod_moneda(+)',
'   and rd.cod_empresa = sb.cod_empresa',
'   and rd.tipo_trans = sb.tipo_trans',
'   and rd.sub_tipo_trans = sb.subtipo_trans',
'   and rc.cod_empresa = mv.cod_empresa',
'   and rc.nro_mov_caj is not null',
'   and rc.cod_empresa = mv.cod_empresa',
'   and rc.tip_mov_caj = mv.tip_mov_caj',
'   and rc.ser_mov_caj = mv.ser_mov_caj',
'   and rc.nro_mov_caj = mv.nro_mov_caj',
'   and rd.cod_empresa = sal.cod_empresa',
'   and rd.tip_factura_ref = sal.tipo_comprobante',
'   and rd.ser_factura_ref = sal.ser_comprobante',
'   and rd.nro_factura_ref = sal.nro_comprobante',
'   and rd.nro_cuota = sal.nro_cuota',
'   and (:P415_COD_CUSTODIO is null or rc.cod_custodio = :P415_COD_CUSTODIO) -- agregado ',
'   and (:P415_COD_COBRADOR is null or rc.cod_cobrador = :P415_COD_COBRADOR) -- agregado',
'   and :P415_CONTROL = 2',
'group by rc.cod_moneda, mo.descripcion',
'order by rc.cod_moneda'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P415_COD_CLIENTE,P415_TIP_CLIENTE,P415_COD_SECCION,P415_COD_COBRADOR,P415_COD_CUSTODIO,P415_SER_RECIBO,P415_NRO_RECIBO,P415_SUB_TIPO_TRANS,P415_FEC_INICIAL,P415_FEC_FINAL,P415_CONTROL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Totales por moneda'
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
 p_id=>wwv_flow_imp.id(121308011226097615)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>121308011226097615
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121308111911097616)
,p_db_column_name=>'RES_COD_MONEDA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Res Cod Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121308292069097617)
,p_db_column_name=>'RES_DESC_MONEDA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121308353206097618)
,p_db_column_name=>'TOTAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(121653549380508475)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1216536'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RES_DESC_MONEDA:TOTAL:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(120961387159709418)
,p_plug_name=>'Reporte 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rc.cod_cliente, ltrim( rtrim( nvl( pc.nombre, pc.nomb_fantasia ) ) ) nom_cliente,',
'       rc.fec_recibo,',
'       rd.tip_factura_ref, rd.ser_factura_ref,  rd.nro_factura_ref,',
'       rd.nro_cuota,',
'       rc.ser_recibo,  rc.nro_recibo,',
'       rd.cod_moneda_cuota cod_moneda, rd.tip_cambio,  mo.descripcion desc_moneda,',
'       rd.sub_tipo_trans, sb.descripcion desc_tipo_trans,',
'       mv.ser_mov_caj,  mv.nro_mov_caj,',
'       decode( rd.cod_moneda_cuota, ''1'', nvl( rd.monto_cuota, 0 ), 0 ) importe_gs,',
'       decode( rd.cod_moneda_cuota, ''2'', nvl( rd.monto_cuota, 0 ), 0 ) importe_us,',
'       REPLACE(sal.factura,''|'','''') factura       ',
'  from cc_recibos rc,',
'       cc_detalle_recibos rd,',
'       cc_clientes cl,',
'       monedas mo,',
'       personas pc,',
'       subtipos_trans sb,',
'       cc_movimientos_cajas mv,',
'       cc_saldos sal',
'  where rc.cod_empresa = :P_COD_EMPRESA',
'    and ((:P415_FEC_FINAL is null and :P415_FEC_FINAL is null) ',
'        or rc.fec_recibo between :P415_FEC_INICIAL and :P415_FEC_FINAL)',
'    and (:P415_TIP_CLIENTE is null or cl.tip_cliente = :P415_TIP_CLIENTE)',
'    and (:P415_COD_CLIENTE is null or rc.cod_cliente = :P415_COD_CLIENTE)',
'    and (:P415_COD_SECCION is null or sal.cod_sector = :P415_COD_SECCION)',
'    and (:P415_SER_RECIBO is null or rc.ser_recibo = :P415_SER_RECIBO)',
'    and (:P415_NRO_RECIBO is null or rc.nro_recibo = :P415_NRO_RECIBO)',
'    and nvl(rc.anulado, ''N'') <> ''S''',
'    and rc.cod_empresa = cl.cod_empresa',
'    and rc.cod_cliente = cl.cod_cliente',
'    and cl.cod_persona = pc.cod_persona(+)',
'    and rc.cod_empresa = rd.cod_empresa',
'    and rc.tip_recibo = rd.tip_recibo',
'    and rc.ser_recibo = rd.ser_recibo',
'    and rc.nro_recibo = rd.nro_recibo',
'    and rd.cod_moneda_cuota = mo.cod_moneda(+)',
'    and rd.cod_empresa = sb.cod_empresa',
'    and rd.tipo_trans = sb.tipo_trans',
'    and rd.sub_tipo_trans = sb.subtipo_trans',
'    and (rd.sub_tipo_trans = :P415_SUB_TIPO_TRANS or :P415_SUB_TIPO_TRANS is null)',
'    and rc.cod_empresa = mv.cod_empresa',
'    and rc.nro_mov_caj is not null',
'    and rc.cod_empresa = mv.cod_empresa',
'    and rc.tip_mov_caj = mv.tip_mov_caj',
'    and rc.ser_mov_caj = mv.ser_mov_caj',
'    and rc.nro_mov_caj = mv.nro_mov_caj',
'    and rd.cod_empresa = sal.cod_empresa',
'    and rd.tip_factura_ref = sal.tipo_comprobante',
'    and rd.ser_factura_ref = sal.ser_comprobante',
'    and rd.nro_factura_ref = sal.nro_comprobante',
'    and rd.nro_cuota = sal.nro_cuota',
'    and (:P415_COD_CUSTODIO is null or rc.cod_custodio = :P415_COD_CUSTODIO) -- agregado',
'    and (:P415_COD_COBRADOR is null or rc.cod_cobrador = :P415_COD_COBRADOR) -- agregado',
'    and :P415_CONTROL = 1',
'   order by 2, rc.fec_recibo, rc.ser_recibo, rc.nro_recibo,',
'            rd.tip_factura_ref, rd.ser_factura_ref, rd.nro_factura_ref, rd.nro_cuota'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P415_COD_CLIENTE,P415_TIP_CLIENTE,P415_COD_SECCION,P415_COD_COBRADOR,P415_COD_CUSTODIO,P415_SER_RECIBO,P415_NRO_RECIBO,P415_SUB_TIPO_TRANS,P415_FEC_INICIAL,P415_FEC_FINAL,P415_CONTROL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte 1'
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
 p_id=>wwv_flow_imp.id(120961452467709419)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>120961452467709419
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120961551313709420)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120961642864709421)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre  Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120961765705709422)
,p_db_column_name=>'FEC_RECIBO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120961836857709423)
,p_db_column_name=>'TIP_FACTURA_REF'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tipo Factura'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120961945642709424)
,p_db_column_name=>'SER_FACTURA_REF'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Serie Factura'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120962070190709425)
,p_db_column_name=>'NRO_FACTURA_REF'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nro. Factura'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120962182554709426)
,p_db_column_name=>'NRO_CUOTA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cuota'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120962203066709427)
,p_db_column_name=>'SER_RECIBO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Serie Recibo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120962327064709428)
,p_db_column_name=>'NRO_RECIBO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Nro. Recibo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120962440958709429)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120962543925709430)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>unistr('Cotizaci\00F3n')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120962696750709431)
,p_db_column_name=>'DESC_MONEDA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120962724781709432)
,p_db_column_name=>'SUB_TIPO_TRANS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Sub Tipo Trans'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120962878777709433)
,p_db_column_name=>'DESC_TIPO_TRANS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Concepto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120962989316709434)
,p_db_column_name=>'SER_MOV_CAJ'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Ser Mov Caj'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120963072359709435)
,p_db_column_name=>'NRO_MOV_CAJ'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Nro Mov Caj'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120963139027709436)
,p_db_column_name=>'IMPORTE_GS'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Importe Gs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120963239579709437)
,p_db_column_name=>'IMPORTE_US'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Importe Us'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120963347953709438)
,p_db_column_name=>'FACTURA'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Factura'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(121290360664952460)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1212904'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_CLIENTE:NOM_CLIENTE:FEC_RECIBO:DESC_TIPO_TRANS:FACTURA:TIP_FACTURA_REF:SER_FACTURA_REF:NRO_FACTURA_REF:NRO_CUOTA:SER_RECIBO:NRO_RECIBO:TIP_CAMBIO:DESC_MONEDA:IMPORTE_GS:IMPORTE_US:'
,p_break_on=>'COD_CLIENTE:0:0:0:0:0'
,p_break_enabled_on=>'COD_CLIENTE:0:0:0:0:0'
,p_sum_columns_on_break=>'IMPORTE_GS:IMPORTE_US'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(120964399356709448)
,p_plug_name=>'Totales por moneda'
,p_parent_plug_id=>wwv_flow_imp.id(120961387159709418)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rc.cod_moneda res_cod_moneda, ',
'       mo.descripcion res_desc_moneda, ',
'       sum(nvl(rd.monto_cuota, 0)) total ',
'  from cc_recibos rc,',
'       cc_detalle_recibos rd,',
'       cc_clientes cl,',
'       monedas mo,',
'       personas pc,',
'       subtipos_trans sb,',
'       cc_movimientos_cajas mv,',
'       cc_saldos sal',
' where rc.cod_empresa = :P_COD_EMPRESA',
'   and ((:P415_FEC_INICIAL is null and :P415_FEC_FINAL is null) or',
'       rc.fec_recibo between :P415_FEC_INICIAL and :P415_FEC_FINAL)',
'  and (:P415_TIP_CLIENTE is null or cl.tip_cliente = :P415_TIP_CLIENTE)',
'  and (:P415_COD_CLIENTE is null or rc.cod_cliente = :P415_COD_CLIENTE)',
'  and (:P415_COD_SECCION is null or sal.cod_sector = :P415_COD_SECCION)',
'  and (:P415_SER_RECIBO is null or rc.ser_recibo = :P415_SER_RECIBO)',
'  and (:P415_NRO_RECIBO is null or rc.nro_recibo = :P415_NRO_RECIBO)',
'  and (rd.sub_tipo_trans = :P415_SUB_TIPO_TRANS or :P415_SUB_TIPO_TRANS is null)',
'  and nvl(rc.anulado, ''N'') <> ''S''',
'  and rc.cod_empresa = cl.cod_empresa',
'  and rc.cod_cliente = cl.cod_cliente',
'  and cl.cod_persona = pc.cod_persona(+)',
'  and rc.cod_empresa = rd.cod_empresa',
'  and rc.tip_recibo = rd.tip_recibo',
'  and rc.ser_recibo = rd.ser_recibo',
'  and rc.nro_recibo = rd.nro_recibo',
'  and rd.cod_moneda_cuota = mo.cod_moneda(+)',
'  and rd.cod_empresa = sb.cod_empresa',
'  and rd.tipo_trans = sb.tipo_trans',
'  and rd.sub_tipo_trans = sb.subtipo_trans',
'  and rc.cod_empresa = mv.cod_empresa',
'  and rc.nro_mov_caj is not null',
'  and rc.cod_empresa = mv.cod_empresa',
'  and rc.tip_mov_caj = mv.tip_mov_caj',
'  and rc.ser_mov_caj = mv.ser_mov_caj',
'  and rc.nro_mov_caj = mv.nro_mov_caj',
'  and rd.cod_empresa = sal.cod_empresa',
'  and rd.tip_factura_ref = sal.tipo_comprobante',
'  and rd.ser_factura_ref = sal.ser_comprobante',
'  and rd.nro_factura_ref = sal.nro_comprobante',
'  and rd.nro_cuota = sal.nro_cuota',
'  and (:P415_COD_CUSTODIO is null or rc.cod_custodio = :P415_COD_CUSTODIO) -- agregado',
'  and (:P415_COD_COBRADOR is null or rc.cod_cobrador = :P415_COD_COBRADOR) -- agregado',
'  and :P415_CONTROL = 1',
'group by rc.cod_moneda, mo.descripcion',
'order by rc.cod_moneda'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P415_COD_CLIENTE,P415_TIP_CLIENTE,P415_COD_SECCION,P415_COD_COBRADOR,P415_COD_CUSTODIO,P415_SER_RECIBO,P415_NRO_RECIBO,P415_SUB_TIPO_TRANS,P415_FEC_INICIAL,P415_FEC_FINAL,P415_CONTROL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Totales por moneda'
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
 p_id=>wwv_flow_imp.id(120964405977709449)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>120964405977709449
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120964555968709450)
,p_db_column_name=>'RES_COD_MONEDA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Res Cod Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121306624605097601)
,p_db_column_name=>'RES_DESC_MONEDA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121306707137097602)
,p_db_column_name=>'TOTAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(121315061481100949)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1213151'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RES_COD_MONEDA:RES_DESC_MONEDA:TOTAL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121310965687097644)
,p_plug_name=>'Forma de Cobro'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1060
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121311318707097648)
,p_plug_name=>'SUB REPORTE 2'
,p_parent_plug_id=>wwv_flow_imp.id(121310965687097644)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select f.tip_mov_caj, ',
'       f.ser_mov_caj, ',
'       f.nro_mov_caj, ',
'       f.sub_tipo_trans, ',
'       s.descripcion, ',
'       f.monto, ',
'       f.cod_moneda_cobro, ',
'       f.tip_cambio tip_cambio_cob,',
'       f.fec_vencimiento fec_vencimiento_cob,',
'       f.cod_per_juridica, ',
'       f.fec_emision, ',
'       m.siglas siglas_cob, ',
'       f.nro_valor,',
'       ca.tot_nro_mov_caj, ',
'       p.nombre banco,',
'       to_date(ca.fec_alta,''DD-MM-YYYY HH:MI AM'') fecha_hora_mov_caj',
'  from cc_formas_cobros f,',
'       subtipos_trans s,',
'       monedas m, ',
'       cc_movimientos_cajas ca,',
'       personas p',
' where f.cod_empresa = :P_COD_EMPRESA',
'   and f.cod_empresa = s.cod_empresa',
'   and f.tipo_trans = s.tipo_trans',
'   and f.sub_tipo_trans = s.subtipo_trans',
'   and f.cod_moneda_cobro = m.cod_moneda(+)',
'   and f.cod_empresa = ca.cod_empresa',
'   and f.tip_mov_caj = ca.tip_mov_caj',
'   and f.ser_mov_caj = ca.ser_mov_caj',
'   and f.nro_mov_caj = ca.nro_mov_caj ',
'   and (f.sub_tipo_trans = :P415_SUB_TIPO_TRANS or :P415_SUB_TIPO_TRANS is null)',
'   and f.tip_mov_caj = :P415_TIP_MOV_CAJ_DET',
'   and f.ser_mov_caj = :P415_SER_MOV_CAJ_DET',
'   and f.nro_mov_caj = :P415_NRO_MOV_CAJ_DET',
'   and f.cod_per_juridica = p.cod_persona(+)',
'order by 1'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P415_SUB_TIPO_TRANS,P415_TIP_MOV_CAJ_DET,P415_SER_MOV_CAJ_DET,P415_NRO_MOV_CAJ_DET'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'SUB REPORTE 2'
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
 p_id=>wwv_flow_imp.id(121311458817097649)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>121311458817097649
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121311562497097650)
,p_db_column_name=>'TIP_MOV_CAJ'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tip Mov Caj'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121747924006419401)
,p_db_column_name=>'SER_MOV_CAJ'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ser Mov Caj'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121748011952419402)
,p_db_column_name=>'NRO_MOV_CAJ'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Mov Caj'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121748181875419403)
,p_db_column_name=>'SUB_TIPO_TRANS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Concepto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121748210269419404)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121748348230419405)
,p_db_column_name=>'MONTO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121748478049419406)
,p_db_column_name=>'COD_MONEDA_COBRO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Moneda Cobro'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121748579931419407)
,p_db_column_name=>'TIP_CAMBIO_COB'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Tip Cambio Cob'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121748663357419408)
,p_db_column_name=>'FEC_VENCIMIENTO_COB'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fecha Vencimiento del Cobro'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121748705594419409)
,p_db_column_name=>'COD_PER_JURIDICA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Per Juridica'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121748862577419410)
,p_db_column_name=>'FEC_EMISION'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Fec Emision'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121748999286419411)
,p_db_column_name=>'SIGLAS_COB'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Siglas Cob'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121749005334419412)
,p_db_column_name=>'NRO_VALOR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Nro. Valor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121749112813419413)
,p_db_column_name=>'TOT_NRO_MOV_CAJ'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Tot Nro Mov Caj'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121749240880419414)
,p_db_column_name=>'BANCO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Banco'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(121749358642419415)
,p_db_column_name=>'FECHA_HORA_MOV_CAJ'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Fecha y Hora de Mov. Caja'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(121761184430455254)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1217612'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DESCRIPCION:SUB_TIPO_TRANS:FEC_VENCIMIENTO_COB:NRO_VALOR:MONTO:FECHA_HORA_MOV_CAJ:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(120960655339709411)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(118481107202648249)
,p_button_name=>'BTEJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118481264139648250)
,p_name=>'P415_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(118481107202648249)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_CCRECOME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_cliente||'' - ''||ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) D,',
'       cod_cliente R',
'  from cc_clientes c, ',
'       personas p ',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_persona = p.cod_persona ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Seleccione-'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(120959619385709401)
,p_name=>'P415_VER_FC'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(118481107202648249)
,p_prompt=>'Ver Forma de Cobro'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(120959786471709402)
,p_name=>'P415_FEC_FINAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(118481107202648249)
,p_prompt=>'Periodo Final'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(120959825443709403)
,p_name=>'P415_FEC_INICIAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(118481107202648249)
,p_prompt=>'Periodo Inicial'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(120959921653709404)
,p_name=>'P415_SUB_TIPO_TRANS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(118481107202648249)
,p_prompt=>'Forma Pago'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select subtipo_trans||'' - ''||descripcion D,',
'       subtipo_trans R',
'  from subtipos_trans ',
' where cod_empresa = :P_COD_EMPRESA',
'   and cod_modulo = :P415_COD_MODULO',
'   and tipo_trans = :P415_TIPO_TRANS'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Seleccione-'
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
 p_id=>wwv_flow_imp.id(120960075240709405)
,p_name=>'P415_NRO_RECIBO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(118481107202648249)
,p_prompt=>'Nro. Recibo'
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
 p_id=>wwv_flow_imp.id(120960154350709406)
,p_name=>'P415_SER_RECIBO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(118481107202648249)
,p_prompt=>'Ser Recibo'
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
 p_id=>wwv_flow_imp.id(120960230075709407)
,p_name=>'P415_COD_CUSTODIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(118481107202648249)
,p_prompt=>'Custodio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CUSTODIOS_CCRECOME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_custodio||'' - ''||descripcion D,',
'       cod_custodio R',
'  from cc_custodios ',
' where cod_empresa = :P_COD_EMPRESA ',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Seleccione-'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(120960382461709408)
,p_name=>'P415_COD_COBRADOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(118481107202648249)
,p_prompt=>'Cobrador'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_COBRADORES_CCRECOME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cc.cod_cobrador||'' - ''||p.nombre D, ',
'       cc.cod_cobrador R',
'  from personas p, ',
'       cc_cobradores cc ',
' where cc.cod_empresa = :P_COD_EMPRESA',
'   and cc.cod_persona = p.cod_persona ',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Seleccione-'
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
 p_id=>wwv_flow_imp.id(120960498131709409)
,p_name=>'P415_COD_SECCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(118481107202648249)
,p_prompt=>unistr('Secci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SECCIONES_CCRECOME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sector||'' - ''||descripcion D, ',
'       cod_sector R',
'  from sectores ',
' where cod_empresa = :P_COD_EMPRESA  ',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Seleccione-'
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
 p_id=>wwv_flow_imp.id(120960553450709410)
,p_name=>'P415_TIP_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(118481107202648249)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TIPO_CLIENTES_CCRECOME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_tip_cliente ||'' - ''||descripcion D,',
'       cod_tip_cliente R',
'  from cc_tipo_cliente',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Seleccione-'
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
 p_id=>wwv_flow_imp.id(120960982978709414)
,p_name=>'P415_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(120960896804709413)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(120961014752709415)
,p_name=>'P415_TIPO_TRANS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(120960896804709413)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(120963679725709441)
,p_name=>'P415_CONTROL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(118481107202648249)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121311028181097645)
,p_name=>'P415_TIP_MOV_CAJ_DET'
,p_item_sequence=>1030
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121311112709097646)
,p_name=>'P415_NRO_MOV_CAJ_DET'
,p_item_sequence=>1050
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121311275039097647)
,p_name=>'P415_SER_MOV_CAJ_DET'
,p_item_sequence=>1040
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(120963471528709439)
,p_name=>'DA_BTEJECUTAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(120960655339709411)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121307332028097608)
,p_event_id=>wwv_flow_imp.id(120963471528709439)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P415_VER_FC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(120963878393709443)
,p_event_id=>wwv_flow_imp.id(120963471528709439)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P415_VER_FC = ''N'' THEN',
'        :P415_CONTROL := 1;',
'    ELSE',
'        :P415_CONTROL := 2;',
'    END IF;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTEJECUTAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P415_VER_FC'
,p_attribute_03=>'P415_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121307400596097609)
,p_event_id=>wwv_flow_imp.id(120963471528709439)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(120961387159709418)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P415_CONTROL'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121307516857097610)
,p_event_id=>wwv_flow_imp.id(120963471528709439)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(120961217185709417)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P415_CONTROL'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121307606759097611)
,p_event_id=>wwv_flow_imp.id(120963471528709439)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(120961217185709417)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P415_CONTROL'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121307761938097612)
,p_event_id=>wwv_flow_imp.id(120963471528709439)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(120961387159709418)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P415_CONTROL'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(120963509337709440)
,p_event_id=>wwv_flow_imp.id(120963471528709439)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(120961387159709418)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121307826391097613)
,p_event_id=>wwv_flow_imp.id(120963471528709439)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(120964399356709448)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121310780766097642)
,p_event_id=>wwv_flow_imp.id(120963471528709439)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(120961217185709417)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121310827514097643)
,p_event_id=>wwv_flow_imp.id(120963471528709439)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(121307974470097614)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(121306869430097603)
,p_name=>'DA_LOAD'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121306939007097604)
,p_event_id=>wwv_flow_imp.id(121306869430097603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(120961387159709418)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121308448572097619)
,p_event_id=>wwv_flow_imp.id(121306869430097603)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(120961217185709417)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(121749445987419416)
,p_name=>'DA_NRO_NOV_CAJ_DET'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P415_NRO_MOV_CAJ_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121749571447419417)
,p_event_id=>wwv_flow_imp.id(121749445987419416)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P415_TIP_MOV_CAJ_DET,P415_SER_MOV_CAJ_DET,P415_NRO_MOV_CAJ_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121749689147419418)
,p_event_id=>wwv_flow_imp.id(121749445987419416)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(121310965687097644)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121749752079419419)
,p_event_id=>wwv_flow_imp.id(121749445987419416)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(121311318707097648)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(120963772350709442)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(120961100775709416)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P415_COD_MODULO := ''CC'';',
'    :P415_TIPO_TRANS := BS_BUSCA_PARAMETRO(:P415_COD_MODULO,''VALOR_COBRO'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_INIT ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
