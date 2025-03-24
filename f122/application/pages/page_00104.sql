prompt --application/pages/page_00104
begin
--   Manifest
--     PAGE: 00104
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
 p_id=>104
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTRPEPEN - Reporte de Pedidos Pendientes'
,p_alias=>'VTRPEPEN-REPORTE-DE-PEDIDOS-PENDIENTES'
,p_step_title=>'VTRPEPEN - Reporte de Pedidos Pendientes'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
' #DATOS {',
'    /*border-color: rgb(0, 0, 0);*/',
'    border-width: 4px  ;',
'    outline: 3px solid lightgray; ',
'    outline-offset: -9px;',
'',
'    /*border: 1px double ; .t-Region*/',
'',
'    ',
'}',
'',
'#VTPEDPARFAC,#VTPEDPEN{',
'    ',
'    font-weight: bold !important;',
'    }',
'',
'',
'.a-IRR-table tr td {',
'    background-color: #ffffff;',
'    font-size: var(--jui-dialog-title-font-size,11px);',
'    color: #000000;',
'   /* font-family: cursive;*/',
'    font-weight: bold;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230228123234'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17829463260747726)
,p_plug_name=>'Reporte de Pedidos Pendientes'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useRegionTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17829597017747727)
,p_plug_name=>'Datos'
,p_region_name=>'DATOS'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--textContent:t-Region--scrollBody:margin-top-md:margin-left-md'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17831244897747744)
,p_plug_name=>'Reporte'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17831394702747745)
,p_plug_name=>'VTPEDPARFAC'
,p_region_name=>'VTPEDPARFAC'
,p_parent_plug_id=>wwv_flow_imp.id(17831244897747744)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C001||'' (''||C033||'')'' SUCURSAL,',
'       C002 FEC_COMPROBANTE,',
'       C003 FEC_VENCIMIENTO,',
'       C004 TICOMPROBANTE,',
'       C005 SER_COMPROBANTE,',
'       C006 NRO_COMPROBANTE,',
'       C007 COD_CLIENTE,',
'       C008 CLIENTE,',
'       C009 COD_CONDICION_VENTA,',
'       C010 COD_MONEDA,',
'       C011 MONEDA,',
'       C012 SIGLAS,',
'       C013 DECIMALES,',
'       C014 TICAMBIO,',
'       C015 COD_VENDEDOR,',
'       C016 VENDEDOR,',
'       C017 DESC_TIPO_COMPROBANTE,',
'       C018 COD_ARTICULO,',
'       C019 DESCRIPCION,',
'       C020 COD_ORIGEN_ART,',
'       to_number(C021) CANTIDAD,',
'       C022 PRECIO_UNITARIO,',
'       C023 TOTAL_IVA,',
'       C024 DESCUENTO,',
'       to_number(C025) MONTO_TOTAL,',
'       C026 TIPO_ENTREGA_PED,',
'       C027 ORIGEN_ENTREGA,',
'       C029 STOCK_SLO,',
'       C030 STOCK_ARTIGAS,',
'       C031 CDE,',
'       C032 PERIFERICO',
'  FROM APEX_COLLECTIONS A',
' WHERE A.COLLECTION_NAME = ''VTPEDPARFAC''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P104_TIPO_REPORTE'
,p_plug_display_when_cond2=>'PF'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'VTPEDPARFAC'
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
 p_id=>wwv_flow_imp.id(17831433927747746)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>17831433927747746
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17831576549747747)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17831672331747748)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17831784205747749)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fec Vencimiento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17831876058747750)
,p_db_column_name=>'TICOMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ticomprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19131664976348301)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19131771925348302)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nro. Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19131877056348303)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19131944010348304)
,p_db_column_name=>'CLIENTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'<p style="color:WHITE;"> </p>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19132013047348305)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19132103927348306)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19132294595348307)
,p_db_column_name=>'MONEDA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19132355723348308)
,p_db_column_name=>'SIGLAS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Siglas'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19132418379348309)
,p_db_column_name=>'DECIMALES'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Decimales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19132587121348310)
,p_db_column_name=>'TICAMBIO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Ticambio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19132614725348311)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19132791445348312)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19132876769348313)
,p_db_column_name=>'DESC_TIPO_COMPROBANTE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Desc Tipo Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19132998881348314)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19133009727348315)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19133153364348316)
,p_db_column_name=>'COD_ORIGEN_ART'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Cod Origen Art'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19133314895348318)
,p_db_column_name=>'PRECIO_UNITARIO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Precio Unitario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19133488957348319)
,p_db_column_name=>'TOTAL_IVA'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Total Iva'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19133554625348320)
,p_db_column_name=>'DESCUENTO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Descuento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19133798566348322)
,p_db_column_name=>'TIPO_ENTREGA_PED'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'<p style="color:WHITE;"> </p>'
,p_column_html_expression=>'<span style=''width:250px;display:inline-block;''>#TIPO_ENTREGA_PED#</span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19133895008348323)
,p_db_column_name=>'ORIGEN_ENTREGA'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Origen Entrega'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19133973756348324)
,p_db_column_name=>'STOCK_SLO'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Stock Slo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19134002120348325)
,p_db_column_name=>'STOCK_ARTIGAS'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Stock Artigas'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19134121198348326)
,p_db_column_name=>'CDE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Cde'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19134238589348327)
,p_db_column_name=>'PERIFERICO'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Periferico'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19134331739348328)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19134490960348329)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Monto Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(19147002925349447)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'191471'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MONEDA:SUCURSAL:SER_COMPROBANTE:NRO_COMPROBANTE:FEC_COMPROBANTE:COD_VENDEDOR:COD_CLIENTE:CLIENTE:TIPO_ENTREGA_PED:COD_ARTICULO:DESCRIPCION:CANTIDAD:MONTO_TOTAL:'
,p_break_on=>'MONEDA:SUCURSAL'
,p_break_enabled_on=>'MONEDA:SUCURSAL'
,p_sum_columns_on_break=>'CANTIDAD:MONTO_TOTAL'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(19476379514299366)
,p_report_id=>wwv_flow_imp.id(19147002925349447)
,p_name=>'10'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SUCURSAL'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("SUCURSAL" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#c6e3f7'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19134585464348330)
,p_plug_name=>'VTPEDPEN'
,p_region_name=>'VTPEDPEN'
,p_parent_plug_id=>wwv_flow_imp.id(17831244897747744)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    SELECT C001||'' (''||C033||'')'' SUCURSAL,',
'       C002 FEC_COMPROBANTE,',
'       C003 FEC_VENCIMIENTO,',
'       C004 TICOMPROBANTE,',
'       C005 SER_COMPROBANTE,',
'       C006 NRO_COMPROBANTE,',
'       C007 COD_CLIENTE,',
'       C008 CLIENTE,',
'       C009 COD_CONDICION_VENTA,',
'       C010 COD_MONEDA,',
'       C010||'' ''||C011 MONEDA,',
'       C012 SIGLAS,',
'       C013 DECIMALES,',
'       C014 TICAMBIO,',
'       C015 COD_VENDEDOR,',
'       C016 VENDEDOR,',
'       C017 DESC_TIPO_COMPROBANTE,',
'       C018 COD_ARTICULO,',
'       SUBSTR(C019,1,50)||''...'' DESCRIPCION,',
'       C020 COD_ORIGEN_ART,',
'       to_number(C021) CANTIDAD,',
'       C022 PRECIO_UNITARIO,',
'       C023 TOTAL_IVA,',
'       C024 DESCUENTO,',
'       to_number(C025) MONTO_TOTAL,',
'       C026 TIPO_ENTREGA_PED,',
'       C027 ORIGEN_ENTREGA,',
'       C028 AUTORIZADO,',
'       C032 PERIFERICO',
'  FROM APEX_COLLECTIONS A',
' WHERE A.COLLECTION_NAME = ''VTPEDPEN''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P104_TIPO_REPORTE'
,p_plug_display_when_cond2=>'PE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Pendiente'
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
 p_id=>wwv_flow_imp.id(19134636335348331)
