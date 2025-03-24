prompt --application/pages/page_00476
begin
--   Manifest
--     PAGE: 00476
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
 p_id=>476
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Carga de Notas de Debito por importes - CCDEBITO'
,p_alias=>'CARGA-DE-NOTAS-DE-DEBITO-POR-IMPORTES-CCDEBITO'
,p_step_title=>'Carga de Notas de Debito por importes - CCDEBITO'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function validateNumber(event) {',
'  var keyCode = event.keyCode;',
unistr('  var excludedKeys = [8, 37, 39, 46];//Teclas extra que queremos que el campo acepte aparte de los n\00FAmeros, como el backspace'),
unistr('//Realizamos la validaci\00F3n de la tecla ingresada'),
'  if (!((keyCode >= 48 && keyCode <= 57) ||',
'      (keyCode >= 96 && keyCode <= 105) ||',
'      (excludedKeys.includes(keyCode)))) {',
'    event.preventDefault();',
'',
'  }',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DFINO'
,p_last_upd_yyyymmddhh24miss=>'20230406163357'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(139765271471556205)
,p_plug_name=>unistr('Notas de D\00E9bito por importes')
,p_region_css_classes=>'js-dialog-size1500x650'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       COD_SUCURSAL,',
'       FEC_DEBCRED,',
'       COD_CLIENTE,',
'       COD_CONDICION_VENTA,',
'       ROWID ROW_ID_NC,',
'       NULL SELECCIONA',
'  FROM CC_NOTAS_DEBCRED',
' WHERE cod_empresa = :P_COD_EMPRESA',
'   and concepto = ''D''',
' ORDER BY cod_empresa, tip_comprobante, ser_comprobante, nro_comprobante'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Notas de D\00E9bito por importes')
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
 p_id=>wwv_flow_imp.id(139765306376556206)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>139765306376556206
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(139765584458556208)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(41127354264101747)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(139765605223556209)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(139765715721556210)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(139765852592556211)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(139765953093556212)
,p_db_column_name=>'FEC_DEBCRED'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(139766044553556213)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(41126143156092713)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(139766155593556214)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>unistr('Condici\00F3n de Venta')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(137040012331920004)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(139768821548556241)
,p_db_column_name=>'ROW_ID_NC'
,p_display_order=>90
,p_column_identifier=>'AG'
,p_column_label=>'Row Id Nc'
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
,p_column_alignment=>'CENTER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(139768906742556242)
,p_db_column_name=>'SELECCIONA'
,p_display_order=>100
,p_column_identifier=>'AH'
,p_column_label=>'Selecciona'
,p_column_link=>'javascript:$s(''P476_ROW_ID_AUX'',''#ROW_ID_NC#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(140745136474540388)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1407452'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'SELECCIONA:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:COD_SUCURSAL:FEC_DEBCRED:COD_CLIENTE:COD_CONDICION_VENTA:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(139769209930556245)
,p_plug_name=>'Contenedor Variables'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(139944121888063117)
,p_plug_name=>unistr('Carga de Notas de D\00E9bito por importes - CCDEBITO')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(139769747711556250)
,p_plug_name=>'Contenedor 1.2'
,p_parent_plug_id=>wwv_flow_imp.id(139944121888063117)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1050
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140791003272363501)
,p_plug_name=>'Contenedor 1.1'
,p_parent_plug_id=>wwv_flow_imp.id(139944121888063117)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1030
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140791133479363502)
,p_plug_name=>'Contenedor 1'
,p_parent_plug_id=>wwv_flow_imp.id(139944121888063117)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1020
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140792866923363519)
,p_plug_name=>'Contenedor 1.3'
,p_parent_plug_id=>wwv_flow_imp.id(139944121888063117)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1060
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140793697286363527)
,p_plug_name=>'COL_CC_DETALLE_DEBCRED'
,p_parent_plug_id=>wwv_flow_imp.id(139944121888063117)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1070
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 COD_EMPRESA,',
'       c002 COD_SUCURSAL,',
'       c003 TIP_COMPROBANTE,',
'       c004 SER_COMPROBANTE,',
'       c005 NRO_COMPROBANTE,',
'       c006 TIPO_TRANS,',
'       c007 SUB_TIPO_TRANS,',
'       c008 CANTIDAD,',
'       c009 PRECIO_UNITARIO,',
'       c010 TOTAL_IVA,',
'       c011 MONTO_TOTAL,',
'       c012 TIP_COMPROBANTE_REF,',
'       c013 SER_COMPROBANTE_REF,',
'       c014 NRO_COMPROBANTE_REF,',
'       c015 CONTROL,',
'       c016 ROW_ID,',
'       c017 DESC_SUBTIPO,',
'       NULL EDITAR,',
'       NULL BORRAR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_CC_DETALLE_DEBCRED''',
'   AND (c015 = ''U'' OR c015 = ''I'' OR c015 IS NULL)',
'ORDER BY seq_id DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COL_CC_DETALLE_DEBCRED'
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
 p_id=>wwv_flow_imp.id(140939478518540427)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>140939478518540427
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140939523601540428)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140939647746540429)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140939793796540430)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140939858856540431)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140939989939540432)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140940041263540433)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140940125439540434)
,p_db_column_name=>'TIPO_TRANS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Tipo Trans'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140940230873540435)
,p_db_column_name=>'SUB_TIPO_TRANS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>unistr('Transacci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140940381181540436)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140940468307540437)
,p_db_column_name=>'PRECIO_UNITARIO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Precio Unitario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140940597843540438)
,p_db_column_name=>'TOTAL_IVA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'I.V.A.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140940636170540439)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Importe'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140940766080540440)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140940856463540441)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Ser Comprobante Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140940904281540442)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140941077792540443)
,p_db_column_name=>'CONTROL'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140941130186540444)
,p_db_column_name=>'EDITAR'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P476_EDIT_DATA_DET'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140941213041540445)
,p_db_column_name=>'BORRAR'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P476_DELETE_DATA_DET'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140941614485540449)
,p_db_column_name=>'ROW_ID'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141286769280216017)
,p_db_column_name=>'DESC_SUBTIPO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(141275262840385766)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1412753'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SUB_TIPO_TRANS:DESC_SUBTIPO:CANTIDAD:PRECIO_UNITARIO:TOTAL_IVA:MONTO_TOTAL:EDITAR:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140793742522363528)
,p_plug_name=>'Contenedor 2'
,p_parent_plug_id=>wwv_flow_imp.id(139944121888063117)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1080
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140793835910363529)
,p_plug_name=>'Contenedor 2.1'
,p_parent_plug_id=>wwv_flow_imp.id(140793742522363528)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140794078560363531)
,p_plug_name=>'Contenedor 3'
,p_parent_plug_id=>wwv_flow_imp.id(139944121888063117)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1090
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140794142542363532)
,p_plug_name=>'Totales'
,p_parent_plug_id=>wwv_flow_imp.id(140794078560363531)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140794269428363533)
,p_plug_name=>'Administrativo'
,p_parent_plug_id=>wwv_flow_imp.id(140794078560363531)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140794347214363534)
,p_plug_name=>'Contenedor 4'
,p_parent_plug_id=>wwv_flow_imp.id(139944121888063117)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1100
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140794456925363535)
,p_plug_name=>'Contenedor 4.1'
,p_parent_plug_id=>wwv_flow_imp.id(140794347214363534)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140794516070363536)
,p_plug_name=>'Anulado'
,p_parent_plug_id=>wwv_flow_imp.id(140794347214363534)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-top-lg'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141285334974216003)
,p_plug_name=>'Agregar/Editar Detalle'
,p_region_css_classes=>'js-dialog-size1500x250'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(141286292746216012)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(141285334974216003)
,p_button_name=>'BTAGREGAR_EDITAR_DET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar/Editar Detalle'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(141941182905064503)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(139944121888063117)
,p_button_name=>'BTGUARDAR_CAMBIOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Cambios'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(141285298215216002)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(140793697286363527)
,p_button_name=>'BTAGREGAR_DET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Detalle'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(139769121860556244)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(139765271471556205)
,p_button_name=>'BTCREAR_NOTA_DEB'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Nueva Nota de D\00E9bito')
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139769062133556243)
,p_name=>'P476_ROW_ID_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(139765271471556205)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139769383477556246)
,p_name=>'P476_V_TIPO_TRANS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(139769209930556245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139769490231556247)
,p_name=>'P476_V_SER_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(139769209930556245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139769554851556248)
,p_name=>'P476_V_TIP_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(139769209930556245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139769639585556249)
,p_name=>'P476_V_COD_CUSTODIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(139769209930556245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139944269031063118)
,p_name=>'P476_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(139944121888063117)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140791371847363504)
,p_name=>'P476_TIP_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(140791003272363501)
,p_prompt=>'Tip Comprobante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TIPOS_COMPROBANTES_CCDEBITO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, ',
'       tip_comprobante ',
'  from tipos_comprobantes ',
' where ((:P476_CONCEPTO = ''D'' and tip_talonario = ''DEB'') or (:P476_CONCEPTO= ''C'' and tip_talonario = ''CRE'')) ',
'  and cod_empresa = :P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140791461580363505)
,p_name=>'P476_SER_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(140791003272363501)
,p_prompt=>'Ser Comprobante'
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
 p_id=>wwv_flow_imp.id(140791539233363506)
