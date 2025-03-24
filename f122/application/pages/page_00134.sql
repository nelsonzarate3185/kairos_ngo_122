prompt --application/pages/page_00134
begin
--   Manifest
--     PAGE: 00134
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
 p_id=>134
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'GRILLA_LOGISTICA'
,p_alias=>'GRILLA-LOGISTICA'
,p_step_title=>'GRILLA_LOGISTICA'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    #reg_parametros{',
'            background-color: #003a85 !important;',
'            box-shadow: black 1px 1px 5px 1px;',
'            }',
' ',
'',
'.t-Form-label, .text-field-container{',
'    color:  darkblue !important;',
'    font-weight: bold !important;',
'    }  ',
'',
'.a-IRR-header {',
'    background: #003a85 !important;',
'    background-color: #003a85 !important;',
'      }',
' ',
'.a-IRR-headerLink {',
'	color: #FFED00 !important; ',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250321141918'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(295143957918556418)
,p_plug_name=>'LOGISTICA'
,p_region_name=>'reg_parametros'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(295144051982556419)
,p_plug_name=>'PEDIDOS'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.ser_comprobante serie,',
'       p.nro_comprobante Nro,',
'       p.fec_comprobante Fecha,',
'       p.tot_comprobante Total,',
'       decode(p.cod_moneda,''1'',''Gs'',''U$'')mon,',
'       p.cod_cliente,',
'       p.nom_cliente,',
'       p.cod_lista_precio ListP,',
'       c.descripcion condicion,',
'       p.cod_vendedor||''-''||pe.nombre vendedor,',
'       p.estado,',
'       comentario',
'       ,p.tipo_entrega',
'       ,p.cod_sucursal_dist suc_cli',
'       ,p.dir_cliente',
'       ,p.lugar_entrega',
'from vt_pedidos_cabecera p,',
'     cc_condiciones_ventas c,',
'     fv_vendedores v,',
'     personas pe',
'where p.estado<>''A''',
'and p.cod_condicion_venta=c.cod_condicion_venta',
'and p.cod_empresa=c.cod_empresa',
'and p.cod_empresa=v.cod_empresa',
'and p.cod_vendedor=v.cod_vendedor',
'and v.cod_persona=pe.cod_persona',
'AND (:P134_COD_CLIENTE IS NULL OR :P134_COD_CLIENTE=p.COD_CLIENTE)',
'AND   (:P134_FECHA_INI IS NULL OR TO_DATE(:P134_FECHA_INI,''DD/MM/YYYY'')<= p.fec_comprobante)',
'AND   (:P134_FECHA_FIN IS NULL OR TO_DATE(:P134_FECHA_FIN,''DD/MM/YYYY'')>= p.fec_comprobante)',
'',
'order by p.fec_comprobante desc, decode(p.estado,''P'',1,2)asc '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P134_FECHA_INI,P134_FECHA_FIN,P134_COD_CLIENTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'PEDIDOS'
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
 p_id=>wwv_flow_imp.id(295146613202556445)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>295146613202556445
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30248706346712449)
,p_db_column_name=>'SERIE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30249121023712451)
,p_db_column_name=>'NRO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30249597050712451)
,p_db_column_name=>'FECHA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'dd/mm/yyyy'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30249909129712451)
,p_db_column_name=>'TOTAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30250338639712451)
,p_db_column_name=>'MON'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Mon'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30250714051712452)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Codigo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30251181367712452)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30251574785712452)
,p_db_column_name=>'LISTP'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'ListaPre.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30251942419712452)
,p_db_column_name=>'CONDICION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Condicion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30252323543712452)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30252729195712453)
,p_db_column_name=>'ESTADO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30253131050712453)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30253528761712453)
,p_db_column_name=>'TIPO_ENTREGA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Tipo Entrega'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30253926922712453)
,p_db_column_name=>'SUC_CLI'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Suc Cli'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30254377280712453)
,p_db_column_name=>'DIR_CLIENTE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Dir Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30254732111712454)
,p_db_column_name=>'LUGAR_ENTREGA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Lugar Entrega'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(295187243436829465)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2380166'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SERIE:NRO:FECHA:TOTAL:MON:COD_CLIENTE:NOM_CLIENTE:LISTP:CONDICION:VENDEDOR:ESTADO:COMENTARIO:TIPO_ENTREGA:SUC_CLI:DIR_CLIENTE:LUGAR_ENTREGA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(295144151652556420)
,p_plug_name=>'REPARTOS'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select codigo_cliente,',
'       fecha_pedido,',
'       fecha_factura,',
'       fecha_planilla,',
'       fecha_entrega_cliente,',
'       numero_pedido,',
'       numero_factura,',
'       numero_planilla,',
'       minutos_aprobacion,',
'       minutos_entrega_cliente,',
'       vehiculo,',
'       repartidor,',
'       telefono,',
'       tiempo_total',
'from v_repartos_clientes c',
'where (:P123_COD_CLIENTE IS NULL OR :P123_COD_CLIENTE=C.CODIGO_CLIENTE)',
'AND   (:P123_FECHA_INI IS NULL OR to_date(:P123_FECHA_INI,''dd/mm/yyyy'')<= C.fecHA_PLANILLA)',
'AND   (:P123_FECHA_FIN IS NULL OR to_date(:P123_FECHA_FIN,''dd/mm/yyyy'')>= C.fecHA_PLANILLA)',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P134_FECHA_INI,P134_FECHA_FIN,P134_COD_CLIENTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPARTOS'
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
 p_id=>wwv_flow_imp.id(295145125185556430)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>295145125185556430
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30255719218712455)
,p_db_column_name=>'CODIGO_CLIENTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Codigo Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30256187981712455)
,p_db_column_name=>'FECHA_PEDIDO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha Pedido'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'dd/mm/yyyy'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30256564671712456)
,p_db_column_name=>'FECHA_FACTURA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha Factura'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'dd/mm/yyyy'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30256921980712456)
,p_db_column_name=>'FECHA_PLANILLA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha Planilla'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'dd/mm/yyyy'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30257342367712456)
,p_db_column_name=>'FECHA_ENTREGA_CLIENTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha Entrega Cliente'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'dd/mm/yyyy'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30257781026712456)
,p_db_column_name=>'NUMERO_PEDIDO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Numero Pedido'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30258195882712456)
,p_db_column_name=>'NUMERO_FACTURA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Numero Factura'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30258592220712457)
,p_db_column_name=>'NUMERO_PLANILLA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Numero Planilla'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30258903267712457)
,p_db_column_name=>'MINUTOS_APROBACION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Minutos Aprobacion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30259342789712457)
,p_db_column_name=>'MINUTOS_ENTREGA_CLIENTE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Minutos Entrega Cliente'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30259715046712457)
,p_db_column_name=>'VEHICULO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Vehiculo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30260126646712457)
,p_db_column_name=>'REPARTIDOR'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Repartidor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30260524674712458)
,p_db_column_name=>'TELEFONO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Telefono'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30260980789712458)
,p_db_column_name=>'TIEMPO_TOTAL'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Tiempo Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(295187789927830041)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2380172'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CODIGO_CLIENTE:FECHA_PEDIDO:FECHA_FACTURA:FECHA_PLANILLA:FECHA_ENTREGA_CLIENTE:NUMERO_PEDIDO:NUMERO_FACTURA:NUMERO_PLANILLA:MINUTOS_APROBACION:MINUTOS_ENTREGA_CLIENTE:VEHICULO:REPARTIDOR:TELEFONO:TIEMPO_TOTAL'
,p_sort_column_1=>'FECHA_FACTURA'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30247260287712444)
,p_name=>'P134_FECHA_INI'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(295143957918556418)
,p_prompt=>'Fecha desde:'
,p_format_mask=>'DD/MM/YYYY'
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
 p_id=>wwv_flow_imp.id(30247649859712446)
,p_name=>'P134_FECHA_FIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(295143957918556418)
,p_prompt=>'Fecha hasta:'
,p_format_mask=>'DD/MM/YYYY'
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
 p_id=>wwv_flow_imp.id(30248022862712446)
,p_name=>'P134_COD_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(295143957918556418)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30261609271712465)
,p_name=>'DA_FI_RR'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P134_FECHA_INI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30262164967712466)
,p_event_id=>wwv_flow_imp.id(30261609271712465)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(295144051982556419)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30262637703712466)
,p_event_id=>wwv_flow_imp.id(30261609271712465)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(295144151652556420)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30263081768712466)
,p_name=>'DA_FF_RR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P134_FECHA_FIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30263514908712467)
,p_event_id=>wwv_flow_imp.id(30263081768712466)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(295144051982556419)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30264098143712467)
,p_event_id=>wwv_flow_imp.id(30263081768712466)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(295144151652556420)
);
wwv_flow_imp.component_end;
end;
/
