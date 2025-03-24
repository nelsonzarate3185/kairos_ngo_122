prompt --application/pages/page_00612
begin
--   Manifest
--     PAGE: 00612
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
 p_id=>612
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Carga de Facturas'
,p_alias=>'CARGA-DE-FACTURAS1'
,p_step_title=>'Carga de Facturas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240229103032'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(207093074356914645)
,p_plug_name=>'Carga de Facturas'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>950
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76099061635162816)
,p_plug_name=>'Ver_factura'
,p_parent_plug_id=>wwv_flow_imp.id(207093074356914645)
,p_region_css_classes=>'js-dialog-size1200x900'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EMPRESA,',
'       TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       DATOS_JSON,',
'       URL_IMAGEN,URL_IMAGEN url_link',
'  from RP_IMAGENES_FACTURAS_QM',
'    WHERE tip_comprobante=:P612_TIP_COMPROBANTE',
'  AND ser_comprobante=:P612_SER_COMPROBANTE',
'  AND NRO_COMPROBANTE=:P612_NRO_COMPROBANTE',
'  AND EMPRESA=''NGO'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Ver_factura'
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
 p_id=>wwv_flow_imp.id(76099179122162817)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Contiene Imagenes'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_sort=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>76099179122162817
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76099279944162818)
,p_db_column_name=>'EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76099357062162819)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76099418924162820)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76099512030162821)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76099622883162822)
,p_db_column_name=>'DATOS_JSON'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Datos Json'
,p_column_type=>'CLOB'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76099747386162823)
,p_db_column_name=>'URL_IMAGEN'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Url Imagen'
,p_column_html_expression=>'<img src="#URL_IMAGEN#" />'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76099802476162824)
,p_db_column_name=>'URL_LINK'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Descargar Foto'
,p_column_link=>'#URL_LINK#'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-download"></span>'
,p_column_link_attr=>'data-id=#URL_LINK#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(588008963265603456)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'5880090'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPRESA:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:DATOS_JSON:URL_IMAGEN:URL_LINK'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(206409618397497637)
,p_plug_name=>'Carga de Facturas'
,p_region_name=>'Detalle'
,p_parent_plug_id=>wwv_flow_imp.id(207093074356914645)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       COD_SUCURSAL,',
'       FEC_COMPROBANTE,',
'       COD_CLIENTE,',
'       (    ',
'           SELECT ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia)))',
'      FROM cc_clientes c, personas p',
'     WHERE c.cod_empresa = v.cod_empresa',
'       AND c.cod_cliente = v.cod_cliente',
'       AND c.cod_persona = p.cod_persona) nombre_cliente,',
'       COD_VENDEDOR,',
'       (  select nvl( fv.descripcion, ltrim(p.nombre) )',
'    from fv_vendedores fv, personas p ',
'   where fv.cod_empresa = :P_COD_EMPRESA',
'     and fv.cod_persona = p.cod_persona ',
'     and fv.cod_vendedor = v.cod_vendedor',
'     and fv.estado = ''A'' ) nombre_vendedor,',
'       TIP_COMPROBANTE_REF,',
'       SER_COMPROBANTE_REF,',
'       NRO_COMPROBANTE_REF,',
'       COD_CONDICION_VENTA,',
'       COD_LISTA_PRECIO,',
'       DESCUENTO,',
'       COD_MONEDA,',
'       TIP_CAMBIO,',
'       TOT_COMPROBANTE,',
'       TOT_GRAVADAS,',
'       TOT_EXENTAS,',
'       TOT_IVA,',
'       NRO_MOV_CAJ,',
'       ESTADO,',
'       FEC_ESTADO,',
'       COD_USUARIO,',
'       FEC_ALTA,',
'       DESCUENTO_DET,',
'       TOT_DESCUENTO_DET,',
'       CAMBIO_DOLAR,',
'       CAMBIO_MONEDA_PRECIO,',
'       NOM_CLIENTE,',
'       ESTADO_REPARTO,',
'       TOT_IVA_SIN_REDONDEO,',
'       TIP_CAMBIO_COMPRA,',
'       COMENTARIO,',
'       GRU_COMPROBANTE,',
'       COD_PERSONA,',
'       ENTREGA_INICIAL,',
'       COD_SECTOR,',
'       VENCIMIENTO_INICIAL,',
'       TIP_MOV_CAJ,',
'       REFERENCIA,',
'       TEL_CLIENTE,',
'       COLUMNA,',
'       SER_MOV_CAJ,',
'       RUC,',
'       NRO_REMISION,',
'       NOMBRE_CAB,',
'       LIBRO_IVA,',
'       ESTADO_EMPAQUE,',
'       DIR_CLIENTE,',
'       DIAS,',
'       COD_DIRECCION,',
'       COD_ENCARGADO_FAC,',
'       COD_USUARIO_ANU,',
'       COD_MOTIVO_ANU,',
'       AJUSTE_IVA,',
'       TOT_RECARGO_DET,',
'       COD_CUSTODIO,',
'       TOT_EXENTAS_GEN,',
'       COD_TIPO_VENTA,',
'       ASIENTOS,',
'       SENIA,',
'       DESCUENTO_EX,',
'       DESCUENTO_GR,',
'       RECARGO_EX,',
'       RECARGO_GR,',
'       COD_CONDICION_VENTA_FAC,',
'       NRO_INSCRIPCION_AD,',
'       IND_EXENTO_AD,',
'       HORA_ALTA,',
'       RECARGO,',
'       CONTROL_FIN,',
'       FECHA_INICIAL,',
'       FECHA_FINAL,',
'       TIP_OT,',
'       SER_OT,',
'       NRO_OT,',
'       IND_OT,',
'       FEC_PAGO,',
'       IND_IMPRESO,',
'       IND_REPARTO,',
'       COD_SUCURSAL_CLI,',
'       LUGAR_ENTREGA,',
'       NRO_ORDEN_COMPRA,',
'       IND_CAJA,',
'       FEC_PLANILLA_CAJA,',
'       COD_USUARIO_CAJA,',
'       NRO_REGISTRO_DEV,',
'       IND_PLAN_ENTREGA,',
'       IND_ANTICIPO_OT,',
'       IND_IMPRESO_ORDEN,',
'       MONTO_ORDEN_REG,',
'       NRO_PLANILLA_PEDIDO,',
'       IMPORTE_CAPITAL,',
'       IMPORTE_INTERES,',
'       IND_CONFIRMA_ENVIO,',
'       NRO_FACTURA_QM,',
'       MONTO_DEV_NCR,',
'       ASIENTO_DEVOLUCION_VALOR,',
'       ASIENTOS_COSTO,',
'       ASIENTOS_ANULACION,',
'       ID_FACTURA_ELECTRONICA,',
'       CDC,',
'       FECHA_ALTA_COMPROBANTE,',
'       IND_AFECTA_GUARDA,',
'       FECHA_CONFIRMACION_ENVIO,',
'       NULL EDITAR,',
'       NULL ELIMINAR,',
'       null ver_foto,',
'       ROWID',
'  from VT_COMPROBANTES_CABECERA v',
'  where v.cod_empresa= :P_COD_EMPRESA',
'  and fec_comprobante between :P612_FECHA_DESDE AND :P612_FECHA_HASTA',
'  AND (COD_SUCURSAL=:P612_SUCURSAL OR :P612_SUCURSAL IS NULL)',
'  AND (COD_VENDEDOR=:P612_COD_VENDEDOR OR :P612_COD_VENDEDOR IS NULL)',
'  AND (COD_CLIENTE=:P612_COD_CLIENTE OR :P612_COD_CLIENTE IS NULL)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P612_COD_VENDEDOR,P612_COD_CLIENTE,P612_FECHA_DESDE,P612_FECHA_HASTA,P612_SUCURSAL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Carga de Facturas'
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
 p_id=>wwv_flow_imp.id(206409705316497638)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'FCARDOZO'