,p_name=>'P476_NRO_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(140791003272363501)
,p_prompt=>unistr('N\00BA Comprobante')
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
 p_id=>wwv_flow_imp.id(140791621214363507)
,p_name=>'P476_FEC_DEBCRED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(140791003272363501)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(140791760777363508)
,p_name=>'P476_TIP_FACTURA_REF'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(140791003272363501)
,p_prompt=>'Tipo Factura'
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
 p_id=>wwv_flow_imp.id(140791806270363509)
,p_name=>'P476_SER_FACTURA_REF'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(140791003272363501)
,p_prompt=>'Serie Factura'
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
 p_id=>wwv_flow_imp.id(140791907552363510)
,p_name=>'P476_NRO_FACTURA_REF'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(140791003272363501)
,p_prompt=>unistr('N\00BA Factura')
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
 p_id=>wwv_flow_imp.id(140792007189363511)
,p_name=>'P476_COD_SECTOR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(140792866923363519)
,p_prompt=>'Sector'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SECTORES_CCDEBITO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, ',
'       cod_sector ',
'  from sectores',
' where cod_empresa = :P_COD_EMPRESA',
'  order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'DESCRIPCION:P476_DESC_SECTOR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140792161087363512)
,p_name=>'P476_DESC_SECTOR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(140792866923363519)
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
 p_id=>wwv_flow_imp.id(140792221146363513)
,p_name=>'P476_COD_CUSTODIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(140792866923363519)
,p_prompt=>'Custodio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CUSTODIO_CCDEBITO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.descripcion,',
'       c.cod_custodio ',
'  from usuarios_custodios u, ',
'       cc_custodios c ',
' where u.cod_empresa = :P_COD_EMPRESA ',
'   and u.cod_usuario = :P_COD_USUARIO',
'   and u.cod_empresa = c.cod_empresa ',
'   and u.cod_custodio = c.cod_custodio ',
'   and u.cod_custodio <> :P476_V_COD_CUSTODIO',
' union all ',
'select c.descripcion, ',
'       c.cod_custodio ',
'  from cc_custodios c ',
' where c.cod_empresa = :P_COD_EMPRESA',
' and c.cod_custodio = :P476_V_COD_CUSTODIO',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P476_V_COD_CUSTODIO'
,p_ajax_items_to_submit=>'P476_V_COD_CUSTODIO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'DESCRIPCION:P476_DESC_CUSTODIO'
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
 p_id=>wwv_flow_imp.id(140792390417363514)
,p_name=>'P476_DESC_CUSTODIO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(140792866923363519)
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
 p_id=>wwv_flow_imp.id(140792425312363515)
,p_name=>'P476_COD_CLIENTE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(140792866923363519)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_CCDEBITO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cliente, ',
'       nvl( ltrim( p.nombre ), ltrim( p.nomb_fantasia ) ) nombre',
'  from cc_clientes c, personas p ',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_persona = p.cod_persona ',
'   order by 2'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'NOMBRE:P476_NOM_CLIENTE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140792563695363516)
,p_name=>'P476_NOM_CLIENTE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(140792866923363519)
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
 p_id=>wwv_flow_imp.id(140792680780363517)
,p_name=>'P476_COD_VENDEDOR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(140792866923363519)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDORES_CCDEBITO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( ltrim( p.nombre ), ltrim( p.nomb_fantasia ) ) nombre, ',
'       v.cod_vendedor ',
'  from fv_vendedores v, ',
'       personas p',
' where v.cod_empresa = :P_COD_EMPRESA',
'   and v.cod_persona = p.cod_persona ',
'   and v.estado = ''A'' ',
'   order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'NOMBRE:P476_NOM_VENDEDOR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140792740543363518)
,p_name=>'P476_NOM_VENDEDOR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(140792866923363519)
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
 p_id=>wwv_flow_imp.id(140792904300363520)
,p_name=>'P476_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(139769747711556250)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES_CCDEBITO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, ',
'       cod_sucursal',
'  from sucursales ',
' where cod_empresa = :P_COD_EMPRESA',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'DESCRIPCION:P476_DESC_SUCURSAL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140793016220363521)
,p_name=>'P476_DESC_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(139769747711556250)
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
 p_id=>wwv_flow_imp.id(140793194835363522)
,p_name=>'P476_COD_CONDICION_VENTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(139769747711556250)
,p_prompt=>unistr('Condici\00F3n de Venta')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CODVEN_CCDEBITO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, ',
'       cod_condicion_venta, ',
'       nro_cuotas ',
'  from cc_condiciones_ventas ',
' where cod_empresa = :P_COD_EMPRESA',
'  order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'DESCRIPCION:P476_DESC_CONDICION'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140793225067363523)
,p_name=>'P476_DESC_CONDICION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(139769747711556250)
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
 p_id=>wwv_flow_imp.id(140793315713363524)
