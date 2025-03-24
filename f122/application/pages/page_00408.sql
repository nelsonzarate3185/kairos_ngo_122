prompt --application/pages/page_00408
begin
--   Manifest
--     PAGE: 00408
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
 p_id=>408
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Recibos Emitidos'
,p_alias=>'RECIBOS-EMITIDOS'
,p_step_title=>'Recibos Emitidos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'FPONCE'
,p_last_upd_yyyymmddhh24miss=>'20230302151419'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(114630359262852308)
,p_plug_name=>'Filtros a Aplicar'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(114631517702852320)
,p_plug_name=>'Reporte'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select r.cod_sucursal,',
'        r.nro_recibo,',
'        r.cod_cliente,',
'        r.fec_recibo,',
'        r.cod_cobrador,',
'        r.cod_moneda,',
'        r.tip_cambio,',
'        sum(decode(nvl(r.anulado, ''N''), ''S'', 0, r.tot_recibo)) tot_recibo,',
'        m.descripcion moneda,',
'        nvl(m.decimales, 0) decimales,',
'        r.cod_cobrador||''-''||ltrim(pc.nombre) cobrador,',
'        r.cod_cliente||''-''||ltrim(decode(nvl(r.anulado, ''N''), ''S'', ''A N U L A D O'', p.nombre)) cliente,',
'        s.descripcion sucursal,',
'        m.siglas,',
'        r.ser_recibo,',
'        ( select TO_CHAR(MAX(NRO_PLANILLA))',
'            from Cc_Plan_Translado_Det cp',
'            where cp.cod_empresa = r.cod_empresa',
'            and cp.SER_COMPROBANTE = r.ser_recibo',
'            and cp.NRO_COMPROBANTE = TO_CHAR(r.nro_recibo))nro_planilla,',
'        (Case when nvl(r.cod_moneda,1) = 1 then',
'            sum(decode(nvl(r.anulado, ''N''), ''S'', 0, r.tot_recibo))',
'            else 0',
'         end) monto_base,',
'         (Case when nvl(r.cod_moneda,1) <> 1 then',
'            sum(decode(nvl(r.anulado, ''N''), ''S'', 0, r.tot_recibo))',
'            else 0',
'         end) monto_otro',
'from cc_recibos         r,',
'    cc_clientes        c,',
'    cc_cobradores      cb,',
'    monedas            m,',
'    personas           p,',
'    personas           pc,',
'    sucursales         s',
'where r.cod_empresa = :p_cod_empresa',
'and ((:P408_FEC_INI is null and :P408_FEC_FIN is null) or r.fec_recibo between :P408_FEC_INI and :P408_FEC_FIN)',
'and (:P408_COD_SUCURSAL IS NULL or r.cod_sucursal = :P408_COD_SUCURSAL)',
'and r.cod_empresa = s.cod_empresa(+)',
'and r.cod_sucursal = s.cod_sucursal(+)',
'and (:P408_COD_COBRADOR IS NULL or r.cod_cobrador = :P408_COD_COBRADOR)',
'and (:P408_COD_CLIENTE IS NULL or r.cod_cliente = :P408_COD_CLIENTE)',
'and (:P408_COD_TIP_CLIENTE is null or c.tip_cliente = :P408_COD_TIP_CLIENTE)',
'and r.cod_empresa = c.cod_empresa',
'and r.cod_cliente = c.cod_cliente',
'and c.cod_persona = p.cod_persona(+)',
'and r.cod_empresa = cb.cod_empresa(+)',
'and r.cod_cobrador = cb.cod_cobrador(+)',
'and cb.cod_persona = pc.cod_persona(+)',
'and r.cod_moneda = m.cod_moneda(+)',
'and  (:P408_COD_CUSTODIO is null or r.cod_custodio = :P408_COD_CUSTODIO) -- agregado',
'and :P408_SHOW_REPORT =1',
'group by r.cod_sucursal,',
'        r.nro_recibo,',
'        r.cod_cliente,',
'        r.fec_recibo,',
'        r.cod_cobrador,',
'        r.cod_moneda,',
'        r.tip_cambio,',
'        m.descripcion,',
'        nvl(m.decimales, 0),',
'        r.cod_cobrador||''-''||ltrim(pc.nombre),',
'        r.cod_cliente||''-''||ltrim(decode(nvl(r.anulado, ''N''), ''S'', ''A N U L A D O'', p.nombre)),',
'        s.descripcion,',
'        m.siglas,',
'        r.ser_recibo,',
'        r.cod_empresa'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P408_COD_SUCURSAL,P408_COD_COBRADOR,P408_COD_CUSTODIO,P408_COD_DISTRIBUIDOR,P408_COD_CLIENTE,P408_COD_TIP_CLIENTE,P408_FEC_INI,P408_FEC_FIN,P408_SHOW_REPORT'
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
 p_id=>wwv_flow_imp.id(120783585920094417)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'FPONCE'
