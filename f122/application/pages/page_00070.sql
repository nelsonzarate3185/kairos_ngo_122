prompt --application/pages/page_00070
begin
--   Manifest
--     PAGE: 00070
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
 p_id=>70
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Informe de Ventas'
,p_alias=>'INFORME-DE-VENTAS'
,p_step_title=>'Informe de Ventas'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Body-contentInner{ background-color: #d3e4fa;}',
'',
'.apex-item-select , .apex-item-text , .apex-item-textarea, .apex-item-display-only{',
'   border-color: #487ab8  !important;   ',
'}',
'',
'',
'',
'  .tabla_color   td.t-Report-cell , .t-Form-label  {',
'  color: darkblue  !important;',
'  border-color: #003a85;',
'}',
'',
'  th.t-Report-colHead,  th.t-Report-colHead a{',
'  background-color:  #fff6a4  !important;',
'  color: #003a85  !important;',
'  border-color: cadetblue;',
'}',
'',
' .a-IRR-header{',
'      background-color: #fff6a4  !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
'',
'  .a-IRR-headerLink{',
'    background-color: #fff6a4  !important;',
'	  color: #003a85 !important;    }',
'   ',
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td {',
'    border: 1px solid #003a85b7 !important;',
'}',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20241113083318'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85061821833438725)
,p_plug_name=>'Filtros'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98194697061746841)
,p_plug_name=>unistr('Base Comisi\00F3n')
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'sum(monto)Venta,',
'  sum(COSTO_GS)  COSTO_TOTAL,',
'       sum(MONTO - COSTO_GS) UTILIDAD,',
'       ',
'             sum((MONTO - COSTO_GS) )/',
'             CASE WHEN sum(monto)>0 THEN ',
'             sum(monto)',
'             when sum((MONTO - COSTO_GS) )=0 then',
'             1',
'             ELSE',
'              sum((MONTO - COSTO_GS) )',
'             END *100 ',
'             ',
'             MARGEN,',
'       ',
'             nvl((select SUM(MM.META_MES_CERRADO)',
'                 from fv_metas_vend_mensual mm',
'                 where mm.cod_vendedor = v.COD_VENDEDOR',
'                 and mm.mes= to_char(fec_factura,''MM'')',
'                 and mm.anio=to_char(fec_factura,''YYYY'')',
'             ),(SELECT  SUM(MV.MONTO)',
'                FROM FV_METAS_VEND MV',
'                WHERE MV.COD_EMPRESA=v.cod_empresa',
'                AND   MV.COD_VENDEDOR=V.COD_VENDEDOR',
'                 and mV.mes= to_char(fec_factura,''MM'')',
'                 and mV.Anio= to_char(fec_factura,''YYYY'')',
'             ))META',
' FROM V_VENTAS V ',
' where fec_factura between :P70_FECHA_DESDE AND :P70_FECHA_HASTA',
' AND (COD_VENDEDOR = :P70_COD_VENDEDOR OR :P70_COD_VENDEDOR IS NULL)',
' and v.cod_empresa=:P_COD_EMPRESA',
' AND (COD_SUPERVISOR = :P70_COD_SUPERVISOR OR :P70_COD_SUPERVISOR IS NULL)',
'   AND (COD_MARCA = :P70_MARCA OR :P70_MARCA IS NULL)',
'   AND (COD_DIVISION = :P70_DIVISION OR :P70_DIVISION IS NULL)',
'    AND (COD_SUCURSAL= :P70_SUCURSAL OR :P70_SUCURSAL IS NULL)',
'    AND (COD_CATEGORIA = :P70_CATEGORIA OR :P70_CATEGORIA IS NULL)',
' GROUP BY  COD_VENDEDOR,to_char(fec_factura,''MM''),to_char(fec_factura,''YYYY''),v.cod_empresa',
' ORDER BY 1'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P70_COD_VENDEDOR,P70_COD_SUPERVISOR,P70_FECHA_DESDE,P70_USUARIO,P70_FECHA_HASTA,P70_TIPO,P70_DIVISION,P70_MARCA,P70_CATEGORIA,P70_SUCURSAL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
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
 p_id=>wwv_flow_imp.id(98194709483746842)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>98194709483746842
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(98194879377746843)
,p_db_column_name=>'COSTO_TOTAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Costo Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(98194975442746844)
,p_db_column_name=>'UTILIDAD'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Utilidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(98195045522746845)
,p_db_column_name=>'MARGEN'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Margen'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(98195237275746847)
,p_db_column_name=>'VENTA'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Venta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(98195476740746849)
,p_db_column_name=>'META'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Meta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(379186069729911814)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3791861'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'META:VENTA:APXWS_CC_001:COSTO_TOTAL:MARGEN:UTILIDAD:'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(379362464702114873)
,p_report_id=>wwv_flow_imp.id(379186069729911814)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'D *100 / E'
,p_format_mask=>'999G990D00'
,p_column_type=>'NUMBER'
,p_column_label=>'%Logrado'
,p_report_label=>'%Logrado'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(102738267354580661)
,p_plug_name=>'Resumen'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT case when :P70_TIPO= ''CATEGORIA'' THEN ',
'DESC_CATEGORIA',
'when :P70_TIPO= ''MARCA'' THEN ',
'MARCA',
'when :P70_TIPO= ''DIVISION'' THEN ',
'DESC_DIVISION',
'when :P70_TIPO= ''DIVISION'' THEN ',
'DESC_DIVISION',
'when :P70_TIPO= ''TOTAL'' THEN ',
'''TOTAL''',
'when :P70_TIPO= ''VENDEDOR'' THEN ',
'NOMBRE_VENDEDOR',
'when :P70_TIPO= ''SUPERVISOR'' THEN ',
'supervisor',
'when :P70_TIPO= ''ARTICULO'' THEN ',
'COD_ART_CORTO||''-''||COD_ARTICULO||''-''||DESC_ARTICULO',
'ELSE ''TOTAL''',
'END TIPO,',
'sum(monto)Venta,',
'sum(cantidad)cantidad,',
'  sum(COSTO_GS)  COSTO_TOTAL,',
'       sum(MONTO - COSTO_GS) UTILIDAD,',
'       ',
'             sum((MONTO - COSTO_GS) )/',
'             CASE WHEN sum(monto)>0 THEN ',
'             sum(monto)',
'             when sum((MONTO - COSTO_GS) )=0 then',
'             1',
'             ELSE',
'              sum((MONTO - COSTO_GS) )',
'             END *100 ',
'             ',
'             MARGEN,',
'       ',
'             sum((MONTO - COSTO_GS) )/',
'             CASE WHEN sum(costo_gs)>0 THEN',
'             sum(costo_gs)',
'              when sum((MONTO - COSTO_GS) )=0 then',
'             1',
'             ELSE  sum((MONTO - COSTO_GS) ) END',
'             ',
'             ',
'             *100  MARKUP',
' FROM V_VENTAS V ',
' where cod_empresa=:p_cod_empresa',
' and fec_factura between :P70_FECHA_DESDE AND :P70_FECHA_HASTA',
' AND (COD_VENDEDOR = :P70_COD_VENDEDOR OR :P70_COD_VENDEDOR IS NULL)',
' AND (COD_SUPERVISOR = :P70_COD_SUPERVISOR OR :P70_COD_SUPERVISOR IS NULL)',
'   AND (COD_MARCA = :P70_MARCA OR :P70_MARCA IS NULL)',
'   AND (COD_DIVISION = :P70_DIVISION OR :P70_DIVISION IS NULL)',
'    AND (COD_SUCURSAL= :P70_SUCURSAL OR :P70_SUCURSAL IS NULL)',
'    AND (COD_CATEGORIA = :P70_CATEGORIA OR :P70_CATEGORIA IS NULL)',
' GROUP BY ',
' case when :P70_TIPO= ''CATEGORIA'' THEN ',
'DESC_CATEGORIA',
'when :P70_TIPO= ''MARCA'' THEN ',
'MARCA',
'when :P70_TIPO= ''DIVISION'' THEN ',
'DESC_DIVISION',
'when :P70_TIPO= ''DIVISION'' THEN ',
'DESC_DIVISION',
'when :P70_TIPO= ''TOTAL'' THEN ',
'''TOTAL''',
'when :P70_TIPO= ''VENDEDOR'' THEN ',
'NOMBRE_VENDEDOR',
'when :P70_TIPO= ''SUPERVISOR'' THEN ',
'supervisor',
'when :P70_TIPO= ''ARTICULO'' THEN ',
'COD_ART_CORTO||''-''||COD_ARTICULO||''-''||DESC_ARTICULO',
'ELSE ''TOTAL''',
'END',
' ORDER BY 1'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P70_COD_VENDEDOR,P70_COD_SUPERVISOR,P70_FECHA_DESDE,P70_USUARIO,P70_FECHA_HASTA,P70_TIPO,P70_DIVISION,P70_MARCA,P70_CATEGORIA,P70_SUCURSAL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(102738380055580662)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>102738380055580662
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13063696355503093)
,p_db_column_name=>'COSTO_TOTAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Costo Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13064063539503094)
,p_db_column_name=>'UTILIDAD'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Utilidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13064470590503094)
,p_db_column_name=>'MARGEN'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Margen'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13064850064503094)
,p_db_column_name=>'MARKUP'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Markup'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13065292324503094)
,p_db_column_name=>'VENTA'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Venta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13065653398503094)
,p_db_column_name=>'TIPO'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(347922511096606749)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(102802914154484004)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'785247'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIPO:CANTIDAD:VENTA:COSTO_TOTAL:UTILIDAD:MARGEN:MARKUP:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(114729948174943580)
,p_plug_name=>'Reporte de Ventas'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FEC_FACTURA,',
'FEC_PEDIDO,',
'COD_CLIENTE,',
'NOMBRE,',
'LOCALIDAD_PRINCIPAL,',
'NOMBRE_SUCURSAL,',
'DIRECCION_SUCURSAL,',
'DEPARTAMENTO,',
'CIUDAD,',
'DESPACHADO_DE,',
'COD_RUBRO,',
'COD_ART_CORTO,',
'COD_ARTICULO,',
'DESC_ARTICULO,',
'CANTIDAD,',
'MONTO,',
'monto_total_c_iva,',
'VOLUMEN,',
'SER_COMPROBANTE,',
'NRO_COMPROBANTE,',
'TIPO_ENTREGA,',
'COMENTARIO,',
'NRO_PEDIDO,',
'DEPARTAMENTO_SUCURSAL,',
'CIUDAD_SUCURSAL,',
'COD_VENDEDOR,',
'NOMBRE_VENDEDOR,',
'DESC_MARCA,',
'SEMANA, TO_CHAR(FEC_FACTURA,''MM'') MES,',
'TO_CHAR(FEC_FACTURA,''YYYY'') ANIO,',
'  COSTO_GS  COSTO_TOTAL,',
'       MONTO - COSTO_GS UTILIDAD,',
'       ROUND((MONTO - COSTO_GS)   ',
'             ',
'             / case when MONTO>0 then MONTO else 1 end , 2)*100 MARGEN,',
'       ROUND((MONTO - COSTO_GS) / case when COSTO_GS>0 then COSTO_GS else 1 end , 2)*100 MARKUP, TIP_COMPROBANTE, v.desc_categoria',
'       ',
' FROM V_VENTAS V ',
' where fec_factura between :P70_FECHA_DESDE AND :P70_FECHA_HASTA',
' and v.cod_empresa=:p_cod_empresa',
' AND (COD_VENDEDOR = :P70_COD_VENDEDOR OR :P70_COD_VENDEDOR IS NULL)',
' AND (COD_SUPERVISOR = :P70_COD_SUPERVISOR OR :P70_COD_SUPERVISOR IS NULL)',
' AND (COD_SUCURSAL= :P70_SUCURSAL OR :P70_SUCURSAL IS NULL)',
'  AND (COD_MARCA = :P70_MARCA OR :P70_MARCA IS NULL)',
'   AND (COD_DIVISION = :P70_DIVISION OR :P70_DIVISION IS NULL)',
'    AND (COD_CATEGORIA = :P70_CATEGORIA OR :P70_CATEGORIA IS NULL)',
' ORDER BY 1'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P70_COD_VENDEDOR,P70_FECHA_DESDE,P70_FECHA_HASTA,P70_COD_SUPERVISOR,P70_DIVISION,P70_MARCA,P70_CATEGORIA,P70_SUCURSAL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(114730041241943580)
,p_name=>'Reporte de Ventas'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'0'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_csv_output_separator=>';'
,p_owner=>'INV'
,p_internal_uid=>114730041241943580
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13067481925503096)
,p_db_column_name=>'FEC_FACTURA'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Fec Factura'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13067805610503096)
,p_db_column_name=>'FEC_PEDIDO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Fec Pedido'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13068210234503096)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13068669172503096)
,p_db_column_name=>'NOMBRE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13069073681503096)
,p_db_column_name=>'LOCALIDAD_PRINCIPAL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Localidad Principal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13069461691503097)
,p_db_column_name=>'NOMBRE_SUCURSAL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Nombre Sucursal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13069852617503097)
,p_db_column_name=>'DIRECCION_SUCURSAL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Direccion Sucursal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13070245815503097)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13071077144503097)
,p_db_column_name=>'DESPACHADO_DE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Despachado De'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13071401955503098)
,p_db_column_name=>'COD_RUBRO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Cod Rubro'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13070699682503097)
,p_db_column_name=>'CIUDAD'
,p_display_order=>21
,p_column_identifier=>'I'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13071871006503098)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>31
,p_column_identifier=>'L'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13072252704503098)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>41
,p_column_identifier=>'M'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13072662897503098)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>51
,p_column_identifier=>'N'
,p_column_label=>'Desc Articulo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13073071060503098)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>61
,p_column_identifier=>'O'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13073491897503098)
,p_db_column_name=>'MONTO'
,p_display_order=>71
,p_column_identifier=>'P'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13067093245503095)
,p_db_column_name=>'MONTO_TOTAL_C_IVA'
,p_display_order=>81
,p_column_identifier=>'AC'
,p_column_label=>'Monto Total C Iva'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13073845957503099)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>91
,p_column_identifier=>'Q'
,p_column_label=>'Volumen'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13074238952503099)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>101
,p_column_identifier=>'R'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13074683866503099)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>111
,p_column_identifier=>'S'
,p_column_label=>'Nro Comprobante'
,p_column_link=>'f?p=&APP_ID.:193:&SESSION.::&DEBUG.:193:P193_TIP_COMPROBANTE,P193_SER_COMPROBANTE,P193_NRO_COMPROBANTE:#TIP_COMPROBANTE#,#SER_COMPROBANTE#,#NRO_COMPROBANTE#'
,p_column_linktext=>'#NRO_COMPROBANTE#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13075070030503099)
,p_db_column_name=>'TIPO_ENTREGA'
,p_display_order=>121
,p_column_identifier=>'T'
,p_column_label=>'Tipo Entrega'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13075484180503099)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>131
,p_column_identifier=>'U'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13075855964503100)
,p_db_column_name=>'NRO_PEDIDO'
,p_display_order=>141
,p_column_identifier=>'V'
,p_column_label=>'Nro Pedido'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13076250147503100)
,p_db_column_name=>'DEPARTAMENTO_SUCURSAL'
,p_display_order=>151
,p_column_identifier=>'W'
,p_column_label=>'Departamento Sucursal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13076629926503100)
,p_db_column_name=>'CIUDAD_SUCURSAL'
,p_display_order=>161
,p_column_identifier=>'X'
,p_column_label=>'Ciudad Sucursal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13077040244503100)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>171
,p_column_identifier=>'Y'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13077405446503100)
,p_db_column_name=>'NOMBRE_VENDEDOR'
,p_display_order=>181
,p_column_identifier=>'Z'
,p_column_label=>'Nombre Vendedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13077817574503100)
,p_db_column_name=>'DESC_MARCA'
,p_display_order=>191
,p_column_identifier=>'AA'
,p_column_label=>'Desc Marca'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13078266846503101)
,p_db_column_name=>'SEMANA'
,p_display_order=>201
,p_column_identifier=>'AB'
,p_column_label=>'Semana'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13078646632503101)
,p_db_column_name=>'MES'
,p_display_order=>211
,p_column_identifier=>'AD'
,p_column_label=>'Mes'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13079063168503101)
,p_db_column_name=>'COSTO_TOTAL'
,p_display_order=>221
,p_column_identifier=>'AE'
,p_column_label=>'Costo Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_security_scheme=>wwv_flow_imp.id(73228004285700417)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13079416606503101)
,p_db_column_name=>'UTILIDAD'
,p_display_order=>231
,p_column_identifier=>'AF'
,p_column_label=>'Utilidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_security_scheme=>wwv_flow_imp.id(73228004285700417)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13079813405503101)
,p_db_column_name=>'MARGEN'
,p_display_order=>241
,p_column_identifier=>'AG'
,p_column_label=>'Margen'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_security_scheme=>wwv_flow_imp.id(73228004285700417)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13080259235503101)
,p_db_column_name=>'MARKUP'
,p_display_order=>251
,p_column_identifier=>'AH'
,p_column_label=>'Markup'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_security_scheme=>wwv_flow_imp.id(73228004285700417)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13080667714503102)
,p_db_column_name=>'ANIO'
,p_display_order=>261
,p_column_identifier=>'AI'
,p_column_label=>'Anio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45559580790746529)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>271
,p_column_identifier=>'AJ'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64084204018872807)
,p_db_column_name=>'DESC_CATEGORIA'
,p_display_order=>281
,p_column_identifier=>'AK'
,p_column_label=>'Desc Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(114744873338806523)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'607802'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>'FEC_FACTURA:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:FEC_PEDIDO:NRO_PEDIDO:COD_CLIENTE:NOMBRE:COD_ART_CORTO:COD_ARTICULO:DESC_ARTICULO:CANTIDAD:MONTO:MONTO_TOTAL_C_IVA:VOLUMEN:COD_VENDEDOR:NOMBRE_VENDEDOR:DEPARTAMENTO:DEPARTAMENTO_SUCURSAL:CIU'
||'DAD:CIUDAD_SUCURSAL:'
,p_chart_type=>'bar'
,p_chart_label_column=>'FEC_FACTURA'
,p_chart_label_title=>'Fecha'
,p_chart_value_column=>'MONTO_TOTAL_C_IVA'
,p_chart_aggregate=>'SUM'
,p_chart_value_title=>'Monto'
,p_chart_sorting=>'LABEL_ASC'
,p_chart_orientation=>'horizontal'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(614732155374622703)
,p_report_id=>wwv_flow_imp.id(114744873338806523)
,p_group_by_columns=>'COD_CLIENTE:NOMBRE'
,p_function_01=>'SUM'
,p_function_column_01=>'CANTIDAD'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Cantidad'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'Y'
,p_function_02=>'SUM'
,p_function_column_02=>'MONTO'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_label_02=>'Total'
,p_function_format_mask_02=>'999G999G999G999G999G999G990'
,p_function_sum_02=>'Y'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(614732564224622704)
,p_report_id=>wwv_flow_imp.id(114744873338806523)
,p_pivot_columns=>'ANIO'
,p_row_columns=>'NOMBRE_VENDEDOR'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(614732958489622705)
,p_pivot_id=>wwv_flow_imp.id(614732564224622704)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'MONTO'
,p_db_column_name=>'PFC1'
,p_column_label=>'Monto'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_sum=>'Y'
);
wwv_flow_imp_page.create_worksheet_pivot_sort(
 p_id=>wwv_flow_imp.id(614733312508622705)
,p_pivot_id=>wwv_flow_imp.id(614732564224622704)
,p_sort_seq=>1
,p_sort_column_name=>'APXWS_PV3'
,p_sort_direction=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(379340016867055003)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(85061821833438725)
,p_button_name=>'BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13060163220503091)
,p_name=>'P70_COD_VENDEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(85061821833438725)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'SELECT  P.NOMBRE ||''(''||F.COD_VENDEDOR||'')'' NOMBRE,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=:P_COD_EMPRESA',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'and (F.COD_VENDEDOR = :P_COD_VENDEDOR )',
'union all',
'SELECT  P.NOMBRE ||''(''||F.COD_VENDEDOR||'')'' NOMBRE,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=:P_COD_EMPRESA',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'and F.cod_persona in( select f1.cod_persona from fv_vendedores f1 where f1.cod_empresa=f.cod_empresa and f1.cod_vendedor= :P_COD_VENDEDOR )',
'and (F.COD_VENDEDOR <> :P_COD_VENDEDOR )',
'',
'UNION ALL',
'SELECT  P.NOMBRE ||''(''||F.COD_VENDEDOR||'')'' NOMBRE,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=:P_COD_EMPRESA',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
' AND nvl(BUSCA_PERMISO(''1'',''APEX'',:P_COD_USUARIO,''VER_OTROS_VENDEDORES''),''N'') = ''S'' ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
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
 p_id=>wwv_flow_imp.id(13060549861503092)
,p_name=>'P70_COD_SUPERVISOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(85061821833438725)
,p_prompt=>'Supervisor'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_SUPERVISORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  P.NOMBRE,Fc.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P, fv_vendedores fc',
'WHERE F.COD_EMPRESA=:p_cod_empresa',
'and f.cod_empresa=fc.cod_empresa',
'and f.cod_supervisor=fc.cod_vendedor',
'AND Fc.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'group by  P.NOMBRE,Fc.COD_VENDEDOR'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>':P_VER_OTROS_VENDEDORES = ''N'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13060929287503092)
,p_name=>'P70_DIVISION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(85061821833438725)
,p_prompt=>'Division'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DIVISION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESC_DIVISION, COD_DIVISION FROM ST_DIVISION_ARTICULOS',
'WHERE ESTADO=''A''',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13061322005503092)
,p_name=>'P70_MARCA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(85061821833438725)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MARCAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca||'' - ''||descripcion D, cod_marca R',
'from st_marcas',
'order by descripcion;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13061741554503092)
,p_name=>'P70_CATEGORIA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(85061821833438725)
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
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13062181312503092)
,p_name=>'P70_FECHA_DESDE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(85061821833438725)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Desde'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13062511676503092)
,p_name=>'P70_USUARIO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(85061821833438725)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13062944152503093)
,p_name=>'P70_FECHA_HASTA'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(85061821833438725)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Hasta'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13066394712503095)
,p_name=>'P70_TIPO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(102738267354580661)
,p_item_default=>'TOTAL'
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''TOTAL'' D, ''TOTAL'' C',
'FROM DUAL UNION ALL',
'SELECT ''MARCA'' D, ''MARCA'' C',
'FROM DUAL UNION ALL',
'SELECT ''CATEGORIA'' D, ''CATEGORIA'' C',
'FROM DUAL UNION ALL',
'SELECT ''DIVISION'' D, ''DIVISION'' C',
'FROM DUAL UNION ALL',
'SELECT ''VENDEDOR'' D, ''VENDEDOR'' C',
'FROM DUAL ',
'UNION ALL',
'SELECT ''SUPERVISOR'' D, ''SUPERVISOR'' C',
'FROM DUAL ',
'UNION ALL',
'SELECT ''ARTICULO'' D, ''ARTICULO'' C',
'FROM DUAL '))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186748652263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64084341918872808)
,p_name=>'P70_SUCURSAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(85061821833438725)
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
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13082858074503104)
,p_name=>'carga_inicial'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13083313987503104)
,p_event_id=>wwv_flow_imp.id(13082858074503104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P70_COD_VENDEDOR:=:P_COD_VENDEDOR;',
'  ',
'  END;'))
,p_attribute_02=>'P70_USUARIO'
,p_attribute_03=>'P70_COD_VENDEDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13083772810503104)
,p_name=>'DA'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(379340016867055003)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13084241845503104)
,p_event_id=>wwv_flow_imp.id(13083772810503104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(102738267354580661)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13084723817503104)
,p_event_id=>wwv_flow_imp.id(13083772810503104)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(114729948174943580)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98195562310746850)
,p_event_id=>wwv_flow_imp.id(13083772810503104)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98194697061746841)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13086591554503105)
,p_name=>'DA_TIPO'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P70_TIPO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13087010635503105)
,p_event_id=>wwv_flow_imp.id(13086591554503105)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(102738267354580661)
);
wwv_flow_imp.component_end;
end;
/