,p_name=>'P476_COD_MONEDA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(139769747711556250)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MONEDAS_CCDEBITO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, ',
'       cod_moneda, ',
'       tipo_cambio_dia ',
'  from monedas ',
'  order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'DESCRIPCION:P476_DESC_MONEDA,TIPO_CAMBIO_DIA:P476_TIP_CAMBIO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140793464015363525)
,p_name=>'P476_DESC_MONEDA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(139769747711556250)
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
 p_id=>wwv_flow_imp.id(140793536345363526)
,p_name=>'P476_TIP_CAMBIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(139769747711556250)
,p_prompt=>'Cambio'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140794636977363537)
,p_name=>'P476_FEC_VENCIMIENTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(140793835910363529)
,p_prompt=>'Vencimiento'
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
 p_id=>wwv_flow_imp.id(140794778906363538)
,p_name=>'P476_COMENTARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(140793835910363529)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-lg'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140794865496363539)
,p_name=>'P476_GRAVADAS_PARCIAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(140794142542363532)
,p_prompt=>'Gravadas'
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
 p_id=>wwv_flow_imp.id(140794957228363540)
,p_name=>'P476_EXENTAS_PARCIAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(140794142542363532)
,p_prompt=>'Exentas'
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
 p_id=>wwv_flow_imp.id(140795023479363541)
,p_name=>'P476_COD_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(140794269428363533)
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
 p_id=>wwv_flow_imp.id(140795143797363542)
,p_name=>'P476_NRO_HABILITACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(140794269428363533)
,p_prompt=>unistr('Habilitaci\00F3n')
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
 p_id=>wwv_flow_imp.id(140795262495363543)
,p_name=>'P476_SUBTOTAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(140794456925363535)
,p_prompt=>'Subtotal'
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
 p_id=>wwv_flow_imp.id(140795356554363544)
,p_name=>'P476_IVA_PARCIAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(140794456925363535)
,p_prompt=>'I.V.A.'
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
 p_id=>wwv_flow_imp.id(140795412061363545)
,p_name=>'P476_TOTAL_PARCIAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(140794456925363535)
,p_prompt=>'Total'
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
 p_id=>wwv_flow_imp.id(140795531488363546)
,p_name=>'P476_ANULADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(140794516070363536)
,p_prompt=>'Si/No'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140795629815363547)
,p_name=>'P476_FEC_ANULACION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(140794516070363536)
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
 p_id=>wwv_flow_imp.id(140795799655363548)
,p_name=>'P476_CONCEPTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(139944121888063117)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140936903586540402)
,p_name=>'P476_V_CONTROL_INICIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(139769209930556245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140937275061540405)
,p_name=>'P476_MENSAJE_SERIE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(139944121888063117)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140938073270540413)
,p_name=>'P476_MENSAJE_SECTOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(139944121888063117)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140939066406540423)
,p_name=>'P476_MENSAJE_CLIENTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(139944121888063117)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141285470103216004)
,p_name=>'P476_SUB_TIPO_TRANS_ADD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(141285334974216003)
,p_prompt=>'Sub Tipo Trans Add'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUBTIPOS_CCDEBITO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select subtipo_trans,',
'       descripcion ',
'  from subtipos_trans ',
' where cod_empresa = :P_COD_EMPRESA',
'   and cod_modulo = :P476_COD_MODULO ',
'   and tipo_trans = :P476_V_TIPO_TRANS ',
'   order by 2'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'DESCRIPCION:P476_DESC_TRANSACCION_ADD'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141285597716216005)
,p_name=>'P476_DESC_TRANSACCION_ADD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(141285334974216003)
,p_prompt=>unistr('Descripci\00F3n')
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
 p_id=>wwv_flow_imp.id(141285658873216006)
,p_name=>'P476_CANTIDAD_ADD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(141285334974216003)
,p_prompt=>'Cantidad'
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
 p_id=>wwv_flow_imp.id(141285720779216007)
,p_name=>'P476_PRECIO_UNITARIO_ADD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(141285334974216003)
,p_prompt=>'Precio Unitario'
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
 p_id=>wwv_flow_imp.id(141285843981216008)
,p_name=>'P476_TOTAL_IVA_ADD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(141285334974216003)
,p_prompt=>'I.V.A.'
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
 p_id=>wwv_flow_imp.id(141286103456216011)
,p_name=>'P476_MONTO_TOTAL_ADD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(141285334974216003)
,p_prompt=>'Importe'
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
 p_id=>wwv_flow_imp.id(141287159687216021)
