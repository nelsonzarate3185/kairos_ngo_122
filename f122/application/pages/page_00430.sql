prompt --application/pages/page_00430
begin
--   Manifest
--     PAGE: 00430
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
 p_id=>430
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'RPRENPLC'
,p_alias=>'RPRENPLC'
,p_step_title=>'RPRENPLC'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20230512150921'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128393837007304716)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128394173322304719)
,p_plug_name=>unistr('Rendici\00F3n de Planillas - RPRENPLC')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128396399405304741)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(128394173322304719)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128396439914304742)
,p_plug_name=>'DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(128396399405304741)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id P_ID,',
'    C001 COD_EMPRESA,                      ',
'    C002 COD_SUCURSAL,',
'    C003 NRO_PLANILLA,',
'    C004 TIP_COMPROBANTE ,',
'    C005 SER_COMPROBANTE ,',
'    C006 NRO_COMPROBANTE ,',
'   -- C007 ESTADO ,',
'    C008 COD_USUARIO_CAMBIO ,',
'    C009 FEC_MODIFICACION ,',
'    C010 COD_USUARIO_MODIFICACION,',
'    C011 cod_custodio,',
'    C012 NRO_PLANILLA_traslado,',
'    c013 moneda,',
'    C015 cod_cliente,',
'    C016 nombre_cliente,',
'    C017 cod_moneda,',
'    C018 cod_condicion_venta,',
'    C019 estado,',
'    C020 importe,                                       ',
'    C021 tot_guaranies,',
'    C022 tot_dolares,',
'    C023 OLD_ESTADO_REPARTO,',
'    C024 R_ID,',
'    null editar,',
'    NULL VER',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COL_DETALLE'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DETALLE'
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
 p_id=>wwv_flow_imp.id(129533643573885823)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>129533643573885823
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131629413381448616)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'CK'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131629576009448617)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'CL'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131629673668448618)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>30
,p_column_identifier=>'CM'
,p_column_label=>'Nro Planilla'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131629799777448619)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'CN'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131629880598448620)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'CO'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131629955285448621)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'CP'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131630051388448622)
,p_db_column_name=>'ESTADO'
,p_display_order=>70
,p_column_identifier=>'CQ'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(132415033272965825)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131630353537448625)
,p_db_column_name=>'COD_USUARIO_CAMBIO'
,p_display_order=>100
,p_column_identifier=>'CT'
,p_column_label=>'Cod Usuario Cambio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131630704567448629)
,p_db_column_name=>'FEC_MODIFICACION'
,p_display_order=>140
,p_column_identifier=>'CX'
,p_column_label=>'Fec Modificacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131630891123448630)
,p_db_column_name=>'COD_USUARIO_MODIFICACION'
,p_display_order=>150
,p_column_identifier=>'CY'
,p_column_label=>'Cod Usuario Modificacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131631688670448638)
,p_db_column_name=>'R_ID'
,p_display_order=>230
,p_column_identifier=>'DG'
,p_column_label=>'R Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131632710191448649)
,p_db_column_name=>'COD_CUSTODIO'
,p_display_order=>240
,p_column_identifier=>'DH'
,p_column_label=>'Cod Custodio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131632824376448650)
,p_db_column_name=>'NRO_PLANILLA_TRASLADO'
,p_display_order=>250
,p_column_identifier=>'DI'
,p_column_label=>'Nro Planilla Traslado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132363377076157001)
,p_db_column_name=>'MONEDA'
,p_display_order=>260
,p_column_identifier=>'DJ'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132363430542157002)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>270
,p_column_identifier=>'DK'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132363594365157003)
,p_db_column_name=>'NOMBRE_CLIENTE'
,p_display_order=>280
,p_column_identifier=>'DL'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132363694675157004)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>290
,p_column_identifier=>'DM'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132363786232157005)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>300
,p_column_identifier=>'DN'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132363811750157006)
,p_db_column_name=>'IMPORTE'
,p_display_order=>310
,p_column_identifier=>'DO'
,p_column_label=>'Importe'
,p_column_type=>'STRING'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132363926032157007)
,p_db_column_name=>'TOT_GUARANIES'
,p_display_order=>320
,p_column_identifier=>'DP'
,p_column_label=>'Tot Guaranies'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132364051720157008)
,p_db_column_name=>'TOT_DOLARES'
,p_display_order=>330
,p_column_identifier=>'DQ'
,p_column_label=>'Tot Dolares'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132364153207157009)
,p_db_column_name=>'OLD_ESTADO_REPARTO'
,p_display_order=>340
,p_column_identifier=>'DR'
,p_column_label=>'Old Estado Reparto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132364585439157013)
,p_db_column_name=>'EDITAR'
,p_display_order=>350
,p_column_identifier=>'DS'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P430_SEQ_ID_EDITAR'',''#P_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132364689377157014)
,p_db_column_name=>'P_ID'
,p_display_order=>360
,p_column_identifier=>'DT'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137747521187873746)
,p_db_column_name=>'VER'
,p_display_order=>370
,p_column_identifier=>'DU'
,p_column_label=>'Ver'
,p_column_link=>'javascript:$s(''P430_VER_OBS_RENDICION'',''#P_ID#'');'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(130022763451526956)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1300228'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDITAR:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:NOMBRE_CLIENTE:MONEDA:IMPORTE:ESTADO:COD_USUARIO_MODIFICACION:FEC_MODIFICACION:COD_CUSTODIO:NRO_PLANILLA_TRASLADO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(132364283466157010)
,p_plug_name=>'Total'
,p_parent_plug_id=>wwv_flow_imp.id(128396399405304741)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(132364910961157017)
,p_plug_name=>'EDITAR'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(256335395548696336)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128396564761304743)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(132364910961157017)
,p_button_name=>'BT_DEVOLUCION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Devoluci\00F3n')
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128396617341304744)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(132364910961157017)
,p_button_name=>'BT_CAMBIOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cambio'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128396759533304745)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(132364910961157017)
,p_button_name=>'BT_ENTREGADO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reenvio'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128396891227304746)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(132364910961157017)
,p_button_name=>'BT_RUBRICADO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Firma Boleta'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(129532315275885810)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(132364910961157017)
,p_button_name=>'BT_ITEM_642'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Gen. Traslado'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128397277888304750)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(132364910961157017)
,p_button_name=>'BT_DESMARCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Desmarcar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(129531411822885801)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(132364910961157017)
,p_button_name=>'BT_COBRADO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cobrado'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(140120664687250704)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(128394173322304719)
,p_button_name=>'bt_volver'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:441:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133528483519733708)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(128394173322304719)
,p_button_name=>'bt_confirmar_cambios'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Cambios'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save-as'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(129531688760885803)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(128396439914304742)
,p_button_name=>'BT_CONFIRMAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128393959010304717)
,p_name=>'P430_P_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(128393837007304716)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128394062464304718)
,p_name=>'P430_P_NRO_PLANILLA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(128393837007304716)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128394416721304722)
,p_name=>'P430_TIP_COMPROBANTE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128394554998304723)
,p_name=>'P430_COD_CLIENTE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128394629372304724)
,p_name=>'P430_NRO_PLANILLA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128394766117304725)
,p_name=>'P430_CAMBIO_DOLAR'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128394828956304726)
,p_name=>'P430_CONDICION_CONTADO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128394999644304727)
,p_name=>'P430_COD_MONEDA_BASE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128395027409304728)
,p_name=>'P430_SER_CONTADO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128395122800304729)
,p_name=>'P430_SER_CREDITO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128395285375304730)
,p_name=>'P430_ESTADO_REPARTO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128395314930304731)
,p_name=>'P430_FAC_CONTADO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128395476365304732)
,p_name=>'P430_FAC_CREDITO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128395537905304733)
,p_name=>'P430_FAC_NOTACRE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128395657042304734)
,p_name=>'P430_TIPO_TRANS'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128395724217304735)
,p_name=>'P430_SER_RECIBO'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128395859928304736)
,p_name=>'P430_CARGA_REBOTE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128395930699304737)
,p_name=>'P430_CANTIDAD'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128396096061304738)
,p_name=>'P430_FEC_ACTUAL'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128396154329304739)
,p_name=>'P430_COD_CUSTODIO'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128396262631304740)
,p_name=>'P430_DESC_CUSTODIO'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129253156464136991)
,p_name=>'P430_DERECHOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129253565109136990)
,p_name=>'P430_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129253967676136990)
,p_name=>'P430_NOM_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129254372714136990)
,p_name=>'P430_COD_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129254732211136990)
,p_name=>'P430_NOM_FORMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129255182990136990)
,p_name=>'P430_COD_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129255513383136989)
,p_name=>'P430_NOM_EMPRESA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129255970190136989)
,p_name=>'P430_COD_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129256313849136989)
,p_name=>'P430_NOM_SUCURSAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129256777083136989)
,p_name=>'P430_COD_IDIOMA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129257179267136989)
,p_name=>'P430_CODSISMENU'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129257573163136988)
,p_name=>'P430_COD_USUARIO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129257912789136988)
,p_name=>'P430_SEQ_ID_EDITAR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129258322017136988)
,p_name=>'P430_SEQ_ID_ELIMINAR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129258738374136988)
,p_name=>'P430_AUX_MSJ_CONTROL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129532239386885809)
,p_name=>'P430_MODIFICA_ESTADOS'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129532813058885815)
,p_name=>'P430_C_NRO_PLANILLA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(128396399405304741)
,p_prompt=>unistr('N\00FAmero')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129532940232885816)
,p_name=>'P430_C_FEC_PLANILLA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(128396399405304741)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129533022551885817)
,p_name=>'P430_C_ESTADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(128396399405304741)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_ESTADO_CAB_RPRENPLC '
,p_lov=>'.'||wwv_flow_imp.id(130001223166628536)||'.'
,p_cHeight=>1
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129533133280885818)
,p_name=>'P430_C_USUARIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(128396399405304741)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129533294296885819)
,p_name=>'P430_C_COD_REPARTIDOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(128396399405304741)
,p_prompt=>'Repartidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_REPART'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  r.cod_repartidor ||'' - ''||p.nombre D, r.cod_repartidor R ',
'from rp_repartidores r, personas p ',
'where r.cod_empresa = :P_Cod_empresa ',
'and r.cod_persona = p.cod_persona ',
'order by nombre'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(129533361400885820)
,p_name=>'P430_C_COD_VEHICULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(128396399405304741)
,p_prompt=>'Unidad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, r.cod_vehiculo ',
'from rp_vehiculos r ',
'where r.cod_empresa = :P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(129533406563885821)
,p_name=>'P430_C_COD_ZONA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(128396399405304741)
,p_prompt=>'Zona'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129533525879885822)
,p_name=>'P430_C_COD_USUARIO_RENDICION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(128396399405304741)
,p_prompt=>'Rendido por'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129535982036885846)
,p_name=>'P430_C_FEC_RENDICON'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(128396399405304741)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129536011001885847)
,p_name=>'P430_C_FEC_RECEPCION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(128396399405304741)
,p_prompt=>unistr('Fecha Rendici\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129536100150885848)
,p_name=>'P430_C_FEC_ACTUALIZACION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(128396399405304741)
,p_prompt=>unistr('Fecha Modificaci\00F3n')
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
 p_id=>wwv_flow_imp.id(131632538850448647)
,p_name=>'P430_C_TOT_GUARANIES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(132364283466157010)
,p_prompt=>'Total'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131632690718448648)
,p_name=>'P430_C_TOT_DOLARES'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(128396399405304741)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132365472777157022)
,p_name=>'P430_BOTON_ACTIVO_DEVOLU'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(132364910961157017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132365525620157023)
,p_name=>'P430_BOTON_ACTIVO_CAMBIOS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(132364910961157017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132365654369157024)
,p_name=>'P430_BOTON_ACTIVO_ENTREG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(132364910961157017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132365721384157025)
,p_name=>'P430_BOTON_ACTIVO_RUBRI'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(132364910961157017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132365888376157026)
,p_name=>'P430_BOTON_ACTIVO_DESMAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(132364910961157017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132365956893157027)
,p_name=>'P430_BOTON_ACTIVO_COBRA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(132364910961157017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132366096553157028)
,p_name=>'P430_BOTON_ACTIVO_ITEM_642'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(132364910961157017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132366172726157029)
,p_name=>'P430_BOTON_ACTIVO_CONFIR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(132364910961157017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132366225996157030)
,p_name=>'P430_BOTON_ACTIVO_ANU'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(132364910961157017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133418794938675535)
,p_name=>'P430_TIP_COMP_EDITAR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(132364910961157017)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133418861492675536)
,p_name=>'P430_SER_COMP_EDITAR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(132364910961157017)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133418906539675537)
,p_name=>'P430_NRO_COMP_EDITAR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(132364910961157017)
,p_prompt=>'Numero'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133419009988675538)
,p_name=>'P430_ESTADO_EDIT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(132364910961157017)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ESTADO_DET_RPRENPLC'
,p_lov=>'.'||wwv_flow_imp.id(132415033272965825)||'.'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(137747136840873742)
,p_name=>'P430_C_OBS_RENDICION_DET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(132364283466157010)
,p_prompt=>'Observacion Rendicion'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>1
,p_display_when=>'P430_C_ESTADO'
,p_display_when2=>'P'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137747201935873743)
,p_name=>'P430_VER_OBS_RENDICION'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(256335395548696336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137747871411873749)
,p_name=>'P430_OBSERVACION_RENDICI_EDIT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(132364910961157017)
,p_prompt=>'Observacion Rendicion'
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
 p_id=>wwv_flow_imp.id(129531760482885804)
