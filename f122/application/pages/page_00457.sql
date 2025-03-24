prompt --application/pages/page_00457
begin
--   Manifest
--     PAGE: 00457
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
 p_id=>457
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Carga de Notas de Cr\00E9dito por importes - CCNOTCRE')
,p_alias=>'CCNOTCRE'
,p_step_title=>unistr('Carga de Notas de Cr\00E9dito por importes - CCNOTCRE')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DFINO'
,p_last_upd_yyyymmddhh24miss=>'20230515092502'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136293508564726238)
,p_plug_name=>'B_DEBITO'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136520401388433201)
,p_plug_name=>'IZQ'
,p_parent_plug_id=>wwv_flow_imp.id(136293508564726238)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136520536763433202)
,p_plug_name=>'DER'
,p_parent_plug_id=>wwv_flow_imp.id(136293508564726238)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136293681632726239)
,p_plug_name=>'B_DETALLE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    SEQ_ID SEQ_ID_NC,',
'    C001 cod_empresa,',
'    C002 cod_sucursal,',
'    C003 tip_comprobante,',
'    C004 ser_comprobante,',
'    N001 nro_comprobante,',
'    C005 tipo_trans,',
'    C006 sub_tipo_trans,',
'    N002 cantidad,',
'    N003 precio_unitario,',
'    C007 total_iva,',
'    N004 monto_total,',
'    C008 tip_comprobante_ref,',
'    C009 ser_comprobante_ref,',
'    N005 nro_comprobante_ref,',
'    NULL EDITAR,',
'    NULL ELIMINAR',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''DET_DEBCRED''',
'AND :P457_IND_DET_NC = ''1''',
'AND C020 <> ''B'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P457_IND_DET_NC'
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
 p_id=>wwv_flow_imp.id(137017965815058810)
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
,p_internal_uid=>137017965815058810
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137018135619058812)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137018210952058813)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137018351738058814)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137018491813058815)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137018587420058816)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137018643285058817)
,p_db_column_name=>'TIPO_TRANS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Tipo Trans'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137018736438058818)
,p_db_column_name=>'SUB_TIPO_TRANS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Sub Tipo Trans'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137018871278058819)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137018974820058820)
,p_db_column_name=>'PRECIO_UNITARIO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Precio Unitario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137019037671058821)
,p_db_column_name=>'TOTAL_IVA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Total Iva'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137019148755058822)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Monto Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137019229610058823)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137019331580058824)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Ser Comprobante Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137019449655058825)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137019544149058826)
,p_db_column_name=>'SEQ_ID_NC'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Seq Id Nc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137019646322058827)
,p_db_column_name=>'EDITAR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P457_SEQ_ID_DET_ED'',''#SEQ_ID_NC#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137019759090058828)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P457_SEQ_ID_DET_EL'',''#SEQ_ID_NC#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(137066646088748531)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1370667'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SUB_TIPO_TRANS:TIP_COMPROBANTE_REF:SER_COMPROBANTE_REF:NRO_COMPROBANTE_REF:PRECIO_UNITARIO:CANTIDAD:TOTAL_IVA:MONTO_TOTAL:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(137384006896507013)
,p_plug_name=>'AGREGAR/EDITAR DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(136293681632726239)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136293705509726240)
,p_plug_name=>'B_DEBITO_PIE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1050
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136524660690433243)
,p_plug_name=>'IZQ'
,p_parent_plug_id=>wwv_flow_imp.id(136293705509726240)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136524703527433244)
,p_plug_name=>'MID'
,p_parent_plug_id=>wwv_flow_imp.id(136293705509726240)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136525142530433248)
,p_plug_name=>'Totales'
,p_parent_plug_id=>wwv_flow_imp.id(136524703527433244)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136525283628433249)
,p_plug_name=>'Administrativo'
,p_parent_plug_id=>wwv_flow_imp.id(136524703527433244)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136524878885433245)
,p_plug_name=>'DER'
,p_parent_plug_id=>wwv_flow_imp.id(136293705509726240)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(137017642644058807)
,p_plug_name=>'Anulado'
,p_parent_plug_id=>wwv_flow_imp.id(136524878885433245)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136521005575433207)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136522180701433218)
,p_plug_name=>unistr('Notas de Cr\00E9dito por importes')
,p_region_css_classes=>'js-dialog-size1500x650'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    NULL SELECCIONAR,',
'    TIP_COMPROBANTE,',
'    SER_COMPROBANTE,',
'    NRO_COMPROBANTE,',
'    COD_SUCURSAL,',
'    FEC_DEBCRED,',
'    COD_CLIENTE,',
'    COD_CONDICION_VENTA,',
'    ROWID ROW_ID_NC',
'FROM CC_NOTAS_DEBCRED',
'WHERE COD_EMPRESA = :P_COD_EMPRESA',
'AND :P457_IND_REP_NC = ''1'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P457_IND_REP_NC'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Notas de Cr\00E9dito por importes')
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
 p_id=>wwv_flow_imp.id(136522384916433220)
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
,p_internal_uid=>136522384916433220
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136522785304433224)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136522800949433225)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136522986294433226)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136523070979433227)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(41127354264101747)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136523178289433228)
,p_db_column_name=>'FEC_DEBCRED'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136523276871433229)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(6969834837818791)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136523382202433230)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('Condici\00F3n de Venta')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(137040012331920004)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136523852344433235)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Seleccionar'
,p_column_link=>'javascript:$s(''P457_ROW_ID_NC'',''#ROW_ID_NC#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136523961491433236)
,p_db_column_name=>'ROW_ID_NC'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Row Id Nc'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(136973881092188274)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1369739'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECCIONAR:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:COD_SUCURSAL:FEC_DEBCRED:COD_CLIENTE:COD_CONDICION_VENTA:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136522495704433221)
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
 p_id=>wwv_flow_imp.id(136524112980433238)