,p_name=>'P476_EDIT_DATA_DET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(140793697286363527)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141287203563216022)
,p_name=>'P476_DELETE_DATA_DET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(140793697286363527)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141287872655216028)
,p_name=>'P476_IMPORTE_ANT_ADD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(141285334974216003)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141287965103216029)
,p_name=>'P476_PORCENTAJE_IVA_ADD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(141285334974216003)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141288084092216030)
,p_name=>'P476_IVA_ANT_ADD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(141285334974216003)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141289658762216046)
,p_name=>'P476_TOT_GRAVADAS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(140791133479363502)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141289725399216047)
,p_name=>'P476_TOT_EXCENTAS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(140791133479363502)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141289800617216048)
,p_name=>'P476_TOT_IVA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(140791133479363502)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141289936660216049)
,p_name=>'P476_TOT_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(140791133479363502)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141290061994216050)
,p_name=>'P476_TOT_PARCIAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(140791133479363502)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141941419374064506)
,p_name=>'P476_V_ES_BORRADO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(139769209930556245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139768685022556239)
,p_name=>'DA_ABRIR_MODAL_LOAD'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139768755233556240)
,p_event_id=>wwv_flow_imp.id(139768685022556239)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(139765271471556205)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140795916663363550)
,p_name=>'DA_BTCREAR_NOTA_DEB'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(139769121860556244)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141941298168064504)
,p_event_id=>wwv_flow_imp.id(140795916663363550)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P476_ROW_ID_AUX,P476_TIP_COMPROBANTE,P476_SER_COMPROBANTE,P476_NRO_COMPROBANTE,P476_COD_SUCURSAL,P476_FEC_DEBCRED,P476_COD_CLIENTE,P476_COD_CONDICION_VENTA,P476_TIP_FACTURA_REF,P476_NRO_FACTURA_REF,P476_COD_VENDEDOR,P476_COD_MONEDA,P476_TIP_CAMBIO,P4'
||'76_TIP_COMPROBANTE,P476_TOT_GRAVADAS,P476_TOT_EXCENTAS,P476_TOT_IVA,P476_NRO_HABILITACION,P476_ANULADO,P476_FEC_ANULACION,P476_COD_USUARIO,P476_COMENTARIO,P476_CONCEPTO,P476_COD_SECTOR,P476_FEC_VENCIMIENTO,P476_COD_CUSTODIO,P476_DESC_CUSTODIO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140936883600540401)
,p_event_id=>wwv_flow_imp.id(140795916663363550)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P476_V_CONTROL_INICIO := 0;'
,p_attribute_03=>'P476_V_CONTROL_INICIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140937074909540403)
,p_event_id=>wwv_flow_imp.id(140795916663363550)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P476_COD_SUCURSAL := :P_COD_SUCURSAL;',
':P476_COD_USUARIO := :P_COD_USUARIO;',
':P476_TIP_COMPROBANTE := :P476_V_TIP_COMPROBANTE;',
':P476_SER_COMPROBANTE := :P476_V_SER_COMPROBANTE;',
':P476_FEC_DEBCRED := sysdate;',
':P476_CONCEPTO := ''D'';',
':P476_GRAVADAS_PARCIAL := 0;',
':P476_EXENTAS_PARCIAL := 0;',
':P476_IVA_PARCIAL := 0;',
':P476_TOTAL_PARCIAL := 0;',
':P476_SUBTOTAL := 0;',
':P476_FEC_VENCIMIENTO := sysdate ;'))
,p_attribute_02=>'P_COD_SUCURSAL,P_COD_USUARIO,P476_V_TIP_COMPROBANTE,P476_V_SER_COMPROBANTE'
,p_attribute_03=>'P476_COD_SUCURSAL,P476_COD_USUARIO,P476_TIP_COMPROBANTE,P476_SER_COMPROBANTE ,P476_FEC_DEBCRED,P476_CONCEPTO,P476_GRAVADAS_PARCIAL,P476_EXENTAS_PARCIAL,P476_IVA_PARCIAL,P476_TOTAL_PARCIAL,P476_SUBTOTAL,P476_FEC_VENCIMIENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P476_V_CONTROL_INICIO'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140937194340540404)
,p_event_id=>wwv_flow_imp.id(140795916663363550)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(139765271471556205)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140937303779540406)
,p_name=>'DA_SER_COMPROBANTE'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P476_SER_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140937432211540407)
,p_event_id=>wwv_flow_imp.id(140937303779540406)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P476_SER_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140937553232540408)
,p_event_id=>wwv_flow_imp.id(140937303779540406)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P476_MENSAJE_SERIE := NULL;',
'    DECLARE',
'      i NUMBER;',
'      s VARCHAR2(1);',
'    BEGIN',
'      select ser_comprobante',
'        into s',
'        from series_comprob',
'       where cod_empresa = :P_COD_EMPRESA',
'         and tip_comprobante = :P476_TIP_COMPROBANTE',
'         and ser_comprobante = :P476_SER_COMPROBANTE;',
'    EXCEPTION',
'      WHEN no_data_found THEN',
'        :P476_MENSAJE_SERIE := ''No se encuentra serie de comprobante. ''||sqlerrm;',
'      WHEN OTHERS THEN',
'        :P476_MENSAJE_SERIE := ''Error en la tabla de Series de Comprobantes ''||sqlerrm;',
'        APEX_DEBUG.ERROR(''Error en la tabla de Series de Comprobantes ''||sqlerrm);',
'    END;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_SER_COMPROBANTE ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P476_TIP_COMPROBANTE,P476_SER_COMPROBANTE'
,p_attribute_03=>'P476_MENSAJE_SERIE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P476_SER_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140937701627540410)
,p_name=>'DA_MENSAJE_SERIE'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P476_MENSAJE_SERIE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140937848966540411)
,p_event_id=>wwv_flow_imp.id(140937701627540410)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P476_MENSAJE_SERIE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140937925723540412)
,p_event_id=>wwv_flow_imp.id(140937701627540410)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P476_MENSAJE_SERIE.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P476_MENSAJE_SERIE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140938133519540414)
,p_name=>'DA_MENSAJE_SECTOR'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P476_MENSAJE_SECTOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140938204518540415)
,p_event_id=>wwv_flow_imp.id(140938133519540414)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P476_MENSAJE_SECTOR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140938317572540416)
,p_event_id=>wwv_flow_imp.id(140938133519540414)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P476_MENSAJE_SECTOR.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P476_MENSAJE_SECTOR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140938477618540417)
,p_name=>'DA_COD_SECTOR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P476_COD_SECTOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140938533408540418)
,p_event_id=>wwv_flow_imp.id(140938477618540417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P476_COD_SECTOR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140938644917540419)
,p_event_id=>wwv_flow_imp.id(140938477618540417)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P476_MENSAJE_SECTOR := NULL;',
'    ',
'    DECLARE',
'    vexiste varchar2(1);',
'    BEGIN',
'        select ''S''',
'          into vexiste ',
'          from vt_usuarios_sectores ',
'         where cod_empresa = :P_COD_EMPRESA',
'           and cod_usuario = ''INV''--:P_COD_USUARIO  CAMBIAR ESTO A LA HORA DE ENTREGARLO',
'           and cod_sector = :P476_COD_SECTOR;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            :P476_MENSAJE_SECTOR := ''Usuario '' || :P_COD_USUARIO || '' no habilitado para el sector '' || nvl(:P476_COD_SECTOR,'' '');',
'        WHEN OTHERS THEN',
'            :P476_MENSAJE_SECTOR := ''Error al buscar sector para Usuario ''||:P_COD_USUARIO;',
'    END;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_SECTOR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P_COD_USUARIO,P476_COD_SECTOR'
,p_attribute_03=>'P476_MENSAJE_SECTOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P476_COD_SECTOR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140938704036540420)
,p_name=>'DA_COD_CLIENTE'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P476_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140938859679540421)
,p_event_id=>wwv_flow_imp.id(140938704036540420)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P476_COD_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140938965982540422)
,p_event_id=>wwv_flow_imp.id(140938704036540420)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P476_MENSAJE_CLIENTE := NULL;',
'',
'    BEGIN',
'      select c.cod_vendedor',
'        into :P476_COD_VENDEDOR',
'        from cc_clientes c, ',
'             personas p',
'       where c.cod_empresa = :P_COD_EMPRESA',
'         and c.cod_cliente = :P476_COD_CLIENTE',
'         and c.cod_persona = p.cod_persona;',
'    EXCEPTION',
'      when no_data_found then',
'        :P476_COD_VENDEDOR := NULL;',
'        :P476_MENSAJE_CLIENTE := ''No se encuentra codigo de cliente.'';',
'      when others then',
'        :P476_COD_VENDEDOR := NULL;',
'        :P476_MENSAJE_CLIENTE := ''Error en la tabla de Clientes/Personas ''||sqlerrm;',
'    END;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_CLIENTE ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P476_COD_CLIENTE'
,p_attribute_03=>'P476_COD_VENDEDOR,P476_MENSAJE_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P476_COD_CLIENTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140939109153540424)
,p_name=>'DA_MENSAJE_CLIENTE'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P476_MENSAJE_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
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
 p_id=>wwv_flow_imp.id(140939203723540425)
