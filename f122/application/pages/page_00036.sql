prompt --application/pages/page_00036
begin
--   Manifest
--     PAGE: 00036
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
 p_id=>36
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Ventas Diarias x detalle'
,p_alias=>'VENTAS-DIARIAS-X-DETALLE'
,p_step_title=>'Ventas Diarias x detalle'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function removeParam(key, sourceURL) {',
'    var rtn = sourceURL.split("?")[0],',
'        param,',
'        params_arr = [],',
'        queryString = (sourceURL.indexOf("?") !== -1) ? sourceURL.split("?")[1] : "";',
'    if (queryString !== "") {',
'        params_arr = queryString.split("&");',
'        for (var i = params_arr.length - 1; i >= 0; i -= 1) {',
'            param = params_arr[i].split("=")[0];',
'            if (param === key) {',
'                params_arr.splice(i, 1);',
'            }',
'        }',
'        rtn = rtn + "?" + params_arr.join("&");',
'    }',
'    return rtn;',
'}'))
,p_javascript_code_onload=>'window.history.pushState("object or string", "Title", removeParam("success_msg", window.location.href));'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.radio{',
'    margin-bottom: 15px;',
'}',
'',
'.btn_ejecutar{',
'    margin-top: 15px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240906153519'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20047132823999766)
,p_plug_name=>'Ventas Diarias - Detalle'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20047212539999767)
,p_plug_name=>'PARAMETROS'
,p_parent_plug_id=>wwv_flow_imp.id(20047132823999766)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20048705574999782)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(20047132823999766)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35364701659032934)
,p_plug_name=>'Informe'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14206904838640517)
,p_plug_name=>'Marca'
,p_parent_plug_id=>wwv_flow_imp.id(35364701659032934)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  ',
'       case when :P36_TIPO_CORTE = ''D'' THEN',
'       to_char(c.fec_factura, ''DAY'') || to_char(c.fec_factura, ''DD'')',
'       when :P36_TIPO_CORTE = ''M'' THEN',
'       to_char(c.fec_factura, ''MONTH'') ',
'        when :P36_TIPO_CORTE = ''A'' THEN',
'       to_char(c.fec_factura, ''YYYY'') ',
'       END TIPO_CORTE,',
'      -- to_char(c.fec_factura, ''month'') mes,',
'       --to_char(c.fec_factura, ''yyyy'') anio,',
'       c.desc_marca,',
'        ',
'       ',
'       sum(case',
'             when c.cod_moneda = ''1'' then',
'              round(decode(c.saldos, ''R'', nvl(c.monto, 0) * -1, nvl(c.monto, 0)),',
'                    nvl(c.decimales, 0))',
'             else',
'              0',
'           end) RCO_tot_moneda_gs,',
'       sum(case',
'             when c.cod_moneda = ''2'' then',
'              round(decode(c.saldos, ''R'', nvl(c.monto, 0) * -1, nvl(c.monto, 0)),',
'                    nvl(c.decimales, 0))',
'             else',
'              0',
'           end) RCO_tot_moneda_usd,',
'       ',
'       sum(round(decode(c.saldos,',
'                        ''R'',',
'                        nvl(c.monto, 0) * -1,',
'                        nvl(c.monto, 0)),',
'                 nvl(c.decimales, 0))',
'           ',
'           * c.tip_cambio / c.tipo_cambio_usd) conversion_tot_moneda_usd,',
'       sum(',
'           ',
'           round(decode(c.saldos, ''R'', nvl(c.monto, 0) * -1, nvl(c.monto, 0)),',
'                 nvl(c.decimales, 0)) * c.tip_cambio) conversion_tot_moneda_gs',
'  from V_VENTAS_APEX C',
' where c.cod_empresa = :p_cod_empresa',
'   and (c.fec_factura between :p36_fec_inicial and :p36_fec_final)',
'   and (:p36_cod_vendedor IS NULL OR c.cod_vendedor = :p36_cod_vendedor) -- SIN CONSIGNACIONES',
'      ',
'   and (:p36_cod_sucursal IS NULL OR c.cod_sucursal = :p36_cod_sucursal)',
'   and (:p36_cod_moneda IS NULL OR c.cod_moneda = :p36_cod_moneda)',
'   and (c.estado IS NULL OR c.estado <> ''A'')',
'   and (:p36_cod_cliente IS NULL OR c.cod_cliente = :p36_cod_cliente)',
'   and (:p36_tip_comprobante IS NULL OR',
'       c.tip_comprobante = :p36_tip_comprobante)',
'   and (:p36_ser_comprobante IS NULL OR',
'       c.ser_comprobante = :p36_ser_comprobante)',
'   and (:p36_nro_comprobante IS NULL OR',
'       c.nro_comprobante = :p36_nro_comprobante)',
'   and (:p36_cod_rubro IS NULL OR c.cod_rubro = :p36_cod_rubro)',
'   and (:p36_cod_familia IS NULL OR c.cod_familia = :p36_cod_familia)',
'   and (:p36_articulo IS NULL OR c.cod_articulo = :p36_articulo)',
'   and (:p36_cod_DIVISION IS NULL OR c.cod_DIVISION = :p36_cod_DIVISION)',
'   and (:p36_cod_LINEA IS NULL OR c.cod_LINEA = :p36_cod_LINEA)',
'   and (:P36_COD_MARCA_DES IS NULL OR c.cod_marca = :P36_COD_MARCA_DES)',
' group by c.cod_empresa,',
'          c.cod_moneda,',
'          c.desc_moneda,',
'          c.decimales,',
'          c.desc_marca,',
'          case when :P36_TIPO_CORTE = ''D'' THEN',
'       to_char(c.fec_factura, ''DAY'') || to_char(c.fec_factura, ''DD'')',
'       when :P36_TIPO_CORTE = ''M'' THEN',
'       to_char(c.fec_factura, ''MONTH'') ',
'        when :P36_TIPO_CORTE = ''A'' THEN',
'       to_char(c.fec_factura, ''YYYY'') ',
'       END',
'          ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P36_FEC_INICIAL,P36_FEC_FINAL,P36_COD_RUBRO,P36_COD_VENDEDOR,P36_COD_MARCA_DES,P36_TIP_CLIENTE,P36_COD_CLIENTE,P36_COD_CORTO_INI,P36_COD_CORTO_FIN,P36_COD_ARTICULO_DES,P36_COD_ARTICULO_HAS,P36_TIPO_CORTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P36_TIP_REPORTE'
,p_plug_display_when_cond2=>'2'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Marca'
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
 p_id=>wwv_flow_imp.id(14207051526640518)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>14207051526640518
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14207740976640525)
,p_db_column_name=>'RCO_TOT_MONEDA_GS'
,p_display_order=>70
,p_column_identifier=>'E'
,p_column_label=>'Ventas GS'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14207874980640526)
,p_db_column_name=>'RCO_TOT_MONEDA_USD'
,p_display_order=>80
,p_column_identifier=>'F'
,p_column_label=>'Ventas USD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14207938710640527)
,p_db_column_name=>'CONVERSION_TOT_MONEDA_USD'
,p_display_order=>90
,p_column_identifier=>'G'
,p_column_label=>'Conversion USD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14208049934640528)
,p_db_column_name=>'CONVERSION_TOT_MONEDA_GS'
,p_display_order=>100
,p_column_identifier=>'H'
,p_column_label=>'Conversion GS'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14208127339640529)
,p_db_column_name=>'DESC_MARCA'
,p_display_order=>110
,p_column_identifier=>'I'
,p_column_label=>'Desc Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14210185215640549)
,p_db_column_name=>'TIPO_CORTE'
,p_display_order=>120
,p_column_identifier=>'J'
,p_column_label=>'Tipo Corte'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14478555355784655)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'144786'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIPO_CORTE:DESC_MARCA:RCO_TOT_MONEDA_GS:RCO_TOT_MONEDA_USD:CONVERSION_TOT_MONEDA_GS:CONVERSION_TOT_MONEDA_USD'
,p_break_on=>'DESC_MARCA:0:0:0:0:0'
,p_break_enabled_on=>'DESC_MARCA:0:0:0:0:0'
,p_sum_columns_on_break=>'RCO_TOT_MONEDA_GS:RCO_TOT_MONEDA_USD:CONVERSION_TOT_MONEDA_GS:CONVERSION_TOT_MONEDA_USD'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35364888961032935)
,p_plug_name=>'Vendedor'
,p_parent_plug_id=>wwv_flow_imp.id(35364701659032934)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  ',
'case when :P36_TIPO_CORTE = ''D'' THEN',
'       to_char(c.fec_factura, ''DAY'') || to_char(c.fec_factura, ''DD'')',
'       when :P36_TIPO_CORTE = ''M'' THEN',
'       to_char(c.fec_factura, ''MONTH'') ',
'        when :P36_TIPO_CORTE = ''A'' THEN',
'       to_char(c.fec_factura, ''YYYY'') ',
'       END TIPO_CORTE,',
'      -- to_char(c.fec_factura, ''month'') mes,',
'     --  to_char(c.fec_factura, ''yyyy'') anio,',
'       c.cod_vendedor,',
'       c.NOMBRE_VENDEDOR,',
'       ',
'       sum(case',
'             when c.cod_moneda = ''1'' then',
'              round(decode(c.saldos, ''R'', nvl(c.monto, 0) * -1, nvl(c.monto, 0)),',
'                    nvl(c.decimales, 0))',
'             else',
'              0',
'           end) RCO_tot_moneda_gs,',
'       sum(case',
'             when c.cod_moneda = ''2'' then',
'              round(decode(c.saldos, ''R'', nvl(c.monto, 0) * -1, nvl(c.monto, 0)),',
'                    nvl(c.decimales, 0))',
'             else',
'              0',
'           end) RCO_tot_moneda_usd,',
'       ',
'       sum(round(decode(c.saldos,',
'                        ''R'',',
'                        nvl(c.monto, 0) * -1,',
'                        nvl(c.monto, 0)),',
'                 nvl(c.decimales, 0))',
'           ',
'           * c.tip_cambio / c.tipo_cambio_usd) conversion_tot_moneda_usd,',
'       sum(',
'           ',
'           round(decode(c.saldos, ''R'', nvl(c.monto, 0) * -1, nvl(c.monto, 0)),',
'                 nvl(c.decimales, 0)) * c.tip_cambio) conversion_tot_moneda_gs',
'  from V_VENTAS_APEX C',
' where c.cod_empresa = :p_cod_empresa',
'   and (c.fec_factura between :p36_fec_inicial and :p36_fec_final)',
'   and (:p36_cod_vendedor IS NULL OR c.cod_vendedor = :p36_cod_vendedor) -- SIN CONSIGNACIONES',
'      ',
'   and (:p36_cod_sucursal IS NULL OR c.cod_sucursal = :p36_cod_sucursal)',
'   and (:p36_cod_moneda IS NULL OR c.cod_moneda = :p36_cod_moneda)',
'   and (c.estado IS NULL OR c.estado <> ''A'')',
'   and (:p36_cod_cliente IS NULL OR c.cod_cliente = :p36_cod_cliente)',
'   and (:p36_tip_comprobante IS NULL OR',
'       c.tip_comprobante = :p36_tip_comprobante)',
'   and (:p36_ser_comprobante IS NULL OR',
'       c.ser_comprobante = :p36_ser_comprobante)',
'   and (:p36_nro_comprobante IS NULL OR',
'       c.nro_comprobante = :p36_nro_comprobante)',
'   and (:p36_cod_rubro IS NULL OR c.cod_rubro = :p36_cod_rubro)',
'   and (:p36_cod_familia IS NULL OR c.cod_familia = :p36_cod_familia)',
'   and (:p36_articulo IS NULL OR c.cod_articulo = :p36_articulo)',
'   and (:p36_cod_DIVISION IS NULL OR c.cod_DIVISION = :p36_cod_DIVISION)',
'   and (:p36_cod_LINEA IS NULL OR c.cod_LINEA = :p36_cod_LINEA)',
' group by c.cod_empresa,',
'          c.cod_moneda,',
'          c.desc_moneda,',
'          c.decimales,',
'         case when :P36_TIPO_CORTE = ''D'' THEN',
'       to_char(c.fec_factura, ''DAY'') || to_char(c.fec_factura, ''DD'')',
'       when :P36_TIPO_CORTE = ''M'' THEN',
'       to_char(c.fec_factura, ''MONTH'') ',
'        when :P36_TIPO_CORTE = ''A'' THEN',
'       to_char(c.fec_factura, ''YYYY'') ',
'       END,',
'          c.COD_VENDEDOR,',
'          c.NOMBRE_VENDEDOR',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P36_FEC_INICIAL,P36_FEC_FINAL,P36_COD_RUBRO,P36_COD_VENDEDOR,P36_COD_MARCA_DES,P36_TIP_CLIENTE,P36_COD_CLIENTE,P36_COD_CORTO_INI,P36_COD_CORTO_FIN,P36_COD_ARTICULO_DES,P36_COD_ARTICULO_HAS,P36_TIPO_CORTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P36_TIP_REPORTE'
,p_plug_display_when_cond2=>'1'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Vendedor'
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
 p_id=>wwv_flow_imp.id(35364926525032936)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>35364926525032936
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35365959826032946)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35366079115032947)
,p_db_column_name=>'NOMBRE_VENDEDOR'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Nombre Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14205318500640501)
,p_db_column_name=>'RCO_TOT_MONEDA_GS'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>'Ventas GS'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14205400505640502)
,p_db_column_name=>'RCO_TOT_MONEDA_USD'
,p_display_order=>130
,p_column_identifier=>'N'
,p_column_label=>'Ventas USD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14205539518640503)
,p_db_column_name=>'CONVERSION_TOT_MONEDA_USD'
,p_display_order=>140
,p_column_identifier=>'O'
,p_column_label=>'Conversion USD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14205664596640504)
,p_db_column_name=>'CONVERSION_TOT_MONEDA_GS'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>'Conversion GS'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14210083281640548)
,p_db_column_name=>'TIPO_CORTE'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'Tipo Corte'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14192627969545999)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'141927'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIPO_CORTE:NOMBRE_VENDEDOR:RCO_TOT_MONEDA_GS:RCO_TOT_MONEDA_USD:CONVERSION_TOT_MONEDA_USD:CONVERSION_TOT_MONEDA_GS'
,p_sort_column_1=>'FEC_FACTURA'
,p_sort_direction_1=>'ASC'
,p_break_on=>'NOMBRE_VENDEDOR:0:0:0:0:0'
,p_break_enabled_on=>'NOMBRE_VENDEDOR:0:0:0:0:0'
,p_sum_columns_on_break=>'RCO_TOT_MONEDA_GS:RCO_TOT_MONEDA_USD:CONVERSION_TOT_MONEDA_USD:CONVERSION_TOT_MONEDA_GS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38188636757756515)
,p_plug_name=>'Dia'
,p_parent_plug_id=>wwv_flow_imp.id(35364701659032934)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dia, sum(case when cod_moneda=''1''  then ',
' rmo_tot_neto else 0 end) Total_moneda_gs,',
' sum(case when cod_moneda=''2''  then ',
' neto_dls else 0 end) Total_moneda_usd,',
'    (NVL( sum(case when cod_moneda=''1''  then ',
' rmo_tot_neto else 0 end),0)/ (  select tc.val_venta ',
'   ',
'    from tipos_cambio tc',
'   where tc.fec_tipo_cambio= (select max(tc2.fec_tipo_cambio) from tipos_cambio tc2 where ',
'                                 tc2.fec_tipo_cambio<=fec_comprobante',
'                                 and tc2.cod_moneda=tc.cod_moneda',
'                                 ',
'                                 and tc2.val_venta>0)',
'                           ',
'      and tc.cod_moneda=''2''))+ nvl(sum(case when cod_moneda=''2''  then ',
' neto_dls else 0 end) ,0)total_equivalencia_usd,',
' (  select tc.val_venta ',
'   ',
'    from tipos_cambio tc',
'   where tc.fec_tipo_cambio= (select max(tc2.fec_tipo_cambio) from tipos_cambio tc2 where ',
'                                 tc2.fec_tipo_cambio<=fec_comprobante',
'                                 and tc2.cod_moneda=tc.cod_moneda',
'                                 ',
'                                 and tc2.val_venta>0)',
'                           ',
'      and tc.cod_moneda=''2'')tipo_cambio, fec_comprobante',
'from (',
'Select c.cod_empresa,c.cod_moneda RMO_cod_moneda, m.descripcion RMO_desc_moneda, m.decimales RMO_decimales, c.fec_comprobante, C.COD_MONEDA,',
'to_char(c.fec_comprobante,''DAY'')||to_char(c.fec_comprobante,''DD'')dia,',
'to_char(c.fec_comprobante,''month'') mes, to_char(c.fec_comprobante,''yyyy'') anio,',
'  ',
'      sum( round( decode( tc.saldos, ''R'', nvl( d.monto_total, 0 ) * -1,',
'                                          nvl( d.monto_total, 0 ) ),',
'                                          nvl( m.decimales, 0 ) ) ) RMO_tot_neto,  0 neto_dls ',
' from vt_comprobantes_cabecera c, cc_clientes cc, personas pc, cc_condiciones_ventas cv, monedas m,',
'      fv_vendedores v,  personas pv, sucursales s, tipos_comprobantes tc, vt_comprobantes_detalle d,',
'      st_articulos art',
'where c.cod_empresa = :p_cod_empresa',
'  and ( c.fec_comprobante between :P36_FEC_INICIAL and :P36_FEC_FINAL )',
'    and ( :P36_COD_VENDEDOR IS NULL OR c.cod_vendedor = :P36_COD_VENDEDOR )',
'  and ( :P36_COD_SUCURSAL IS NULL OR c.cod_sucursal = :P36_COD_SUCURSAL )',
'  and ( :P36_COD_MONEDA   IS NULL OR c.cod_moneda   = :P36_COD_MONEDA   )',
'  and ( c.estado IS NULL OR c.estado <> ''A'' )',
'  and ( :P36_COD_CLIENTE IS NULL OR c.cod_cliente = :P36_COD_CLIENTE ) ',
'  and ( :P36_COD_RUBRO   IS NULL OR art.cod_rubro   = :P36_COD_RUBRO )',
'  and ( :P36_COD_FAMILIA IS NULL OR art.cod_familia = :P36_COD_FAMILIA )',
'  and ( :P36_COD_ARTICULO_DES IS NULL OR d.cod_articulo = :P36_COD_ARTICULO_DES )',
'  and c.cod_empresa = cc.cod_empresa',
'  and c.cod_cliente = cc.cod_cliente',
'  and cc.cod_persona = pc.cod_persona',
'  and c.cod_empresa = tc.cod_empresa',
'  and c.tip_comprobante = tc.tip_comprobante',
'  and c.cod_empresa = s.cod_empresa',
'  and c.cod_sucursal = s.cod_sucursal',
'  and c.cod_moneda = m.cod_moneda',
'  and c.cod_empresa = cv.cod_empresa',
'  and c.cod_condicion_venta =  cv.cod_condicion_venta',
'  and c.cod_empresa = v.cod_empresa',
'  and c.cod_vendedor = v.cod_vendedor',
'  and v.cod_persona = pv.cod_persona',
'  and ( c.cod_empresa = d.cod_empresa and',
'        c.tip_comprobante = d.tip_comprobante and',
'        c.ser_comprobante = d.ser_comprobante and',
'        c.nro_comprobante = d.nro_comprobante )',
'  and d.cod_empresa  = art.cod_empresa(+)',
'  and d.cod_articulo = art.cod_articulo(+)',
'  and c.cod_moneda=''1''    ',
'',
'group by  c.cod_empresa,c.cod_moneda , m.descripcion , m.decimales , c.fec_comprobante',
'union all',
'Select c.cod_empresa,c.cod_moneda RMO_cod_moneda, m.descripcion RMO_desc_moneda, m.decimales RMO_decimales, c.fec_comprobante, C.COD_MONEDA,',
'to_char(c.fec_comprobante,''DAY'')||to_char(c.fec_comprobante,''DD''),',
'to_char(c.fec_comprobante,''month'') mes, to_char(c.fec_comprobante,''yyyy'') anio,0 neto_gs,',
'      sum( round( decode( tc.saldos, ''R'', nvl( d.monto_total, 0 ) * -1,',
'                                          nvl( d.monto_total, 0 ) ),',
'                                          nvl( m.decimales, 0 ) ) ) RMO_tot_neto',
' from vt_comprobantes_cabecera c, cc_clientes cc, personas pc, cc_condiciones_ventas cv, monedas m,',
'      fv_vendedores v,  personas pv, sucursales s, tipos_comprobantes tc, vt_comprobantes_detalle d,',
'      st_articulos art',
'where c.cod_empresa = :p_cod_empresa',
'  and ( c.fec_comprobante between :P36_FEC_INICIAL and :P36_FEC_FINAL )',
'    and ( :P36_COD_VENDEDOR IS NULL OR c.cod_vendedor = :P36_COD_VENDEDOR )',
'  and ( :P36_COD_SUCURSAL IS NULL OR c.cod_sucursal = :P36_COD_SUCURSAL )',
'  and ( :P36_COD_MONEDA   IS NULL OR c.cod_moneda   = :P36_COD_MONEDA   )',
'  and ( c.estado IS NULL OR c.estado <> ''A'' )',
'  and ( :P36_COD_CLIENTE IS NULL OR c.cod_cliente = :P36_COD_CLIENTE ) ',
'  and ( :P36_COD_RUBRO   IS NULL OR art.cod_rubro   = :P36_COD_RUBRO )',
'  and ( :P36_COD_FAMILIA IS NULL OR art.cod_familia = :P36_COD_FAMILIA )',
'  and ( :P36_COD_ARTICULO_DES IS NULL OR d.cod_articulo = :P36_COD_ARTICULO_DES )',
'	   and c.cod_empresa = cc.cod_empresa',
'  and c.cod_cliente = cc.cod_cliente',
'  and cc.cod_persona = pc.cod_persona',
'  and c.cod_empresa = tc.cod_empresa',
'  and c.tip_comprobante = tc.tip_comprobante',
'  and c.cod_empresa = s.cod_empresa',
'  and c.cod_sucursal = s.cod_sucursal',
'  and c.cod_moneda = m.cod_moneda',
'  and c.cod_empresa = cv.cod_empresa',
'  and c.cod_condicion_venta =  cv.cod_condicion_venta',
'  and c.cod_empresa = v.cod_empresa',
'  and c.cod_vendedor = v.cod_vendedor',
'  and v.cod_persona = pv.cod_persona',
'  and ( c.cod_empresa = d.cod_empresa',
'  and c.tip_comprobante = d.tip_comprobante',
'  and c.ser_comprobante = d.ser_comprobante',
'  and c.nro_comprobante = d.nro_comprobante )',
'  and d.cod_empresa  = art.cod_empresa(+)',
'  and d.cod_articulo = art.cod_articulo(+)',
'   ',
'     and c.cod_moneda=2',
' ',
'group by  c.cod_empresa,c.cod_moneda , m.descripcion , m.decimales , c.fec_comprobante',
'order by 1,2,5,7)',
'group by dia, fec_comprobante--, cod_moneda',
'order by fec_comprobante asc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P36_FEC_INICIAL,P36_FEC_FINAL,P36_COD_RUBRO,P36_COD_VENDEDOR,P36_COD_MARCA_DES,P36_TIP_CLIENTE,P36_COD_CLIENTE,P36_COD_CORTO_INI,P36_COD_CORTO_FIN,P36_COD_ARTICULO_DES,P36_COD_ARTICULO_HAS,P36_TIPO_CORTE,P_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P36_TIP_REPORTE'
,p_plug_display_when_cond2=>'3'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Dia'
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
 p_id=>wwv_flow_imp.id(38188714041756516)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'Sin datos diarios'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>38188714041756516
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38189983652756528)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>1
,p_column_identifier=>'L'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38189480971756523)
,p_db_column_name=>'DIA'
,p_display_order=>10
,p_column_identifier=>'G'
,p_column_label=>'Dia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38189503984756524)
,p_db_column_name=>'TOTAL_MONEDA_GS'
,p_display_order=>20
,p_column_identifier=>'H'
,p_column_label=>'Total Moneda Gs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38189643526756525)
,p_db_column_name=>'TOTAL_MONEDA_USD'
,p_display_order=>30
,p_column_identifier=>'I'
,p_column_label=>'Total Moneda Usd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38189777461756526)
,p_db_column_name=>'TOTAL_EQUIVALENCIA_USD'
,p_display_order=>40
,p_column_identifier=>'J'
,p_column_label=>'Total Equivalencia Usd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38189802622756527)
,p_db_column_name=>'TIPO_CAMBIO'
,p_display_order=>50
,p_column_identifier=>'K'
,p_column_label=>'Tipo Cambio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(39078757574076982)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'390788'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FEC_COMPROBANTE:DIA:TOTAL_MONEDA_GS:TOTAL_MONEDA_USD:TOTAL_EQUIVALENCIA_USD:TIPO_CAMBIO:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14127172722620770)
,p_button_sequence=>330
,p_button_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_button_name=>'EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btn_ejecutar'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14123650087620766)
,p_name=>'P36_COD_USUARIO_VAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20048705574999782)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14124082763620768)
,p_name=>'P36_COD_EMPRESA_VAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20048705574999782)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14124485987620768)
,p_name=>'P36_COD_SUCURSAL_VAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(20048705574999782)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14124836552620768)
,p_name=>'P36_COD_MODULO_VAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(20048705574999782)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14125213822620769)
,p_name=>'P36_TIP_CONTADO_VAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(20048705574999782)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_imp.id(14125620385620769)
,p_name=>'P36_TIP_CREDITO_VAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(20048705574999782)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14126091880620769)
,p_name=>'P36_TIP_NOTACRE_VAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(20048705574999782)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14126426831620769)
,p_name=>'P36_TIP_TICKET_VAR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(20048705574999782)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14127584513620771)
,p_name=>'P36_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
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
,p_lov_null_text=>'TODAS'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(14127929081620772)
,p_name=>'P36_COD_SECTOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_prompt=>'Sector'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVSECTORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sector||'' - ''||descripcion D, ',
'         cod_sector R',
'    FROM sectores ',
'   WHERE cod_empresa = :P_COD_EMPRESA ',
'ORDER BY descripcion;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(14128368260620772)
,p_name=>'P36_COD_CORTO_INI'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_prompt=>'Cod.Corto Art.'
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
 p_id=>wwv_flow_imp.id(14128726522620772)
