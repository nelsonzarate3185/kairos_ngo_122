prompt --application/pages/page_00463
begin
--   Manifest
--     PAGE: 00463
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
 p_id=>463
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Facturas sin Planilla de Repartos - RPFACPLA'
,p_alias=>'RPFACPLA'
,p_step_title=>'Facturas sin Planilla de Repartos - RPFACPLA'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'EMILIANOP'
,p_last_upd_yyyymmddhh24miss=>'20230403150340'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(135884256199639136)
,p_plug_name=>'B_CABECERA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(135885055624639144)
,p_plug_name=>'IZQ'
,p_parent_plug_id=>wwv_flow_imp.id(135884256199639136)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(135885198391639145)
,p_plug_name=>'Tipo Entrega'
,p_parent_plug_id=>wwv_flow_imp.id(135884256199639136)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_display_column=>8
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136290094880726203)
,p_plug_name=>'BOTON_BUSCAR'
,p_parent_plug_id=>wwv_flow_imp.id(135884256199639136)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_display_column=>8
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(135884374962639137)
,p_plug_name=>'B_DETALLE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    NULL VTPEDIDO,',
'    NULL CANOCONF,',
'    SEQ_ID SEQ_ID_REPARTO,',
'    C001 cod_sucursal,',
'    D001 fec_comprobante,',
'    C002 sucursal,',
'    C003 tip_comprobante,',
'    C004 ser_comprobante,',
'    N001 nro_comprobante,',
'    C006 cod_cliente,',
'    C007 cliente,',
'    C008 condicion_venta,',
'    C009 moneda,',
'    C010 siglas,',
'    N002 tip_cambio,',
'    C011 vendedor,',
'    C012 tot_comprobante,',
'    C013 tipo_entrega,',
'    C014 hora_alta,',
'    C015 comentario,',
'    C016 departamento,',
'    C017 cod_departamento,',
'    C018 ciudad,',
'    C019 cod_ciudad,',
'    D002 fecha_alta,',
'    N003 nro_pedido,',
'    C020 cod_vendedor,',
'    C021 ser_pedido',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''VW_FACTURA''',
'AND :P463_IND_VW_REPARTO = ''1'';',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P463_IND_VW_REPARTO,P463_SUCURSAL,P463_CLIENTE,P463_VENDEDOR,P463_FEC_DESDE,P463_FEC_HASTA,P463_CIUDAD,P463_DEPARTAMENTO,P463_TIPO_ENTREGA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'B_DETALLE'
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
 p_id=>wwv_flow_imp.id(136290114671726204)
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
,p_internal_uid=>136290114671726204
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136290261312726205)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136290347097726206)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136290437597726207)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136290573721726208)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136290639900726209)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136290794418726210)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136290868282726211)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136290932277726212)
,p_db_column_name=>'CLIENTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136291035865726213)
,p_db_column_name=>'CONDICION_VENTA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Condicion Venta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136291192771726214)
,p_db_column_name=>'MONEDA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136291247292726215)
,p_db_column_name=>'SIGLAS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Siglas'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136291471248726217)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136291692950726219)
,p_db_column_name=>'TIPO_ENTREGA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Tipo Entrega'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136291707613726220)
,p_db_column_name=>'HORA_ALTA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Hora Alta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136291834731726221)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136291975486726222)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136292036057726223)
,p_db_column_name=>'COD_DEPARTAMENTO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Departamento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136292124976726224)
,p_db_column_name=>'CIUDAD'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136292202988726225)
,p_db_column_name=>'COD_CIUDAD'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Cod Ciudad'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136292383104726226)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136292489313726227)
,p_db_column_name=>'NRO_PEDIDO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Nro Pedido'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136292585874726228)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136292619490726229)
,p_db_column_name=>'SER_PEDIDO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Ser Pedido'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(139797896467306709)
,p_db_column_name=>'VTPEDIDO'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Vtpedido'
,p_column_link=>'javascript:$s(''P463_SEQ_ID_VTPEDIDO'',''#SEQ_ID_REPARTO#'');'
,p_column_linktext=>'<span class="fa fa-file-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(139797920177306710)
,p_db_column_name=>'CANOCONF'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Canoconf'
,p_column_link=>'javascript:$s(''P463_SEQ_ID_CANOCONF'',''#SEQ_ID_REPARTO#'');'
,p_column_linktext=>'<span class="fa fa-file-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(139798135268306712)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Tot Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(139798847886306719)
,p_db_column_name=>'SEQ_ID_REPARTO'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Seq Id Reparto'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(139798972688306720)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Tip Cambio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(136339764418630829)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1363398'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SER_COMPROBANTE:NRO_COMPROBANTE:FECHA_ALTA:NRO_PEDIDO:FEC_COMPROBANTE:TIPO_ENTREGA:CLIENTE:DEPARTAMENTO:CIUDAD:COMENTARIO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136292867483726231)
,p_plug_name=>'INDICADORES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(139798303413306714)
,p_plug_name=>'SEQ ID'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(139799200358306723)
,p_plug_name=>'PARAMETROS A ENVIAR'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(139799644499306727)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(136289955672726202)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(136290094880726203)
,p_button_name=>'BTN_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_button_cattributes=>'style="margin-left:10px;width:150px;"'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(136293477516726237)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(136290094880726203)
,p_button_name=>'BTN_LIMPIAR_CAMPOS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_icon_css_classes=>'fa-trash'
,p_button_cattributes=>'style="margin-left:10px;width:150px;"'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131399269884803821)
,p_name=>'P463_TIPO_ENTREGA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(135885198391639145)
,p_item_default=>'CAPITAL:CLIENTE RETIRA:INTERIOR'
,p_prompt=>'Tipo Entrega'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:INTERIOR;INTERIOR,CLIENTE RETIRA;CLIENTE RETIRA,CAPITAL;CAPITAL'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135884594542639139)
,p_name=>'P463_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(135885055624639144)
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
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135884691058639140)
,p_name=>'P463_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(135885055624639144)
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
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135884792004639141)
,p_name=>'P463_VENDEDOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(135885055624639144)
,p_prompt=>'Vendedor'
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
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135884853576639142)
,p_name=>'P463_FEC_DESDE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(135885055624639144)
,p_prompt=>'Fecha desde'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>6
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
 p_id=>wwv_flow_imp.id(135884915379639143)
,p_name=>'P463_FEC_HASTA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(135885055624639144)
,p_prompt=>'Fecha hasta'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
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
 p_id=>wwv_flow_imp.id(135885277078639146)
,p_name=>'P463_DEPARTAMENTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(135885055624639144)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DEPARTAMENTO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select descripcion',
'		     , cod_provincia',
'		      from provincias'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135885355666639147)
,p_name=>'P463_CIUDAD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(135885055624639144)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CIUDADES_CALLASAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_ciudad || '' - '' || descripcion d, cod_ciudad r',
'from ciudades ',
'--where cod_ciudad = :P425_COD_CIUDAD_CR_ED',
'--order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135885428343639148)
,p_name=>'P463_NRO_PLANILLA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(135885055624639144)
,p_prompt=>'Nro. Fact.'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136292923511726232)
,p_name=>'P463_IND_VW_REPARTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136292867483726231)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139798448558306715)
,p_name=>'P463_SEQ_ID_CANOCONF'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(139798303413306714)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139798522255306716)
,p_name=>'P463_SEQ_ID_VTPEDIDO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(139798303413306714)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139799350518306724)
,p_name=>'P463_NRO_COMP_ENVIAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(139799200358306723)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139799744045306728)
,p_name=>'P463_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(139799644499306727)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139800457747306735)
,p_name=>'P463_TIP_COMP_ENVIAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(139799200358306723)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139800579426306736)
,p_name=>'P463_SER_COMP_ENVIAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(139799200358306723)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139800637065306737)
,p_name=>'P463_COD_EMPRESA_ENVIAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(139799200358306723)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136293030008726233)
,p_name=>'DA_BUSCAR_REPARTO'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(136289955672726202)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139799012452306721)
,p_event_id=>wwv_flow_imp.id(136293030008726233)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136293144224726234)
,p_event_id=>wwv_flow_imp.id(136293030008726233)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RPFACPLA.PR_CREAR_COL_V_FACTURA (PI_SUCURSAL => :P463_SUCURSAL,',
'                                     PI_CLIENTE => :P463_CLIENTE,',
'                                     PI_VENDEDOR => :P463_VENDEDOR,',
'                                     PI_FEC_DESDE => :P463_FEC_DESDE,',
'                                     PI_FEC_HASTA => :P463_FEC_HASTA,',
'                                     PI_CIUDAD => :P463_CIUDAD,',
'                                     PI_DEPARTAMENTO => :P463_DEPARTAMENTO,',
'                                     PI_TIPO_ENTREGA => :P463_TIPO_ENTREGA);',
'',
'    :P463_IND_VW_REPARTO := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P463_SUCURSAL,P463_CLIENTE,P463_VENDEDOR,P463_FEC_DESDE,P463_FEC_HASTA,P463_CIUDAD,P463_DEPARTAMENTO,P463_TIPO_ENTREGA'
,p_attribute_03=>'P463_IND_VW_REPARTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139799199334306722)
,p_event_id=>wwv_flow_imp.id(136293030008726233)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136293227581726235)
,p_event_id=>wwv_flow_imp.id(136293030008726233)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(135884374962639137)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139798664257306717)
,p_name=>'DA_LLAMAR_CANOCONF'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P463_SEQ_ID_CANOCONF'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139799427416306725)
,p_event_id=>wwv_flow_imp.id(139798664257306717)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT N001',
'    INTO :P463_NRO_COMP_ENVIAR',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''VW_FACTURA''',
'    AND SEQ_ID = :P463_SEQ_ID_CANOCONF;    ',
'',
'    --APEX_DEBUG.ERROR(:P463_NRO_COMP_ENVIAR);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P463_SEQ_ID_CANOCONF'
,p_attribute_03=>'P463_NRO_COMP_ENVIAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139799514489306726)
,p_event_id=>wwv_flow_imp.id(139798664257306717)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	SELECT APEX_PAGE.GET_URL (  p_page   => 177,',
'            				    p_items  => ''P177_NRO_SOLICITUD'',',
'            				    p_values => (''''||:P463_NRO_COMP_ENVIAR||'''')) f_url_1',
'		INTO :P463_URL',
'		FROM DUAL;        ',
'	 ',
'    --APEX_DEBUG.ERROR(:P463_URL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P463_NRO_COMP_ENVIAR'
,p_attribute_03=>'P463_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139799860245306729)
,p_event_id=>wwv_flow_imp.id(139798664257306717)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P463_URL").getValue();',
'',
'    apex.navigation.redirect(url);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139799986155306730)
,p_name=>'DA_LLAMAR_VTPEDIDO'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P463_SEQ_ID_VTPEDIDO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139800143957306732)
,p_event_id=>wwv_flow_imp.id(139799986155306730)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT N001, C004',
'    INTO :P463_NRO_COMP_ENVIAR, :P463_SER_COMP_ENVIAR',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''VW_FACTURA''',
'    AND SEQ_ID = :P463_SEQ_ID_VTPEDIDO;   ',
'',
'    :P463_TIP_COMP_ENVIAR := ''PED''; ',
'    :P463_COD_EMPRESA_ENVIAR := :P_COD_EMPRESA;',
'',
'    APEX_DEBUG.ERROR(:P463_NRO_COMP_ENVIAR || '' - '' || :P463_SER_COMP_ENVIAR || '' - '' || :P463_TIP_COMP_ENVIAR || '' - '' || :P463_COD_EMPRESA_ENVIAR);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P463_SEQ_ID_VTPEDIDO'
,p_attribute_03=>'P463_NRO_COMP_ENVIAR,P463_SER_COMP_ENVIAR,P463_TIP_COMP_ENVIAR,P463_COD_EMPRESA_ENVIAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139800296967306733)
,p_event_id=>wwv_flow_imp.id(139799986155306730)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	SELECT APEX_PAGE.GET_URL (  p_page   => 177,',
'            				    p_items  => ''P177_NRO_SOLICITUD'',',
'            				    p_values => (''''||:P463_NRO_COMP_ENVIAR||'''')) f_url_1',
'		INTO :P463_URL',
'		FROM DUAL;        ',
'	 ',
'    --APEX_DEBUG.ERROR(:P463_URL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P463_NRO_COMP_ENVIAR'
,p_attribute_03=>'P463_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139800315802306734)
,p_event_id=>wwv_flow_imp.id(139799986155306730)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P463_URL").getValue();',
'',
'    apex.navigation.redirect(url);',
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(136293303886726236)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_CAMPOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(136292786708726230)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P463_SUCURSAL := NULL;',
'    :P463_DEPARTAMENTO := NULL;',
'    :P463_CLIENTE := NULL;',
'    :P463_CIUDAD := NULL;',
'    :P463_VENDEDOR := NULL;',
'',
'   /* :P463_CAPITAL :=''S'';',
'    :P463_INTERIOR :=''S'';',
'    :P463_CLIENTE_RETIRA :=''S'';*/',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
