prompt --application/pages/page_00106
begin
--   Manifest
--     PAGE: 00106
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
 p_id=>106
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTRPRERE'
,p_alias=>'VTRPRERE'
,p_step_title=>'VTRPRERE'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230204103204'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21877888212145801)
,p_plug_name=>'DATOS'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21878857550145811)
,p_plug_name=>'Reporte'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select c.cod_sucursal, s.descripcion desc_sucursal,',
'       c.tip_comprobante, c.ser_comprobante, c.nro_comprobante, c.fec_comprobante, c.cod_cliente, c.cod_vendedor,',
'       nvl( c.nom_cliente, nvl(c.nombre_cab,nvl( p.nombre, p.nomb_fantasia ) )) nom_cliente, c.cod_moneda, m.siglas,',
'      0 descuentos, 0 recargos,',
'       round( nvl( c.tot_exentas, 0 ), 2 ) + round( nvl( c.tot_gravadas, 0 ), 2 ) total_bruto,',
'      0 total_neto,',
'       c.tot_comprobante, c.flete_total, c.peso_total, c.volumen_total,',
'       null cod_proveedor,null  nom_proveedor, c.comentario, c.cod_usuario, c.hora_alta',
'   from vt_presupuesto_cabecera c, monedas m, cc_clientes cli, personas p, sucursales s,',
'          vt_presupuesto_detalle d',
'   where c.cod_empresa = :P_COD_EMPRESA',
'     and ( trunc( c.fec_comprobante ) >= to_date(:P106_FEC_INICIAL, ''dd/mm/yyyy'') or to_date(:P106_FEC_INICIAL, ''dd/mm/yyyy'') is null )',
'     and ( trunc( c.fec_comprobante ) <= to_date(:P106_FEC_FINAL, ''dd/mm/yyyy'') or to_date(:P106_FEC_FINAL, ''dd/mm/yyyy'') is null )',
'     and ( c.ser_comprobante >= :P106_SER_COMPROBANTE_DESDE or :P106_SER_COMPROBANTE_DESDE is null )',
'     and ( c.nro_comprobante >= :P106_NRO_COMPROBANTE_DESDE or :P106_NRO_COMPROBANTE_DESDE is null )',
'     and ( c.ser_comprobante <= :P106_SER_COMPROBANTE_HASTA or :P106_SER_COMPROBANTE_HASTA is null )',
'     and ( c.nro_comprobante <= :P106_NRO_COMPROBANTE_HASTA or :P106_NRO_COMPROBANTE_HASTA is null )',
'     and ( c.cod_vendedor  = :P106_COD_VENDEDOR or :P106_COD_VENDEDOR is null )',
'     and ( c.ser_comprobante = :P106_SER_COMPROBANTE or :P106_SER_COMPROBANTE is null )',
'     and ( c.cod_sucursal  = :P106_COD_SUCURSAL or :P106_COD_SUCURSAL is null )',
'     and ( c.cod_cliente   = :P106_COD_CLIENTE  or :P106_COD_CLIENTE  is null )',
'',
'     and c.cod_moneda      = m.cod_moneda(+)',
'     and c.cod_empresa     = cli.cod_empresa',
'     and c.cod_cliente     = cli.cod_cliente',
'     and cli.cod_persona   = p.cod_persona',
'     and c.cod_empresa     = s.cod_empresa',
'     and c.cod_sucursal    = s.cod_sucursal',
'and c.cod_empresa=d.cod_empresa',
'and c.tip_comprobante=d.tip_comprobante',
'and c.ser_comprobante=d.ser_comprobante',
'and c.nro_comprobante=d.nro_comprobante',
'',
'',
'',
'     /*and (c.cod_flete = :p_cod_flete or :p_cod_flete is null)*/'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P106_COD_SUCURSAL,P106_SER_COMPROBANTE_DESDE,P106_NRO_COMPROBANTE_DESDE,P106_SER_COMPROBANTE_HASTA,P106_NRO_COMPROBANTE_HASTA,P106_FEC_INICIAL,P106_FEC_FINAL,P106_COD_CLIENTE,P106_COD_VENDEDOR,P106_SER_COMPROBANTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(21881623155145839)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>21881623155145839
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21881817348145841)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'B'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21881940292145842)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'C'
,p_column_label=>'Desc Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21882084856145843)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21882172546145844)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21882266518145845)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21882381415145846)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21882488363145847)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21882554484145848)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21882638471145849)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Nom Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21882774111145850)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22356975647456201)
,p_db_column_name=>'SIGLAS'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Siglas'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22357072414456202)
,p_db_column_name=>'DESCUENTOS'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>'Descuentos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22357185834456203)
,p_db_column_name=>'RECARGOS'
,p_display_order=>130
,p_column_identifier=>'N'
,p_column_label=>'Recargos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22357257699456204)
,p_db_column_name=>'TOTAL_BRUTO'
,p_display_order=>140
,p_column_identifier=>'O'
,p_column_label=>'Total Bruto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22357338416456205)
,p_db_column_name=>'TOTAL_NETO'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>'Total Neto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22357408530456206)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'Tot Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22357577708456207)
,p_db_column_name=>'FLETE_TOTAL'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Flete Total'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22357632223456208)
,p_db_column_name=>'PESO_TOTAL'
,p_display_order=>180
,p_column_identifier=>'S'
,p_column_label=>'Peso Total'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22357722035456209)
,p_db_column_name=>'VOLUMEN_TOTAL'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>'Volumen Total'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22357859822456210)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>200
,p_column_identifier=>'U'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22357958843456211)
,p_db_column_name=>'NOM_PROVEEDOR'
,p_display_order=>210
,p_column_identifier=>'V'
,p_column_label=>'Nom Proveedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22358093339456212)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>220
,p_column_identifier=>'W'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22358137439456213)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>230
,p_column_identifier=>'X'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22358205894456214)
,p_db_column_name=>'HORA_ALTA'
,p_display_order=>240
,p_column_identifier=>'Y'
,p_column_label=>'Hora Alta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(22353378725399337)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'223534'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_CLIENTE:COD_MONEDA:COD_PROVEEDOR:COD_SUCURSAL:COD_USUARIO:COD_VENDEDOR:COMENTARIO:DESC_SUCURSAL:DESCUENTOS:FEC_COMPROBANTE:FLETE_TOTAL:HORA_ALTA:NOM_CLIENTE:NOM_PROVEEDOR:NRO_COMPROBANTE:PESO_TOTAL:RECARGOS:SER_COMPROBANTE:SIGLAS:TIP_COMPROBANTE:'
||'TOT_COMPROBANTE:TOTAL_BRUTO:TOTAL_NETO:VOLUMEN_TOTAL:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22889292993030417)
,p_plug_name=>'CALCULOS'
,p_parent_plug_id=>wwv_flow_imp.id(21878857550145811)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23554602575776306)
,p_plug_name=>'REPORT'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  c001 cod_sucursal, ',
'        c002 desc_sucursal,',
'        c003 tip_comprobante,',
'        c004 ser_comprobante,',
'        c005 nro_comprobante,',
'        c006 fec_comprobante,',
'        c007 cod_client,',
'        c008 cod_vendedor,',
'        c009 nom_cliente,',
'        c010 cod_moneda,',
'        c011 siglas,',
'        c012 descuentos,',
'        c013 recargos,',
'        c014 total_bruto,',
'        c015 total_neto,',
'        c016 tot_comprobante,',
'        c017 peso_total,',
'        c018 volumen_total,',
'        c019 cod_proveedor,',
'        c020 nom_proveedor,',
'        c021 comentario,',
'        c022 cod_usuario,',
'        c023 hora_alta,',
'        c024 v_moneda_tipo',
' FROM apex_collections',
' WHERE collection_name = ''COL_VTRPRERE'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORT'
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
 p_id=>wwv_flow_imp.id(23554739571776307)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>23554739571776307
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23554886195776308)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23554996119776309)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Desc Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23555008535776310)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23555167854776311)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23555256768776312)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23555377147776313)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23555485219776314)
,p_db_column_name=>'COD_CLIENT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Client'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23555550603776315)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23555695316776316)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Nom Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23555771205776317)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23555847306776318)
,p_db_column_name=>'SIGLAS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Siglas'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23555906415776319)
,p_db_column_name=>'DESCUENTOS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Descuentos'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23556055531776320)
,p_db_column_name=>'RECARGOS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Recargos'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23556165116776321)
,p_db_column_name=>'TOTAL_BRUTO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Total Bruto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23556274147776322)
,p_db_column_name=>'TOTAL_NETO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Total Neto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23556344083776323)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Tot Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23556410418776324)
,p_db_column_name=>'PESO_TOTAL'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Peso Total'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23556591707776325)
,p_db_column_name=>'VOLUMEN_TOTAL'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Volumen Total'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23556676020776326)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23556792846776327)
,p_db_column_name=>'NOM_PROVEEDOR'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Nom Proveedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23556838229776328)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23556909779776329)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23557015561776330)
,p_db_column_name=>'HORA_ALTA'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Hora Alta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23557106551776331)
,p_db_column_name=>'V_MONEDA_TIPO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'V Moneda Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(23953400449909671)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'239535'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_SUCURSAL:DESC_SUCURSAL:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:FEC_COMPROBANTE:COD_CLIENT:COD_VENDEDOR:NOM_CLIENTE:COD_MONEDA:SIGLAS:DESCUENTOS:RECARGOS:TOTAL_BRUTO:TOTAL_NETO:TOT_COMPROBANTE:PESO_TOTAL:VOLUMEN_TOTAL:COD_PROVEEDOR:NOM_PRO'
||'VEEDOR:COMENTARIO:COD_USUARIO:HORA_ALTA:V_MONEDA_TIPO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21878291694145805)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(21877888212145801)
,p_button_name=>'P106_FILTRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Filtrar'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="width:100%"'
,p_grid_new_row=>'Y'
,p_grid_column_span=>4
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21877989808145802)
,p_name=>'P106_COD_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(21877888212145801)
,p_prompt=>'Sucursal:'
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
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21878018935145803)
,p_name=>'P106_FEC_INICIAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(21877888212145801)
,p_prompt=>unistr('Per\00EDodo de presupuesto')
,p_placeholder=>'desde:'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'N'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'VISIBLE'
,p_attribute_15=>'FOCUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21878157588145804)
,p_name=>'P106_FEC_FINAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(21877888212145801)
,p_prompt=>unistr('Per\00EDodo de presupuesto')
,p_placeholder=>'hasta:'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'N'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'VISIBLE'
,p_attribute_15=>'FOCUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21878368198145806)
,p_name=>'P106_COD_CLIENTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(21877888212145801)
,p_prompt=>'Cliente:'
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
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21878441879145807)
,p_name=>'P106_SER_COMPROBANTE_DESDE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(21877888212145801)
,p_prompt=>'Nro. desde:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21878528604145808)
,p_name=>'P106_SER_COMPROBANTE_HASTA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(21877888212145801)
,p_prompt=>'Nro. hasta:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21878696955145809)
,p_name=>'P106_COD_VENDEDOR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(21877888212145801)
,p_prompt=>'Vendedor:'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDORES_VTNOTCRE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT v.cod_vendedor||'' - ''||nvl( ltrim( v.descripcion ), ltrim( p.nomb_fantasia ) ) D, ',
'         v.cod_vendedor R',
'    FROM fv_vendedores v, personas p ',
'   WHERE v.cod_empresa = :P_COD_EMPRESA',
'     AND v.cod_persona = p.cod_persona ',
'     AND nvl( v.estado, ''A'' ) = ''A'' ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21881545090145838)
,p_name=>'P106_SER_COMPROBANTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(21877888212145801)
,p_prompt=>'<b>Serie:</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22358548728456217)
,p_name=>'P106_NRO_COMPROBANTE_DESDE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(21877888212145801)
,p_prompt=>'Nro. Comprobante desde:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22358666905456218)
,p_name=>'P106_NRO_COMPROBANTE_HASTA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(21877888212145801)
,p_prompt=>'Nro. Comprobante hasta:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22889301699030418)
,p_name=>'P106_CALCULO_BRUTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22889292993030417)
,p_prompt=>'Calculo Bruto'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22358362505456215)
,p_name=>'DA_FILTRAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(21878291694145805)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22360196062456233)
,p_event_id=>wwv_flow_imp.id(22358362505456215)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var p106_fec_inicial = apex.item("P106_FEC_INICIAL").getValue();',
'if (!p106_fec_inicial)',
'    apex.message.showErrors([',
'        {',
'            type: apex.message.TYPE.ERROR,',
'            location: ["inline"],',
'            pageItem: "P106_FEC_INICIAL",',
'            message: "Este campo es obligatorio.",',
'            unsafe: false',
'        }',
'    ]);',
'else ',
'    apex.message.clearErrors();',
''))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22888594576030410)
,p_event_id=>wwv_flow_imp.id(22358362505456215)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var p106_fec_final = apex.item("P106_FEC_FINAL").getValue();',
'if (!p106_fec_final)',
'    apex.message.showErrors([',
'        {',
'            type: apex.message.TYPE.ERROR,',
'            location: ["inline"],',
'            pageItem: "P106_FEC_FINAL",',
'            message: "Este campo es obligatorio.",',
'            unsafe: false',
'        }',
'    ]);',
'else ',
'    apex.message.clearErrors();',
''))
,p_server_condition_type=>'NEVER'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22888626295030411)
,p_event_id=>wwv_flow_imp.id(22358362505456215)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var p106_fec_inicial = apex.item("P106_FEC_INICIAL").getValue();',
'var p106_fec_final = apex.item("P106_FEC_FINAL").getValue();',
'',
'if (p106_fec_inicial && p106_fec_final)',
'    if (p106_fec_final < p106_fec_inicial) ',
'            apex.message.showErrors([',
'            {',
'                type: apex.message.TYPE.ERROR,',
'                location: ["inline"],',
'                pageItem: "P106_FEC_FINAL",            ',
'                message: "La fecha final del periodo de presupuesto no puede ser mayor a la fecha inicial.",',
'                unsafe: false',
'            }',
'        ]);',
'',
'',
'    ',
''))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23554313293776303)
,p_event_id=>wwv_flow_imp.id(22358362505456215)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    apex_debug.error(''entro al proceso'');',
'',
'    vtrprere.pr_generar_collection(PI_FEC_INICIAL => :P106_FEC_INICIAL,',
'                                    PI_FEC_FINAL => :P106_FEC_FINAL,',
'                                    PI_SER_COMPROBANTE_DESDE => :P106_NRO_COMPROBANTE_DESDE,',
'                                    PI_NRO_COMPROBANTE_DESDE => :P106_NRO_COMPROBANTE_DESDE,',
'                                    PI_SER_COMPROBANTE_HASTA => :P106_SER_COMPROBANTE_HASTA,',
'                                    PI_NRO_COMPROBANTE_HASTA => :P106_NRO_COMPROBANTE_HASTA,',
'                                    PI_COD_VENDEDOR => :P106_COD_VENDEDOR,',
'                                    PI_SER_COMPROBANTE => :P106_SER_COMPROBANTE,',
'                                    PI_COD_SUCURSAL => :P106_COD_SUCURSAL,',
'                                    PI_COD_CLIENTE => :P106_COD_CLIENTE);',
'',
'',
'exception',
'    when others then',
'        apex_debug.ERROR(SQLerrm);',
'',
'end;',
''))
,p_attribute_02=>'P106_FEC_INICIAL, P106_FEC_FINAL, P106_NRO_COMPROBANTE_DESDE, P106_NRO_COMPROBANTE_DESDE,P106_SER_COMPROBANTE_HASTA, P106_NRO_COMPROBANTE_HASTA, P106_COD_VENDEDOR, P106_SER_COMPROBANTE, P106_COD_SUCURSAL, P106_COD_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23557795661776337)
,p_event_id=>wwv_flow_imp.id(22358362505456215)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(23554602575776306)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23557400663776334)
,p_event_id=>wwv_flow_imp.id(22358362505456215)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(23554602575776306)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23557207559776332)
,p_name=>'DA_REPORT_OCULTO'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23557344984776333)
,p_event_id=>wwv_flow_imp.id(23557207559776332)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(23554602575776306)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22359188164456223)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR_FIELDS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(23558199656776341)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    apex_collection.create_or_truncate_collection(p_collection_name => ''COL_VTRPRERE'');',
'',
'    :P106_FEC_INICIAL := SYSDATE;',
'    :P106_FEC_FINAL := SYSDATE;',
'exception   ',
'',
'    when others then',
'        apex_debug.ERROR(''SQLerrm'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
