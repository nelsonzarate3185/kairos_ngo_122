prompt --application/pages/page_00071
begin
--   Manifest
--     PAGE: 00071
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
 p_id=>71
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Informe de Pedidos'
,p_alias=>'INFORME-DE-PEDIDOS'
,p_step_title=>'Informe de Pedidos'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240906160223'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45556809649746502)
,p_plug_name=>'Consultas'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(45556934671746503)
,p_name=>'Facturas'
,p_parent_plug_id=>wwv_flow_imp.id(45556809649746502)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.FEC_COMPROBANTE, C.TIP_COMPROBANTE, C.SER_COMPROBANTE, C.NRO_COMPROBANTE, CASE WHEN C.ESTADO =''A'' THEN ''ANULADO'' ELSE ''PROCESADO'' END ESTADO',
'from vt_comprobantes_cabecera C where cod_empresa=:P_COD_EMPRESA ',
'  AND SER_COMPROBANTE_REF||''-''||NRO_COMPROBANTE_REF=:P71_AUX_ABRE_DETALLE',
'  and tip_comprobante_ref=''PED'''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P71_AUX_ABRE_DETALLE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45557099763746504)
,p_query_column_id=>1
,p_column_alias=>'FEC_COMPROBANTE'
,p_column_display_sequence=>10
,p_column_heading=>'Fec Comprobante'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45557154989746505)
,p_query_column_id=>2
,p_column_alias=>'TIP_COMPROBANTE'
,p_column_display_sequence=>20
,p_column_heading=>'Tip Comprobante'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45557209390746506)
,p_query_column_id=>3
,p_column_alias=>'SER_COMPROBANTE'
,p_column_display_sequence=>30
,p_column_heading=>'Ser Comprobante'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45557343742746507)
,p_query_column_id=>4
,p_column_alias=>'NRO_COMPROBANTE'
,p_column_display_sequence=>40
,p_column_heading=>'Nro Comprobante'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:193:&SESSION.::&DEBUG.:193:P193_TIP_COMPROBANTE,P193_SER_COMPROBANTE,P193_NRO_COMPROBANTE:#TIP_COMPROBANTE#,#SER_COMPROBANTE#,#NRO_COMPROBANTE#'
,p_column_linktext=>'#NRO_COMPROBANTE#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45557460160746508)
,p_query_column_id=>5
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>50
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85096334066453854)
,p_plug_name=>'Reporte de Pedidos'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110600263596792754)
,p_plug_name=>'Pedidos'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'FEC_COMPROBANTE,NOMBRE,',
'COD_CLIENTE,',
'SIGLAS,',
'IMPORTE,',
'COMPROBANTE,',
'TIP_COMPROBANTE,',
'SER_COMPROBANTE,',
'NRO_COMPROBANTE,',
'COD_ARTICULO,',
'DESC_ARTICULO,',
'CANTIDAD,',
'TIPO,',
'ORIGEN_ENTREGA,',
'COMENTARIO,',
'NOMBRE_SUCURSAL,',
'DIRECCION_SUCURSAL,',
'',
'ESTADO,',
'ESTADO_DISTRIBUCION,',
'EMPRESA,',
'',
'COD_DEPARTAMENTO,',
'COD_CIUDAD,',
'STOCK,',
'SITUACION,',
'FECHA_PEDIDO,',
'COD_VENDEDOR,',
'DESC_VENDEDOR,',
'',
'CANTIDAD_SERVIDA,',
'OBSERVACION_PEDIDO,',
'PLAZO,',
'LISTA_PRECIO,',
'COD_ART_CORTO,',
'DEPARTAMENTO,',
'CIUDAD,',
'BARRIO,',
'VOLUMEN, AUTORIZACION,AREA_AUTORIZACION, flete,',
' factura,',
' PLANILLA_REPARTO,cantidad_pendiente , importe_pendiente, factura_cantidad, margen, motivo_anulacion',
'',
' FROM V_PEDIDOS_PRODUCTOS v',
' where (cod_vendedor = :P71_COD_VENDEDOR OR :P71_COD_VENDEDOR IS NULL)',
' AND FEC_COMPROBANTE>= :P71_FECHA_DESDE ',
' and fec_comprobante <=:P71_FECHA_HASTA',
' and v.cod_empresa =:p_cod_empresa',
' AND (ESTADO = :P71_ESTADO OR :P71_ESTADO =''X'')',
' And  (cod_SUPERVISOR = :P71_COD_SUPERVISOR OR :P71_COD_SUPERVISOR IS NULL)',
' And  (cod_cliente = :P71_COD_CLIENTE OR :P71_COD_CLIENTE IS NULL)',
' And  (NRO_COMPROBANTE = :P71_NRO_PEDIDO OR :P71_NRO_PEDIDO IS NULL)',
' and (REGEXP_LIKE (:P71_NRO_FACTURA,FACTURA) or :P71_NRO_FACTURA IS NULL)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P71_COD_VENDEDOR,P71_FECHA_DESDE,P71_FECHA_HASTA,P71_COD_SUPERVISOR,P71_ESTADO,P71_COD_CLIENTE,P71_NRO_FACTURA,P71_NRO_PEDIDO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LEGAL'
,p_prn_width=>14
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
 p_id=>wwv_flow_imp.id(110600399986792754)
