prompt --application/pages/page_00139
begin
--   Manifest
--     PAGE: 00139
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
 p_id=>139
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTRLIBVC'
,p_alias=>'VTRLIBVC'
,p_step_title=>'Ventas en Gs. - Cot. de la Factura'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230204103204'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39687025721026601)
,p_plug_name=>'Ventas en Gs. - Cot. de la Factura'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34242108068797350)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(39687025721026601)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>75
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35530384821972141)
,p_plug_name=>unistr('Ventas en Gs - Cotizaci\00F3n de la Factura')
,p_parent_plug_id=>wwv_flow_imp.id(34242108068797350)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--FACTURAS',
'SELECT C001 COD_SUCURSAL,',
'	   C002 SUCURSAL,',
'	   C003 TIP_COMPROBANTE,',
'	   C004 SER_COMPROBANTE,',
'	   C005 NRO_COMPROBANTE,',
'	   D001 FEC_COMPROBANTE,',
'	   C006 COD_CLIENTE,',
'	   C007 CLIENTE,',
'	   C008 COD_CONDICION_VENTA,',
'	   C009 CONDICION_VENTA,',
'	   C010 COD_MONEDA,',
'	   C011 MONEDA,',
'	   C012 SIGLAS,',
'	   C013 TIP_CAMBIO,',
'	   C014 COD_VENDEDOR,',
'	   C015 VENDEDOR,',
'	   C016 MES,',
'	   C017 ANIO,',
'	   C018 DESC_TIPO_COMPROBANTE,',
'	   C019 DECIMALES,',
'	   C020 NUMERO,',
'	   TO_NUMBER(C021) TOT_COMP_MON_ORIG,',
'	   TO_NUMBER(C022) TOT_GRAVADAS,',
'	   TO_NUMBER(C023) TOT_EXENTAS,',
'	   TO_NUMBER(C024) TOT_IVA,',
'	   TO_NUMBER(C025) DESCUENTO,',
'	   TO_NUMBER(C026) TOT_COMPROBANTE_MON,',
'	   TO_NUMBER(C027) TOT_COMPROBANTE,',
'	   TO_NUMBER(C028) TOT_RECARGO_DET,',
'	   C029 SALDOS',
' FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COL_FACTURA'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P139_FEC_INICIAL,P139_FEC_FINAL,P139_COD_EMPRESA,P139_COD_SUCURSAL,P139_TIP_COMPROBANTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Ventas en Gs - Cotizaci\00F3n de la Factura')
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
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(35530565778972143)
,p_heading=>'Comprobante'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(35530674500972144)
,p_heading=>'Moneda'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(36035608502060805)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>36035608502060805
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36035734241060806)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36035871570060807)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36035930451060808)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36036031847060809)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36036170893060810)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nro.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36036298166060811)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36036319178060812)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36036439302060813)
,p_db_column_name=>'CLIENTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36036505901060814)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36036698665060815)
,p_db_column_name=>'CONDICION_VENTA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Condicion Venta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36036732598060816)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36036806862060817)
,p_db_column_name=>'MONEDA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36036989719060818)
,p_db_column_name=>'SIGLAS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Mon.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36037067380060819)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Tip Cambio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36037139062060820)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36037230243060821)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36037313563060822)
,p_db_column_name=>'MES'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Mes'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36037443667060823)
,p_db_column_name=>'ANIO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Anio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36037554731060824)
,p_db_column_name=>'DESC_TIPO_COMPROBANTE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Desc Tipo Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36037693754060825)
,p_db_column_name=>'DECIMALES'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Decimales'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36037771334060826)
,p_db_column_name=>'NUMERO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'R.U.C.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36038680680060835)
,p_db_column_name=>'SALDOS'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Saldos'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36038726904060836)
,p_db_column_name=>'TOT_GRAVADAS'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Gravadas'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36038858509060837)
,p_db_column_name=>'TOT_COMP_MON_ORIG'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'&nbsp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36038922929060838)
,p_db_column_name=>'TOT_EXENTAS'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Exentas'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36039073773060839)
,p_db_column_name=>'TOT_IVA'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Impuestos'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36039106180060840)
,p_db_column_name=>'DESCUENTO'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Descuento'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36039270252060841)
,p_db_column_name=>'TOT_COMPROBANTE_MON'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Tot Comprobante Mon'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36039347395060842)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Total Fact.'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36039498670060843)
,p_db_column_name=>'TOT_RECARGO_DET'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Recargo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(36092094782091041)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'360921'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIP_COMPROBANTE:NRO_COMPROBANTE:FEC_COMPROBANTE:CLIENTE:NUMERO:SIGLAS:TOT_COMP_MON_ORIG:TOT_GRAVADAS:TOT_IVA:TOT_EXENTAS:DESCUENTO:TOT_RECARGO_DET:TOT_COMPROBANTE:'
,p_sum_columns_on_break=>'TOT_GRAVADAS:TOT_IVA:TOT_EXENTAS:DESCUENTO:TOT_RECARGO_DET:TOT_COMPROBANTE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34255799484843101)
,p_plug_name=>'PARAMETROS'
,p_parent_plug_id=>wwv_flow_imp.id(39687025721026601)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>70
,p_plug_grid_column_span=>6
,p_plug_display_column=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35370998947241101)
,p_plug_name=>'Retenciones'
,p_parent_plug_id=>wwv_flow_imp.id(39687025721026601)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C001 COD_SUCURSAL,',
'	   C002 SUCURSAL,',
'	   C003 TIP_COMPROBANTE,',
'	   C004 SER_COMPROBANTE,',
'	   C005 NRO_COMPROBANTE,',
'	   D001 FEC_COMPROBANTE,',
'	   C006 COD_CLIENTE,',
'	   C007 CLIENTE,',
'	   C008 COD_CONDICION_VENTA,',
'	   C009 CONDICION_VENTA,',
'	   C010 COD_MONEDA,',
'	   C011 MONEDA,',
'	   C012 SIGLAS,',
'	   C013 TIP_CAMBIO1,',
'	   C014 COD_VENDEDOR,',
'	   C015 VENDEDOR,',
'	   C016 DESC_TIPO_COMPROBANTE,',
'	   C017 DECIMALES,',
'	   C018 NUMERO,',
'	   TO_NUMBER(C019) RETENCIONES,',
'	   TO_NUMBER(C020) TOT_GRAVADAS,',
'	   TO_NUMBER(C021) TOT_EXENTAS,',
'	   TO_NUMBER(C022) TOT_IVA,',
'	   TO_NUMBER(C023) DESCUENTO,',
'	   TO_NUMBER(C024) TOT_COMPROBANTE',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_RETENCION'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P139_FEC_INICIAL,P139_FEC_FINAL,P139_COD_EMPRESA,P139_COD_SUCURSAL,P139_TIP_COMPROBANTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Retenciones'
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
 p_id=>wwv_flow_imp.id(35371074464241102)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>35371074464241102
);
wwv_flow_imp_page.create_worksheet_col_group(
 p_id=>wwv_flow_imp.id(35374988556241141)
,p_name=>'Comprobante'
,p_display_sequence=>10
);
wwv_flow_imp_page.create_worksheet_col_group(
 p_id=>wwv_flow_imp.id(35530120710972139)
,p_name=>'Moneda'
,p_display_sequence=>20
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35371222773241104)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'B'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35371324472241105)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'C'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35371426172241106)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>40
,p_group_id=>wwv_flow_imp.id(35374988556241141)
,p_column_identifier=>'D'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35371565785241107)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>50
,p_group_id=>wwv_flow_imp.id(35374988556241141)
,p_column_identifier=>'E'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36309987970687026)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'Z'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35371104933241103)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>70
,p_column_identifier=>'A'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35371709421241109)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35371805313241110)
,p_db_column_name=>'CLIENTE'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35371934042241111)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35372072964241112)
,p_db_column_name=>'CONDICION_VENTA'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Condicion Venta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35372108362241113)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35372200488241114)
,p_db_column_name=>'MONEDA'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35372387277241115)
,p_db_column_name=>'SIGLAS'
,p_display_order=>140
,p_column_identifier=>'M'
,p_column_label=>'Siglas'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35372567306241117)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35372602751241118)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35373246340241124)
,p_db_column_name=>'DESC_TIPO_COMPROBANTE'
,p_display_order=>170
,p_column_identifier=>'V'
,p_column_label=>'Desc Tipo Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35373475001241126)
,p_db_column_name=>'NUMERO'
,p_display_order=>180
,p_column_identifier=>'X'
,p_column_label=>'R.U.C.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35373571038241127)
,p_db_column_name=>'RETENCIONES'
,p_display_order=>190
,p_column_identifier=>'Y'
,p_column_label=>unistr('Retenci\00F3n')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36310088415687027)
,p_db_column_name=>'TIP_CAMBIO1'
,p_display_order=>210
,p_column_identifier=>'AA'
,p_column_label=>'Tip Cambio1'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36310179717687028)
,p_db_column_name=>'DECIMALES'
,p_display_order=>220
,p_column_identifier=>'AB'
,p_column_label=>'Decimales'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36310230058687029)
,p_db_column_name=>'TOT_GRAVADAS'
,p_display_order=>230
,p_column_identifier=>'AC'
,p_column_label=>'Gravadas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36310342801687030)
,p_db_column_name=>'TOT_EXENTAS'
,p_display_order=>240
,p_column_identifier=>'AD'
,p_column_label=>'Exentas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36310488347687031)
,p_db_column_name=>'TOT_IVA'
,p_display_order=>250
,p_column_identifier=>'AE'
,p_column_label=>'Iva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36310594984687032)
,p_db_column_name=>'DESCUENTO'
,p_display_order=>260
,p_column_identifier=>'AF'
,p_column_label=>'Descuento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36310681432687033)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>270
,p_column_identifier=>'AG'
,p_column_label=>'Tot Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(35427140393424839)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'354272'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FEC_COMPROBANTE:COD_SUCURSAL:SUCURSAL:TIP_COMPROBANTE:SER_COMPROBANTE:COD_CLIENTE:CLIENTE:COD_CONDICION_VENTA:CONDICION_VENTA:COD_MONEDA:MONEDA:SIGLAS:COD_VENDEDOR:VENDEDOR:DESC_TIPO_COMPROBANTE:NUMERO:RETENCIONES'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35373652998241128)
,p_plug_name=>'Resumen por tipos de comprobantes'
,p_parent_plug_id=>wwv_flow_imp.id(39687025721026601)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--RESUMEN',
'SELECT C.TIP_COMPROBANTE R_TIP_COMPROBANTE, ',
'	   TC.DESCRIPCION R_DESCRIPCION,',
'        SUM( ROUND( DECODE( TC.SALDOS, ''R'', NVL( C.TOT_GRAVADAS, 0 ) * -1, C.TOT_GRAVADAS ) * NVL( C.TIP_CAMBIO, 1 ),',
'                                            NVL( M.DECIMALES, 0 ) ) ) R_TOT_GRAVADAS,',
'        SUM( ROUND( DECODE( TC.SALDOS, ''R'', NVL( C.TOT_EXENTAS, 0 ) * -1, C.TOT_EXENTAS ) * NVL( C.TIP_CAMBIO, 1 ),',
'                                            NVL( M.DECIMALES, 0 ) ) ) R_TOT_EXENTAS,',
'        SUM( ROUND( DECODE( TC.SALDOS, ''R'', NVL( C.TOT_IVA, 0 ) * -1, C.TOT_IVA ) * NVL( C.TIP_CAMBIO, 1 ),',
'                                            NVL( M.DECIMALES, 0 ) ) ) R_TOT_IVA,',
'        SUM( ROUND( DECODE( TC.SALDOS, ''R'', ( NVL( C.DESCUENTO, 0 ) + NVL( C.TOT_DESCUENTO_DET, 0 ) ) * -1,',
'                                              NVL( C.DESCUENTO, 0 ) + NVL( C.TOT_DESCUENTO_DET, 0 ) ) * NVL( C.TIP_CAMBIO, 1 ),',
'                                              NVL( M.DECIMALES, 0 ) ) ) R_DESCUENTO,',
'        SUM( ROUND( DECODE( TC.SALDOS, ''R'', NVL( C.TOT_COMPROBANTE, 0 ) * -1, C.TOT_COMPROBANTE ) * NVL( C.TIP_CAMBIO, 1 ),',
'                                            NVL( M.DECIMALES, 0 ) ) ) R_TOT_COMPROBANTE',
'   FROM VT_COMPROBANTES_CABECERA C, ',
'		CC_CLIENTES CC, ',
'		PERSONAS PC, ',
'		MONEDAS M, ',
'        SUCURSALES S, ',
'		TIPOS_COMPROBANTES TC, ',
'		IDENT_PERSONAS ID, ',
'		CO_TIPOS_CAMBIOS CA',
'  WHERE C.COD_EMPRESA = :P139_COD_EMPRESA',
'    AND C.FEC_COMPROBANTE BETWEEN :P139_FEC_INICIAL AND :P139_FEC_FINAL',
'    AND C.COD_EMPRESA = CC.COD_EMPRESA',
'    AND C.COD_CLIENTE = CC.COD_CLIENTE',
'    AND CC.COD_PERSONA = PC.COD_PERSONA',
'    AND C.COD_EMPRESA = TC.COD_EMPRESA',
'    AND C.TIP_COMPROBANTE = TC.TIP_COMPROBANTE',
'    AND ( :P139_TIP_COMPROBANTE IS NULL OR C.TIP_COMPROBANTE = :P139_TIP_COMPROBANTE )',
'    --AND ( :P139_P_SER_COMPROBANTE IS NULL OR C.SER_COMPROBANTE = :P139_P_SER_COMPROBANTE )',
'    AND ( :P139_COD_SUCURSAL IS NULL OR C.COD_SUCURSAL = :P139_COD_SUCURSAL )',
'    AND ( C.ESTADO IS NULL OR C.ESTADO <> ''A'' )',
'   -- AND ( :P139_P_COD_CLIENTE IS NULL OR C.COD_CLIENTE = :P139_P_COD_CLIENTE )',
'    AND C.COD_EMPRESA = S.COD_EMPRESA',
'    AND C.COD_SUCURSAL = S.COD_SUCURSAL',
'    AND ''1'' = M.COD_MONEDA',
'    AND ID.COD_PERSONA(+) = CC.COD_PERSONA',
'    AND ID.COD_IDENT(+) = ''RUC''',
'    AND C.COD_EMPRESA = CA.COD_EMPRESA(+)',
'    AND C.COD_MONEDA = CA.COD_MONEDA(+)',
'    AND C.FEC_COMPROBANTE > CA.FEC_TIP_CAMBIO(+)',
'    AND CA.FEC_TIP_CAMBIO = ( SELECT MAX( CA2.FEC_TIP_CAMBIO )',
'                                FROM CO_TIPOS_CAMBIOS CA2',
'                               WHERE C.COD_EMPRESA = CA2.COD_EMPRESA',
'                                 AND C.COD_MONEDA = CA2.COD_MONEDA',
'                                 AND C.FEC_COMPROBANTE > CA2.FEC_TIP_CAMBIO )',
'  GROUP BY C.TIP_COMPROBANTE, TC.DESCRIPCION',
'',
'ORDER BY 2'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P139_FEC_INICIAL,P139_FEC_FINAL,P139_COD_EMPRESA,P139_COD_SUCURSAL,P139_TIP_COMPROBANTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resumen por tipos de comprobantes'
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
 p_id=>wwv_flow_imp.id(35373787649241129)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>35373787649241129
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35373883096241130)
,p_db_column_name=>'R_TIP_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'R Tip Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35373932894241131)
,p_db_column_name=>'R_DESCRIPCION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35374067141241132)
,p_db_column_name=>'R_TOT_GRAVADAS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Gravadas'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35374294789241134)
,p_db_column_name=>'R_TOT_IVA'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Impuesto'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35374133445241133)
,p_db_column_name=>'R_TOT_EXENTAS'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Exentas'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35374373327241135)
,p_db_column_name=>'R_DESCUENTO'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'R Descuento'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35374498801241136)
,p_db_column_name=>'R_TOT_COMPROBANTE'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'R Tot Comprobante'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(35427768535425345)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'354278'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'R_TIP_COMPROBANTE:R_DESCRIPCION:R_TOT_GRAVADAS:R_TOT_EXENTAS:R_TOT_IVA:R_DESCUENTO:R_TOT_COMPROBANTE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36309087070687017)
,p_plug_name=>'ITEMS'
,p_parent_plug_id=>wwv_flow_imp.id(39687025721026601)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>130
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36309792621687024)
,p_plug_name=>'Resumen'
,p_parent_plug_id=>wwv_flow_imp.id(39687025721026601)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>120
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Total de ventas'' LABEL,',
'	  NVL(TO_NUMBER(:P139_CS_GRAVADAS),0) GRAVADAS,',
'	  NVL(TO_NUMBER(:P139_CS_IVA),0) IMPUESTO,',
'	  NVL(TO_NUMBER(:P139_CS_EXENTAS),0) EXENTAS,',
'	   TO_NUMBER(:P139_CS_FRETENCIONES) RETENCIONES',
'  FROM DUAL',
'  ',
' UNION ALL',
' ',
unistr('SELECT ''Notas de cr\00E9dito'' LABEL,'),
'	   NVL(TO_NUMBER(:P139_CS_NGRAVADAS),0) GRAVADAS,',
'	   NVL(TO_NUMBER(:P139_CS_NIVA),0) IMPUESTO,',
'	   NVL(TO_NUMBER(:P139_CS_NEXENTAS),0) EXENTAS,',
'	   TO_NUMBER(:P139_CS_NRETENCIONES) RETENCIONES',
'  FROM DUAL',
'',
' UNION ALL',
' ',
'SELECT ''Totales generales''LABEL,',
'	   NVL(TO_NUMBER(:P139_CF_T_GRAVADAS),0) GRAVADAS,',
'	   NVL(TO_NUMBER(:P139_CF_T_IVA),0) IMPUESTO,',
'	   NVL(TO_NUMBER(:P139_CF_T_EXENTAS),0) EXENTAS,',
'	   TO_NUMBER(:P139_CS_RETENCIONES) RETENCIONES',
'  FROM DUAL;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P139_CS_GRAVADAS,P139_CS_IVA,P139_CS_EXENTAS,P139_CS_FRETENCIONES,P139_CS_NGRAVADAS,P139_CS_NIVA,P139_NEXENTAS,P139_NRETENCIONES,P139_CF_T_GRAVADAS,P139_CF_T_IVA,P139_CF_T_EXENTAS,P139_CS_RETENCIONES'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resumen'
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
 p_id=>wwv_flow_imp.id(36312147856687048)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>36312147856687048
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37045185100917304)
,p_db_column_name=>'LABEL'
,p_display_order=>10
,p_column_identifier=>'F'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37045832880917311)
,p_db_column_name=>'GRAVADAS'
,p_display_order=>20
,p_column_identifier=>'M'
,p_column_label=>'Gravadas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37045952506917312)
,p_db_column_name=>'IMPUESTO'
,p_display_order=>30
,p_column_identifier=>'N'
,p_column_label=>'Impuesto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37046075851917313)
,p_db_column_name=>'EXENTAS'
,p_display_order=>40
,p_column_identifier=>'O'
,p_column_label=>'Exentas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37046864383917321)
,p_db_column_name=>'RETENCIONES'
,p_display_order=>50
,p_column_identifier=>'R'
,p_column_label=>'Retenciones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(37072362205961571)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'370724'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LABEL:GRAVADAS:IMPUESTO:EXENTAS:RETENCIONES:'
,p_sum_columns_on_break=>'GRAVADAS:EXENTAS:IMPUESTO:RETENCIONES'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33956354226908850)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(34255799484843101)
,p_button_name=>'P139_EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33955961753908846)
,p_name=>'P139_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(34255799484843101)
,p_use_cache_before_default=>'NO'
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
,p_lov_null_text=>'- Seleccione -'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33956037982908847)
,p_name=>'P139_TIP_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(34255799484843101)
,p_prompt=>'Tipo Comprobante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TIPO_COMPROBANTES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TIP_COMPROBANTE||'' - ''||DESCRIPCION D, ',
'       TIP_COMPROBANTE R',
'  FROM TIPOS_COMPROBANTES',
' WHERE COD_EMPRESA = :P_COD_EMPRESA',
'   AND NVL(LIBRO_IVA, ''N'') = ''S''',
' ORDER BY DESCRIPCION',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione - '
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33956110578908848)
,p_name=>'P139_FEC_INICIAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(34255799484843101)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Inicial'
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
,p_attribute_11=>'N'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'VISIBLE'
,p_attribute_15=>'FOCUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33956296404908849)
,p_name=>'P139_FEC_FINAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(34255799484843101)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha final'
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
,p_attribute_11=>'N'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'VISIBLE'
,p_attribute_15=>'FOCUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34256095410843104)
,p_name=>'P139_COD_MODULO'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34256159290843105)
,p_name=>'P139_COD_USUARIO'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34256280645843106)
,p_name=>'P139_COD_EMPRESA'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34256361679843107)
,p_name=>'P139_NOM_EMPRESA'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34256407716843108)
,p_name=>'P139_NOM_SUCURSAL'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36309125317687018)
,p_name=>'P139_CS_GRAVADAS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36309087070687017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36309224174687019)
,p_name=>'P139_CS_EXENTAS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(36309087070687017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36309391152687020)
,p_name=>'P139_CS_IVA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(36309087070687017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36309421901687021)
,p_name=>'P139_CS_NIVA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(36309087070687017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36309534002687022)
,p_name=>'P139_CS_NGRAVADAS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(36309087070687017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36309651153687023)
,p_name=>'P139_CS_NEXENTAS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(36309087070687017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36310709779687034)
,p_name=>'P139_CS_FRETENCIONES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(36309087070687017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36310884972687035)
,p_name=>'P139_CS_NRETENCIONES'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(36309087070687017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36310944053687036)
,p_name=>'P139_CS_RETENCIONES'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(36309087070687017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36311738154687044)
,p_name=>'P139_CF_T_GRAVADAS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(36309087070687017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36311820964687045)
,p_name=>'P139_CF_T_IVA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(36309087070687017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36311917609687046)
,p_name=>'P139_CF_T_EXENTAS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(36309087070687017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34241739594797346)
,p_name=>'DA_OCULTAR_REPORTE'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37046402583917317)
,p_event_id=>wwv_flow_imp.id(34241739594797346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(35530384821972141)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35374586012241137)
,p_event_id=>wwv_flow_imp.id(34241739594797346)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(35370998947241101)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35374660817241138)
,p_event_id=>wwv_flow_imp.id(34241739594797346)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(35373652998241128)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37046551394917318)
,p_event_id=>wwv_flow_imp.id(34241739594797346)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36309792621687024)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34241941192797348)
,p_name=>'DA_MOSTRAR_REPORTE'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33956354226908850)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37046990554917322)
,p_event_id=>wwv_flow_imp.id(34241941192797348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF TO_DATE(:P139_FEC_INICIAL,''DD/MM/YYYY'') > TO_DATE(:P139_FEC_FINAL,''DD/MM/YYYY'') THEN',
'        RAISE_APPLICATION_ERROR(-20000,''La fecha inicial no debe ser mayor a la fecha final.'');',
'    END IF;',
'END;'))
,p_attribute_02=>'P139_FEC_INICIAL,P139_FEC_FINAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35375384847241145)
,p_event_id=>wwv_flow_imp.id(34241941192797348)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INV.VTLIBVEC.INSERTAR_COLECCION_FACTURA(PI_FEC_INICIAL 	   => :P139_FEC_INICIAL,',
'        									PI_FEC_FINAL 	   => :P139_FEC_FINAL,',
'        									PI_COD_EMPRESA     => :P139_COD_EMPRESA,',
'        									PI_TIP_COMPROBANTE => :P139_TIP_COMPROBANTE,',
'        									PI_COD_SUCURSAL    => :P139_COD_SUCURSAL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_MOSTRAR_REPORTE - VTLIBVEC.INSERTAR_COLECCION_FACTURA - ''||SQLERRM);',
'END;',
'',
'BEGIN',
'    INV.VTLIBVEC.INSERTAR_COLECCION_RETENCION(PI_FEC_INICIAL 	 => :P139_FEC_INICIAL,',
'        									  PI_FEC_FINAL 	     => :P139_FEC_FINAL,',
'        									  PI_COD_EMPRESA     => :P139_COD_EMPRESA,',
'        									  PI_TIP_COMPROBANTE => :P139_TIP_COMPROBANTE,',
'        									  PI_COD_SUCURSAL    => :P139_COD_SUCURSAL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_MOSTRAR_REPORTE - VTLIBVEC.INSERTAR_COLECCION_RETENCION - ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P139_FEC_INICIAL,P139_FEC_FINAL,P139_COD_EMPRESA,P139_TIP_COMPROBANTE,P139_COD_SUCURSAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36311301749687040)
,p_event_id=>wwv_flow_imp.id(34241941192797348)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INV.VTLIBVEC.CALCULOS(PO_GRAVADAS 	=> :P139_CS_GRAVADAS,',
'        				  PO_IVA 		=> :P139_CS_IVA,',
'        				  PO_EXENTAS 	=> :P139_CS_EXENTAS,',
'        				  PO_NIVA 		=> :P139_CS_NIVA,',
'        				  PO_NGRAVADAS  => :P139_CS_NGRAVADAS,',
'        				  PO_NEXENTAS   => :P139_CS_NEXENTAS);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_CALCULO_SUMATORIAS - VTLIBVEC.CALCULOS - ''||SQLERRM);',
'END;'))
,p_attribute_03=>'P139_CS_GRAVADAS,P139_CS_IVA,P139_CS_EXENTAS,P139_CS_NIVA,P139_CS_NGRAVADAS,P139_CS_NEXENTAS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36311492957687041)
,p_event_id=>wwv_flow_imp.id(34241941192797348)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INV.VTLIBVEC.CALCULOS_RETENCION(PO_RETENCION  => :P139_CS_FRETENCIONES,',
'        						    PO_NRETENCION => :P139_CS_NRETENCIONES,',
'        						    PO_SUM_RET    => :P139_CS_RETENCIONES);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_CALCULOS_RETENCIONES - VTLIBVEC.CALCULOS_RETENCION - ''||SQLERRM);',
'END;'))
,p_attribute_03=>'P139_CS_FRETENCIONES,P139_CS_NRETENCIONES,P139_CS_RETENCIONES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36309831534687025)
,p_event_id=>wwv_flow_imp.id(34241941192797348)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(35530384821972141)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35375121125241143)
,p_event_id=>wwv_flow_imp.id(34241941192797348)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(35370998947241101)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35375202766241144)
,p_event_id=>wwv_flow_imp.id(34241941192797348)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(35373652998241128)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37046673069917319)
,p_event_id=>wwv_flow_imp.id(34241941192797348)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(35530384821972141)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35374791213241139)
,p_event_id=>wwv_flow_imp.id(34241941192797348)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(35370998947241101)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35374857443241140)
,p_event_id=>wwv_flow_imp.id(34241941192797348)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(35373652998241128)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36311547170687042)
,p_event_id=>wwv_flow_imp.id(34241941192797348)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    --CALCULO DE CF_T',
'    :P139_CF_T_GRAVADAS := :P139_CS_GRAVADAS + :P139_CS_NGRAVADAS;',
'    :P139_CF_T_IVA := :P139_CS_IVA + :P139_CS_NIVA;',
'    :P139_CF_T_EXENTAS := :P139_CS_EXENTAS + :P139_CS_NEXENTAS;',
'    						   ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_MOSTRAR_REPORTE - CALCULO DE CF_T - ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P139_CS_GRAVADAS,P139_CS_NGRAVADAS,P139_CS_IVA ,P139_CS_NIVA,P139_CS_EXENTAS ,P139_CS_NEXENTAS'
,p_attribute_03=>'P139_CS_GRAVADAS,P139_CS_IVA,P139_CS_EXENTAS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37046207162917315)
,p_event_id=>wwv_flow_imp.id(34241941192797348)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36309792621687024)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37046755553917320)
,p_event_id=>wwv_flow_imp.id(34241941192797348)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36309792621687024)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36311062735687037)
,p_name=>'DA_CALCULOS_RETENCION'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(35370998947241101)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36311188496687038)
,p_event_id=>wwv_flow_imp.id(36311062735687037)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INV.VTLIBVEC.CALCULOS_RETENCION(PO_RETENCION  => :P139_CS_FRETENCIONES,',
'        						    PO_NRETENCION => :P139_CS_NRETENCIONES,',
'        						    PO_SUM_RET    => :P139_CS_RETENCIONES);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_CALCULOS_RETENCIONES - VTLIBVEC.CALCULOS_RETENCION - ''||SQLERRM);',
'END;'))
,p_attribute_03=>'P139_CS_FRETENCIONES,P139_CS_NRETENCIONES,P139_CS_RETENCIONES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34256509704843109)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_CAMPOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34255964104843103)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--p_Cod_modulo  := ''VT'';',
':P139_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
':P139_COD_EMPRESA := ''1'';',
':P139_NOM_EMPRESA := NVL(:P_NOM_EMPRESA, NULL);',
':P139_COD_SUCURSAL:=''01'';',
':P139_NOM_SUCURSAL:= NVL(:P_NOM_SUCURSAL,NULL);',
':P139_COD_MODULO  := NVL(:P_COD_MODULO,''VT'');',
'',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_FACTURA'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_RETENCION'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_RESUMEN'');',
':P139_CS_GRAVADAS  := 0;',
':P139_CS_IVA       := 0;',
':P139_CS_EXENTAS   := 0;',
':P139_CS_NIVA      := 0;',
':P139_CS_NGRAVADAS := 0;',
':P139_CS_NEXENTAS  := 0;',
':P139_CS_FRETENCIONES := 0;',
':P139_CS_NRETENCIONES := 0;',
':P139_CS_RETENCIONES := 0;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