,p_name=>'P36_DESC_ART_INI'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_prompt=>'&nbsp'
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
 p_id=>wwv_flow_imp.id(14129196277620772)
,p_name=>'P36_COD_CORTO_FIN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_prompt=>'Cod.Corto Art.'
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
 p_id=>wwv_flow_imp.id(14129502604620772)
,p_name=>'P36_DESC_ART_FIN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_prompt=>'&nbsp'
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
 p_id=>wwv_flow_imp.id(14129978398620773)
,p_name=>'P36_COD_ARTICULO_DES'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_prompt=>'Articulo Desde'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DES_ARTICULO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--VTRFAPRO',
'  SELECT cod_articulo||'' - ''||descripcion D, ',
'         cod_articulo R',
'    FROM st_articulos ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY lpad( cod_articulo, 30, '' '' );'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(14130388069620773)
,p_name=>'P36_COD_ARTICULO_HAS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_prompt=>'Articulo Hasta'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_HAS_ARTICULO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--VTRFAPRO',
'  SELECT cod_articulo||'' - ''||descripcion D, ',
'         cod_articulo R',
'    FROM st_articulos ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY lpad( cod_articulo, 30, '' '' );'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(14130700436620773)
,p_name=>'P36_COD_RUBRO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
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
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(14131102380620773)
,p_name=>'P36_COD_FAMILIA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_prompt=>'Familia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_FAMILIA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_familia||'' - ''||descripcion D, ',
'       cod_familia R',
'  FROM st_familia',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND ESTADO=''S'';'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(14131567777620773)
,p_name=>'P36_COD_LINEA_DES'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_prompt=>'Linea '
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DES_LINEA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_linea||'' - ''||descripcion D,',
'         cod_linea R',
'    FROM st_linea ',
'ORDER BY 2;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(14131911647620774)
,p_name=>'P36_COD_MARCA_DES'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DES_MARCA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_marca R, ',
'         cod_marca||'' - ''||descripcion D',
'    FROM st_marcas ',
'ORDER BY 2;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(14132302409620774)
,p_name=>'P36_CATEGORIA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_prompt=>'Categoria'
,p_display_as=>'NATIVE_POPUP_LOV'
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
,p_lov_null_text=>'TODAS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(14132732186620774)
,p_name=>'P36_TIP_COMPROBANTE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_prompt=>'Tipo Comprobante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT descripcion, tip_comprobante',
'    FROM tipos_comprobantes ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'     AND tip_comprobante IN (''FCO'',''FCR'',''NCR'',''TKT'',''DEB'') ',
'ORDER BY descripcion;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(14133971512620775)
,p_name=>'P36_COD_CORPORACION'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_prompt=>'Corporacion'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVCORPORACION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_corporacion||'' - ''||descripcion D, ',
'         cod_corporacion R',
'    FROM cc_corporaciones ',
'   WHERE cod_empresa = :P_COD_EMPRESA ',
'ORDER BY descripcion;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(14134354125620775)
,p_name=>'P36_COD_CLIENTE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nombre,',
'       nomb_fantasia,',
'       cod_cliente,',
'       codigo_area,',
'       num_telefono,',
'       cod_ident,',
'       numero,',
'       cod_ident||'' - ''||nombre DESCRI,',
'       c.cod_cliente codi',
'  FROM cc_clientes c, personas p, telef_personas pt, ident_personas pi',
' WHERE c.cod_empresa = :P_COD_EMPRESA',
'   AND c.cod_persona = p.cod_persona',
'   AND p.cod_persona = pt.cod_persona(+)',
'   AND p.cod_persona = pi.cod_persona(+)',
'   AND nvl(c.estado, ''X'') in(''A'',''B'',''C'')',
' ORDER BY nombre'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(14134724443620775)
,p_name=>'P36_TIP_CLIENTE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_prompt=>'Tipo Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TIP_CLIENTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_tip_cliente||'' - ''||descripcion D, ',
'         cod_tip_cliente R',
'    FROM cc_tipo_cliente ',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(14135137335620775)
,p_name=>'P36_COD_CONDICION_VENTA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_prompt=>unistr('Condici\00F3n Venta')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CONDICION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_condicion_venta||'' - ''||descripcion D, ',
'       cod_condicion_venta R',
'  FROM cc_condiciones_ventas ',
' WHERE cod_empresa=:P_COD_EMPRESA;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(14135524724620775)
,p_name=>'P36_COD_VENDEDOR'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVVENDEDORES1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT v.cod_vendedor||'' - ''||ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D,  ',
'         v.cod_vendedor R',
'    FROM fv_vendedores v, personas p ',
'   WHERE  v.cod_empresa = :P_COD_EMPRESA',
'     AND v.cod_persona = p.cod_persona ',
'     AND nvl( v.estado, ''A'' ) = ''A'' ',
'order by 1;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(14135986041620776)
,p_name=>'P36_COD_TIPO_GRUPO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_prompt=>'Categ. Vend.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CAT_VENDEDORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_tipo_grupo||'' - '' ||descripcion D, ',
'       cod_tipo_grupo R ',
'  FROM FV_CATEGORIAS_VENDEDORES',
' WHERE cod_empresa = :P_COD_EMPRESA;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(14136333405620776)
,p_name=>'P36_COD_LISTA_PRECIO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_prompt=>'Lista Precio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVLISTAPRECIO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT l.cod_lista_precio||'' - ''||l.descripcion D, ',
'       l.cod_lista_precio R ',
'  FROM vt_listas_precios_cab l, monedas m ',
' WHERE l.cod_empresa = :P_COD_EMPRESA',
'   AND l.cod_moneda = m.cod_moneda ',
'   AND l.estado = ''A'';'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(14136764347620776)
,p_name=>'P36_COD_MONEDA'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVMONEDAS1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- IDENTICO A LV_MONEDAS DEL VTFONSEN',
'  SELECT cod_moneda||'' - ''||descripcion D, ',
'         cod_moneda R',
'    FROM monedas ',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(14137157487620776)
,p_name=>'P36_NRO_LOTE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_prompt=>'Nro Lote'
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
 p_id=>wwv_flow_imp.id(14137554481620776)