,p_internal_uid=>206409705316497638
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206409827060497639)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206409976523497640)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206410010306497641)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206410161754497642)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206410234398497643)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206410354201497644)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206410420813497645)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206410572124497646)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206410600687497647)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206410773870497648)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Ser Comprobante Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206410839196497649)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(206410937599497650)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207083604510914601)
,p_db_column_name=>'COD_LISTA_PRECIO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Lista Precio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207083750044914602)
,p_db_column_name=>'DESCUENTO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Descuento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207083882481914603)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207083947185914604)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Tip Cambio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207084083408914605)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Tot Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207084132496914606)
,p_db_column_name=>'TOT_GRAVADAS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Tot Gravadas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207084233719914607)
,p_db_column_name=>'TOT_EXENTAS'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Tot Exentas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207084359672914608)
,p_db_column_name=>'TOT_IVA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Tot Iva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207084407904914609)
,p_db_column_name=>'NRO_MOV_CAJ'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Nro Mov Caj'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207084532408914610)
,p_db_column_name=>'ESTADO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207084601809914611)
,p_db_column_name=>'FEC_ESTADO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Fec Estado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207084774530914612)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207084806480914613)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Fec Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207084941107914614)
,p_db_column_name=>'DESCUENTO_DET'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Descuento Det'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207085050373914615)
,p_db_column_name=>'TOT_DESCUENTO_DET'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Tot Descuento Det'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207085174085914616)
,p_db_column_name=>'CAMBIO_DOLAR'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Cambio Dolar'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207085200799914617)
,p_db_column_name=>'CAMBIO_MONEDA_PRECIO'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Cambio Moneda Precio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207085390275914618)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207085484295914619)
,p_db_column_name=>'ESTADO_REPARTO'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Estado Reparto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207085501488914620)
,p_db_column_name=>'TOT_IVA_SIN_REDONDEO'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Tot Iva Sin Redondeo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207085698377914621)
,p_db_column_name=>'TIP_CAMBIO_COMPRA'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Tip Cambio Compra'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207085765601914622)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207085874055914623)
,p_db_column_name=>'GRU_COMPROBANTE'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Gru Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207085914098914624)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207086002165914625)
,p_db_column_name=>'ENTREGA_INICIAL'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Entrega Inicial'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207086194680914626)
,p_db_column_name=>'COD_SECTOR'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Cod Sector'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207086253461914627)
,p_db_column_name=>'VENCIMIENTO_INICIAL'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Vencimiento Inicial'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207086354478914628)
,p_db_column_name=>'TIP_MOV_CAJ'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Tip Mov Caj'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207086494157914629)
,p_db_column_name=>'REFERENCIA'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Referencia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207086599474914630)
,p_db_column_name=>'TEL_CLIENTE'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Tel Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207086613782914631)
,p_db_column_name=>'COLUMNA'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Columna'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207086731737914632)
,p_db_column_name=>'SER_MOV_CAJ'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Ser Mov Caj'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207086868115914633)
,p_db_column_name=>'RUC'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Ruc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207086993831914634)
,p_db_column_name=>'NRO_REMISION'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Nro Remision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207087040261914635)
,p_db_column_name=>'NOMBRE_CAB'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Nombre Cab'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207087185947914636)
,p_db_column_name=>'LIBRO_IVA'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Libro Iva'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207087265902914637)
,p_db_column_name=>'ESTADO_EMPAQUE'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Estado Empaque'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207087397225914638)
,p_db_column_name=>'DIR_CLIENTE'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Dir Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207087453725914639)
,p_db_column_name=>'DIAS'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Dias'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207087551445914640)
,p_db_column_name=>'COD_DIRECCION'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Cod Direccion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207087649109914641)
,p_db_column_name=>'COD_ENCARGADO_FAC'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Cod Encargado Fac'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207087768414914642)
,p_db_column_name=>'COD_USUARIO_ANU'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Cod Usuario Anu'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207087840536914643)
,p_db_column_name=>'COD_MOTIVO_ANU'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Cod Motivo Anu'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207087948256914644)
,p_db_column_name=>'AJUSTE_IVA'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Ajuste Iva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207088011688914645)
,p_db_column_name=>'TOT_RECARGO_DET'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Tot Recargo Det'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207088174021914646)
,p_db_column_name=>'COD_CUSTODIO'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Cod Custodio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207088236136914647)
,p_db_column_name=>'TOT_EXENTAS_GEN'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Tot Exentas Gen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207088382223914648)
,p_db_column_name=>'COD_TIPO_VENTA'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Cod Tipo Venta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207088464448914649)
,p_db_column_name=>'ASIENTOS'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Asientos'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207088545441914650)
,p_db_column_name=>'SENIA'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'Senia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207088695379914601)
,p_db_column_name=>'DESCUENTO_EX'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Descuento Ex'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207088731369914602)
,p_db_column_name=>'DESCUENTO_GR'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Descuento Gr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207088829023914603)
,p_db_column_name=>'RECARGO_EX'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Recargo Ex'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207088971977914604)
,p_db_column_name=>'RECARGO_GR'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'Recargo Gr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207089024160914605)
,p_db_column_name=>'COD_CONDICION_VENTA_FAC'
,p_display_order=>670
,p_column_identifier=>'BO'
,p_column_label=>'Cod Condicion Venta Fac'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207089165671914606)
,p_db_column_name=>'NRO_INSCRIPCION_AD'
,p_display_order=>680
,p_column_identifier=>'BP'
,p_column_label=>'Nro Inscripcion Ad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207089289196914607)
,p_db_column_name=>'IND_EXENTO_AD'
,p_display_order=>690
,p_column_identifier=>'BQ'
,p_column_label=>'Ind Exento Ad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207089322452914608)
,p_db_column_name=>'HORA_ALTA'
,p_display_order=>700
,p_column_identifier=>'BR'
,p_column_label=>'Hora Alta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207089475907914609)
,p_db_column_name=>'RECARGO'
,p_display_order=>710
,p_column_identifier=>'BS'
,p_column_label=>'Recargo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207089501508914610)
,p_db_column_name=>'CONTROL_FIN'
,p_display_order=>720
,p_column_identifier=>'BT'
,p_column_label=>'Control Fin'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207089643205914611)
,p_db_column_name=>'FECHA_INICIAL'
,p_display_order=>730
,p_column_identifier=>'BU'
,p_column_label=>'Fecha Inicial'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207089736743914612)
,p_db_column_name=>'FECHA_FINAL'
,p_display_order=>740
,p_column_identifier=>'BV'
,p_column_label=>'Fecha Final'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
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
 p_id=>wwv_flow_imp.id(207089854509914613)