,p_plug_name=>'SEQ ROW'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(137386562853507038)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(137384006896507013)
,p_button_name=>'BTN_DETALLE_CERRAR_CR_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(137386399799507036)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(137384006896507013)
,p_button_name=>'BTN_DETALLE_ACEPTAR_CR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(137386454135507037)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(137384006896507013)
,p_button_name=>'BTN_DETALLE_ACEPTAR_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(137020160872058832)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(136293681632726239)
,p_button_name=>'BTN_AGREGAR_DET_NC'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Detalle'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(137020598647058836)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(136293508564726238)
,p_button_name=>'BTN_AGREGA_NC_MAIN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Nueva Nota Cr\00E9dito')
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(137383386409507006)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(136522180701433218)
,p_button_name=>'BTN_AGREGA_NC'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Nueva Nota Cr\00E9dito')
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(137020495621058835)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(136293508564726238)
,p_button_name=>'BTN_BUSCAR_NC'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(137020338021058834)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(136293508564726238)
,p_button_name=>'BTN_GUARDAR_CAMBIOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Cambios'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136293833854726241)
,p_name=>'P457_TIP_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136520401388433201)
,p_prompt=>'Tipo Comprobante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tip_comprobante || '' - '' || descripcion D, ',
'       tip_comprobante R ',
'from tipos_comprobantes ',
'where ((:P457_CONCEPTO = ''D'' and tip_comprobante = ''DEB'') ',
'        or (:P457_CONCEPTO = ''C'' and tip_comprobante = ''CRE''))'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(136293988289726242)
,p_name=>'P457_SER_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136520401388433201)
,p_prompt=>'Serie Comprobante'
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
 p_id=>wwv_flow_imp.id(136294008821726243)
,p_name=>'P457_NRO_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136520401388433201)
,p_prompt=>'Nro. Comprobante'
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
 p_id=>wwv_flow_imp.id(136294162820726244)
,p_name=>'P457_FEC_DEBCRED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136520401388433201)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(136294221034726245)
,p_name=>'P457_TIP_FACTURA_REF'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136520401388433201)
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
 p_id=>wwv_flow_imp.id(136294399670726246)
,p_name=>'P457_SER_FACTURA_REF'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136520401388433201)
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
 p_id=>wwv_flow_imp.id(136294471298726247)
,p_name=>'P457_NRO_FACTURA_REF'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136520401388433201)
,p_prompt=>'Nro. Factura'
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
 p_id=>wwv_flow_imp.id(136294590994726248)
,p_name=>'P457_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136520401388433201)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cliente || '' - '' || nvl( ltrim( p.nombre ), ltrim( p.nomb_fantasia ) ) D,',
'       c.cod_cliente ',
'from cc_clientes c, personas p ',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona ',
'order by 2'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(136294655765726249)
,p_name=>'P457_COD_VENDEDOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(136520536763433202)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.cod_vendedor || '' - '' || nvl( ltrim( p.nombre ), ltrim( p.nomb_fantasia ) ) D, ',
'       v.cod_vendedor R  ',
'from fv_vendedores v, personas p ',
'where v.cod_empresa = :P_COD_EMPRESA',
'and v.cod_persona = p.cod_persona ',
'and v.estado = ''A'' ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(136520629068433203)
,p_name=>'P457_COD_MONEDA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(136520536763433202)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_moneda || '' - '' || descripcion D, ',
'       cod_moneda R ',
'from monedas ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136520788944433204)
,p_name=>'P457_COD_CONDICION_VENTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(136520536763433202)
,p_prompt=>unistr('Condici\00F3n Venta')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_condicion_venta || '' - '' || descripcion || '' - '' || nro_cuotas  D, ',
'       cod_condicion_venta R ',
'from cc_condiciones_ventas ',
'where cod_empresa = :P_COD_EMPRESA',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(136520804944433205)
,p_name=>'P457_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136520536763433202)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal  || '' - '' || descripcion D, ',
'       cod_sucursal R ',
'from sucursales ',
'where cod_empresa = :P_COD_EMPRESA',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(136520910061433206)
,p_name=>'P457_TIP_CAMBIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(136520536763433202)
,p_prompt=>'Tipo Cambio'
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
 p_id=>wwv_flow_imp.id(136521134875433208)