,p_internal_uid=>120783585920094417
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120783637357094418)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120783733356094419)
,p_db_column_name=>'NRO_RECIBO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Recibo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120783884508094420)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120783918645094421)
,p_db_column_name=>'FEC_RECIBO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120784006815094422)
,p_db_column_name=>'COD_COBRADOR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Cobrador'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120784145354094423)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120784243380094424)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cambio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120784315096094425)
,p_db_column_name=>'TOT_RECIBO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Tot Recibo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120784443109094426)
,p_db_column_name=>'MONEDA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120784527182094427)
,p_db_column_name=>'DECIMALES'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Decimales'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120784657257094428)
,p_db_column_name=>'COBRADOR'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cobrador'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120784784931094429)
,p_db_column_name=>'CLIENTE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120784817321094430)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120784946942094431)
,p_db_column_name=>'SIGLAS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Siglas'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120785075701094432)
,p_db_column_name=>'SER_RECIBO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Ser Recibo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120785174392094433)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Planilla'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120785284531094434)
,p_db_column_name=>'MONTO_BASE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Monto Gs.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120785320981094435)
,p_db_column_name=>'MONTO_OTRO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Monto U$'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(120882969530106260)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1208830'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'SUCURSAL:NRO_RECIBO:FEC_RECIBO:CLIENTE:COBRADOR:SIGLAS:TIP_CAMBIO:MONTO_BASE:MONTO_OTRO:NRO_PLANILLA:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(120255895934539302)
,p_plug_name=>'Resumen totales por moneda'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select r.cod_moneda res_cod_moneda, m.descripcion res_moneda, sum( r.tot_recibo) res_tot_recibo',
'from cc_recibos r, cc_clientes c, cc_cobradores cb, monedas m, personas p, personas pc, sucursales s ',
'where r.cod_empresa = :p_cod_empresa',
'and nvl ( r.anulado, ''N'' ) <> ''S''',
'and ( ( :P408_FEC_INI is null and :P408_FEC_FIN is null ) or r.fec_recibo between :P408_FEC_INI and :P408_FEC_FIN )',
'and ( :P408_COD_SUCURSAL IS NULL or r.cod_sucursal = :P408_COD_SUCURSAL )',
'and nvl(r.anulado,''N'') <> ''S''',
'and r.cod_empresa = s.cod_empresa',
'and r.cod_sucursal = s.cod_sucursal',
'and ( :P408_COD_COBRADOR IS NULL or  r.cod_cobrador = :P408_COD_COBRADOR )',
'and ( :P408_COD_CLIENTE IS NULL or  r.cod_cliente = :P408_COD_CLIENTE )',
'and ( :P408_COD_TIP_CLIENTE is null or c.tip_cliente = :P408_COD_TIP_CLIENTE)',
'and r.cod_empresa = c.cod_empresa',
'and r.cod_cliente = c.cod_cliente',
'and c.cod_persona = p.cod_persona(+)',
'and r.cod_empresa = cb.cod_empresa(+)',
'and r.cod_cobrador = cb.cod_cobrador(+)',
'and cb.cod_persona = pc.cod_persona(+)',
'and r.cod_moneda = m.cod_moneda(+)',
'and (:P408_COD_CUSTODIO is null or r.cod_custodio = :P408_COD_CUSTODIO) -- agregado',
'and :P408_SHOW_REPORT = 1',
'group by r.cod_moneda, m.descripcion ',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P408_COD_SUCURSAL,P408_COD_COBRADOR,P408_COD_CUSTODIO,P408_COD_DISTRIBUIDOR,P408_COD_CLIENTE,P408_COD_TIP_CLIENTE,P408_FEC_INI,P408_FEC_FIN,P408_SHOW_REPORT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resumen totales por moneda'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(120256009491539304)
,p_name=>'RES_COD_MONEDA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RES_COD_MONEDA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Res Cod Moneda'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(120256186239539305)
,p_name=>'RES_MONEDA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RES_MONEDA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>60
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(120256229962539306)
,p_name=>'RES_TOT_RECIBO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RES_TOT_RECIBO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(120255996483539303)
,p_internal_uid=>120255996483539303
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(120263851411618620)
,p_interactive_grid_id=>wwv_flow_imp.id(120255996483539303)
,p_static_id=>'1202639'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(120264014714618621)
,p_report_id=>wwv_flow_imp.id(120263851411618620)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(120264565933618622)
,p_view_id=>wwv_flow_imp.id(120264014714618621)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(120256009491539304)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(120265495659618625)
,p_view_id=>wwv_flow_imp.id(120264014714618621)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(120256186239539305)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(120266310122618627)
,p_view_id=>wwv_flow_imp.id(120264014714618621)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(120256229962539306)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(120785642214094438)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(114630359262852308)
,p_button_name=>'BTN_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Filtros'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(114631262950852317)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(114630359262852308)
,p_button_name=>'BTN_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114630470271852309)
,p_name=>'P408_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(114630359262852308)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal||'' - ''||descripcion d, cod_sucursal r',
'from sucursales ',
'where cod_empresa = :p_cod_empresa ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
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
 p_id=>wwv_flow_imp.id(114630547996852310)