,p_name=>'DA_DISABLE_BOTONES'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129531848737885805)
,p_event_id=>wwv_flow_imp.id(129531760482885804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396759533304745)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_MODIFICA_ESTADOS'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137746397334873734)
,p_event_id=>wwv_flow_imp.id(129531760482885804)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396759533304745)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P430_MODIFICA_ESTADOS'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129531953093885806)
,p_event_id=>wwv_flow_imp.id(129531760482885804)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396891227304746)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_MODIFICA_ESTADOS'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137746431240873735)
,p_event_id=>wwv_flow_imp.id(129531760482885804)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396891227304746)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P430_MODIFICA_ESTADOS'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129532037596885807)
,p_event_id=>wwv_flow_imp.id(129531760482885804)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(129531411822885801)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_MODIFICA_ESTADOS'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137746553144873736)
,p_event_id=>wwv_flow_imp.id(129531760482885804)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(129531411822885801)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P430_MODIFICA_ESTADOS'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129532133839885808)
,p_event_id=>wwv_flow_imp.id(129531760482885804)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(129531688760885803)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_MODIFICA_ESTADOS'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137746692544873737)
,p_event_id=>wwv_flow_imp.id(129531760482885804)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(129531688760885803)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P430_MODIFICA_ESTADOS'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132364384534157011)
,p_name=>'da_devolucion'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(128396564761304743)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132364467873157012)
,p_event_id=>wwv_flow_imp.id(132364384534157011)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TIP_COMPROBANTE VARCHAR2(10);',
'begin',
' for c in(select ',
'        C001 COD_EMPRESA,                      ',
'        C002 COD_SUCURSAL,',
'        C003 NRO_PLANILLA,',
'        C004 FEC_PLANILLA ,',
'        C005 COD_ZONA_REPARTO ,',
'        C006 COD_REPARTIDOR ,',
'        C007 COD_VEHICULO ,',
'        C008 ESTADO ,',
'        C009 COD_USUARIO ,',
'        C010 COD_USUARIO_RENDICION ,',
'        C011 FEC_RENDICION,',
'        C012 FEC_RECEPCION,',
'        C021 R_ID',
'    from apex_collections',
'    where collection_name = ''COL_CABECERA''',
' )LOOP',
' APEX_COLLECTION.UPDATE_MEMBER (P_COLLECTION_NAME => ''COL_CABECERA'',',
'                                   P_seq => 1,',
'                                   P_C001 => C.COD_EMPRESA,                      ',
'                                   P_C002 => C.COD_SUCURSAL,',
'                                   P_C003 => c.NRO_PLANILLA,',
'                                   P_C004 => C.FEC_PLANILLA ,',
'                                   P_C005 => C.COD_ZONA_REPARTO ,',
'                                   P_C006 => C.COD_REPARTIDOR ,',
'                                   P_C007 => C.COD_VEHICULO ,',
'                                   P_C008 => C.ESTADO ,',
'                                   P_C009 => C.COD_USUARIO ,',
'                                   P_C010 => C.COD_USUARIO_RENDICION ,',
'                                   P_C011 => C.FEC_RENDICION,',
'                                   P_C012 => C.FEC_RECEPCION,',
'                                   p_c013 => sysdate,',
'                                   p_C021 => C.R_ID',
'                                     ); ',
' END LOOP;',
' RPRENPLC.pr_modificar_detalle(PI_SEQ_ID_EDITAR => :P430_SEQ_ID_EDITAR,',
'                                PI_ESTADO => ''N'',',
'                                PI_OBS_RENDICION => :P430_OBSERVACION_RENDICI_EDIT);',
'    select ',
'        C004 TIP_COMPROBANTE ',
'    INTO',
'        V_TIP_COMPROBANTE',
'    from apex_collections',
'    where collection_name = ''COL_DETALLE''',
'    AND SEQ_ID = :P430_SEQ_ID_EDITAR;',
' RPRENPLC.CONFIGURAR(PI_estado => ''N'',',
'                    PI_tip_comprobante => V_TIP_COMPROBANTE,',
'                    PI_estado_CAB => :P430_C_ESTADO,',
'                    PI_fac_contado => :P430_FAC_CONTADO,',
'                    PO_ENTREGADO=> :P430_BOTON_ACTIVO_ENTREG,',
'                    PO_RUBRICADO=> :P430_BOTON_ACTIVO_RUBRI,',
'                    PO_DEVOLUCION=> :P430_BOTON_ACTIVO_DEVOLU,',
'                    PO_DESMARCAR=> :P430_BOTON_ACTIVO_DESMAR,',
'                    PO_CONFIRMAR=> :P430_BOTON_ACTIVO_CONFIR,',
'                    PO_CAMBIOS=> :P430_BOTON_ACTIVO_CAMBIOS,',
'                    PO_ANULAR=> :P430_BOTON_ACTIVO_ANU);',
' :P430_C_FEC_ACTUALIZACION := SYSDATE;',
'end;'))
,p_attribute_02=>'P430_OBSERVACION_RENDICI_EDIT,P430_SEQ_ID_EDITAR,P430_C_ESTADO,P430_FAC_CONTADO'
,p_attribute_03=>'P430_C_FEC_ACTUALIZACION,P430_BOTON_ACTIVO_ENTREG,P430_BOTON_ACTIVO_RUBRI,P430_BOTON_ACTIVO_DEVOLU,P430_BOTON_ACTIVO_DESMAR,P430_BOTON_ACTIVO_CONFIR,P430_BOTON_ACTIVO_CAMBIOS,P430_BOTON_ACTIVO_ANU'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132365128907157019)
,p_event_id=>wwv_flow_imp.id(132364384534157011)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128396439914304742)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132365238920157020)
,p_event_id=>wwv_flow_imp.id(132364384534157011)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132364910961157017)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132366313254157031)
,p_event_id=>wwv_flow_imp.id(132364384534157011)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396564761304743)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DEVOLU'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132366582350157033)
,p_event_id=>wwv_flow_imp.id(132364384534157011)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396759533304745)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_ENTREG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132366778889157035)
,p_event_id=>wwv_flow_imp.id(132364384534157011)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396891227304746)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_RUBRI'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132366902758157037)
,p_event_id=>wwv_flow_imp.id(132364384534157011)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128397277888304750)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DESMAR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132367187284157039)
,p_event_id=>wwv_flow_imp.id(132364384534157011)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(129531688760885803)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CONFIR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132367364415157041)
,p_event_id=>wwv_flow_imp.id(132364384534157011)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396617341304744)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CAMBIOS'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132366483287157032)
,p_event_id=>wwv_flow_imp.id(132364384534157011)
,p_event_result=>'TRUE'
,p_action_sequence=>190
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396564761304743)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DEVOLU'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132366687775157034)
,p_event_id=>wwv_flow_imp.id(132364384534157011)
,p_event_result=>'TRUE'
,p_action_sequence=>210
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396759533304745)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_ENTREG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132366834309157036)
,p_event_id=>wwv_flow_imp.id(132364384534157011)
,p_event_result=>'TRUE'
,p_action_sequence=>230
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396891227304746)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_RUBRI'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132367088706157038)
,p_event_id=>wwv_flow_imp.id(132364384534157011)
,p_event_result=>'TRUE'
,p_action_sequence=>250
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128397277888304750)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DESMAR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132367259410157040)
,p_event_id=>wwv_flow_imp.id(132364384534157011)
,p_event_result=>'TRUE'
,p_action_sequence=>270
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(129531688760885803)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CONFIR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132367485459157042)
,p_event_id=>wwv_flow_imp.id(132364384534157011)
,p_event_result=>'TRUE'
,p_action_sequence=>290
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396617341304744)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CAMBIOS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132364782035157015)
,p_name=>'DA_EDITAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P430_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133418687341675534)
,p_event_id=>wwv_flow_imp.id(132364782035157015)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    C004 TIP_COMPROBANTE,',
'    C005 SER_COMPROBANTE,',
'    C006 NRO_COMPROBANTE,',
'    C019 ESTADO ,',
'    C026 OBS_RENDICION',
'INTO',
'    :P430_TIP_COMP_EDITAR,',
'    :P430_SER_COMP_EDITAR,',
'    :P430_NRO_COMP_EDITAR,',
'    :P430_ESTADO_EDIT,',
'    :P430_OBSERVACION_RENDICI_EDIT',
'from apex_collections',
'',
'where collection_name = ''COL_DETALLE''',
'AND SEQ_ID = :P430_SEQ_ID_EDITAR;'))
,p_attribute_02=>'P430_SEQ_ID_EDITAR'
,p_attribute_03=>'P430_TIP_COMP_EDITAR, P430_SER_COMP_EDITAR, P430_NRO_COMP_EDITAR, P430_ESTADO_EDIT,P430_OBSERVACION_RENDICI_EDIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132364822166157016)
,p_event_id=>wwv_flow_imp.id(132364782035157015)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132364910961157017)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132367517802157043)
,p_name=>'da_cambios'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(128396617341304744)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132367759378157045)
,p_event_id=>wwv_flow_imp.id(132367517802157043)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TIP_COMPROBANTE VARCHAR2(10);',
'begin',
' for c in(select ',
'        C001 COD_EMPRESA,                      ',
'        C002 COD_SUCURSAL,',
'        C003 NRO_PLANILLA,',
'        C004 FEC_PLANILLA ,',
'        C005 COD_ZONA_REPARTO ,',
'        C006 COD_REPARTIDOR ,',
'        C007 COD_VEHICULO ,',
'        C008 ESTADO ,',
'        C009 COD_USUARIO ,',
'        C010 COD_USUARIO_RENDICION ,',
'        C011 FEC_RENDICION,',
'        C012 FEC_RECEPCION,',
'        C021 R_ID',
'    from apex_collections',
'    where collection_name = ''COL_CABECERA''',
' )LOOP',
' APEX_COLLECTION.UPDATE_MEMBER (P_COLLECTION_NAME => ''COL_CABECERA'',',
'                                   P_seq => 1,',
'                                   P_C001 => C.COD_EMPRESA,                      ',
'                                   P_C002 => C.COD_SUCURSAL,',
'                                   P_C003 => c.NRO_PLANILLA,',
'                                   P_C004 => C.FEC_PLANILLA ,',
'                                   P_C005 => C.COD_ZONA_REPARTO ,',
'                                   P_C006 => C.COD_REPARTIDOR ,',
'                                   P_C007 => C.COD_VEHICULO ,',
'                                   P_C008 => C.ESTADO ,',
'                                   P_C009 => C.COD_USUARIO ,',
'                                   P_C010 => C.COD_USUARIO_RENDICION ,',
'                                   P_C011 => C.FEC_RENDICION,',
'                                   P_C012 => C.FEC_RECEPCION,',
'                                   p_c013 => sysdate,',
'                                   p_C021 => C.R_ID',
'                                     ); ',
' END LOOP;',
' RPRENPLC.pr_modificar_detalle(PI_SEQ_ID_EDITAR => :P430_SEQ_ID_EDITAR,',
'                                PI_ESTADO => ''B'',',
'                                PI_OBS_RENDICION => :P430_OBSERVACION_RENDICI_EDIT);',
'    select ',
'        C004 TIP_COMPROBANTE ',
'    INTO',
'        V_TIP_COMPROBANTE',
'    from apex_collections',
'    where collection_name = ''COL_DETALLE''',
'    AND SEQ_ID = :P430_SEQ_ID_EDITAR;',
' RPRENPLC.CONFIGURAR(PI_estado => ''B'',',
'                    PI_tip_comprobante => V_TIP_COMPROBANTE,',
'                    PI_estado_CAB => :P430_C_ESTADO,',
'                    PI_fac_contado => :P430_FAC_CONTADO,',
'                    PO_ENTREGADO=> :P430_BOTON_ACTIVO_ENTREG,',
'                    PO_RUBRICADO=> :P430_BOTON_ACTIVO_RUBRI,',
'                    PO_DEVOLUCION=> :P430_BOTON_ACTIVO_DEVOLU,',
'                    PO_DESMARCAR=> :P430_BOTON_ACTIVO_DESMAR,',
'                    PO_CONFIRMAR=> :P430_BOTON_ACTIVO_CONFIR,',
'                    PO_CAMBIOS=> :P430_BOTON_ACTIVO_CAMBIOS,',
'                    PO_ANULAR=> :P430_BOTON_ACTIVO_ANU);',
' :P430_C_FEC_ACTUALIZACION := SYSDATE;',
'end;'))
,p_attribute_02=>'P430_OBSERVACION_RENDICI_EDIT,P430_SEQ_ID_EDITAR,P430_C_ESTADO,P430_FAC_CONTADO'
,p_attribute_03=>'P430_C_FEC_ACTUALIZACION,P430_BOTON_ACTIVO_ENTREG,P430_BOTON_ACTIVO_RUBRI,P430_BOTON_ACTIVO_DEVOLU,P430_BOTON_ACTIVO_DESMAR,P430_BOTON_ACTIVO_CONFIR,P430_BOTON_ACTIVO_CAMBIOS,P430_BOTON_ACTIVO_ANU,P430_C_OBS_RENDICION_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132367884703157046)
,p_event_id=>wwv_flow_imp.id(132367517802157043)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128396439914304742)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132367902669157047)
,p_event_id=>wwv_flow_imp.id(132367517802157043)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132364910961157017)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132368047687157048)
,p_event_id=>wwv_flow_imp.id(132367517802157043)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396564761304743)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DEVOLU'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132368120285157049)
,p_event_id=>wwv_flow_imp.id(132367517802157043)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396759533304745)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_ENTREG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132368246018157050)
,p_event_id=>wwv_flow_imp.id(132367517802157043)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396891227304746)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_RUBRI'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133343237971941101)
,p_event_id=>wwv_flow_imp.id(132367517802157043)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128397277888304750)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DESMAR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133343351704941102)
,p_event_id=>wwv_flow_imp.id(132367517802157043)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(129531688760885803)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CONFIR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133343481227941103)
,p_event_id=>wwv_flow_imp.id(132367517802157043)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396617341304744)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CAMBIOS'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133343587470941104)
,p_event_id=>wwv_flow_imp.id(132367517802157043)
,p_event_result=>'TRUE'
,p_action_sequence=>190
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396564761304743)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DEVOLU'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133343650813941105)
,p_event_id=>wwv_flow_imp.id(132367517802157043)
,p_event_result=>'TRUE'
,p_action_sequence=>210
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396759533304745)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_ENTREG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133343743810941106)
,p_event_id=>wwv_flow_imp.id(132367517802157043)
,p_event_result=>'TRUE'
,p_action_sequence=>230
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396891227304746)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_RUBRI'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133343878980941107)
,p_event_id=>wwv_flow_imp.id(132367517802157043)
,p_event_result=>'TRUE'
,p_action_sequence=>250
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128397277888304750)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DESMAR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133343998567941108)
,p_event_id=>wwv_flow_imp.id(132367517802157043)
,p_event_result=>'TRUE'
,p_action_sequence=>270
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(129531688760885803)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CONFIR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133344091046941109)
,p_event_id=>wwv_flow_imp.id(132367517802157043)
,p_event_result=>'TRUE'
,p_action_sequence=>290
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396617341304744)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CAMBIOS'
,p_client_condition_expression=>'1'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133344165175941110)
,p_name=>'da_entregado'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(128396759533304745)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133344371670941112)
,p_event_id=>wwv_flow_imp.id(133344165175941110)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TIP_COMPROBANTE VARCHAR2(10);',
'begin',
' for c in(select ',
'        C001 COD_EMPRESA,                      ',
'        C002 COD_SUCURSAL,',
'        C003 NRO_PLANILLA,',
'        C004 FEC_PLANILLA ,',
'        C005 COD_ZONA_REPARTO ,',
'        C006 COD_REPARTIDOR ,',
'        C007 COD_VEHICULO ,',
'        C008 ESTADO ,',
'        C009 COD_USUARIO ,',
'        C010 COD_USUARIO_RENDICION ,',
'        C011 FEC_RENDICION,',
'        C012 FEC_RECEPCION,',
'        C021 R_ID',
'    from apex_collections',
'    where collection_name = ''COL_CABECERA''',
' )LOOP',
' APEX_COLLECTION.UPDATE_MEMBER (P_COLLECTION_NAME => ''COL_CABECERA'',',
'                                   P_seq => 1,',
'                                   P_C001 => C.COD_EMPRESA,                      ',
'                                   P_C002 => C.COD_SUCURSAL,',
'                                   P_C003 => c.NRO_PLANILLA,',
'                                   P_C004 => C.FEC_PLANILLA ,',
'                                   P_C005 => C.COD_ZONA_REPARTO ,',
'                                   P_C006 => C.COD_REPARTIDOR ,',
'                                   P_C007 => C.COD_VEHICULO ,',
'                                   P_C008 => C.ESTADO ,',
'                                   P_C009 => C.COD_USUARIO ,',
'                                   P_C010 => C.COD_USUARIO_RENDICION ,',
'                                   P_C011 => C.FEC_RENDICION,',
'                                   P_C012 => C.FEC_RECEPCION,',
'                                   p_c013 => sysdate,',
'                                   p_C021 => C.R_ID',
'                                     ); ',
' END LOOP;',
' RPRENPLC.pr_modificar_detalle(PI_SEQ_ID_EDITAR => :P430_SEQ_ID_EDITAR,',
'                                PI_ESTADO => ''D'',',
'                                PI_OBS_RENDICION => :P430_OBSERVACION_RENDICI_EDIT);',
'    select ',
'        C004 TIP_COMPROBANTE ',
'    INTO',
'        V_TIP_COMPROBANTE',
'    from apex_collections',
'    where collection_name = ''COL_DETALLE''',
'    AND SEQ_ID = :P430_SEQ_ID_EDITAR;',
' RPRENPLC.CONFIGURAR(PI_estado => ''D'',',
'                    PI_tip_comprobante => V_TIP_COMPROBANTE,',
'                    PI_estado_CAB => :P430_C_ESTADO,',
'                    PI_fac_contado => :P430_FAC_CONTADO,',
'                    PO_ENTREGADO=> :P430_BOTON_ACTIVO_ENTREG,',
'                    PO_RUBRICADO=> :P430_BOTON_ACTIVO_RUBRI,',
'                    PO_DEVOLUCION=> :P430_BOTON_ACTIVO_DEVOLU,',
'                    PO_DESMARCAR=> :P430_BOTON_ACTIVO_DESMAR,',
'                    PO_CONFIRMAR=> :P430_BOTON_ACTIVO_CONFIR,',
'                    PO_CAMBIOS=> :P430_BOTON_ACTIVO_CAMBIOS,',
'                    PO_ANULAR=> :P430_BOTON_ACTIVO_ANU);',
' :P430_C_FEC_ACTUALIZACION := SYSDATE;',
'end;'))
,p_attribute_02=>'P430_OBSERVACION_RENDICI_EDIT,P430_SEQ_ID_EDITAR,P430_C_ESTADO,P430_FAC_CONTADO'
,p_attribute_03=>'P430_C_FEC_ACTUALIZACION,P430_BOTON_ACTIVO_ENTREG,P430_BOTON_ACTIVO_RUBRI,P430_BOTON_ACTIVO_DEVOLU,P430_BOTON_ACTIVO_DESMAR,P430_BOTON_ACTIVO_CONFIR,P430_BOTON_ACTIVO_CAMBIOS,P430_BOTON_ACTIVO_ANU,P430_C_OBS_RENDICION_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133344418434941113)
,p_event_id=>wwv_flow_imp.id(133344165175941110)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128396439914304742)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133344528882941114)
,p_event_id=>wwv_flow_imp.id(133344165175941110)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132364910961157017)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133344627181941115)
,p_event_id=>wwv_flow_imp.id(133344165175941110)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396564761304743)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DEVOLU'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133344744570941116)
,p_event_id=>wwv_flow_imp.id(133344165175941110)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396759533304745)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_ENTREG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133344854184941117)
,p_event_id=>wwv_flow_imp.id(133344165175941110)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396891227304746)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_RUBRI'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133344901977941118)
,p_event_id=>wwv_flow_imp.id(133344165175941110)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128397277888304750)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DESMAR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133345004044941119)
,p_event_id=>wwv_flow_imp.id(133344165175941110)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(129531688760885803)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CONFIR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133345170626941120)
,p_event_id=>wwv_flow_imp.id(133344165175941110)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396617341304744)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CAMBIOS'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133345268394941121)
,p_event_id=>wwv_flow_imp.id(133344165175941110)
,p_event_result=>'TRUE'
,p_action_sequence=>190
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396564761304743)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DEVOLU'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133345312366941122)
,p_event_id=>wwv_flow_imp.id(133344165175941110)
,p_event_result=>'TRUE'
,p_action_sequence=>210
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396759533304745)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_ENTREG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133345431505941123)
,p_event_id=>wwv_flow_imp.id(133344165175941110)
,p_event_result=>'TRUE'
,p_action_sequence=>230
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396891227304746)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_RUBRI'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133345531322941124)
,p_event_id=>wwv_flow_imp.id(133344165175941110)
,p_event_result=>'TRUE'
,p_action_sequence=>250
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128397277888304750)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DESMAR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133345638564941125)
,p_event_id=>wwv_flow_imp.id(133344165175941110)
,p_event_result=>'TRUE'
,p_action_sequence=>270
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(129531688760885803)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CONFIR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133345724679941126)
,p_event_id=>wwv_flow_imp.id(133344165175941110)
,p_event_result=>'TRUE'
,p_action_sequence=>290
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396617341304744)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CAMBIOS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133345871059941127)
,p_name=>'da_rubricado'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(128396891227304746)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133416531795675513)
,p_event_id=>wwv_flow_imp.id(133345871059941127)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TIP_COMPROBANTE VARCHAR2(10);',
'begin',
' for c in(select ',
'        C001 COD_EMPRESA,                      ',
'        C002 COD_SUCURSAL,',
'        C003 NRO_PLANILLA,',
'        C004 FEC_PLANILLA ,',
'        C005 COD_ZONA_REPARTO ,',
'        C006 COD_REPARTIDOR ,',
'        C007 COD_VEHICULO ,',
'        C008 ESTADO ,',
'        C009 COD_USUARIO ,',
'        C010 COD_USUARIO_RENDICION ,',
'        C011 FEC_RENDICION,',
'        C012 FEC_RECEPCION,',
'        C021 R_ID',
'    from apex_collections',
'    where collection_name = ''COL_CABECERA''',
' )LOOP',
' APEX_COLLECTION.UPDATE_MEMBER (P_COLLECTION_NAME => ''COL_CABECERA'',',
'                                   P_seq => 1,',
'                                   P_C001 => C.COD_EMPRESA,                      ',
'                                   P_C002 => C.COD_SUCURSAL,',
'                                   P_C003 => c.NRO_PLANILLA,',
'                                   P_C004 => C.FEC_PLANILLA ,',
'                                   P_C005 => C.COD_ZONA_REPARTO ,',
'                                   P_C006 => C.COD_REPARTIDOR ,',
'                                   P_C007 => C.COD_VEHICULO ,',
'                                   P_C008 => C.ESTADO ,',
'                                   P_C009 => C.COD_USUARIO ,',
'                                   P_C010 => C.COD_USUARIO_RENDICION ,',
'                                   P_C011 => C.FEC_RENDICION,',
'                                   P_C012 => C.FEC_RECEPCION,',
'                                   p_c013 => sysdate,',
'                                   p_C021 => C.R_ID',
'                                     ); ',
' END LOOP;',
' RPRENPLC.pr_modificar_detalle(PI_SEQ_ID_EDITAR => :P430_SEQ_ID_EDITAR,',
'                                PI_ESTADO => ''F'',',
'                                PI_OBS_RENDICION => :P430_OBSERVACION_RENDICI_EDIT);',
'    select ',
'        C004 TIP_COMPROBANTE ',
'    INTO',
'        V_TIP_COMPROBANTE',
'    from apex_collections',
'    where collection_name = ''COL_DETALLE''',
'    AND SEQ_ID = :P430_SEQ_ID_EDITAR;',
' RPRENPLC.CONFIGURAR(PI_estado => ''F'',',
'                    PI_tip_comprobante => V_TIP_COMPROBANTE,',
'                    PI_estado_CAB => :P430_C_ESTADO,',
'                    PI_fac_contado => :P430_FAC_CONTADO,',
'                    PO_ENTREGADO=> :P430_BOTON_ACTIVO_ENTREG,',
'                    PO_RUBRICADO=> :P430_BOTON_ACTIVO_RUBRI,',
'                    PO_DEVOLUCION=> :P430_BOTON_ACTIVO_DEVOLU,',
'                    PO_DESMARCAR=> :P430_BOTON_ACTIVO_DESMAR,',
'                    PO_CONFIRMAR=> :P430_BOTON_ACTIVO_CONFIR,',
'                    PO_CAMBIOS=> :P430_BOTON_ACTIVO_CAMBIOS,',
'                    PO_ANULAR=> :P430_BOTON_ACTIVO_ANU);',
' :P430_C_FEC_ACTUALIZACION := SYSDATE;',
'end;'))
,p_attribute_02=>'P430_OBSERVACION_RENDICI_EDIT,P430_SEQ_ID_EDITAR,P430_C_ESTADO,P430_FAC_CONTADO'
,p_attribute_03=>'P430_C_FEC_ACTUALIZACION,P430_BOTON_ACTIVO_ENTREG,P430_BOTON_ACTIVO_RUBRI,P430_BOTON_ACTIVO_DEVOLU,P430_BOTON_ACTIVO_DESMAR,P430_BOTON_ACTIVO_CONFIR,P430_BOTON_ACTIVO_CAMBIOS,P430_BOTON_ACTIVO_ANU,P430_C_OBS_RENDICION_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133416628042675514)
,p_event_id=>wwv_flow_imp.id(133345871059941127)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128396439914304742)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133416783200675515)
,p_event_id=>wwv_flow_imp.id(133345871059941127)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132364910961157017)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133416895843675516)
,p_event_id=>wwv_flow_imp.id(133345871059941127)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396564761304743)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DEVOLU'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133416974718675517)
,p_event_id=>wwv_flow_imp.id(133345871059941127)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396759533304745)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_ENTREG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133417008536675518)
,p_event_id=>wwv_flow_imp.id(133345871059941127)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396891227304746)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_RUBRI'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133417178707675519)
,p_event_id=>wwv_flow_imp.id(133345871059941127)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128397277888304750)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DESMAR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133417221371675520)
,p_event_id=>wwv_flow_imp.id(133345871059941127)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(129531688760885803)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CONFIR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133417330815675521)
,p_event_id=>wwv_flow_imp.id(133345871059941127)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396617341304744)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CAMBIOS'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133417418226675522)
,p_event_id=>wwv_flow_imp.id(133345871059941127)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396564761304743)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DEVOLU'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133417537755675523)
,p_event_id=>wwv_flow_imp.id(133345871059941127)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396759533304745)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_ENTREG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133417641137675524)
,p_event_id=>wwv_flow_imp.id(133345871059941127)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396891227304746)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_RUBRI'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133417740491675525)
,p_event_id=>wwv_flow_imp.id(133345871059941127)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128397277888304750)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DESMAR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133417866139675526)
,p_event_id=>wwv_flow_imp.id(133345871059941127)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(129531688760885803)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CONFIR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133417967118675527)
,p_event_id=>wwv_flow_imp.id(133345871059941127)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396617341304744)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CAMBIOS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133347590644941144)
,p_name=>'da_desmarcar'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(128397277888304750)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133347754959941146)
,p_event_id=>wwv_flow_imp.id(133347590644941144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TIP_COMPROBANTE VARCHAR2(10);',
'    v_estado_Det varchar(10);',
' begin',
'    select c019',
'    into v_estado_Det',
'    from apex_collections',
'    where collection_name = ''COL_DETALLE''',
'    and seq_id = :P430_SEQ_ID_EDITAR;',
'',
'    if nvl(v_estado_Det,''P'') in (''F'',''D'',''N'') then',
'        for c in(select ',
'            C001 COD_EMPRESA,                      ',
'            C002 COD_SUCURSAL,',
'            C003 NRO_PLANILLA,',
'            C004 FEC_PLANILLA ,',
'            C005 COD_ZONA_REPARTO ,',
'            C006 COD_REPARTIDOR ,',
'            C007 COD_VEHICULO ,',
'            C008 ESTADO ,',
'            C009 COD_USUARIO ,',
'            C010 COD_USUARIO_RENDICION ,',
'            C011 FEC_RENDICION,',
'            C012 FEC_RECEPCION,',
'            C021 R_ID',
'         from apex_collections',
'         where collection_name = ''COL_CABECERA''',
'        )LOOP',
'            APEX_COLLECTION.UPDATE_MEMBER (P_COLLECTION_NAME => ''COL_CABECERA'',',
'                                   P_seq => 1,',
'                                   P_C001 => C.COD_EMPRESA,                      ',
'                                   P_C002 => C.COD_SUCURSAL,',
'                                   P_C003 => c.NRO_PLANILLA,',
'                                   P_C004 => C.FEC_PLANILLA ,',
'                                   P_C005 => C.COD_ZONA_REPARTO ,',
'                                   P_C006 => C.COD_REPARTIDOR ,',
'                                   P_C007 => C.COD_VEHICULO ,',
'                                   P_C008 => C.ESTADO ,',
'                                   P_C009 => C.COD_USUARIO ,',
'                                   P_C010 => C.COD_USUARIO_RENDICION ,',
'                                   P_C011 => C.FEC_RENDICION,',
'                                   P_C012 => C.FEC_RECEPCION,',
'                                   p_c013 => sysdate,',
'                                   p_C021 => C.R_ID',
'                                     ); ',
'        END LOOP;',
'     RPRENPLC.pr_modificar_detalle(PI_SEQ_ID_EDITAR => :P430_SEQ_ID_EDITAR,',
'                                PI_ESTADO => ''P'',',
'                                PI_OBS_RENDICION => :P430_OBSERVACION_RENDICI_EDIT);',
'        select ',
'            C004 TIP_COMPROBANTE ',
'        INTO',
'            V_TIP_COMPROBANTE',
'        from apex_collections',
'        where collection_name = ''COL_DETALLE''',
'        AND SEQ_ID = :P430_SEQ_ID_EDITAR;',
'     RPRENPLC.CONFIGURAR(PI_estado => ''P'',',
'                        PI_tip_comprobante => V_TIP_COMPROBANTE,',
'                        PI_estado_CAB => :P430_C_ESTADO,',
'                        PI_fac_contado => :P430_FAC_CONTADO,',
'                        PO_ENTREGADO=> :P430_BOTON_ACTIVO_ENTREG,',
'                        PO_RUBRICADO=> :P430_BOTON_ACTIVO_RUBRI,',
'                        PO_DEVOLUCION=> :P430_BOTON_ACTIVO_DEVOLU,',
'                        PO_DESMARCAR=> :P430_BOTON_ACTIVO_DESMAR,',
'                        PO_CONFIRMAR=> :P430_BOTON_ACTIVO_CONFIR,',
'                        PO_CAMBIOS=> :P430_BOTON_ACTIVO_CAMBIOS,',
'                        PO_ANULAR=> :P430_BOTON_ACTIVO_ANU);',
'     :P430_C_FEC_ACTUALIZACION := SYSDATE;',
'    end if ;',
'end;',
''))
,p_attribute_02=>'P430_OBSERVACION_RENDICI_EDIT,P430_SEQ_ID_EDITAR,P430_C_ESTADO,P430_FAC_CONTADO'
,p_attribute_03=>'P430_C_FEC_ACTUALIZACION,P430_BOTON_ACTIVO_ENTREG,P430_BOTON_ACTIVO_RUBRI,P430_BOTON_ACTIVO_DEVOLU,P430_BOTON_ACTIVO_DESMAR,P430_BOTON_ACTIVO_CONFIR,P430_BOTON_ACTIVO_CAMBIOS,P430_BOTON_ACTIVO_ANU,P430_C_OBS_RENDICION_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133347838946941147)
,p_event_id=>wwv_flow_imp.id(133347590644941144)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128396439914304742)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133347927503941148)
,p_event_id=>wwv_flow_imp.id(133347590644941144)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132364910961157017)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133348078983941149)
,p_event_id=>wwv_flow_imp.id(133347590644941144)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396564761304743)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DEVOLU'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133348179091941150)
,p_event_id=>wwv_flow_imp.id(133347590644941144)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396759533304745)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_ENTREG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133415358761675501)
,p_event_id=>wwv_flow_imp.id(133347590644941144)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396891227304746)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_RUBRI'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133415430590675502)
,p_event_id=>wwv_flow_imp.id(133347590644941144)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128397277888304750)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DESMAR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133415579294675503)
,p_event_id=>wwv_flow_imp.id(133347590644941144)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(129531688760885803)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CONFIR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133415616005675504)
,p_event_id=>wwv_flow_imp.id(133347590644941144)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396617341304744)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CAMBIOS'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133415787300675505)
,p_event_id=>wwv_flow_imp.id(133347590644941144)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396564761304743)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DEVOLU'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133415868593675506)
,p_event_id=>wwv_flow_imp.id(133347590644941144)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396759533304745)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_ENTREG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133415931854675507)
,p_event_id=>wwv_flow_imp.id(133347590644941144)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396891227304746)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_RUBRI'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133416087047675508)
,p_event_id=>wwv_flow_imp.id(133347590644941144)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128397277888304750)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DESMAR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133416139267675509)
,p_event_id=>wwv_flow_imp.id(133347590644941144)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(129531688760885803)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CONFIR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133416294221675510)
,p_event_id=>wwv_flow_imp.id(133347590644941144)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396617341304744)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CAMBIOS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133416309090675511)
,p_name=>'da_cobrado'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(129531411822885801)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133346002756941129)
,p_event_id=>wwv_flow_imp.id(133416309090675511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TIP_COMPROBANTE VARCHAR2(10);',
'begin',
' for c in(select ',
'        C001 COD_EMPRESA,                      ',
'        C002 COD_SUCURSAL,',
'        C003 NRO_PLANILLA,',
'        C004 FEC_PLANILLA ,',
'        C005 COD_ZONA_REPARTO ,',
'        C006 COD_REPARTIDOR ,',
'        C007 COD_VEHICULO ,',
'        C008 ESTADO ,',
'        C009 COD_USUARIO ,',
'        C010 COD_USUARIO_RENDICION ,',
'        C011 FEC_RENDICION,',
'        C012 FEC_RECEPCION,',
'        C021 R_ID',
'    from apex_collections',
'    where collection_name = ''COL_CABECERA''',
' )LOOP',
' APEX_COLLECTION.UPDATE_MEMBER (P_COLLECTION_NAME => ''COL_CABECERA'',',
'                                   P_seq => 1,',
'                                   P_C001 => C.COD_EMPRESA,                      ',
'                                   P_C002 => C.COD_SUCURSAL,',
'                                   P_C003 => c.NRO_PLANILLA,',
'                                   P_C004 => C.FEC_PLANILLA ,',
'                                   P_C005 => C.COD_ZONA_REPARTO ,',
'                                   P_C006 => C.COD_REPARTIDOR ,',
'                                   P_C007 => C.COD_VEHICULO ,',
'                                   P_C008 => C.ESTADO ,',
'                                   P_C009 => C.COD_USUARIO ,',
'                                   P_C010 => C.COD_USUARIO_RENDICION ,',
'                                   P_C011 => C.FEC_RENDICION,',
'                                   P_C012 => C.FEC_RECEPCION,',
'                                   p_c013 => sysdate,',
'                                   p_C021 => C.R_ID',
'                                     ); ',
' END LOOP;',
' RPRENPLC.pr_modificar_detalle(PI_SEQ_ID_EDITAR => :P430_SEQ_ID_EDITAR,',
'                                PI_ESTADO => ''C'',',
'                                PI_OBS_RENDICION => :P430_OBSERVACION_RENDICI_EDIT);',
'    select ',
'        C004 TIP_COMPROBANTE ',
'    INTO',
'        V_TIP_COMPROBANTE',
'    from apex_collections',
'    where collection_name = ''COL_DETALLE''',
'    AND SEQ_ID = :P430_SEQ_ID_EDITAR;',
' RPRENPLC.CONFIGURAR(PI_estado => ''C'',',
'                    PI_tip_comprobante => V_TIP_COMPROBANTE,',
'                    PI_estado_CAB => :P430_C_ESTADO,',
'                    PI_fac_contado => :P430_FAC_CONTADO,',
'                    PO_ENTREGADO=> :P430_BOTON_ACTIVO_ENTREG,',
'                    PO_RUBRICADO=> :P430_BOTON_ACTIVO_RUBRI,',
'                    PO_DEVOLUCION=> :P430_BOTON_ACTIVO_DEVOLU,',
'                    PO_DESMARCAR=> :P430_BOTON_ACTIVO_DESMAR,',
'                    PO_CONFIRMAR=> :P430_BOTON_ACTIVO_CONFIR,',
'                    PO_CAMBIOS=> :P430_BOTON_ACTIVO_CAMBIOS,',
'                    PO_ANULAR=> :P430_BOTON_ACTIVO_ANU);',
' :P430_C_FEC_ACTUALIZACION := SYSDATE;',
'end;'))
,p_attribute_02=>'P430_OBSERVACION_RENDICI_EDIT,P430_SEQ_ID_EDITAR,P430_C_ESTADO,P430_FAC_CONTADO'
,p_attribute_03=>'P430_C_FEC_ACTUALIZACION,P430_BOTON_ACTIVO_ENTREG,P430_BOTON_ACTIVO_RUBRI,P430_BOTON_ACTIVO_DEVOLU,P430_BOTON_ACTIVO_DESMAR,P430_BOTON_ACTIVO_CONFIR,P430_BOTON_ACTIVO_CAMBIOS,P430_BOTON_ACTIVO_ANU,P430_C_OBS_RENDICION_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
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
 p_id=>wwv_flow_imp.id(133346110119941130)