,p_db_column_name=>'TIP_OT'
,p_display_order=>750
,p_column_identifier=>'BW'
,p_column_label=>'Tip Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207089978033914614)
,p_db_column_name=>'SER_OT'
,p_display_order=>760
,p_column_identifier=>'BX'
,p_column_label=>'Ser Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207090033411914615)
,p_db_column_name=>'NRO_OT'
,p_display_order=>770
,p_column_identifier=>'BY'
,p_column_label=>'Nro Ot'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207090165354914616)
,p_db_column_name=>'IND_OT'
,p_display_order=>780
,p_column_identifier=>'BZ'
,p_column_label=>'Ind Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207090202041914617)
,p_db_column_name=>'FEC_PAGO'
,p_display_order=>790
,p_column_identifier=>'CA'
,p_column_label=>'Fec Pago'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207090389215914618)
,p_db_column_name=>'IND_IMPRESO'
,p_display_order=>800
,p_column_identifier=>'CB'
,p_column_label=>'Ind Impreso'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207090485739914619)
,p_db_column_name=>'IND_REPARTO'
,p_display_order=>810
,p_column_identifier=>'CC'
,p_column_label=>'Ind Reparto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207090593724914620)
,p_db_column_name=>'COD_SUCURSAL_CLI'
,p_display_order=>820
,p_column_identifier=>'CD'
,p_column_label=>'Cod Sucursal Cli'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207090641742914621)
,p_db_column_name=>'LUGAR_ENTREGA'
,p_display_order=>830
,p_column_identifier=>'CE'
,p_column_label=>'Lugar Entrega'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207090730488914622)
,p_db_column_name=>'NRO_ORDEN_COMPRA'
,p_display_order=>840
,p_column_identifier=>'CF'
,p_column_label=>'Nro Orden Compra'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207090812725914623)
,p_db_column_name=>'IND_CAJA'
,p_display_order=>850
,p_column_identifier=>'CG'
,p_column_label=>'Ind Caja'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207090919805914624)
,p_db_column_name=>'FEC_PLANILLA_CAJA'
,p_display_order=>860
,p_column_identifier=>'CH'
,p_column_label=>'Fec Planilla Caja'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207091062814914625)
,p_db_column_name=>'COD_USUARIO_CAJA'
,p_display_order=>870
,p_column_identifier=>'CI'
,p_column_label=>'Cod Usuario Caja'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207091195103914626)
,p_db_column_name=>'NRO_REGISTRO_DEV'
,p_display_order=>880
,p_column_identifier=>'CJ'
,p_column_label=>'Nro Registro Dev'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207091239752914627)
,p_db_column_name=>'IND_PLAN_ENTREGA'
,p_display_order=>890
,p_column_identifier=>'CK'
,p_column_label=>'Ind Plan Entrega'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207091301884914628)
,p_db_column_name=>'IND_ANTICIPO_OT'
,p_display_order=>900
,p_column_identifier=>'CL'
,p_column_label=>'Ind Anticipo Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207091414053914629)
,p_db_column_name=>'IND_IMPRESO_ORDEN'
,p_display_order=>910
,p_column_identifier=>'CM'
,p_column_label=>'Ind Impreso Orden'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207091595629914630)
,p_db_column_name=>'MONTO_ORDEN_REG'
,p_display_order=>920
,p_column_identifier=>'CN'
,p_column_label=>'Monto Orden Reg'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207091647746914631)
,p_db_column_name=>'NRO_PLANILLA_PEDIDO'
,p_display_order=>930
,p_column_identifier=>'CO'
,p_column_label=>'Nro Planilla Pedido'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207091781999914632)
,p_db_column_name=>'IMPORTE_CAPITAL'
,p_display_order=>940
,p_column_identifier=>'CP'
,p_column_label=>'Importe Capital'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207091807733914633)
,p_db_column_name=>'IMPORTE_INTERES'
,p_display_order=>950
,p_column_identifier=>'CQ'
,p_column_label=>'Importe Interes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207091929738914634)
,p_db_column_name=>'IND_CONFIRMA_ENVIO'
,p_display_order=>960
,p_column_identifier=>'CR'
,p_column_label=>'Ind Confirma Envio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207092035792914635)
,p_db_column_name=>'NRO_FACTURA_QM'
,p_display_order=>970
,p_column_identifier=>'CS'
,p_column_label=>'Nro Factura Qm'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207092119268914636)
,p_db_column_name=>'MONTO_DEV_NCR'
,p_display_order=>980
,p_column_identifier=>'CT'
,p_column_label=>'Monto Dev Ncr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207092221582914637)
,p_db_column_name=>'ASIENTO_DEVOLUCION_VALOR'
,p_display_order=>990
,p_column_identifier=>'CU'
,p_column_label=>'Asiento Devolucion Valor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207092378261914638)
,p_db_column_name=>'ASIENTOS_COSTO'
,p_display_order=>1000
,p_column_identifier=>'CV'
,p_column_label=>'Asientos Costo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207092413948914639)
,p_db_column_name=>'ASIENTOS_ANULACION'
,p_display_order=>1010
,p_column_identifier=>'CW'
,p_column_label=>'Asientos Anulacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207092503296914640)
,p_db_column_name=>'ID_FACTURA_ELECTRONICA'
,p_display_order=>1020
,p_column_identifier=>'CX'
,p_column_label=>'Id Factura Electronica'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207092688232914641)
,p_db_column_name=>'CDC'
,p_display_order=>1030
,p_column_identifier=>'CY'
,p_column_label=>'Cdc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207092703227914642)
,p_db_column_name=>'FECHA_ALTA_COMPROBANTE'
,p_display_order=>1040
,p_column_identifier=>'CZ'
,p_column_label=>'Fecha Alta Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207092869616914643)
,p_db_column_name=>'IND_AFECTA_GUARDA'
,p_display_order=>1050
,p_column_identifier=>'DA'
,p_column_label=>'Ind Afecta Guarda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207092985037914644)
,p_db_column_name=>'FECHA_CONFIRMACION_ENVIO'
,p_display_order=>1060
,p_column_identifier=>'DB'
,p_column_label=>'Fecha Confirmacion Envio'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207093148138914646)
,p_db_column_name=>'EDITAR'
,p_display_order=>1070
,p_column_identifier=>'DC'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:99:&SESSION.::&DEBUG.:RP,99:P99_NRO_COMPROBANTE,P99_SER_COMPROBANTE,P99_TIP_COMPROBANTE,P99_ACCION_CONSULTA:#NRO_COMPROBANTE#,#SER_COMPROBANTE#,#TIP_COMPROBANTE#,1'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(207093292221914647)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>1080
,p_column_identifier=>'DD'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P612_ELIMINAR'',''#ROWID#''),$s(''P612_NRO_COMPROBANTE'',''#NRO_COMPROBANTE#''),$s(''P612_SER_COMPROBANTE'',''#SER_COMPROBANTE#''),$s(''P612_TIP_COMPROBANTE'',''#TIP_COMPROBANTE#''),$s(''P612_COD_EMPRESA'',''#COD_EMPRESA#'');'
,p_column_linktext=>'<span class="fa fa-trash-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205859451007548935)
,p_db_column_name=>'NOMBRE_CLIENTE'
,p_display_order=>1090
,p_column_identifier=>'DE'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205859524390548936)
,p_db_column_name=>'NOMBRE_VENDEDOR'
,p_display_order=>1100
,p_column_identifier=>'DF'
,p_column_label=>'Nombre Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205859921763548940)
,p_db_column_name=>'ROWID'
,p_display_order=>1110
,p_column_identifier=>'DG'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76099949515162825)
,p_db_column_name=>'VER_FOTO'
,p_display_order=>1120
,p_column_identifier=>'DH'
,p_column_label=>'Ver Foto'
,p_column_link=>'javascript:$s(''P612_VER_IMAGEN'',''#NRO_COMPROBANTE#''),$s(''P612_NRO_COMPROBANTE'',''#NRO_COMPROBANTE#''),$s(''P612_SER_COMPROBANTE'',''#SER_COMPROBANTE#''),$s(''P612_TIP_COMPROBANTE'',''#TIP_COMPROBANTE#''),$s(''P612_COD_EMPRESA'',''#COD_EMPRESA#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-image"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(207125963454913678)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2071260'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:COD_SUCURSAL:FEC_COMPROBANTE:COD_CLIENTE:NOM_CLIENTE:COD_VENDEDOR:NOMBRE_VENDEDOR:TIP_COMPROBANTE_REF:SER_COMPROBANTE_REF:NRO_COMPROBANTE_REF:TOT_COMPROBANTE:VER_FOTO:'
,p_sort_column_1=>'FEC_COMPROBANTE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(674146021733421707)
,p_plug_name=>'Filtros'
,p_parent_plug_id=>wwv_flow_imp.id(207093074356914645)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76100847657162834)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(76099061635162816)
,p_button_name=>'Volver'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-backward'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(589084404771982989)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(674146021733421707)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(207093386598914648)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(206409618397497637)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:99:&SESSION.::&DEBUG.:RP,99:P99_ACCION_CONSULTA:3'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76100091762162826)
,p_name=>'P612_VER_IMAGEN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(206409618397497637)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76101261263162838)
,p_name=>'P612_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(674146021733421707)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre|| '' ''|| codigo_area|| '' ''|| num_telefono || '' ''||numero||'' --''||cod_cliente nombre, cod_cliente',
'from cc_clientes c, personas p, telef_personas pt, ident_personas pi ',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona',
'and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'and nvl(c.estado,''X'') = ''A'' ',
'order by nombre'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when=>':P_VER_OTROS_VENDEDORES = ''N'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(205859638792548937)
,p_name=>'P612_ELIMINAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(206409618397497637)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(205860063317548941)
,p_name=>'P612_NRO_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(206409618397497637)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(205860126415548942)
,p_name=>'P612_COD_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(206409618397497637)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(205860227318548943)
,p_name=>'P612_TIP_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(206409618397497637)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(205860359496548944)
,p_name=>'P612_SER_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(206409618397497637)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(205860553470548946)
,p_name=>'P612_ERR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(206409618397497637)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(589084881672982996)
,p_name=>'P612_COD_VENDEDOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(674146021733421707)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  P.NOMBRE||'' - ''||F.COD_VENDEDOR  vendedor,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=''1''',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'union all',
'SELECT  ''TODOS'' NOMBRE,NULL COD_VENDEDOR FROM dual',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_read_only_when=>':P_VER_OTROS_VENDEDORES = ''N'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
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
 p_id=>wwv_flow_imp.id(589086767298983010)