,p_name=>'P457_TIPO_TRANS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(136521005575433207)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136521208301433209)
,p_name=>'P457_V_SER_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(136521005575433207)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136521333637433210)
,p_name=>'P457_V_TIP_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(136521005575433207)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136521438897433211)
,p_name=>'P457_SUB_TIPO_TRANS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(136521005575433207)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136521530886433212)
,p_name=>'P457_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136521005575433207)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136521878062433215)
,p_name=>'P457_DECIMALES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(136521005575433207)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136522628972433223)
,p_name=>'P457_IND_REP_NC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136522495704433221)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136524258006433239)
,p_name=>'P457_ROW_ID_NC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136524112980433238)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136524953416433246)
,p_name=>'P457_FEC_VENCIMIENTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136524660690433243)
,p_prompt=>'Fec Vencimiento'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>8
,p_grid_column=>2
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
 p_id=>wwv_flow_imp.id(136525076677433247)
,p_name=>'P457_COMENTARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(136524660690433243)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_colspan=>8
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136525315209433250)
,p_name=>'P457_GRAVADAS_PARCIAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136525142530433248)
,p_prompt=>'Gravadas'
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
 p_id=>wwv_flow_imp.id(137017072951058801)
,p_name=>'P457_EXENTAS_PARCIAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(136525142530433248)
,p_prompt=>'Exentas'
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
 p_id=>wwv_flow_imp.id(137017199471058802)
,p_name=>'P457_NRO_HABILITACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136525283628433249)
,p_prompt=>unistr('Habilitaci\00F3n')
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
 p_id=>wwv_flow_imp.id(137017270303058803)
,p_name=>'P457_COD_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(136525283628433249)
,p_prompt=>'Usuario'
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
 p_id=>wwv_flow_imp.id(137017361254058804)
,p_name=>'P457_SUBTOTAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136524878885433245)
,p_prompt=>'Subtotal'
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
 p_id=>wwv_flow_imp.id(137017452404058805)
,p_name=>'P457_IVA_PARCIAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(136524878885433245)
,p_prompt=>'I.V.A.'
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
 p_id=>wwv_flow_imp.id(137017529153058806)
,p_name=>'P457_TOTAL_PARCIAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(136524878885433245)
,p_prompt=>'Total'
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
 p_id=>wwv_flow_imp.id(137017714441058808)
,p_name=>'P457_FEC_ANULADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(137017642644058807)
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
 p_id=>wwv_flow_imp.id(137017811014058809)
,p_name=>'P457_ANULADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(137017642644058807)
,p_prompt=>'Si/No'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137018031066058811)
,p_name=>'P457_IND_DET_NC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(136522495704433221)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137021632516058847)
,p_name=>'P457_CONCEPTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(136521005575433207)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137382984210507002)
,p_name=>'P457_ALERT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(136521005575433207)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137384182492507014)
,p_name=>'P457_SUB_TIPO_TRANS_CR_ED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(137384006896507013)
,p_prompt=>unistr('Sub Tipo Transacci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select subtipo_trans || '' - '' || descripcion D,',
'       subtipo_trans R ',
'from subtipos_trans ',
'where cod_empresa = :P_COD_EMPRESA',
'and cod_modulo = :P457_COD_MODULO',
'and tipo_trans = :P457_TIPO_TRANS',
'order by 2'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(137384422109507017)
,p_name=>'P457_TIP_COMP_REF_CR_ED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(137384006896507013)
,p_prompt=>'Tipo Comprobante'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:1 - FCO;FCO,2 - FCR;FCR,3 - CVE;CVE,4 - NIN;4'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137384568639507018)
,p_name=>'P457_SER_COMP_REF_CR_ED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(137384006896507013)
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
 p_id=>wwv_flow_imp.id(137384649388507019)
,p_name=>'P457_NRO_COMP_REF_CR_ED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(137384006896507013)
,p_prompt=>'Nro. Comprobante'
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
 p_id=>wwv_flow_imp.id(137384750017507020)
,p_name=>'P457_PRECIO_UNITARIO_CR_ED'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(137384006896507013)
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
 p_id=>wwv_flow_imp.id(137384841210507021)
,p_name=>'P457_TOTAL_IVA_CR_ED'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(137384006896507013)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137384987711507022)
,p_name=>'P457_MONTO_TOTAL_CR_ED'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(137384006896507013)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137386156854507034)
,p_name=>'P457_CANTIDAD_CR_ED'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(137384006896507013)
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
 p_id=>wwv_flow_imp.id(137386252401507035)