,p_event_id=>wwv_flow_imp.id(133416309090675511)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128396439914304742)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133346281128941131)
,p_event_id=>wwv_flow_imp.id(133416309090675511)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132364910961157017)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133346356686941132)
,p_event_id=>wwv_flow_imp.id(133416309090675511)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396564761304743)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DEVOLU'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133346444551941133)
,p_event_id=>wwv_flow_imp.id(133416309090675511)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396759533304745)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_ENTREG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133346581546941134)
,p_event_id=>wwv_flow_imp.id(133416309090675511)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396891227304746)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_RUBRI'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133346651965941135)
,p_event_id=>wwv_flow_imp.id(133416309090675511)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128397277888304750)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DESMAR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133346702750941136)
,p_event_id=>wwv_flow_imp.id(133416309090675511)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(129531688760885803)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CONFIR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133346894751941137)
,p_event_id=>wwv_flow_imp.id(133416309090675511)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396617341304744)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CAMBIOS'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133346972298941138)
,p_event_id=>wwv_flow_imp.id(133416309090675511)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396564761304743)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DEVOLU'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133347020170941139)
,p_event_id=>wwv_flow_imp.id(133416309090675511)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396759533304745)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_ENTREG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133347129306941140)
,p_event_id=>wwv_flow_imp.id(133416309090675511)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396891227304746)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_RUBRI'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133347289651941141)
,p_event_id=>wwv_flow_imp.id(133416309090675511)
,p_event_result=>'TRUE'
,p_action_sequence=>180
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128397277888304750)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DESMAR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133347310406941142)
,p_event_id=>wwv_flow_imp.id(133416309090675511)
,p_event_result=>'TRUE'
,p_action_sequence=>190
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(129531688760885803)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CONFIR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133347498620941143)
,p_event_id=>wwv_flow_imp.id(133416309090675511)
,p_event_result=>'TRUE'
,p_action_sequence=>200
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396617341304744)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CAMBIOS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133418261363675530)
,p_name=>'da_generar_traslado'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(129532315275885810)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133418325766675531)
,p_event_id=>wwv_flow_imp.id(133418261363675530)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' if :P430_COD_CUSTODIO is null then',
'    raise_application_error(-20201,''Debe cargar el custodio destino.'');',
' else',
' 	for c in (select ',
'        C001 COD_EMPRESA,                      ',
'        C002 COD_SUCURSAL,',
'        C003 NRO_PLANILLA,',
'        C004 TIP_COMPROBANTE ,',
'        C005 SER_COMPROBANTE ,',
'        C006 NRO_COMPROBANTE ,',
'        C007 ESTADO ,',
'        C008 COD_USUARIO_CAMBIO ,',
'        C009 FEC_MODIFICACION ,',
'        C010 COD_USUARIO_MODIFICACION,',
'        C011 desc_custodio,',
'        C012 NRO_PLANILLA_traslado,',
'        c013 moneda,',
'        C015 cod_cliente,',
'        C016 nombre_cliente,',
'        C017 cod_moneda,',
'        C018 cod_condicion_venta,',
'        C019 V_estAdo,',
'        C020 importe,                                       ',
'        C021 tot_guaranies,',
'        C022 tot_dolares,',
'        C023 OLD_ESTADO_REPARTO,',
'        C024 R_ID,',
'        c025 cod_custodio',
'        from apex_collections',
'        where collection_name = ''COL_DETALLE''',
'     )loop',
'        RPRENPLC.CARGA_PLANILLA(PI_importe => c.importe,',
'                        PI_tip_comprobante => c.TIP_COMPROBANTE,',
'                        PI_cod_moneda => c.cod_moneda,',
'                        PI_cod_empresa => c.COD_EMPRESA,',
'                        PI_nro_comprobante => c.NRO_COMPROBANTE,',
'                        PI_ser_comprobante => c.SER_COMPROBANTE,',
'                        PI_cod_custodio => :P430_COD_CUSTODIO,',
'                        PI_cod_custodio_Det => c.cod_custodio,',
'                        PI_cod_cliente => c.cod_cliente) ;		',
'',
'     end loop; ',
' end if;',
' commit;',
'END;'))
,p_attribute_02=>'P430_COD_CUSTODIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133418448352675532)
,p_event_id=>wwv_flow_imp.id(133418261363675530)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Traslado generado'
,p_attribute_02=>'mensaje'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133418505514675533)
,p_event_id=>wwv_flow_imp.id(133418261363675530)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132364910961157017)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133419134040675539)
,p_name=>'DA_CONFIRMAR'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(129531688760885803)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133419237040675540)
,p_event_id=>wwv_flow_imp.id(133419134040675539)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Esta seguro de confirmar la Operaci\00F3n')
,p_attribute_02=>' atencion'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133527946382733703)
,p_event_id=>wwv_flow_imp.id(133419134040675539)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--    verificar_estado',
'RPRENPLC.verificar_estado(',
'        PO_estado => :P430_C_ESTADO,',
'        PO_FEC_ACTUALIZACION => :P430_C_FEC_ACTUALIZACION,',
'        PO_cod_usuario_rendicion => :P430_C_COD_USUARIO_RENDICION,',
'        PO_fec_recepcion => :P430_C_FEC_RECEPCION,',
'        PO_fec_rendicion => :P430_C_FEC_RENDICON);',
'--    configurar',
'    FOR C IN(select ',
'        C004 TIP_COMPROBANTE,',
'        C019 ESTADO',
'    from apex_collections',
'    where collection_name = ''COL_DETALLE'')LOOP',
' RPRENPLC.CONFIGURAR(PI_estado => C.ESTADO,',
'                    PI_tip_comprobante => C.TIP_COMPROBANTE,',
'                    PI_estado_CAB => :P430_C_ESTADO,',
'                    PI_fac_contado => :P430_FAC_CONTADO,',
'                    PO_ENTREGADO=> :P430_BOTON_ACTIVO_ENTREG,',
'                    PO_RUBRICADO=> :P430_BOTON_ACTIVO_RUBRI,',
'                    PO_DEVOLUCION=> :P430_BOTON_ACTIVO_DEVOLU,',
'                    PO_DESMARCAR=> :P430_BOTON_ACTIVO_DESMAR,',
'                    PO_CONFIRMAR=> :P430_BOTON_ACTIVO_CONFIR,',
'                    PO_CAMBIOS=> :P430_BOTON_ACTIVO_CAMBIOS,',
'                    PO_ANULAR=> :P430_BOTON_ACTIVO_ANU);',
'    END LOOP;',
'END;'))
,p_attribute_02=>'P430_FAC_CONTADO'
,p_attribute_03=>'P430_C_FEC_ACTUALIZACION,P430_BOTON_ACTIVO_ENTREG,P430_BOTON_ACTIVO_RUBRI,P430_BOTON_ACTIVO_DEVOLU,P430_BOTON_ACTIVO_DESMAR,P430_BOTON_ACTIVO_CONFIR,P430_BOTON_ACTIVO_CAMBIOS,P430_BOTON_ACTIVO_ANU,P430_C_ESTADO,P430_C_COD_USUARIO_RENDICION,P430_C_FEC'
||'_RENDICON,P430_C_FEC_RECEPCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133528061021733704)
,p_event_id=>wwv_flow_imp.id(133419134040675539)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128396439914304742)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133528135696733705)
,p_event_id=>wwv_flow_imp.id(133419134040675539)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132364910961157017)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133528215657733706)
,p_event_id=>wwv_flow_imp.id(133419134040675539)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396564761304743)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DEVOLU'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133528317416733707)
,p_event_id=>wwv_flow_imp.id(133419134040675539)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396759533304745)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_ENTREG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133419407999675542)
,p_event_id=>wwv_flow_imp.id(133419134040675539)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396759533304745)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_ENTREG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133419546184675543)
,p_event_id=>wwv_flow_imp.id(133419134040675539)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396891227304746)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_RUBRI'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133419654833675544)
,p_event_id=>wwv_flow_imp.id(133419134040675539)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128397277888304750)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DESMAR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133419700780675545)
,p_event_id=>wwv_flow_imp.id(133419134040675539)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(129531688760885803)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CONFIR'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133419865943675546)
,p_event_id=>wwv_flow_imp.id(133419134040675539)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396617341304744)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CAMBIOS'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133419950745675547)
,p_event_id=>wwv_flow_imp.id(133419134040675539)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396564761304743)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DEVOLU'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133420048594675548)
,p_event_id=>wwv_flow_imp.id(133419134040675539)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396759533304745)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_ENTREG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133420163067675549)
,p_event_id=>wwv_flow_imp.id(133419134040675539)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396891227304746)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_RUBRI'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133420250871675550)
,p_event_id=>wwv_flow_imp.id(133419134040675539)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128397277888304750)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_DESMAR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133527731654733701)
,p_event_id=>wwv_flow_imp.id(133419134040675539)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(129531688760885803)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CONFIR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133527857423733702)
,p_event_id=>wwv_flow_imp.id(133419134040675539)
,p_event_result=>'TRUE'
,p_action_sequence=>180
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(128396617341304744)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_BOTON_ACTIVO_CAMBIOS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133528561073733709)
,p_event_id=>wwv_flow_imp.id(133419134040675539)
,p_event_result=>'TRUE'
,p_action_sequence=>190
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Confirmado'
,p_attribute_02=>'mensaje'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133528664000733710)
,p_name=>'da_confirmar_cambios'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(133528483519733708)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133528750846733711)
,p_event_id=>wwv_flow_imp.id(133528664000733710)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro de confirmar la Operaci\00F3n?')
,p_attribute_02=>unistr('ATENCI\00D3N')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133528857380733712)
,p_event_id=>wwv_flow_imp.id(133528664000733710)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRMAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137747302328873744)
,p_name=>'DA_VER_OBS_RENDICION'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P430_VER_OBS_RENDICION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137747424832873745)
,p_event_id=>wwv_flow_imp.id(137747302328873744)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select c026',
'    into :P430_C_OBS_RENDICION_DET',
'    from apex_collections',
'    where collection_name = ''COL_DETALLE''',
'    AND SEQ_ID = :P430_VER_OBS_RENDICION;',
' ',
'   iF :P430_C_OBS_RENDICION_DET is null then',
'         RAISE_APPLICATION_ERROR (-20111,''No existen observaciones.'' );',
'    end if;',
'end;'))
,p_attribute_02=>'P430_VER_OBS_RENDICION'
,p_attribute_03=>'P430_C_OBS_RENDICION_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137747676005873747)
,p_event_id=>wwv_flow_imp.id(137747302328873744)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P430_C_OBS_RENDICION_DET'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137747933913873750)
,p_name=>'DA_Observacion Rendicion'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P430_OBSERVACION_RENDICI_EDIT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140120339216250701)
,p_event_id=>wwv_flow_imp.id(137747933913873750)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P430_OBSERVACION_RENDICI_EDIT'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P430_C_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140120405565250702)
,p_event_id=>wwv_flow_imp.id(137747933913873750)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P430_OBSERVACION_RENDICI_EDIT'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P430_C_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140120733743250705)
,p_name=>'DA_DISABLE_ITEMS'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P430_C_COD_REPARTIDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140120883547250706)
,p_event_id=>wwv_flow_imp.id(140120733743250705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P430_C_COD_REPARTIDOR,P430_C_COD_VEHICULO,P430_C_ESTADO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133528945665733713)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CONFIRMAR'
,p_process_sql_clob=>'RPRENPLC.pr_confirmar_accion;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'DATOS GUARDADOS CORRECTAMENTE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(128394388102304721)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    --DATOS TEST',
'    :P430_C_NRO_PLANILLA:= :P430_P_NRO_PLANILLA	;',
'    --:P430_C_NRO_PLANILLA := 458401;',
'    --INICIALIZA GLOBALES',
'    :P430_COD_FORMA  := ''RPRENPLC'';',
'    :P430_COD_USUARIO := NVL(:P_COD_USUARIO,USER);',
'    :P430_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
'    :P430_NOM_EMPRESA := NVL(:P_NOM_EMPRESA,NULL);',
'    :P430_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');',
'    :P430_NOM_SUCURSAL := NVL(:P_NOM_SUCURSAL,NULL);',
'    :P430_COD_MODULO := NVL(:P_COD_MODULO,NULL);',
'    --PRE_FORM',
'    :P430_COD_MODULO := ''RP'';',
'    :P430_COD_MONEDA_BASE := bs_busca_parametro( ''BS'', ''COD_MONEDA_BASE'' );',
'    :P430_FAC_CREDITO := bs_busca_parametro( ''VT'', ''TIPO_CREDITO'' );',
'    :P430_FAC_NOTACRE := bs_busca_parametro( ''VT'', ''TIPO_NOTACRE'' );',
'    :P430_FAC_CONTADO := bs_busca_parametro( ''VT'', ''TIPO_CONTADO'' );',
'    :P430_SER_CONTADO := bs_busca_parametro( ''VT'', ''SERIE_CONTADO'' );',
'    :P430_CANTIDAD := bs_busca_parametro( ''RP'', ''VECES_ADEVOLVER_FAC'' );',
'    :P430_CARGA_REBOTE := ''N'';',
'      IF :P430_FEC_ACTUAL IS NULL THEN',
'    BEGIN',
'      select fec_actual',
'        into :P430_FEC_ACTUAL',
'        from calendarios',
'       where cod_empresa = :P430_COD_EMPRESA',
'         and cod_modulo  = ''VT'';',
'    EXCEPTION',
'      when others then',
'        :P430_FEC_ACTUAL := NULL;',
'    END;',
'  END IF;',
'  :P430_CONDICION_CONTADO := bs_busca_parametro( ''VT'', ''CONDICION_CONTADO'' );',
'  DECLARE',
'    vmoneda VARCHAR2(5) := bs_busca_parametro( ''VT'', ''COD_MONEDA_PREC'' );',
'  BEGIN',
'    select tipo_cambio',
'      into :P430_CAMBIO_DOLAR',
'      from monedas',
'     where cod_moneda = vmoneda;',
'  EXCEPTION',
'    when others then',
'      :P430_CAMBIO_DOLAR := NULL;',
'  END; ',
' --:P430_COD_USUARIO := ''FACT4'';',
'    :P430_MODIFICA_ESTADOS :=busca_permiso( :P430_COD_EMPRESA,',
'    :P430_COD_FORMA,',
'    :P430_COD_USUARIO,',
'    ''MODIFICA_ESTADOS'' );',
'  ',
'begin',
'  select u.cod_custodio, c.descripcion',
'    into :P430_COD_CUSTODIO, :P430_DESC_CUSTODIO',
'    from usuarios u, cc_custodios c',
'   where u.cod_empresa = :P430_COD_EMPRESA',
'     and u.cod_usuario = user',
'     and u.cod_empresa = c.cod_empresa ',
'     and u.cod_custodio = c.cod_custodio ;',
'exception',
'  when others then',
'       :P430_COD_CUSTODIO:= NULL ;',
'       :P430_DESC_CUSTODIO := NULL ;',
'end ;    ',
'',
'begin',
'  select c.cod_custodio, c.descripcion',
'    into :P430_COD_CUSTODIO, :P430_DESC_CUSTODIO',
'    from  cc_custodios c',
'   where c.cod_empresa = :P430_COD_EMPRESA',
'     and ''50'' = c.cod_custodio ;',
'exception',
'  when others then',
'       :P430_COD_CUSTODIO:= NULL ;',
'       :P430_DESC_CUSTODIO := NULL ;',
'end ;    ',
'       if(:P430_C_NRO_PLANILLA is not null) then',
'            RPRENPLC.pr_cargar_cabecera ( PI_COD_EMPRESA => :P430_COD_EMPRESA,',
'             PI_NRO_PLANILLA => :P430_C_NRO_PLANILLA );',
'',
'            RPRENPLC.pr_cargar_detalle( PI_COD_EMPRESA => :P430_COD_EMPRESA,',
'             PI_NRO_PLANILLA => :P430_C_NRO_PLANILLA,',
'             PI_tot_guaranies => :P430_C_TOT_GUARANIES,',
'             PI_tot_dolares => :P430_C_TOT_GUARANIES ,',
'             PO_TOT_GUARANIES => :P430_C_TOT_GUARANIES,',
'             pi_fac_contado => :P430_FAC_CONTADO);',
'             SELECT ',
'                   C004 FEC_PLANILLA ,',
'                   C005 COD_ZONA_REPARTO ,',
'                   C006 COD_REPARTIDOR ,',
'                   C007 COD_VEHICULO ,',
'                   C008 ESTADO ,',
'                   C009 COD_USUARIO ,',
'                   C010 COD_USUARIO_RENDICION ,',
'                   C011 FEC_RENDICION,',
'                   C012 FEC_RECEPCION,',
'                   c013 FEC_ACTUALIZACION',
'               ',
'            INTO',
'                :P430_C_FEC_PLANILLA,',
'                :P430_C_COD_ZONA,',
'                :P430_C_COD_REPARTIDOR,',
'                :P430_C_COD_VEHICULO,',
'                :P430_C_ESTADO,',
'                :P430_C_USUARIO,',
'                :P430_C_COD_USUARIO_RENDICION,',
'                :P430_C_FEC_RENDICON,',
'                :P430_C_FEC_RECEPCION,',
'                :P430_C_FEC_ACTUALIZACION',
'',
'            FROM APEX_COLLECTIONS',
'            WHERE COLLECTION_NAME = ''COL_CABECERA'';',
'          ',
'        end if;',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