,p_name=>'Pedidos'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'Sin Datos'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_csv_output_separator=>';'
,p_owner=>'INV'
,p_internal_uid=>110600399986792754
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13105355738518221)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>1
,p_column_identifier=>'S'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13098981016518218)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13098557523518218)
,p_db_column_name=>'NOMBRE'
,p_display_order=>30
,p_column_identifier=>'A'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13099314524518218)
,p_db_column_name=>'SIGLAS'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Siglas'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13099789555518218)
,p_db_column_name=>'IMPORTE'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Importe'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13100199956518219)
,p_db_column_name=>'COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Comprobante'
,p_column_link=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:RP,34:P34_PARAM_SER_PED,P34_PARAM_NRO_PED:#SER_COMPROBANTE#,#NRO_COMPROBANTE#'
,p_column_linktext=>'#COMPROBANTE#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13100509737518219)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13101754055518219)
,p_db_column_name=>'TIPO'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13102171221518219)
,p_db_column_name=>'ORIGEN_ENTREGA'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Origen Entrega'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13102560693518220)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13102996051518220)
,p_db_column_name=>'NOMBRE_SUCURSAL'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Nombre Sucursal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13103302588518220)
,p_db_column_name=>'DIRECCION_SUCURSAL'
,p_display_order=>140
,p_column_identifier=>'M'
,p_column_label=>'Direccion Sucursal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13103760467518220)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>150
,p_column_identifier=>'N'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13104105753518220)
,p_db_column_name=>'CIUDAD'
,p_display_order=>160
,p_column_identifier=>'O'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13104519532518220)
,p_db_column_name=>'BARRIO'
,p_display_order=>170
,p_column_identifier=>'P'
,p_column_label=>'Barrio'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13104940328518221)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>180
,p_column_identifier=>'Q'
,p_column_label=>'Volumen'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13105761198518221)
,p_db_column_name=>'ESTADO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13106191426518221)
,p_db_column_name=>'ESTADO_DISTRIBUCION'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Estado Distribucion'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13106575464518221)
,p_db_column_name=>'EMPRESA'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Empresa'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13106911027518221)
,p_db_column_name=>'COD_DEPARTAMENTO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Cod Departamento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13107307561518222)
,p_db_column_name=>'COD_CIUDAD'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Cod Ciudad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13107792420518222)
,p_db_column_name=>'STOCK'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Stock'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13108194248518222)
,p_db_column_name=>'SITUACION'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Situacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13108540370518222)
,p_db_column_name=>'FECHA_PEDIDO'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Fecha Pedido'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13112525141518224)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>290
,p_column_identifier=>'AL'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13108913675518222)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>300
,p_column_identifier=>'AC'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13109387916518222)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>310
,p_column_identifier=>'AD'
,p_column_label=>'Desc Articulo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13109780450518223)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>320
,p_column_identifier=>'AE'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13110160748518223)
,p_db_column_name=>'DESC_VENDEDOR'
,p_display_order=>330
,p_column_identifier=>'AF'
,p_column_label=>'Desc Vendedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13110557501518223)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>340
,p_column_identifier=>'AG'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13110993688518223)
,p_db_column_name=>'CANTIDAD_SERVIDA'
,p_display_order=>350
,p_column_identifier=>'AH'
,p_column_label=>'Cantidad Servida'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13111307632518223)
,p_db_column_name=>'OBSERVACION_PEDIDO'
,p_display_order=>360
,p_column_identifier=>'AI'
,p_column_label=>'Observacion Pedido'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13111761809518224)
,p_db_column_name=>'PLAZO'
,p_display_order=>370
,p_column_identifier=>'AJ'
,p_column_label=>'Plazo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13112145629518224)
,p_db_column_name=>'LISTA_PRECIO'
,p_display_order=>380
,p_column_identifier=>'AK'
,p_column_label=>'Lista Precio'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13098127376518218)
,p_db_column_name=>'AUTORIZACION'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Autorizacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13112964040518224)
,p_db_column_name=>'AREA_AUTORIZACION'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Area Autorizacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13113329509518224)
,p_db_column_name=>'FLETE'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Flete'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13113789999518224)
,p_db_column_name=>'PLANILLA_REPARTO'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Planilla Reparto'
,p_column_link=>'f?p=&APP_ID.:120:&SESSION.::&DEBUG.:120:P120_SER_COMPROBANTE,P120_NRO_COMPROBANTE:#SER_COMPROBANTE#,#NRO_COMPROBANTE#'
,p_column_linktext=>'#PLANILLA_REPARTO#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13114108818518225)
,p_db_column_name=>'FACTURA'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Factura'
,p_column_link=>'javascript:$s(''P71_AUX_ABRE_DETALLE'',''#COMPROBANTE#'');'
,p_column_linktext=>'#FACTURA#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13114510560518225)
,p_db_column_name=>'CANTIDAD_PENDIENTE'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Cantidad Pendiente'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13114952687518225)
,p_db_column_name=>'IMPORTE_PENDIENTE'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Importe Pendiente'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45556739083746501)
,p_db_column_name=>'FACTURA_CANTIDAD'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Factura Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45560668440746540)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45560791418746541)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76098151058162807)
,p_db_column_name=>'MARGEN'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Margen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76102056389162846)
,p_db_column_name=>'MOTIVO_ANULACION'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Motivo Anulacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(110615947981790545)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'608188'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>'FEC_COMPROBANTE:NOMBRE:COMPROBANTE:COD_ART_CORTO:COD_ARTICULO:DESC_ARTICULO:CANTIDAD:SIGLAS:IMPORTE:DESC_VENDEDOR:OBSERVACION_PEDIDO:ESTADO:AUTORIZACION:ESTADO_DISTRIBUCION:AREA_AUTORIZACION:FLETE:PLANILLA_REPARTO:FACTURA:CANTIDAD_PENDIENTE:IMPORTE_P'
||'ENDIENTE:NRO_COMPROBANTE:SER_COMPROBANTE:'
,p_sum_columns_on_break=>'CANTIDAD_PENDIENTE:IMPORTE_PENDIENTE'
,p_chart_type=>'bar'
,p_chart_label_column=>'AUTORIZACION'
,p_chart_value_column=>'IMPORTE'
,p_chart_aggregate=>'SUM'
,p_chart_sorting=>'DEFAULT'
,p_chart_orientation=>'vertical'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(639380313020365917)
,p_report_id=>wwv_flow_imp.id(110615947981790545)
,p_group_by_columns=>'FEC_COMPROBANTE:COMPROBANTE:NOMBRE:DESC_VENDEDOR:TIPO:AREA_AUTORIZACION:FACTURA:PLANILLA_REPARTO'
,p_function_01=>'SUM'
,p_function_column_01=>'CANTIDAD'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Cantidad'
,p_function_format_mask_01=>'999G999G999G999G999G999G990'
,p_function_sum_01=>'Y'
,p_function_02=>'SUM'
,p_function_column_02=>'IMPORTE'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_label_02=>'Importe'
,p_function_format_mask_02=>'999G999G999G999G999G999G990'
,p_function_sum_02=>'Y'
,p_function_03=>'SUM'
,p_function_column_03=>'CANTIDAD_PENDIENTE'
,p_function_db_column_name_03=>'APXWS_GBFC_03'
,p_function_label_03=>'CantPend'
,p_function_format_mask_03=>'999G999G999G999G999G999G990'
,p_function_sum_03=>'Y'
,p_function_04=>'SUM'
,p_function_column_04=>'IMPORTE_PENDIENTE'
,p_function_db_column_name_04=>'APXWS_GBFC_04'
,p_function_label_04=>'ImpPendiente'
,p_function_format_mask_04=>'999G999G999G999G999G999G990'
,p_function_sum_04=>'Y'
,p_function_05=>'MAX'
,p_function_column_05=>'MARGEN'
,p_function_db_column_name_05=>'APXWS_GBFC_05'
,p_function_label_05=>'Margen'
,p_function_format_mask_05=>'999G999G999G999G990D00'
,p_function_sum_05=>'N'
,p_function_06=>'SUM'
,p_function_column_06=>'NRO_COMPROBANTE'
,p_function_db_column_name_06=>'APXWS_GBFC_06'
,p_function_label_06=>'nro2'
,p_function_format_mask_06=>'999G999G999G999G990'
,p_function_sum_06=>'N'
,p_function_07=>'SUM'
,p_function_column_07=>'MARGEN'
,p_function_db_column_name_07=>'APXWS_GBFC_07'
,p_function_label_07=>'nro'
,p_function_format_mask_07=>'999G999G999G999G990D00'
,p_function_sum_07=>'N'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(639380780921365921)
,p_report_id=>wwv_flow_imp.id(110615947981790545)
,p_pivot_columns=>'AUTORIZACION'
,p_row_columns=>'COD_CLIENTE:NOMBRE'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(639381110261365921)
,p_pivot_id=>wwv_flow_imp.id(639380780921365921)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'IMPORTE'
,p_db_column_name=>'PFC1'
,p_column_label=>'Total'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_sum=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45558139892746515)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(45556934671746503)
,p_button_name=>'CERRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13093846826518215)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(85096334066453854)
,p_button_name=>'Buscar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13116715510518226)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(110600263596792754)
,p_button_name=>'Pedido'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Pedido'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-send-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13094289620518215)
,p_name=>'P71_FECHA_DESDE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(85096334066453854)
,p_prompt=>'Desde'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13094671441518215)
,p_name=>'P71_FECHA_HASTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(85096334066453854)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Hasta'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13095086156518216)
,p_name=>'P71_USUARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(85096334066453854)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13095404608518216)
,p_name=>'P71_COD_VENDEDOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(85096334066453854)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDORES_71'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  P.NOMBRE||'' - ''||F.COD_VENDEDOR  vendedor,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=:p_cod_empresa',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'union all',
'SELECT  ''TODOS'' NOMBRE,NULL COD_VENDEDOR FROM dual',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13095865151518216)
,p_name=>'P71_COD_SUPERVISOR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(85096334066453854)
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
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096274157518216)
,p_name=>'P71_ESTADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(85096334066453854)
,p_item_default=>'PENDIENTE'
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''PENDIENTE'' D, ''PENDIENTE'' C FROM DUAL UNION ALL',
'select ''FACTURADO'' D, ''FACTURADO'' C FROM DUAL UNION ALL',
'select ''ANULADO'' D, ''ANULADO'' C FROM DUAL UNION ALL',
'select ''CERRADO'' D, ''CERRADO'' C FROM DUAL ',
'UNION ALL',
'SELECT',
'''PARCIALMENTE_FACTURADO'' D,''PARCIALMENTE_FACTURADO'' C FROM DUAL ',
'UNION ALL',
'select ''TODOS'' D, ''X'' C FROM DUAL '))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096615366518216)
,p_name=>'P71_NRO_PEDIDO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(85096334066453854)
,p_prompt=>'Nro Pedido'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13097010010518217)
,p_name=>'P71_NRO_FACTURA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(85096334066453854)
,p_prompt=>'Nro Factura'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13097447478518217)
,p_name=>'P71_COD_CLIENTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(85096334066453854)
,p_prompt=>'Cod Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre|| '' ''|| codigo_area|| '' ''|| num_telefono || '' ''||numero||'' ''||cod_cliente nombre, cod_cliente',
'from cc_clientes c, personas p, telef_personas pt, ident_personas pi ',
'where c.cod_empresa = :p_cod_empresa',
'and c.cod_persona = p.cod_persona',
'and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'---and nvl(c.estado,''X'') = ''A'' ',
'order by decode(c.estado,''A'',1,2)  ,nombre'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
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
 p_id=>wwv_flow_imp.id(45557581960746509)
,p_name=>'P71_TIP_COMPROBANTE_REF'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(110600263596792754)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45557609768746510)
,p_name=>'P71_SER_COMPROBANTE_REF'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(110600263596792754)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45557701325746511)
,p_name=>'P71_NRO_COMPROBANTE_REF'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(110600263596792754)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45557882098746512)
,p_name=>'P71_AUX_ABRE_DETALLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(45556934671746503)
,p_prompt=>'Pedido'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13118088200518227)
,p_name=>'REFRESH'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13093846826518215)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13118596519518227)
,p_event_id=>wwv_flow_imp.id(13118088200518227)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110600263596792754)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45557963408746513)
,p_name=>'DA_ABRE_DETALLE_FACTURA'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_AUX_ABRE_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45558497696746518)
,p_event_id=>wwv_flow_imp.id(45557963408746513)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45556934671746503)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45558012433746514)
,p_event_id=>wwv_flow_imp.id(45557963408746513)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45556809649746502)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45558219151746516)
,p_name=>'DA_CERRAR_DET_FACTURA'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45558139892746515)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45558329764746517)
,p_event_id=>wwv_flow_imp.id(45558219151746516)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45556809649746502)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(650045575435536511)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARGA_INICIAL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P71_FECHA_DESDE:=SYSDATE-TO_CHAR(SYSDATE,''DD'')+1;',
':P71_COD_VENDEDOR:=:P_COD_VENDEDOR;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