,p_name=>'P36_FEC_INICIAL'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
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
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14137907552620777)
,p_name=>'P36_FEC_FINAL'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_prompt=>'Fecha Final'
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
 p_id=>wwv_flow_imp.id(14138376894620777)
,p_name=>'P36_RADIO_FECHA'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC2:D\00EDa;1,Mes;2,A\00F1o;3,General;4')
,p_begin_on_new_line=>'N'
,p_grid_column=>10
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_css_classes=>'radio'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'4'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14138786051620777)
,p_name=>'P36_TIP_REPORTE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_prompt=>'Tipo de Reporte'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Agrupado por Vendedor'' D, ''1'' C',
'from dual ',
'UNION ALL',
'select ''Agrupado por Marca'' D, ''2'' C',
'from dual',
'UNION ALL',
'select ''Agrupado por Dia'' D, ''3'' C',
'from dual'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>7
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
 p_id=>wwv_flow_imp.id(14139955230620777)
,p_name=>'P36_AUX_MSJ'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14140359228620778)
,p_name=>'P36_USUARIO'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14210201960640550)
,p_name=>'P36_TIPO_CORTE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(20047212539999767)
,p_item_default=>'D'
,p_prompt=>'Ver Por'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC2:D\00EDa;D,Mes;M,A\00F1o;A')
,p_grid_column=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_css_classes=>'radio'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14141638737620787)
,p_validation_name=>'VA_FEC_FINAL'
,p_validation_sequence=>9
,p_validation=>'P36_FEC_FINAL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar una fecha final.'
,p_associated_item=>wwv_flow_imp.id(14137907552620777)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14140808801620786)
,p_validation_name=>'VA_FEC_FINAL1'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF TO_DATE(:P36_FEC_FINAL) < TO_DATE(:P36_FEC_INICIAL) THEN',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'La fecha final debe ser mayor que la fecha inicial.'
,p_associated_item=>wwv_flow_imp.id(14137907552620777)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14141236840620786)
,p_validation_name=>'VA_FEC_INICIAL'
,p_validation_sequence=>20
,p_validation=>'P36_FEC_INICIAL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar una fecha inicial.'
,p_associated_item=>wwv_flow_imp.id(14137554481620776)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14143109080620788)
,p_name=>'DA_COD_CORTO_INI'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P36_COD_CORTO_INI'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14143666547620789)
,p_event_id=>wwv_flow_imp.id(14143109080620788)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P36_AUX_MSJ := NULL;',
'if :P36_COD_CORTO_INI is not null then',
'   begin',
'      select descripcion, cod_articulo',
'         into :P36_DESC_ART_INI,:P36_COD_ARTICULO_DES',
'         from st_articulos',
'         where cod_empresa = :P36_COD_EMPRESA_VAR',
'           and cod_art_corto= :P36_COD_CORTO_INI;',
'   exception',
'      when no_data_found then',
'         :P36_DESC_ART_INI := null ;',
unistr('         :P36_AUX_MSJ := ''No se encuentra c\00F3digo de art\00EDculo'';'),
'      when others then',
'         :P36_DESC_ART_INI := null ;',
unistr('         raise_application_error(-20000, ''Error en la tabla de art\00EDculos '' || sqlerrm );'),
'   end ;',
'else',
'   :P36_DESC_ART_INI := ''TODOS'' ;',
'end if ;'))
,p_attribute_02=>'P36_COD_CORTO_INI,P36_COD_EMPRESA_VAR'
,p_attribute_03=>'P36_DESC_ART_INI,P36_AUX_MSJ,P36_COD_ARTICULO_DES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14144188045620789)
,p_event_id=>wwv_flow_imp.id(14143109080620788)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P36_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P36_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14144520341620790)
,p_name=>'DA_COD_CORTO_FIN'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P36_COD_CORTO_FIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14145002768620790)
,p_event_id=>wwv_flow_imp.id(14144520341620790)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P36_COD_CORTO_FIN is not null then',
'   begin',
'      select descripcion,cod_articulo',
'         into :P36_DESC_ART_FIN,:P36_COD_ARTICULO_HAS',
'         from st_articulos',
'         where cod_empresa  = :P36_COD_EMPRESA_VAR',
'           and cod_art_corto = :P36_COD_CORTO_FIN;',
'   exception',
'      when others then',
'         :P36_DESC_ART_FIN:= null ;',
'   end ;',
'   /*if :b_parametro.cod_articulo_has < :b_parametro.cod_articulo_des then',
unistr('      mensaje( ''Debe ser posterior al c\00F3digo de art\00EDculo desde'' ) ;'),
'   end if ;*/',
'else',
'   :P36_COD_CORTO_FIN := null ;',
'end if ;'))
,p_attribute_02=>'P36_COD_CORTO_FIN,P36_COD_EMPRESA_VAR'
,p_attribute_03=>'P36_COD_CORTO_FIN ,P36_DESC_ART_FIN,P36_COD_ARTICULO_HAS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14145448101620790)
,p_name=>'DA_EXCLUIDO'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P36_AGRUPAR'
,p_condition_element=>'P36_VER_COSTO'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14145943574620790)
,p_event_id=>wwv_flow_imp.id(14145448101620790)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P36_TIP_COMPROBANTE IS null THEN',
'   :P36_EXCLUIDO := ''I'' ;',
'END IF;'))
,p_attribute_02=>'P36_TIP_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14147248377620791)
,p_name=>'DA_EXCLUIDO_1'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P36_EXCLUIDO'
,p_condition_element=>'P36_TIP_COMPROBANTE'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14147773455620791)
,p_event_id=>wwv_flow_imp.id(14147248377620791)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P36_TIP_COMPROBANTE IS null THEN',
'   :P36_EXCLUIDO := ''I'' ;',
'END IF;'))
,p_attribute_02=>'P36_TIP_COMPROBANTE'
,p_attribute_03=>'P36_EXCLUIDO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14146394424620790)
,p_name=>'DA_CAMBIA_FECHAS'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P36_RADIO_FECHA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14146868372620790)
,p_event_id=>wwv_flow_imp.id(14146394424620790)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P36_RADIO_FECHA = 1 THEN',
'     :P36_FEC_INICIAL := SYSDATE ;',
'     :P36_FEC_FINAL := SYSDATE ;',
'END IF;',
'IF :P36_RADIO_FECHA = 2 THEN',
'     :P36_FEC_INICIAL := to_date(''01/''||substr(to_char(SYSDATE,''dd/mm/yyyy''),4,10),''dd/mm/yyyy'') ;',
'     :P36_FEC_FINAL := last_day(add_months(SYSDATE,0)) ;',
'END IF;',
'IF :P36_RADIO_FECHA = 3 THEN',
'     :P36_FEC_INICIAL := to_date(''01/01/''||substr(to_char(SYSDATE,''dd/mm/yyyy''),7,10),''dd/mm/yyyy'') ;',
'     :P36_FEC_FINAL    := to_date(''31/12/''||substr(to_char(SYSDATE,''dd/mm/yyyy''),7,10),''dd/mm/yyyy'') ;',
'END IF;',
'IF :P36_RADIO_FECHA = 4 THEN',
'     :P36_FEC_INICIAL := null ;',
'     :P36_FEC_FINAL    := null ;',
'END IF;'))
,p_attribute_02=>'P36_RADIO_FECHA'
,p_attribute_03=>'P36_FEC_INICIAL,P36_FEC_FINAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35366223786032949)
,p_name=>'da_ejecutar'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14127172722620770)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14208646781640534)
,p_event_id=>wwv_flow_imp.id(35366223786032949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P36_TIP_REPORTE,P36_FEC_INICIAL,P36_FEC_FINAL,P36_COD_VENDEDOR,P36_COD_MARCA_DES,P36_COD_RUBRO,P36_CATEGORIA,P36_COD_LINEA_DES,P36_TIPO_CORTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35366382579032950)
,p_event_id=>wwv_flow_imp.id(35366223786032949)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(35364888961032935)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14208780827640535)
,p_event_id=>wwv_flow_imp.id(35366223786032949)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14141955673620787)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE-FORM',
':P_COD_MODULO := ''VT'';',
'',
' ',
'--:P36_TIP_REPORTE := 3;',
' ',
'---:P36_FEC_INICIAL := to_date( ''01/'' || to_char( sysdate, ''MM/YYYY'' ), ''DD/MM/YYYY'' );',
'--:P36_FEC_FINAL   := sysdate;',
'',
'--:P36_RADIO_FECHA := 1;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