,p_name=>'P612_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(674146021733421707)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(589087196233983010)
,p_name=>'P612_FECHA_DESDE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(674146021733421707)
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
 p_id=>wwv_flow_imp.id(589087515829983010)
,p_name=>'P612_USUARIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(674146021733421707)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(589087925174983010)
,p_name=>'P612_FECHA_HASTA'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(674146021733421707)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(205859778111548938)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P612_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(205860914008548950)
,p_event_id=>wwv_flow_imp.id(205859778111548938)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Desea eliminar este registro?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(205859826966548939)
,p_event_id=>wwv_flow_imp.id(205859778111548938)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P612_ERR:=NULL;',
'BEGIN',
'    vtfactur.elimina_cabecera(P_COD_EMPRESA       => :P612_COD_EMPRESA,',
'                              P_TIP_COMPROBANTE   => :P612_TIP_COMPROBANTE,',
'                              P_SER_COMPROBANTE   => :P612_SER_COMPROBANTE,',
'                              P_NRO_COMPROBANTE   => :P612_NRO_COMPROBANTE);',
'    vtfactur.elimina_detalle(P_COD_EMPRESA       => :P612_COD_EMPRESA,',
'                             P_TIP_COMPROBANTE   => :P612_TIP_COMPROBANTE,',
'                             P_SER_COMPROBANTE   => :P612_SER_COMPROBANTE,',
'                             P_NRO_COMPROBANTE   => :P612_NRO_COMPROBANTE);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al eliminar el comprobante. ''||sqlerrm);',
'        :P612_ERR:=''Ha ocurrido un error al eliminar el comprobante. '';',
'END;                                 '))
,p_attribute_02=>'P612_NRO_COMPROBANTE,P612_SER_COMPROBANTE,P612_TIP_COMPROBANTE,P612_COD_EMPRESA'
,p_attribute_03=>'P612_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(205860801879548949)
,p_event_id=>wwv_flow_imp.id(205859778111548938)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(206409618397497637)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P612_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76100130831162827)
,p_name=>'DA_VER_IMAGEN'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P612_VER_IMAGEN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76100626520162832)
,p_event_id=>wwv_flow_imp.id(76100130831162827)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var spinner = apex.util.showSpinner(); ',
'$("#apex_wait_overlay").remove(); ',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76100370406162829)
,p_event_id=>wwv_flow_imp.id(76100130831162827)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P612_ERR:=NULL;',
'DECLARE',
' VOBJETO VARCHAR2(32000);',
'  VRETORNO VARCHAR2(32000);',
'BEGIN',
' ',
'  DECLARE CURSOR CCAB IS SELECT V.EMPRESA, V.tip_comprobante, V.ser_comprobante, V.NRO_COMPROBANTE,V.nro_factura_qm, ',
'  nvl(case /*when ''a''=''a'' then ''generico''*/ when tipo_entrega=''CA'' THEN ''capital'' when tipo_entrega=''IN'' then ''interior'' else ''generico'' end,''generico'') TIPO_ENTREGA',
'  FROM V_FACTURA_DETALLE_EXP_CSV V',
'  WHERE tip_comprobante=:P612_TIP_COMPROBANTE',
'  AND ser_comprobante=:P612_SER_COMPROBANTE',
'  AND NRO_COMPROBANTE=:P612_NRO_COMPROBANTE',
'  AND EMPRESA=''NGO'' ',
'  GROUP BY V.EMPRESA, V.tip_comprobante, V.ser_comprobante, V.NRO_COMPROBANTE,V.nro_factura_qm, V.TIPO_ENTREGA;',
'  ',
'  BEGIN',
'    FOR X IN CCAB LOOP',
'  inv.sp_obtiene_imagen_qm(P_EMPRESA => X.EMPRESA,',
'                           P_TIP_COMPROBANTE => X.TIP_COMPROBANTE,',
'                           P_SER_COMPROBANTE => X.SER_COMPROBANTE,',
'                           P_NRO_COMPROBANTE => X.NRO_COMPROBANTE,',
'                           p_order_id => X.nro_factura_qm,',
'                           p_destiny => X.TIPO_ENTREGA,',
'                            P_objeto=>VOBJETO,',
'                           P_RETORNO=>VRETORNO);',
'END LOOP;                           ',
'end;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al eliminar el comprobante. ''||sqlerrm);',
'        :P612_ERR:=''Ha ocurrido un error al eliminar el comprobante. '';',
'END;                                 '))
,p_attribute_02=>'P612_NRO_COMPROBANTE,P612_SER_COMPROBANTE,P612_TIP_COMPROBANTE,P612_COD_EMPRESA'
,p_attribute_03=>'P612_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76100564161162831)
,p_event_id=>wwv_flow_imp.id(76100130831162827)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(76099061635162816)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76100436496162830)
,p_event_id=>wwv_flow_imp.id(76100130831162827)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(76099061635162816)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P612_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76100794963162833)
,p_event_id=>wwv_flow_imp.id(76100130831162827)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(205860621305548947)
,p_name=>'DA_ERR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P612_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(205860798954548948)
,p_event_id=>wwv_flow_imp.id(205860621305548947)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P612_ERR.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P612_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76100961939162835)
,p_name=>'da_close_dialogo'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(76100847657162834)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76101053616162836)
,p_event_id=>wwv_flow_imp.id(76100961939162835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(76099061635162816)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76101333099162839)
,p_name=>'New'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(589084404771982989)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76101440465162840)
,p_event_id=>wwv_flow_imp.id(76101333099162839)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(206409618397497637)
);
wwv_flow_imp.component_end;
end;
/