,p_alias=>'Pendientes'
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_download_filename=>'Pendiente'
,p_enable_mail_download=>'Y'
,p_supplemental_text=>'ewrewrew'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>19134636335348331
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19134799047348332)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19134867667348333)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19134924059348334)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fec Vencimiento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19135085281348335)
,p_db_column_name=>'TICOMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ticomprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19135176307348336)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19135237805348337)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nro. Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19135303382348338)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19135444580348339)
,p_db_column_name=>'CLIENTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'<p style="color:WHITE;"> </p>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19135567541348340)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19135609748348341)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19135795021348342)
,p_db_column_name=>'MONEDA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19135850212348343)
,p_db_column_name=>'SIGLAS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Siglas'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19135940717348344)
,p_db_column_name=>'DECIMALES'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Decimales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19136003495348345)
,p_db_column_name=>'TICAMBIO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Ticambio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19136160509348346)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19136288307348347)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19136334826348348)
,p_db_column_name=>'DESC_TIPO_COMPROBANTE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'<p style="color:WHITE;">DESC_TIPO_COMPROBANTE </p>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19136465840348349)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19136555575348350)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19172174708232401)
,p_db_column_name=>'COD_ORIGEN_ART'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Cod Origen Art'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19172215794232402)
,p_db_column_name=>'PRECIO_UNITARIO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Precio Unitario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19172389754232403)
,p_db_column_name=>'TOTAL_IVA'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Total Iva'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19172447748232404)
,p_db_column_name=>'DESCUENTO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Descuento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19172512504232405)
,p_db_column_name=>'TIPO_ENTREGA_PED'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Tipo Entrega'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style=''width:250px;display:inline-block;''>#TIPO_ENTREGA_PED#</span>',
''))
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19172620224232406)
,p_db_column_name=>'ORIGEN_ENTREGA'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Origen Entrega'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19173056422232410)
,p_db_column_name=>'PERIFERICO'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Periferico'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19173180533232411)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19173274129232412)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Monto Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19173301228232413)
,p_db_column_name=>'AUTORIZADO'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Autorizado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(19187104419238689)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'191872'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MONEDA:SUCURSAL:SER_COMPROBANTE:NRO_COMPROBANTE:FEC_COMPROBANTE:COD_VENDEDOR:COD_CLIENTE:CLIENTE:DESC_TIPO_COMPROBANTE:TIPO_ENTREGA_PED:AUTORIZADO:COD_ARTICULO:DESCRIPCION:CANTIDAD:MONTO_TOTAL:'
,p_break_on=>'MONEDA:SUCURSAL'
,p_break_enabled_on=>'MONEDA:SUCURSAL'
,p_sum_columns_on_break=>'CANTIDAD:MONTO_TOTAL'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(19480072967371335)
,p_report_id=>wwv_flow_imp.id(19187104419238689)
,p_name=>'10'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SUCURSAL'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("SUCURSAL" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#c6e3f7'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17830795244747739)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17829597017747727)
,p_button_name=>'CANCELAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17830614379747738)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17829597017747727)
,p_button_name=>'EJECUTAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17828468360747716)
,p_name=>'P104_ERROR'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17828568197747717)
,p_name=>'P104_COD_FORMA'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17828618788747718)
,p_name=>'P104_COD_USUARIO_VBLE'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17828705376747719)
,p_name=>'P104_COD_EMPRESA'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17828860534747720)
,p_name=>'P104_NOM_EMPRESA'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17828921789747721)
,p_name=>'P104_COD_SUCURSAL_VBLE'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17829016183747722)
,p_name=>'P104_NOM_SUCURSAL'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17829194969747723)
,p_name=>'P104_COD_MODULO'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17829272045747724)
,p_name=>'P104_NOM_MODULO'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17829377913747725)
,p_name=>'P104_NOM_FORMA'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17829714555747729)
,p_name=>'P104_ORIGEN_ENTREGA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17829597017747727)
,p_prompt=>'Deposito Salida'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:San Lorenzo;SL,Artigas;AR,CDE;CDE'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Todos'
,p_cHeight=>1
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17829858870747730)
,p_name=>'P104_COD_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(17829597017747727)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_SUCURSAL_COD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_SUCURSAL||''-''||DESCRIPCION d,',
'       COD_SUCURSAL r',
'  FROM SUCURSALES',
'WHERE COD_EMPRESA = :P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
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
 p_id=>wwv_flow_imp.id(17829949617747731)