,p_name=>'P457_TIPO_TRANS_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(137384006896507013)
,p_prompt=>unistr('Tipo Transacci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select subtipo_trans || '' - '' || descripcion D,',
'       subtipo_trans R ',
'from subtipos_trans ',
'where cod_empresa = :P_COD_EMPRESA',
'and cod_modulo = :P457_COD_MODULO',
'and tipo_trans = :P457_TIPO_TRANS',
'order by 2'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(140578892567633936)
,p_name=>'P457_SEQ_ID_DET_ED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(136524112980433238)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141778161545980236)
,p_name=>'P457_SEQ_ID_DET_EL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(136524112980433238)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(137383232716507005)
,p_validation_name=>'LV_VALIDAR_FECHAS'
,p_validation_sequence=>10
,p_validation=>'TO_DATE(:P457_FEC_VENCIMIENTO, ''DD/MM/YYYY'') > TO_DATE(:P457_FEC_DEBCRED, ''DD/MM/YYYY'')'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Vencimiento no puede ser menor que la fecha del d\00E9bito.')
,p_always_execute=>'Y'
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(137385750631507030)
,p_validation_name=>'LV_VALIDAR_SER_COMPROBANTE'
,p_validation_sequence=>20
,p_validation=>'P457_SER_COMPROBANTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'La serie del comprobante no puede ser nula.'
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(137385873022507031)
,p_validation_name=>'LV_VALIDAR_TIP_COMPROBANTE'
,p_validation_sequence=>30
,p_validation=>'P457_TIP_COMPROBANTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'El tipo del comprobante no puede ser nulo.'
,p_validation_condition=>'GUARDAR'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136521951607433216)
,p_name=>'DA_SETEAR_TIP_CAMBIO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P457_COD_MONEDA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136522092626433217)
,p_event_id=>wwv_flow_imp.id(136521951607433216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    BEGIN',
'      select tipo_cambio_dia, decimales',
'        into :P457_TIP_CAMBIO, :P457_DECIMALES',
'        from monedas',
'       where cod_moneda = :P457_COD_MONEDA;',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'    END;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P457_COD_MONEDA'
,p_attribute_03=>'P457_TIP_CAMBIO,P457_DECIMALES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136523445637433231)
,p_name=>'DA_ABRIR_REP_NC'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136523572229433232)
,p_event_id=>wwv_flow_imp.id(136523445637433231)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P457_IND_REP_NC := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P457_IND_REP_NC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136523602271433233)
,p_event_id=>wwv_flow_imp.id(136523445637433231)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136522180701433218)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136523718394433234)
,p_event_id=>wwv_flow_imp.id(136523445637433231)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136522180701433218)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136524368930433240)
,p_name=>'DA_SETEAR_DATOS_NC'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P457_ROW_ID_NC'
,p_condition_element=>'P457_ROW_ID_NC'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136524529385433242)
,p_event_id=>wwv_flow_imp.id(136524368930433240)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'        cod_sucursal,',
'        tip_comprobante,',
'        ser_comprobante,',
'        nro_comprobante,',
'        fec_debcred,',
'        cod_cliente,',
'        cod_condicion_venta,',
'        tip_factura_ref,',
'        ser_factura_ref,',
'        nro_factura_ref,',
'        cod_vendedor,',
'        cod_moneda,',
'        tip_cambio,',
'        tot_comprobante,',
'        tot_gravadas,',
'        tot_exentas,',
'        tot_iva,        ',
'        nro_habilitacion,',
'        anulado,',
'        fec_anulacion,',
'        cod_usuario,',
'        comentario,',
'        concepto,',
'        FEC_VENCIMIENTO',
'    INTO',
'        :P457_COD_SUCURSAL,',
'        :P457_TIP_COMPROBANTE,',
'        :P457_SER_COMPROBANTE,',
'        :P457_NRO_COMPROBANTE,',
'        :P457_FEC_DEBCRED,',
'        :P457_COD_CLIENTE,',
'        :P457_COD_CONDICION_VENTA,',
'        :P457_TIP_FACTURA_REF,',
'        :P457_SER_FACTURA_REF,',
'        :P457_NRO_FACTURA_REF,',
'        :P457_COD_VENDEDOR,',
'        :P457_COD_MONEDA,',
'        :P457_TIP_CAMBIO,',
'        :P457_TOTAL_PARCIAL,',
'        :P457_GRAVADAS_PARCIAL,',
'        :P457_EXENTAS_PARCIAL,',
'        :P457_IVA_PARCIAL,',
'        :P457_NRO_HABILITACION,',
'        :P457_ANULADO,',
'        :P457_FEC_ANULADO,',
'        :P457_COD_USUARIO,',
'        :P457_COMENTARIO,',
'        :P457_CONCEPTO,',
'        :P457_FEC_VENCIMIENTO  ',
'    FROM',
'        inv.cc_notas_debcred',
'    WHERE ROWID = :P457_ROW_ID_NC;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
''))
,p_attribute_02=>'P457_ROW_ID_NC'
,p_attribute_03=>'P457_FEC_VENCIMIENTO,P457_COD_SUCURSAL,P457_TIP_COMPROBANTE,P457_SER_COMPROBANTE,P457_NRO_COMPROBANTE,P457_FEC_DEBCRED,P457_COD_CLIENTE,P457_COD_CONDICION_VENTA,P457_TIP_FACTURA_REF,P457_SER_FACTURA_REF,P457_NRO_FACTURA_REF,P457_COD_VENDEDOR,P457_COD'
||'_MONEDA,P457_TIP_CAMBIO,P457_NRO_HABILITACION,P457_ANULADO,P457_FEC_ANULADO,P457_COD_USUARIO,P457_COMENTARIO,P457_CONCEPTO,P457_TOTAL_PARCIAL,P457_GRAVADAS_PARCIAL,P457_EXENTAS_PARCIAL,P457_IVA_PARCIAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137019959463058830)
,p_event_id=>wwv_flow_imp.id(136524368930433240)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P457_IND_DET_NC := ''1'';',
'',
'    CCNOTCRE.PR_CREAR_DET_DEBCRED (PI_TIP_COMPROBANTE => :P457_TIP_COMPROBANTE,',
'                                   PI_SER_COMPROBANTE => :P457_SER_COMPROBANTE,',
'                                   PI_NRO_COMPROBANTE => :P457_NRO_COMPROBANTE);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P457_TIP_COMPROBANTE,P457_SER_COMPROBANTE,P457_NRO_COMPROBANTE'
,p_attribute_03=>'P457_IND_DET_NC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137020006791058831)
,p_event_id=>wwv_flow_imp.id(136524368930433240)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136293681632726239)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136524430158433241)
,p_event_id=>wwv_flow_imp.id(136524368930433240)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136522180701433218)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137020673680058837)
,p_name=>'DA_ABRIR_BUSQ_NC_MAIN'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(137020495621058835)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137021072266058841)
,p_event_id=>wwv_flow_imp.id(137020673680058837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P457_IND_REP_NC := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P457_IND_REP_NC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137021146502058842)
,p_event_id=>wwv_flow_imp.id(137020673680058837)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136522180701433218)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137021242339058843)
,p_event_id=>wwv_flow_imp.id(137020673680058837)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136522180701433218)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137021347189058844)
,p_name=>'DA_AGREGAR_NUEVO_NC'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(137020598647058836)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137021891009058849)
,p_event_id=>wwv_flow_imp.id(137021347189058844)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFAgregar una nueva nota de cr\00E9dito?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137021466122058845)
,p_event_id=>wwv_flow_imp.id(137021347189058844)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P457_IND_REP_NC,P457_IND_DET_NC,P457_ROW_ID_NC,P457_TIP_COMPROBANTE,P457_SER_COMPROBANTE,P457_NRO_COMPROBANTE,P457_FEC_DEBCRED,P457_TIP_FACTURA_REF,P457_SER_FACTURA_REF,P457_NRO_FACTURA_REF,P457_COD_CLIENTE,P457_COD_SUCURSAL,P457_COD_CONDICION_VENTA,'
||'P457_COD_MONEDA,P457_TIP_CAMBIO,P457_COD_VENDEDOR,P457_FEC_VENCIMIENTO,P457_COMENTARIO,P457_GRAVADAS_PARCIAL,P457_EXENTAS_PARCIAL,P457_NRO_HABILITACION,P457_COD_USUARIO,P457_SUBTOTAL,P457_IVA_PARCIAL,P457_TOTAL_PARCIAL,P457_ANULADO,P457_FEC_ANULADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137021573453058846)
,p_event_id=>wwv_flow_imp.id(137021347189058844)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN    ',
'    :P457_COD_SUCURSAL := :P_COD_SUCURSAL;',
'    :P457_COD_USUARIO:= :APP_USER;',
'    :P457_TIP_COMPROBANTE := :P457_V_TIP_COMPROBANTE;',
'    :P457_FEC_DEBCRED := sysdate;',
'    :P457_CONCEPTO:= ''C'';',
'    :P457_GRAVADAS_PARCIAL := 0;',
'    :P457_EXENTAS_PARCIAL := 0;',
'    :P457_IVA_PARCIAL := 0;',
'    :P457_TOTAL_PARCIAL := 0;',
'    :P457_SUBTOTAL := 0;',
'    :P457_FEC_VENCIMIENTO := sysdate;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P457_V_TIP_COMPROBANTE'
,p_attribute_03=>'P457_COD_SUCURSAL,P457_COD_USUARIO,P457_TIP_COMPROBANTE,P457_FEC_DEBCRED,P457_CONCEPTO,P457_GRAVADAS_PARCIAL,P457_EXENTAS_PARCIAL,P457_IVA_PARCIAL,P457_TOTAL_PARCIAL,P457_SUBTOTAL,P457_FEC_VENCIMIENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137021799021058848)
,p_event_id=>wwv_flow_imp.id(137021347189058844)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136293681632726239)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137021907513058850)
,p_name=>'DA_VALIDAR_SERIE'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P457_SER_COMPROBANTE'
,p_condition_element=>'P457_SER_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137382851532507001)
,p_event_id=>wwv_flow_imp.id(137021907513058850)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DECLARE',
'      i NUMBER;',
'      s VARCHAR2(1);',
'    BEGIN',
'      select ser_comprobante',
'        into s',
'        from series_comprob',
'       where cod_empresa = :P_COD_EMPRESA',
'         and tip_comprobante = :P457_TIP_COMPROBANTE',
'         and ser_comprobante = :P457_SER_COMPROBANTE;',
'    EXCEPTION',
'      WHEN no_data_found THEN',
'        :P457_ALERT := ''No se encuentra serie de comprobante. ''||sqlerrm;',
'      WHEN OTHERS THEN',
'        :P457_ALERT := ''Error en la tabla de Series de Comprobantes ''||sqlerrm;',
'        APEX_DEBUG.ERROR(''Error en la tabla de Series de Comprobantes ''||sqlerrm);',
'    END;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P457_TIP_COMPROBANTE,P457_SER_COMPROBANTE'
,p_attribute_03=>'P457_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137383077134507003)
,p_event_id=>wwv_flow_imp.id(137021907513058850)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P457_ALERT.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P457_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137383407223507007)
,p_name=>'DA_AGREGAR_NC_MAIN'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(137383386409507006)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137383609138507009)
,p_event_id=>wwv_flow_imp.id(137383407223507007)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFAgregar una nueva nota de cr\00E9dito?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137383772527507010)
,p_event_id=>wwv_flow_imp.id(137383407223507007)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P457_IND_REP_NC,P457_IND_DET_NC,P457_ROW_ID_NC,P457_TIP_COMPROBANTE,P457_SER_COMPROBANTE,P457_NRO_COMPROBANTE,P457_FEC_DEBCRED,P457_TIP_FACTURA_REF,P457_SER_FACTURA_REF,P457_NRO_FACTURA_REF,P457_COD_CLIENTE,P457_COD_SUCURSAL,P457_COD_CONDICION_VENTA,'
||'P457_COD_MONEDA,P457_TIP_CAMBIO,P457_COD_VENDEDOR,P457_FEC_VENCIMIENTO,P457_COMENTARIO,P457_GRAVADAS_PARCIAL,P457_EXENTAS_PARCIAL,P457_NRO_HABILITACION,P457_COD_USUARIO,P457_SUBTOTAL,P457_IVA_PARCIAL,P457_TOTAL_PARCIAL,P457_ANULADO,P457_FEC_ANULADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137383899597507011)
,p_event_id=>wwv_flow_imp.id(137383407223507007)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN    ',
'    :P457_COD_SUCURSAL := :P_COD_SUCURSAL;',
'    :P457_COD_USUARIO:= :APP_USER;',
'    :P457_TIP_COMPROBANTE := :P457_V_TIP_COMPROBANTE;',
'    :P457_FEC_DEBCRED := sysdate;',
'    :P457_CONCEPTO:= ''C'';',
'    :P457_GRAVADAS_PARCIAL := 0;',
'    :P457_EXENTAS_PARCIAL := 0;',
'    :P457_IVA_PARCIAL := 0;',
'    :P457_TOTAL_PARCIAL := 0;',
'    :P457_SUBTOTAL := 0;',
'    :P457_FEC_VENCIMIENTO := sysdate;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P457_V_TIP_COMPROBANTE'
,p_attribute_03=>'P457_COD_SUCURSAL,P457_COD_USUARIO,P457_TIP_COMPROBANTE,P457_FEC_DEBCRED,P457_CONCEPTO,P457_GRAVADAS_PARCIAL,P457_EXENTAS_PARCIAL,P457_IVA_PARCIAL,P457_TOTAL_PARCIAL,P457_SUBTOTAL,P457_FEC_VENCIMIENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137383959496507012)
,p_event_id=>wwv_flow_imp.id(137383407223507007)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136293681632726239)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137383576999507008)
,p_event_id=>wwv_flow_imp.id(137383407223507007)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136522180701433218)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137384202544507015)
,p_name=>'DA_ABRIR_DETALLE'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(137020160872058832)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137385943613507032)
,p_event_id=>wwv_flow_imp.id(137384202544507015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P457_SUB_TIPO_TRANS_CR_ED P457_TIP_COMP_REF_CR_ED P457_SER_COMP_REF_CR_ED P457_NRO_COMP_REF_CR_ED P457_PRECIO_UNITARIO_CR_ED P457_TOTAL_IVA_CR_ED P457_MONTO_TOTAL_CR_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137386832369507041)
,p_event_id=>wwv_flow_imp.id(137384202544507015)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(137386399799507036)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137386931537507042)
,p_event_id=>wwv_flow_imp.id(137384202544507015)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(137386454135507037)
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
 p_id=>wwv_flow_imp.id(137386087609507033)