,p_name=>'P408_COD_COBRADOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(114630359262852308)
,p_prompt=>'Cobrador'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_COBRADORES_RPFACCPH'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cobrador R, ',
'       c.cod_cobrador||'' - ''||nvl( ltrim(p.nombre), ltrim(p.nomb_fantasia)) D ',
'  from cc_cobradores c, ',
'       personas p ',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_persona = p.cod_persona'))
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
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114630637279852311)
,p_name=>'P408_COD_CUSTODIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(114630359262852308)
,p_prompt=>'Custodio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion||'' - ''||cod_custodio d, cod_custodio r',
'from cc_custodios',
'where cod_empresa =:p_cod_empresa',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
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
 p_id=>wwv_flow_imp.id(114630794770852312)
,p_name=>'P408_COD_DISTRIBUIDOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(114630359262852308)
,p_prompt=>'Distribuidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DISTRIBUIDOR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cliente||'' - ''||ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D, ',
'        c.cod_cliente R',
'  from cc_clientes c, personas p ',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_persona = p.cod_persona',
'order by 1'))
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
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114630896720852313)
,p_name=>'P408_COD_CLIENTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(114630359262852308)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_cliente||'' - ''||nvl( p.nombre, p.nomb_fantasia ) d, cod_cliente r',
'from cc_clientes c, personas p ',
'where c.cod_empresa = :p_cod_empresa ',
'and c.cod_persona = p.cod_persona ',
'order by nombre'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
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
 p_id=>wwv_flow_imp.id(114630923393852314)
,p_name=>'P408_COD_TIP_CLIENTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(114630359262852308)
,p_prompt=>'Tipo Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TIPO_CLIENTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion,cod_tip_cliente',
'			    from cc_tipo_cliente',
'                            order by 1'))
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
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(114631075290852315)
,p_name=>'P408_FEC_INI'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(114630359262852308)
,p_prompt=>'Periodo'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(114631168877852316)
,p_name=>'P408_FEC_FIN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(114630359262852308)
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
 p_id=>wwv_flow_imp.id(114633793198852342)
,p_name=>'P408_SHOW_REPORT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(114630359262852308)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(114631355549852318)
,p_name=>'Set_Value'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(114631262950852317)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114633963269852344)
,p_event_id=>wwv_flow_imp.id(114631355549852318)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P408_SHOW_REPORT :=1;'
,p_attribute_02=>'P408_SHOW_REPORT'
,p_attribute_03=>'P408_SHOW_REPORT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114631448778852319)
,p_event_id=>wwv_flow_imp.id(114631355549852318)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(114631517702852320)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114634260832852347)
,p_event_id=>wwv_flow_imp.id(114631355549852318)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(114631517702852320)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(120256401027539308)
,p_event_id=>wwv_flow_imp.id(114631355549852318)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(120255895934539302)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(120256545781539309)
,p_event_id=>wwv_flow_imp.id(114631355549852318)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(120255895934539302)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(114634077446852345)
,p_name=>'Set_value_reporte'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P408_SHOW_REPORT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(114634110798852346)
,p_event_id=>wwv_flow_imp.id(114634077446852345)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P408_SHOW_REPORT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(114634511345852350)
,p_name=>'Ocultar Reportes'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(120255706434539301)
,p_event_id=>wwv_flow_imp.id(114634511345852350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(114631517702852320)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(120256303945539307)
,p_event_id=>wwv_flow_imp.id(114634511345852350)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(120255895934539302)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(120785417090094436)
,p_event_id=>wwv_flow_imp.id(114634511345852350)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P408_COD_SUCURSAL,P408_COD_COBRADOR,P408_COD_CUSTODIO,P408_COD_DISTRIBUIDOR,P408_COD_CLIENTE,P408_COD_TIP_CLIENTE,P408_FEC_INI,P408_FEC_FIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(120785756638094439)
,p_name=>'Clean_Values'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(120785642214094438)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(120785893072094440)
,p_event_id=>wwv_flow_imp.id(120785756638094439)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P408_COD_SUCURSAL,P408_COD_COBRADOR,P408_COD_CUSTODIO,P408_COD_DISTRIBUIDOR,P408_COD_CLIENTE,P408_COD_TIP_CLIENTE,P408_FEC_INI,P408_FEC_FIN,P408_SHOW_REPORT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(114633808531852343)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_VALUE_SHOW_REPORT'
,p_process_sql_clob=>':P408_SHOW_REPORT := 0;'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