,p_name=>'P104_COD_VENDEDOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(17829597017747727)
,p_prompt=>'Vendedores'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDOR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--LV PARA VTFAPECO  ',
'  select cod_vendedor || '' - '' || ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D,',
'         cod_vendedor R',
'    from fv_vendedores u,',
'          personas p',
'   where u.cod_empresa = :p_cod_empresa',
'     and u.cod_persona = p.cod_persona;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17830059023747732)
,p_name=>'P104_COD_CLIENTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(17829597017747727)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_cliente||'' - ''||nombre D, ',
'         cod_cliente R',
'    FROM cc_clientes c, personas p',
'   WHERE c.cod_empresa = :P_COD_EMPRESA ',
'     AND c.cod_persona = p.cod_persona ',
'     AND nvl(c.estado,''X'') = ''A'' ',
'ORDER BY nombre;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17830110211747733)
,p_name=>'P104_COD_RUBRO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(17829597017747727)
,p_prompt=>'Rubro'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_RUBROS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_rubro||'' - ''||descripcion D, ',
'         cod_rubro R',
'    FROM st_rubro ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17830260644747734)
,p_name=>'P104_FEC_PED_INICIAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(17829597017747727)
,p_prompt=>'Periodo Pedidos'
,p_placeholder=>'Inicial'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17830388271747735)
,p_name=>'P104_SER_COMPROBANTE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(17829597017747727)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17830427669747736)
,p_name=>'P104_TIPO_REPORTE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(17829597017747727)
,p_prompt=>'Tipo Reporte'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Parcialmente Facturado ;PF,Pendiente ;PE'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17830546657747737)
,p_name=>'P104_IND_TIPO_PEDIDO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(17829597017747727)
,p_prompt=>'Tipos de Pedidos'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Pedidos;PE,Pre-Pedidos;PP'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Todos'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17830901485747741)
,p_name=>'P104_COD_ARTICULO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(17829597017747727)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_articulo||'' - ''||descripcion descripcion, ',
'         cod_articulo codigo, cod_art_corto, cod_origen_art, cod_ean',
'    FROM st_articulos ',
'   WHERE cod_empresa = :p_cod_empresa ',
'     AND ( estado is null or estado <> ''I'' )',
'    ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17831062279747742)
,p_name=>'P104_FEC_PED_FINAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(17829597017747727)
,p_placeholder=>'Final'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17828382463747715)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE FORM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P_COD_MODULO := ''VT'';',
':P104_ERROR := 2;',
':P104_COD_FORMA := ''VTFONSEN'';',
'',
':P104_COD_USUARIO_VBLE := NVL(:P_COD_USUARIO, :APP_USER);',
':P104_COD_EMPRESA := NVL(:P_COD_EMPRESA, ''1'');',
':P104_NOM_EMPRESA := :P_NOM_EMPRESA;',
':P104_COD_SUCURSAL_VBLE := NVL(:P_COD_SUCURSAL,''01'');',
':P104_NOM_SUCURSAL := :P_NOM_SUCURSAL;',
':P104_COD_MODULO := NVL(:P_COD_MODULO,''ST'');',
'',
'LIBRERIA_FORMAS.RUTINA_INICIAL(PI_COD_MODULO => :P104_COD_MODULO,',
'                               PI_COD_FORMA  => :P104_COD_FORMA,',
'                               PI_NOM_MODULO => :P104_NOM_MODULO,',
'                               PI_NOM_FORMA  => :P104_NOM_FORMA,',
'            				   PO_NOM_MODULO => :P104_NOM_MODULO,',
'            				   PO_NOM_FORMA  => :P104_NOM_FORMA);'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17831177188747743)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Carga Collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'VTRPEPEN.PROCBD_CARGA_COL(:P_COD_EMPRESA,',
'                          :P104_COD_SUCURSAL,',
'                          :P104_FEC_PED_INICIAL,',
'                          :P104_FEC_PED_FINAL,',
'                          null,',
'                          null,',
'                          :P104_COD_CLIENTE,',
'                          :P104_COD_ARTICULO,',
'                          :P104_COD_VENDEDOR,',
'                          :P104_SER_COMPROBANTE,',
'                          :P104_ORIGEN_ENTREGA,',
'                          :P104_IND_TIPO_PEDIDO,',
'                          :P104_TIPO_REPORTE);'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