,p_event_id=>wwv_flow_imp.id(137384202544507015)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P457_CANTIDAD_CR_ED := ''1'';',
'    :P457_TIPO_TRANS_CR_ED := :P457_TIPO_TRANS;',
'    :P457_SUB_TIPO_TRANS_CR_ED := :P457_SUB_TIPO_TRANS;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P457_TIPO_TRANS,P457_SUB_TIPO_TRANS'
,p_attribute_03=>'P457_CANTIDAD_CR_ED ,P457_TIPO_TRANS_CR_ED,P457_SUB_TIPO_TRANS_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137384317140507016)
,p_event_id=>wwv_flow_imp.id(137384202544507015)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(137384006896507013)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137385040790507023)
,p_name=>'DA_GUARDAR_CAMBIOS'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(137020338021058834)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137385169808507024)
,p_event_id=>wwv_flow_imp.id(137385040790507023)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar los cambios?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137385285840507025)
,p_event_id=>wwv_flow_imp.id(137385040790507023)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137385573669507028)
,p_name=>'DA_SETEAR_FEC_ANU'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P457_ANULADO'
,p_condition_element=>'P457_ANULADO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137385669080507029)
,p_event_id=>wwv_flow_imp.id(137385573669507028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P457_ANULADO = ''S'' THEN',
'        :P457_FEC_ANULADO := sysdate;',
'    ELSE',
'        :P457_FEC_ANULADO := NULL;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P457_ANULADO'
,p_attribute_03=>'P457_FEC_ANULADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137386646511507039)
,p_name=>'DA_CERRAR_DETALLE_CR_ED'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(137386562853507038)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137386724717507040)
,p_event_id=>wwv_flow_imp.id(137386646511507039)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(137384006896507013)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137387095857507043)
,p_name=>'DA_CALCULOS_CR_ED'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P457_PRECIO_UNITARIO_CR_ED'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137387179675507044)
,p_event_id=>wwv_flow_imp.id(137387095857507043)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'NULL;',
'-- LLAMAR CALCULOS'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140577882854633926)
,p_name=>'DA_GUARDAR_DET_COL'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(137386399799507036)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140577981313633927)
,p_event_id=>wwv_flow_imp.id(140577882854633926)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CCNOTCRE.PR_AGREGAR_COL_DETALLE (PI_TIP_COMPROBANTE => :P457_TIP_COMPROBANTE,',
'                                     PI_SER_COMPROBANTE => :P457_SER_COMPROBANTE,',
'                                     PI_NRO_COMPROBANTE => :P457_NRO_COMPROBANTE,',
'                                     PI_COD_SUCURSAL => :P457_COD_SUCURSAL,    ',
'                                     PI_TIPO_TRANS => :P457_TIPO_TRANS_CR_ED,',
'                                     PI_SUB_TIPO_TRANS => :P457_SUB_TIPO_TRANS_CR_ED,',
'                                     PI_TIP_COMP_REF => :P457_TIP_COMP_REF_CR_ED,',
'                                     PI_SER_COMP_REF => :P457_SER_COMP_REF_CR_ED,',
'                                     PI_NRO_COMP_REF => :P457_NRO_COMP_REF_CR_ED,',
'                                     PI_PRECIO_UNITARIO => :P457_PRECIO_UNITARIO_CR_ED,',
'                                     PI_CANTIDAD => :P457_CANTIDAD_CR_ED,',
'                                     PI_TOTAL_IVA => :P457_TOTAL_IVA_CR_ED,',
'                                     PI_MONTO_TOTAL => :P457_MONTO_TOTAL_CR_ED,                                      ',
'                                     PO_IVA_PARCIAL => :P457_IVA_PARCIAL,',
'                                     PO_SUB_TOTAL => :P457_SUBTOTAL,',
'                                     PO_EXENTAS_PARCIAL => :P457_EXENTAS_PARCIAL,',
'                                     PO_GRAVADAS_PARCIAL => :P457_GRAVADAS_PARCIAL,',
'                                     PO_TOTAL_PARCIAL => :P457_TOTAL_PARCIAL);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_GUARDAR_DET_COL ''||SQLERRM);',
'END;',
'',
'',
' '))
,p_attribute_02=>'P457_TIP_COMPROBANTE,P457_SER_COMPROBANTE,P457_NRO_COMPROBANTE,P457_COD_SUCURSAL,P457_TIPO_TRANS_CR_ED,P457_SUB_TIPO_TRANS_CR_ED,P457_TIP_COMP_REF_CR_ED,P457_SER_COMP_REF_CR_ED,P457_NRO_COMP_REF_CR_ED,P457_PRECIO_UNITARIO_CR_ED,P457_CANTIDAD_CR_ED,P4'
||'57_TOTAL_IVA_CR_ED,P457_MONTO_TOTAL_CR_ED'
,p_attribute_03=>'P457_IVA_PARCIAL,P457_SUBTOTAL,P457_EXENTAS_PARCIAL,P457_GRAVADAS_PARCIAL,P457_TOTAL_PARCIAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140578035850633928)
,p_event_id=>wwv_flow_imp.id(140577882854633926)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136293681632726239)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140578163437633929)
,p_event_id=>wwv_flow_imp.id(140577882854633926)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(137384006896507013)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140578930150633937)
,p_name=>'DA_ABRIR_DET_ED'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P457_SEQ_ID_DET_ED'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140579383131633941)
,p_event_id=>wwv_flow_imp.id(140578930150633937)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'            C005,',
'            C006,',
'            C008,',
'            C009,',
'            N005,            ',
'            N003,',
'            N002',
'    INTO',
'        :P457_TIPO_TRANS_CR_ED,',
'        :P457_SUB_TIPO_TRANS_CR_ED,',
'        :P457_TIP_COMP_REF_CR_ED,',
'        :P457_SER_COMP_REF_CR_ED,',
'        :P457_NRO_COMP_REF_CR_ED,',
'        :P457_PRECIO_UNITARIO_CR_ED,',
'        :P457_CANTIDAD_CR_ED',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''DET_DEBCRED''',
'    AND SEQ_ID = :P457_SEQ_ID_DET_ED;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P457_SEQ_ID_DET_ED'
,p_attribute_03=>'P457_TIPO_TRANS_CR_ED,P457_SUB_TIPO_TRANS_CR_ED,P457_TIP_COMP_REF_CR_ED,P457_SER_COMP_REF_CR_ED,P457_NRO_COMP_REF_CR_ED,P457_PRECIO_UNITARIO_CR_ED,P457_CANTIDAD_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140579040890633938)
,p_event_id=>wwv_flow_imp.id(140578930150633937)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(137386454135507037)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140579178792633939)
,p_event_id=>wwv_flow_imp.id(140578930150633937)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(137386399799507036)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140579271426633940)
,p_event_id=>wwv_flow_imp.id(140578930150633937)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(137384006896507013)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140579496161633942)
,p_name=>'DA_EDITAR_COL_DET'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(137386454135507037)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140579532065633943)
,p_event_id=>wwv_flow_imp.id(140579496161633942)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'ADSADA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(141778238170980237)
,p_name=>'DA_ELIMINAR_DET'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P457_SEQ_ID_DET_EL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141778378624980238)
,p_event_id=>wwv_flow_imp.id(141778238170980237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141778440460980239)
,p_event_id=>wwv_flow_imp.id(141778238170980237)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CCNOTCRE.PR_ELIMINAR_COL_DETALLE (SEQ_ID_ELIMINAR => :P457_SEQ_ID_DET_EL,',
'                                      PO_IVA_PARCIAL => :P457_IVA_PARCIAL,',
'                                      PI_TOTAL_IVA => :P457_TOTAL_IVA_CR_ED,                                       ',
'                                      PO_SUB_TOTAL => :P457_SUBTOTAL,',
'                                      PO_GRAVADAS_PARCIAL => :P457_GRAVADAS_PARCIAL,                                       ',
'                                      PO_EXENTAS_PARCIAL => :P457_EXENTAS_PARCIAL,                                       ',
'                                      PO_TOTAL_PARCIAL => :P457_TOTAL_PARCIAL);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
'',
'',
'',
''))
,p_attribute_02=>'P457_SEQ_ID_DET_EL,P457_TOTAL_IVA_CR_ED'
,p_attribute_03=>'P457_IVA_PARCIAL,P457_SUBTOTAL,P457_GRAVADAS_PARCIAL,P457_EXENTAS_PARCIAL,P457_TOTAL_PARCIAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(141778547920980240)
,p_event_id=>wwv_flow_imp.id(141778238170980237)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136293681632726239)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(136522266333433219)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_CAMPOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(136521615892433213)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P457_COD_MODULO := ''CC'' ;',
'    :P457_TIPO_TRANS :=BS_busca_parametro( :P457_COD_MODULO, ''CONCEPTO_NOTACRE'' );',
'    :P457_V_SER_COMPROBANTE := BS_busca_parametro( :P457_COD_MODULO, ''SERIE_NOTACRE_DC'' );',
'    :P457_V_TIP_COMPROBANTE := BS_busca_parametro( :P457_COD_MODULO, ''TIPO_NOTACRE_DC'' );',
'    :P457_SUB_TIPO_TRANS := BS_busca_parametro( :P457_COD_MODULO, ''SUB_TIPO_CRE'' );',
'    -------------------------------------------------------------------------    ',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION (P_COLLECTION_NAME => ''DET_DEBCRED'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(137385373361507026)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUADAR_CAMBIOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    CCNOTCRE.PR_GUARDAR_CABECERA_BD (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                     PI_TIP_COMPROBANTE => :P457_TIP_COMPROBANTE,',
'                                     PI_SER_COMPROBANTE => :P457_SER_COMPROBANTE,',
'                                     PI_NRO_COMPROBANTE => :P457_NRO_COMPROBANTE,',
'                                     PI_FEC_DEBCRED => :P457_FEC_DEBCRED,',
'                                     PI_TIP_FACTURA_REF => :P457_TIP_FACTURA_REF,',
'                                     PI_SER_FACTURA_REF => :P457_SER_FACTURA_REF,',
'                                     PI_NRO_FACTURA_REF => :P457_NRO_FACTURA_REF,',
'                                     PI_COD_CLIENTE => :P457_COD_CLIENTE,',
'                                     PI_COD_SUCURSAL => :P457_COD_SUCURSAL,',
'                                     PI_COD_CONDICION_VENTA => :P457_COD_CONDICION_VENTA,',
'                                     PI_COD_MONEDA => :P457_COD_MONEDA,',
'                                     PI_TIP_CAMBIO => :P457_TIP_CAMBIO,',
'                                     PI_COD_VENDEDOR => :P457_COD_VENDEDOR,',
'                                     PI_FEC_VENCIMIENTO => :P457_FEC_VENCIMIENTO,',
'                                     PI_COMENTARIO => :P457_COMENTARIO,',
'                                     PI_GRAVADAS_PARCIAL => :P457_GRAVADAS_PARCIAL,',
'                                     PI_EXENTAS_PARCIAL => :P457_EXENTAS_PARCIAL,',
'                                     PI_NRO_HABILITACION => :P457_NRO_HABILITACION,',
'                                     PI_COD_USUARIO => :P457_COD_USUARIO,',
'                                     PI_SUBTOTAL => :P457_SUBTOTAL,',
'                                     PI_IVA_PARCIAL => :P457_IVA_PARCIAL,',
'                                     PI_TOTAL_PARCIAL => :P457_TOTAL_PARCIAL,',
'                                     PI_ANULADO => :P457_ANULADO,',
'                                     PI_FEC_ANULADO => :P457_FEC_ANULADO,',
'                                     PI_CONCEPTO => :P457_CONCEPTO); ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Ha ocurrido un error.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GUARDAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Datos guardados exitosamente.'
);
wwv_flow_imp.component_end;
end;
/