,p_event_id=>wwv_flow_imp.id(140939109153540424)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P476_MENSAJE_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140939354580540426)
,p_event_id=>wwv_flow_imp.id(140939109153540424)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P476_MENSAJE_CLIENTE.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P476_MENSAJE_CLIENTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140941388901540446)
,p_name=>'DA_ROW_ID_AUX'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P476_ROW_ID_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140941449302540447)
,p_event_id=>wwv_flow_imp.id(140941388901540446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P476_ROW_ID_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140941591119540448)
,p_event_id=>wwv_flow_imp.id(140941388901540446)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P476_V_CONTROL_INICIO := 1;',
'    ',
'    CCDEBITO.CARGAR_COL_DET(prow_id_aux          => :P476_ROW_ID_AUX,',
'                            pcod_modulo          => :P476_COD_MODULO,',
'                            ptip_comprobante     => :P476_TIP_COMPROBANTE,',
'                            pser_comprobante     => :P476_SER_COMPROBANTE,',
'                            pnro_comprobante     => :P476_NRO_COMPROBANTE,',
'                            pcod_sucursal        => :P476_COD_SUCURSAL,',
'                            pfec_debcred         => :P476_FEC_DEBCRED,',
'                            pcod_cliente         => :P476_COD_CLIENTE,',
'                            pcod_condicion_venta => :P476_COD_CONDICION_VENTA,',
'                            ptip_factura_ref     => :P476_TIP_FACTURA_REF,',
'                            pser_factura_ref     => :P476_SER_FACTURA_REF,',
'                            pnro_factura_ref     => :P476_NRO_FACTURA_REF,',
'                            pcod_vendedor        => :P476_COD_VENDEDOR,',
'                            pcod_moneda          => :P476_COD_MONEDA,',
'                            ptip_cambio          => :P476_TIP_CAMBIO,',
'                            ptot_comprobante     => :P476_TOT_COMPROBANTE,',
'                            ptot_gravadas        => :P476_TOT_GRAVADAS,',
'                            ptot_excentas        => :P476_TOT_EXCENTAS,',
'                            ptot_iva             => :P476_TOT_IVA,',
'                            pnro_habilitacion    => :P476_NRO_HABILITACION,',
'                            panulado             => :P476_ANULADO,',
'                            pfec_anulacion       => :P476_FEC_ANULACION,',
'                            pcod_usuario         => :P476_COD_USUARIO,',
'                            pcomentario          => :P476_COMENTARIO,',
'                            pconcepto            => :P476_CONCEPTO,',
'                            pcod_sector          => :P476_COD_SECTOR,',
'                            pfec_vencimiento     => :P476_FEC_VENCIMIENTO,',
'                            pcod_custodio        => :P476_COD_CUSTODIO);',
'',
'    BEGIN',
'        SELECT DISTINCT DESCRIPCION',
'          INTO :P476_DESC_CUSTODIO',
'          FROM (select c.descripcion, c.cod_custodio ',
'                  from usuarios_custodios u, cc_custodios c ',
'                 where u.cod_empresa = :P_COD_EMPRESA',
'                   and u.cod_empresa = c.cod_empresa ',
'                   and u.cod_custodio = c.cod_custodio ',
'                   and c.cod_custodio = :P476_COD_CUSTODIO',
'                union all ',
'                select c.descripcion, c.cod_custodio ',
'                  from cc_custodios c ',
'                 where c.cod_empresa = :P_COD_EMPRESA',
'                   and c.cod_custodio = :P476_COD_CUSTODIO);',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P476_DESC_CUSTODIO := NULL;',
'    END;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ROW_ID_AUX ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P476_ROW_ID_AUX,P476_COD_MODULO,P_COD_EMPRESA,P476_COD_CUSTODIO'
,p_attribute_03=>'P476_TIP_COMPROBANTE,P476_SER_COMPROBANTE,P476_NRO_COMPROBANTE,P476_COD_SUCURSAL,P476_FEC_DEBCRED,P476_COD_CLIENTE,P476_COD_CONDICION_VENTA,P476_TIP_FACTURA_REF,P476_NRO_FACTURA_REF,P476_COD_VENDEDOR,P476_COD_MONEDA,P476_TIP_CAMBIO,P476_TIP_COMPROBAN'
||'TE,P476_TOT_GRAVADAS,P476_TOT_EXCENTAS,P476_TOT_IVA,P476_NRO_HABILITACION,P476_ANULADO,P476_FEC_ANULACION,P476_COD_USUARIO,P476_COMENTARIO,P476_CONCEPTO,P476_COD_SECTOR,P476_FEC_VENCIMIENTO,P476_COD_CUSTODIO,P476_DESC_CUSTODIO,P476_V_CONTROL_INICIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P476_ROW_ID_AUX'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141941331595064505)
,p_event_id=>wwv_flow_imp.id(140941388901540446)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCDEBITO.POST_QUERY_DET(psubtotal            => :P476_SUBTOTAL,',
'                            pmonto_total         => :P476_MONTO_TOTAL_ADD,',
'                            ptotal_iva           => :P476_TOT_IVA,',
'                            pgravada_parcial     => :P476_GRAVADAS_PARCIAL,',
'                            pexcenta_parcial     => :P476_EXENTAS_PARCIAL,',
'                            piva_parcial         => :P476_IVA_PARCIAL,',
'                            psubtotal_out        => :P476_SUBTOTAL,',
'                            pgravada_parcial_out => :P476_GRAVADAS_PARCIAL,',
'                            pexcenta_parcial_out => :P476_EXENTAS_PARCIAL,',
'                            pporcentaje_iva      => :P476_PORCENTAJE_IVA_ADD,',
'                            piva_parcial_out     => :P476_IVA_PARCIAL,',
'                            ptotal_parcial_out   => :P476_TOTAL_PARCIAL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ROW_ID_AUX POST_QUERY_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P476_SUBTOTAL,P476_MONTO_TOTAL_ADD,P476_TOT_IVA,P476_GRAVADAS_PARCIAL,P476_EXENTAS_PARCIAL,P476_IVA_PARCIAL'
,p_attribute_03=>'P476_SUBTOTAL,P476_GRAVADAS_PARCIAL,P476_EXENTAS_PARCIAL,P476_PORCENTAJE_IVA_ADD,P476_IVA_PARCIAL,P476_TOTAL_PARCIAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P476_ROW_ID_AUX'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140941786423540450)
,p_event_id=>wwv_flow_imp.id(140941388901540446)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(139765271471556205)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P476_ROW_ID_AUX'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141285116494216001)
,p_event_id=>wwv_flow_imp.id(140941388901540446)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(140793697286363527)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P476_ROW_ID_AUX'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141285914613216009)
,p_name=>'DA_BTAGREGAR_DET'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(141285298215216002)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141287771615216027)
,p_event_id=>wwv_flow_imp.id(141285914613216009)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P476_EDIT_DATA_DET,P476_DELETE_DATA_DET,P476_SUB_TIPO_TRANS_ADD,P476_DESC_TRANSACCION_ADD,P476_CANTIDAD_ADD,P476_PRECIO_UNITARIO_ADD,P476_TOTAL_IVA_ADD,P476_MONTO_TOTAL_ADD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141286000327216010)
,p_event_id=>wwv_flow_imp.id(141285914613216009)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141285334974216003)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141286391969216013)
,p_name=>'DA_SOLO_NUMEROS'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P476_CANTIDAD_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141286475924216014)
,p_event_id=>wwv_flow_imp.id(141286391969216013)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validateNumber(event);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141286526845216015)
,p_name=>'DA_AGREGAR_EDITAR_DET'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(141286292746216012)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141286693496216016)
,p_event_id=>wwv_flow_imp.id(141286526845216015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P476_SUB_TIPO_TRANS_ADD,P476_DESC_TRANSACCION_ADD,P476_CANTIDAD_ADD,P476_PRECIO_UNITARIO_ADD,P476_TOTAL_IVA_ADD,P476_MONTO_TOTAL_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141286871428216018)
,p_event_id=>wwv_flow_imp.id(141286526845216015)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCDEBITO.ADD_COL(pcod_empresa         => :P_COD_EMPRESA,',
'                     ptipo_trans          => :P476_V_TIPO_TRANS,',
'                     psubtipo             => :P476_SUB_TIPO_TRANS_ADD,',
'                     pdesc_subtipo        => :P476_DESC_TRANSACCION_ADD,',
'                     ptip_comprobante     => :P476_TIP_COMPROBANTE,',
'                     pser_comprobante     => :P476_SER_COMPROBANTE,',
'                     pnro_comprobante     => :P476_NRO_COMPROBANTE,',
'                     pcod_sucursal        => :P476_COD_SUCURSAL,',
'                     pcantidad            => :P476_CANTIDAD_ADD,',
'                     pprecio_unitario     => :P476_PRECIO_UNITARIO_ADD,',
'                     ptotal_iva           => :P476_TOTAL_IVA_ADD,',
'                     pmonto_total         => :P476_MONTO_TOTAL_ADD,',
'                     ptip_comprobante_ref => :P476_TIP_FACTURA_REF,',
'                     pser_comprobante_ref => :P476_SER_FACTURA_REF,',
'                     pnro_comprobante_ref => :P476_NRO_FACTURA_REF);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_AGREGA_EDITAR_DET ADD_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P476_V_TIPO_TRANS,P476_SUB_TIPO_TRANS_ADD,P476_DESC_TRANSACCION_ADD,P476_TIP_COMPROBANTE,P476_SER_COMPROBANTE,P476_NRO_COMPROBANTE,P476_COD_SUCURSAL,P476_CANTIDAD_ADD,P476_PRECIO_UNITARIO_ADD,P476_TOTAL_IVA_ADD,P476_TIP_FACTURA_REF,P476'
||'_SER_FACTURA_REF,P476_NRO_FACTURA_REF'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P476_EDIT_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141289485818216044)
,p_event_id=>wwv_flow_imp.id(141286526845216015)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCDEBITO.EDIT_COL(pseq_id          => :P476_EDIT_DATA_DET,',
'                      psubtipo         => :P476_SUB_TIPO_TRANS_ADD,',
'                      pdesc_subtipo    => :P476_DESC_TRANSACCION_ADD,',
'                      pcantidad        => :P476_CANTIDAD_ADD,',
'                      pprecio_unitario => :P476_PRECIO_UNITARIO_ADD,',
'                      ptotal_iva       => :P476_TOTAL_IVA_ADD,',
'                      pmonto_total     => :P476_MONTO_TOTAL_ADD);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_EDIT_DATA_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P476_EDIT_DATA_DET,P476_SUB_TIPO_TRANS_ADD,P476_DESC_TRANSACCION_ADD,P476_CANTIDAD_ADD,P476_PRECIO_UNITARIO_ADD,P476_TOTAL_IVA_ADD,P476_MONTO_TOTAL_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P476_EDIT_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141286910121216019)
,p_event_id=>wwv_flow_imp.id(141286526845216015)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141285334974216003)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141287076984216020)
,p_event_id=>wwv_flow_imp.id(141286526845216015)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(140793697286363527)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141287310293216023)
,p_name=>'DA_EDIT_DATA_DET'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P476_EDIT_DATA_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141287473720216024)
,p_event_id=>wwv_flow_imp.id(141287310293216023)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P476_EDIT_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141289395444216043)
,p_event_id=>wwv_flow_imp.id(141287310293216023)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCDEBITO.CARGAR_COL_EDIT(pedit_data       => :P476_EDIT_DATA_DET,',
'                             psubtipo         => :P476_SUB_TIPO_TRANS_ADD,',
'                             pdesc_subtipo    => :P476_DESC_TRANSACCION_ADD,',
'                             pcantidad        => :P476_CANTIDAD_ADD,',
'                             pprecio_unitario => :P476_PRECIO_UNITARIO_ADD,',
'                             piva             => :P476_TOTAL_IVA_ADD,',
'                             pimporte         => :P476_IMPORTE_ANT_ADD);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_EDIT_DATA_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P476_EDIT_DATA_DET'
,p_attribute_03=>'P476_SUB_TIPO_TRANS_ADD,P476_DESC_TRANSACCION_ADD,P476_CANTIDAD_ADD,P476_PRECIO_UNITARIO_ADD,P476_TOTAL_IVA_ADD,P476_MONTO_TOTAL_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141289223421216042)
,p_event_id=>wwv_flow_imp.id(141287310293216023)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141285334974216003)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141287585827216025)
,p_name=>'DA_DELETE_DATA_DET'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P476_DELETE_DATA_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141287614466216026)
,p_event_id=>wwv_flow_imp.id(141287585827216025)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P476_DELETE_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141289095639216040)
,p_event_id=>wwv_flow_imp.id(141287585827216025)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCDEBITO.DELETE_COL(pseq_id   => :P476_DELETE_DATA_DET, ',
'                        p_col     => ''COL_CC_DETALLE_DEBCRED'',',
'                        patributo => 15);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DELETE_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P476_DELETE_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141289555400216045)
,p_event_id=>wwv_flow_imp.id(141287585827216025)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCDEBITO.WHEN_REMOVE_RECORD(pmonto_total          => :P476_MONTO_TOTAL_ADD,',
'                                ptotal_iva            => :P476_TOTAL_IVA_ADD,',
'                                piva_parcial          => :P476_IVA_PARCIAL,',
'                                psubtotal             => :P476_SUBTOTAL,',
'                                pgravadas_parcial     => :P476_GRAVADAS_PARCIAL,',
'                                pexcentas_parcial     => :P476_EXENTAS_PARCIAL,',
'                                piva_parcial_out      => :P476_IVA_PARCIAL,',
'                                piva_ant_out          => :P476_IVA_ANT_ADD,    ',
'                                psubtotal_out         => :P476_SUBTOTAL,',
'                                pimporte_ant_out      => :P476_IMPORTE_ANT_ADD,',
'                                pgravadas_parcial_out => :P476_GRAVADAS_PARCIAL,',
'                                pexcentas_parcial_out => :P476_EXENTAS_PARCIAL,',
'                                ptotal_parcial_out    => :P476_TOTAL_PARCIAL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DELETE_DATA_DET WHEN_REMOVE_RECORD ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P476_MONTO_TOTAL_ADD,P476_TOTAL_IVA_ADD,P476_IVA_PARCIAL,P476_SUBTOTAL,P476_GRAVADAS_PARCIAL,P476_EXENTAS_PARCIAL'
,p_attribute_03=>'P476_IVA_PARCIAL,P476_IVA_ANT_ADD,P476_SUBTOTAL,P476_IMPORTE_ANT_ADD,P476_GRAVADAS_PARCIAL,P476_EXENTAS_PARCIAL,P476_TOTAL_PARCIAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141289149373216041)
,p_event_id=>wwv_flow_imp.id(141287585827216025)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(140793697286363527)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141288169322216031)
,p_name=>'DA_CANTIDAD_ADD'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P476_CANTIDAD_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141288223362216032)
,p_event_id=>wwv_flow_imp.id(141288169322216031)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P476_MONTO_TOTAL_ADD,P476_CANTIDAD_ADD,P476_PRECIO_UNITARIO_ADD,P476_TOTAL_IVA_ADD,P476_IVA_PARCIAL,P476_IVA_ANT_ADD,P476_SUBTOTAL,P476_IMPORTE_ANT_ADD,P476_GRAVADAS_PARCIAL,P476_EXENTAS_PARCIAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141288351919216033)
,p_event_id=>wwv_flow_imp.id(141288169322216031)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCDEBITO.VALIDATE_CANTIDAD(pmonto_total          => :P476_MONTO_TOTAL_ADD,',
'                               pcantidad             => :P476_CANTIDAD_ADD,',
'                               pprecio_unitario      => :P476_PRECIO_UNITARIO_ADD,',
'                               ptotal_iva            => :P476_TOTAL_IVA_ADD,',
'                               piva_parcial          => :P476_IVA_PARCIAL,',
'                               piva_ant              => :P476_IVA_ANT_ADD,',
'                               psubtotal             => :P476_SUBTOTAL,',
'                               pimporte_ant          => :P476_IMPORTE_ANT_ADD,',
'                               pgravadas_parcial     => :P476_GRAVADAS_PARCIAL,',
'                               pexcentas_parcial     => :P476_EXENTAS_PARCIAL,',
'                               pmonto_total_out      => :P476_MONTO_TOTAL_ADD,',
'                               pporcentaje_iva       => :P476_PORCENTAJE_IVA_ADD,',
'                               piva_parcial_out      => :P476_IVA_PARCIAL,',
'                               piva_ant_out          => :P476_IVA_ANT_ADD,',
'                               psubtotal_out         => :P476_SUBTOTAL,',
'                               pimporte_ant_out      => :P476_IMPORTE_ANT_ADD,',
'                               pgravadas_parcial_out => :P476_GRAVADAS_PARCIAL,',
'                               pexcentas_parcial_out => :P476_EXENTAS_PARCIAL,',
'                               ptotal_parcial_out    => :P476_TOTAL_PARCIAL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CANTIDAD_ADD ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P476_MONTO_TOTAL_ADD,P476_CANTIDAD_ADD,P476_PRECIO_UNITARIO_ADD,P476_TOTAL_IVA_ADD,P476_IVA_PARCIAL,P476_IVA_ANT_ADD,P476_SUBTOTAL,P476_IMPORTE_ANT_ADD,P476_GRAVADAS_PARCIAL,P476_EXENTAS_PARCIAL'
,p_attribute_03=>'P476_MONTO_TOTAL_ADD,P476_PORCENTAJE_IVA_ADD,P476_IVA_PARCIAL,P476_IVA_ANT_ADD,P476_SUBTOTAL,P476_IMPORTE_ANT_ADD,P476_GRAVADAS_PARCIAL,P476_EXENTAS_PARCIAL,P476_TOTAL_PARCIAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P476_CANTIDAD_ADD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141288491870216034)
,p_name=>'PRECIO_UNITARIO_ADD'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P476_PRECIO_UNITARIO_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141288594533216035)
,p_event_id=>wwv_flow_imp.id(141288491870216034)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P476_MONTO_TOTAL_ADD,P476_CANTIDAD_ADD,P476_PRECIO_UNITARIO_ADD,P476_TOTAL_IVA_ADD,P476_IVA_PARCIAL,P476_IVA_ANT_ADD,P476_SUBTOTAL,P476_IMPORTE_ANT_ADD,P476_GRAVADAS_PARCIAL,P476_EXENTAS_PARCIAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141288805569216038)
,p_event_id=>wwv_flow_imp.id(141288491870216034)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCDEBITO.CALCULOS(pmonto_total          => :P476_MONTO_TOTAL_ADD,',
'                      pcantidad             => :P476_CANTIDAD_ADD,',
'                      pprecio_unitario      => :P476_PRECIO_UNITARIO_ADD,',
'                      ptotal_iva            => :P476_TOTAL_IVA_ADD,',
'                      piva_parcial          => :P476_IVA_PARCIAL,',
'                      piva_ant              => :P476_IVA_ANT_ADD,',
'                      psubtotal             => :P476_SUBTOTAL,',
'                      pimporte_ant          => :P476_IMPORTE_ANT_ADD,',
'                      pgravadas_parcial     => :P476_GRAVADAS_PARCIAL,',
'                      pexcentas_parcial     => :P476_EXENTAS_PARCIAL,',
'                      pmonto_total_out      => :P476_MONTO_TOTAL_ADD,',
'                      pporcentaje_iva       => :P476_PORCENTAJE_IVA_ADD,',
'                      piva_parcial_out      => :P476_IVA_PARCIAL,',
'                      piva_ant_out          => :P476_IVA_ANT_ADD,',
'                      psubtotal_out         => :P476_SUBTOTAL,',
'                      pimporte_ant_out      => :P476_IMPORTE_ANT_ADD,',
'                      pgravadas_parcial_out => :P476_GRAVADAS_PARCIAL,',
'                      pexcentas_parcial_out => :P476_EXENTAS_PARCIAL,',
'                      ptotal_parcial_out    => :P476_TOTAL_PARCIAL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_PRECIO_UNITARIO_ADD CALCULOS ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P476_MONTO_TOTAL_ADD,P476_CANTIDAD_ADD,P476_PRECIO_UNITARIO_ADD,P476_TOTAL_IVA_ADD,P476_IVA_PARCIAL,P476_IVA_ANT_ADD,P476_SUBTOTAL,P476_IMPORTE_ANT_ADD,P476_GRAVADAS_PARCIAL,P476_EXENTAS_PARCIAL'
,p_attribute_03=>'P476_MONTO_TOTAL_ADD,P476_PORCENTAJE_IVA_ADD,P476_IVA_PARCIAL,P476_IVA_ANT_ADD,P476_SUBTOTAL,P476_IMPORTE_ANT_ADD,P476_GRAVADAS_PARCIAL,P476_EXENTAS_PARCIAL,P476_TOTAL_PARCIAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141288607006216036)
,p_name=>'DA_TOTAL_IVA_ADD'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P476_TOTAL_IVA_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141288778736216037)
,p_event_id=>wwv_flow_imp.id(141288607006216036)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P476_MONTO_TOTAL_ADD,P476_CANTIDAD_ADD,P476_PRECIO_UNITARIO_ADD,P476_TOTAL_IVA_ADD,P476_IVA_PARCIAL,P476_IVA_ANT_ADD,P476_SUBTOTAL,P476_IMPORTE_ANT_ADD,P476_GRAVADAS_PARCIAL,P476_EXENTAS_PARCIAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141288955154216039)
,p_event_id=>wwv_flow_imp.id(141288607006216036)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCDEBITO.CALCULOS(pmonto_total          => :P476_MONTO_TOTAL_ADD,',
'                      pcantidad             => :P476_CANTIDAD_ADD,',
'                      pprecio_unitario      => :P476_PRECIO_UNITARIO_ADD,',
'                      ptotal_iva            => :P476_TOTAL_IVA_ADD,',
'                      piva_parcial          => :P476_IVA_PARCIAL,',
'                      piva_ant              => :P476_IVA_ANT_ADD,',
'                      psubtotal             => :P476_SUBTOTAL,',
'                      pimporte_ant          => :P476_IMPORTE_ANT_ADD,',
'                      pgravadas_parcial     => :P476_GRAVADAS_PARCIAL,',
'                      pexcentas_parcial     => :P476_EXENTAS_PARCIAL,',
'                      pmonto_total_out      => :P476_MONTO_TOTAL_ADD,',
'                      pporcentaje_iva       => :P476_PORCENTAJE_IVA_ADD,',
'                      piva_parcial_out      => :P476_IVA_PARCIAL,',
'                      piva_ant_out          => :P476_IVA_ANT_ADD,',
'                      psubtotal_out         => :P476_SUBTOTAL,',
'                      pimporte_ant_out      => :P476_IMPORTE_ANT_ADD,',
'                      pgravadas_parcial_out => :P476_GRAVADAS_PARCIAL,',
'                      pexcentas_parcial_out => :P476_EXENTAS_PARCIAL,',
'                      ptotal_parcial_out    => :P476_TOTAL_PARCIAL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_TOTAL_IVA_ADD CALCULOS ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P476_MONTO_TOTAL_ADD,P476_CANTIDAD_ADD,P476_PRECIO_UNITARIO_ADD,P476_TOTAL_IVA_ADD,P476_IVA_PARCIAL,P476_IVA_ANT_ADD,P476_SUBTOTAL,P476_IMPORTE_ANT_ADD,P476_GRAVADAS_PARCIAL,P476_EXENTAS_PARCIAL'
,p_attribute_03=>'P476_MONTO_TOTAL_ADD,P476_PORCENTAJE_IVA_ADD,P476_IVA_PARCIAL,P476_IVA_ANT_ADD,P476_SUBTOTAL,P476_IMPORTE_ANT_ADD,P476_GRAVADAS_PARCIAL,P476_EXENTAS_PARCIAL,P476_TOTAL_PARCIAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141940982855064501)
,p_name=>'DA_ANULADO'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P476_ANULADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141941060044064502)
,p_event_id=>wwv_flow_imp.id(141940982855064501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P476_ANULADO = ''S'' THEN',
'        :P476_FEC_ANULACION := SYSDATE;',
'    ELSE',
'        :P476_FEC_ANULACION := NULL;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_ANULADO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P476_ANULADO'
,p_attribute_03=>'P476_FEC_ANULACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141941643648064508)
,p_name=>'DA_BTGUARDAR_CAMBIOS'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(141941182905064503)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141941773482064509)
,p_event_id=>wwv_flow_imp.id(141941643648064508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P476_NRO_COMPROBANTE IS NULL THEN',
'        BEGIN',
'            Select NVL(max(nro_comprobante),0) + 1',
'              into :P476_NRO_COMPROBANTE',
'              from cc_notas_debcred',
'             where cod_empresa = :P_COD_EMPRESA',
'               and tip_comprobante = :P476_TIP_COMPROBANTE',
'               and ser_comprobante = :P476_SER_COMPROBANTE;',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'            :P476_NRO_COMPROBANTE := 1;',
'        END;',
'    END IF;',
'',
'    :P476_TOT_GRAVADAS := :P476_GRAVADAS_PARCIAL;',
'    :P476_TOT_EXCENTAS := :P476_EXENTAS_PARCIAL;',
'    :P476_TOT_IVA := :P476_IVA_PARCIAL;',
'    :P476_TOT_COMPROBANTE := :P476_TOTAL_PARCIAL;',
'    :P476_V_ES_BORRADO := ''N'' ;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTGUARDAR_CAMBIOS ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P476_NRO_COMPROBANTE,P_COD_EMPRESA,P476_TIP_COMPROBANTE,P476_SER_COMPROBANTE,P476_GRAVADAS_PARCIAL,P476_EXENTAS_PARCIAL,P476_IVA_PARCIAL,P476_TOTAL_PARCIAL'
,p_attribute_03=>'P476_NRO_COMPROBANTE,P476_TOT_GRAVADAS,P476_TOT_EXCENTAS,P476_TOT_IVA,P476_TOT_COMPROBANTE,P476_V_ES_BORRADO'
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
 p_id=>wwv_flow_imp.id(141941841998064510)
,p_event_id=>wwv_flow_imp.id(141941643648064508)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(139944305212063119)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P476_COD_MODULO := ''CC'';',
':P476_V_TIPO_TRANS := BS_BUSCA_PARAMETRO(:P476_COD_MODULO,''CONCEPTO_DEBITO'');',
':P476_V_SER_COMPROBANTE := BS_BUSCA_PARAMETRO(:P476_COD_MODULO,''SERIE_DEBITO'');',
':P476_V_TIP_COMPROBANTE := BS_BUSCA_PARAMETRO(:P476_COD_MODULO,''TIPO_DEBITO'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''COL_CC_DETALLE_DEBCRED'');',
' begin',
'    select cod_custodio',
'      into :P476_V_COD_CUSTODIO',
'      from usuarios',
'     where /*cod_empresa = :variables.cod_empresa',
'      and */cod_usuario = :P_COD_USUARIO;',
'exception',
'    when others then',
'    :P476_V_COD_CUSTODIO := null ;',
'end ;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(141941521423064507)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_SAVE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCDEBITO.GUARDAR_CAMBIOS(pcod_empresa         => :P_COD_EMPRESA,',
'                             ptip_comprobante     => :P476_TIP_COMPROBANTE,',
'                             pser_comprobante     => :P476_SER_COMPROBANTE,',
'                             pnro_comprobante     => :P476_NRO_COMPROBANTE,',
'                             pcod_sucursal        => :P476_COD_SUCURSAL,',
'                             pfec_debcred         => :P476_FEC_DEBCRED,',
'                             pcod_cliente         => :P476_COD_CLIENTE,',
'                             pcod_condicion_venta => :P476_COD_CONDICION_VENTA,',
'                             ptip_factura_ref     => :P476_TIP_FACTURA_REF,',
'                             pser_factura_ref     => :P476_SER_FACTURA_REF,',
'                             pnro_factura_ref     => :P476_NRO_FACTURA_REF,',
'                             pcod_vendedor        => :P476_COD_VENDEDOR,',
'                             pcod_moneda          => :P476_COD_MONEDA,',
'                             ptip_cambio          => :P476_TIP_CAMBIO,',
'                             ptot_comprobante     => :P476_TOT_COMPROBANTE,',
'                             ptot_gravadas        => :P476_TOT_GRAVADAS,',
'                             ptot_excentas        => :P476_TOT_EXCENTAS,',
'                             ptot_iva             => :P476_TOT_IVA,',
'                             pnro_habilitacion    => :P476_NRO_HABILITACION,',
'                             panulado             => :P476_ANULADO,',
'                             pfec_anulacion       => :P476_FEC_ANULACION,',
'                             pcod_usuario         => :P476_COD_USUARIO,',
'                             pcomentario          => :P476_COMENTARIO,',
'                             pconcepto            => :P476_CONCEPTO,',
'                             pcod_sector          => :P476_COD_SECTOR,',
'                             pfec_vencimiento     => :P476_FEC_VENCIMIENTO,',
'                             pcod_custodio        => :P476_COD_CUSTODIO,',
'                             pcontrol             => :P476_V_CONTROL_INICIO); ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_SAVE PAG 476 ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GUARDAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
