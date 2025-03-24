prompt --application/pages/page_00409
begin
--   Manifest
--     PAGE: 00409
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
 p_id=>409
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Planilla de Retiro de Mercader\00EDas - RPPLARET')
,p_alias=>'RPPLARET'
,p_step_title=>unistr('Planilla de Retiro de Mercader\00EDas - RPPLARET')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20250115142043'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121624002779550638)
,p_plug_name=>'CA_PLANIL'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(40132096801263663)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121624161106550639)
,p_plug_name=>'Retiro'
,p_parent_plug_id=>wwv_flow_imp.id(121624002779550638)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121624532887550643)
,p_plug_name=>'TOP'
,p_parent_plug_id=>wwv_flow_imp.id(121624161106550639)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121624879546550646)
,p_plug_name=>'TOP_IZQ'
,p_parent_plug_id=>wwv_flow_imp.id(121624532887550643)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(122517647142135206)
,p_plug_name=>'TOP_CHECKBOX'
,p_parent_plug_id=>wwv_flow_imp.id(121624879546550646)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>130
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(122518232754135212)
,p_plug_name=>'Enviado Cliente'
,p_parent_plug_id=>wwv_flow_imp.id(121624879546550646)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>140
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(122518548737135215)
,p_plug_name=>unistr('Buscar Garant\00EDa')
,p_parent_plug_id=>wwv_flow_imp.id(121624879546550646)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>150
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(123282584760246828)
,p_plug_name=>'BUSCAR GARANTIA'
,p_parent_plug_id=>wwv_flow_imp.id(122518548737135215)
,p_region_css_classes=>'js-dialog-size1200x580'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(123280964363246812)
,p_plug_name=>'REPORTE GARANTIA'
,p_parent_plug_id=>wwv_flow_imp.id(123282584760246828)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NULL SELECCIONAR,',
'       COD_ARTICULO, ',
'       CANTIDAD, ',
'       FACTURA,',
'       GARANTIA,',
'       SERIE,',
'       FEC_COMPRA,',
'       SER_OT,',
'       TIP_OT,',
'       NRO_OT,',
'       ROWID ROW_ID_ARTICULO',
'FROM RP_RETIRO_DETALLE',
'WHERE (GARANTIA = :P409_GARANTIA OR :P409_GARANTIA IS NULL)',
'AND COD_EMPRESA = V(''P_COD_EMPRESA'')',
'AND :P409_INDICADOR_REP_GARANTIA = ''1'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P409_GARANTIA_BUSQ,P409_INDICADOR_REP_GARANTIA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE GARANTIA'
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
 p_id=>wwv_flow_imp.id(123281005733246813)
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
,p_internal_uid=>123281005733246813
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(123281169126246814)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seleccionar'
,p_column_link=>'javascript:$s(''P409_ROW_ID_SELEC_ARTICULO'',''#ROW_ID_ARTICULO#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(123281212030246815)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(123281346264246816)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(123281439193246817)
,p_db_column_name=>'FACTURA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Factura'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(123281529368246818)
,p_db_column_name=>'GARANTIA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Garantia'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(123281676969246819)
,p_db_column_name=>'SERIE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(123281770656246820)
,p_db_column_name=>'FEC_COMPRA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fec Compra'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(123281867336246821)
,p_db_column_name=>'SER_OT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Ser Ot'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(123281925355246822)
,p_db_column_name=>'TIP_OT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Tip Ot'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(123282091610246823)
,p_db_column_name=>'NRO_OT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Nro Ot'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(123282956392246832)
,p_db_column_name=>'ROW_ID_ARTICULO'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Row Id Articulo'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(123320016983698813)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1233201'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECCIONAR:COD_ARTICULO:CANTIDAD:FACTURA:GARANTIA:SERIE:FEC_COMPRA:SER_OT:TIP_OT:NRO_OT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121624985517550647)
,p_plug_name=>'TOP_DER'
,p_parent_plug_id=>wwv_flow_imp.id(121624532887550643)
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
 p_id=>wwv_flow_imp.id(121624679979550644)
,p_plug_name=>'MID'
,p_parent_plug_id=>wwv_flow_imp.id(121624161106550639)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(122691386685441103)
,p_plug_name=>'B_DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(121624679979550644)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    seq_id SEQ_ID_ARTICULO,',
'    C001 COD_ARTICULO,',
'    C002 DETALLE_ARTICULO,',
'    C003 CANTIDAD, ',
'    C004 FACTURA,',
'    C005 GARANTIA,',
'    C006 SERIE,',
'    D001 FEC_COMPRA,',
'    C007 SER_OT,',
'    C008 TIP_OT,',
'    N001 NRO_OT,',
'    C020 ROW_ID,',
'    NULL EDITAR,',
'    NULL ELIMINAR,',
'    NULL ORDEN_TRABAJO',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''ARTICULOS''',
'AND :P409_INDICADOR_ART_PLANTILLA = ''1''',
'AND nvl(c021, ''O'') <> ''B'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P409_INDICADOR_ART_PLANTILLA'
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
 p_id=>wwv_flow_imp.id(122692008771441110)
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
,p_internal_uid=>122692008771441110
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122692131343441111)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122692294553441112)
,p_db_column_name=>'DETALLE_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Detalle Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122692368109441113)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122692409916441114)
,p_db_column_name=>'FACTURA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Factura'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122692551079441115)
,p_db_column_name=>'GARANTIA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Garantia'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122692680709441116)
,p_db_column_name=>'SERIE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122692729898441117)
,p_db_column_name=>'FEC_COMPRA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fec Compra'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122692828852441118)
,p_db_column_name=>'SER_OT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Ser Ot'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122692989005441119)
,p_db_column_name=>'TIP_OT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Tip Ot'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122693009681441120)
,p_db_column_name=>'NRO_OT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Nro Ot'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122693159313441121)
,p_db_column_name=>'ROW_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122693275671441122)
,p_db_column_name=>'EDITAR'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P409_SEQ_ID_ART_ED'',''#SEQ_ID_ARTICULO#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122693385851441123)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P409_SEQ_ID_BORRAR_ARTICULO'',''#SEQ_ID_ARTICULO#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122693492886441124)
,p_db_column_name=>'ORDEN_TRABAJO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Orden Trabajo'
,p_column_link=>'javascript:$s(''P409_SEQ_ID_ART_CAORDTRA'',''#SEQ_ID_ARTICULO#'');'
,p_column_linktext=>'<span class="fa fa-file-archive-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(123280831118246811)
,p_db_column_name=>'SEQ_ID_ARTICULO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Seq Id Articulo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(122733337239746705)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1227334'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ARTICULO:DETALLE_ARTICULO:CANTIDAD:FACTURA:GARANTIA:SERIE:FEC_COMPRA:SER_OT:TIP_OT:NRO_OT:ROW_ID:EDITAR:ELIMINAR:ORDEN_TRABAJO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(122693889049441128)
,p_plug_name=>'CREAR/EDITAR ARTICULO'
,p_parent_plug_id=>wwv_flow_imp.id(121624679979550644)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121624777299550645)
,p_plug_name=>'BOTTOM'
,p_parent_plug_id=>wwv_flow_imp.id(121624161106550639)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(123125974251526804)
,p_plug_name=>'BOTTOM_IZQ'
,p_parent_plug_id=>wwv_flow_imp.id(121624777299550645)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(123126206500526807)
,p_plug_name=>'Datos administrativos'
,p_parent_plug_id=>wwv_flow_imp.id(121624777299550645)
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
 p_id=>wwv_flow_imp.id(121624213535550640)
,p_plug_name=>'Seguimiento'
,p_parent_plug_id=>wwv_flow_imp.id(121624002779550638)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C001',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''SEGUIMIENTO_PLANILLA''',
'AND :P409_INDICADOR_SEG_PLANTILLA = ''1'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Seguimiento'
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
 p_id=>wwv_flow_imp.id(122566617106834827)
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
,p_internal_uid=>122566617106834827
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122566743465834828)
,p_db_column_name=>'C001'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(122684369322364030)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1226844'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'C001'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(122519529955135225)
,p_plug_name=>'BUSCAR PLANILLA'
,p_region_css_classes=>'js-dialog-size1200x580'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1040
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(122520477801135234)
,p_plug_name=>'FILTROS'
,p_parent_plug_id=>wwv_flow_imp.id(122519529955135225)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>140
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(122520503133135235)
,p_plug_name=>'RESULTADO BUSQUEDA'
,p_parent_plug_id=>wwv_flow_imp.id(122519529955135225)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>150
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'       TIPO,',
'       SER_COMPROBANTE, ',
'       NRO_PLANILLA,',
'       FEC_PLANILLA,',
'       NRO_OT,',
'       SER_OT,',
'       ROWID ROW_ID_PLANILLA,',
'       NULL SELECCIONAR',
'',
'FROM RP_Retiro_CABECERA rt',
'WHERE cod_empresa = NVL(:P_COD_EMPRESA, 1)',
'AND (nro_planilla = :P409_NRO_PLANILLA_BUSQ or :P409_NRO_PLANILLA_BUSQ is null)',
'/*AND nro_planilla in (select  rd.nro_planilla',
'                        from rp_retiro_detalle rd',
'                        where rd.cod_empresa = rt.cod_empresa',
'                        and rd.nro_planilla= rt.nro_planilla)*/',
'AND (TIPO = :P409_TIPO_BUSQ OR :P409_TIPO_BUSQ IS NULL)',
'AND (SER_COMPROBANTE = :P409_SER_COMPROBANTE_BUSQ OR :P409_SER_COMPROBANTE_BUSQ IS NULL)',
'AND (NRO_PLANILLA = :P409_NRO_PLANILLA_BUSQ OR :P409_NRO_PLANILLA_BUSQ IS NULL)',
'AND (FEC_PLANILLA >= TO_DATE(:P409_FEC_PLAN_DESDE_BUSQ, ''DD/MM/YYYY'') OR :P409_FEC_PLAN_DESDE_BUSQ IS NULL)',
'AND (FEC_PLANILLA <= TO_DATE(:P409_FEC_PLAN_HASTA_BUSQ, ''DD/MM/YYYY'') OR :P409_FEC_PLAN_HASTA_BUSQ IS NULL)',
'AND (NRO_OT = :P409_NRO_OT_BUSQ OR :P409_NRO_OT_BUSQ IS NULL)',
'AND (SER_OT = :P409_SER_OT_BUSQ OR :P409_SER_OT_BUSQ IS NULL)',
'AND (COD_CLIENTE = :P409_COD_CLIENTE_BUSQ OR :P409_COD_CLIENTE_BUSQ IS NULL)',
'AND :P409_INDICADOR_REP_PLANTILLA = ''1''',
'--',
'AND EXISTS',
' (SELECT ''1'' ',
'            FROM rp_retiro_detalle rd',
'            WHERE rd.cod_empresa = rt.cod_empresa',
'            AND rd.nro_planilla = rt.nro_planilla',
'            AND (rd.garantia = :P409_GARANTIA_BUSQ OR :P409_GARANTIA_BUSQ IS NULL))',
'--',
'ORDER BY NRO_PLANILLA;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P409_TIPO_BUSQ,SER_COMPROBANTE,P409_NRO_PLANILLA_BUSQ,P409_NRO_OT_BUSQ,P409_SER_OT_BUSQ,P409_INDICADOR_REP_PLANTILLA,P409_FEC_PLAN_HASTA_BUSQ,P409_FEC_PLAN_DESDE_BUSQ,P409_COD_CLIENTE_BUSQ,P409_GARANTIA_BUSQ'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'RESULTADO BUSQUEDA'
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
 p_id=>wwv_flow_imp.id(122521347937135243)
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
,p_internal_uid=>122521347937135243
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122521645060135246)
,p_db_column_name=>'TIPO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122521769978135247)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122521858622135248)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Planilla'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122521983887135249)
,p_db_column_name=>'FEC_PLANILLA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fec Planilla'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122522066089135250)
,p_db_column_name=>'NRO_OT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nro Ot'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122564042874834801)
,p_db_column_name=>'SER_OT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Ser Ot'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122564467366834805)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Seleccionar'
,p_column_link=>'javascript:$s(''P409_ROW_ID_SELEC_PLANILLA'',''#ROW_ID_PLANILLA#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122564582071834806)
,p_db_column_name=>'ROW_ID_PLANILLA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Row Id Planilla'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(122575967799852339)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1225760'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECCIONAR:TIPO:SER_COMPROBANTE:NRO_PLANILLA:FEC_PLANILLA:NRO_OT:SER_OT:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(122521491327135244)
,p_plug_name=>'INDICADORES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(122564613985834807)
,p_plug_name=>'SEQ ROW ID'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(122566023084834821)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(123128910894526834)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(122518693258135216)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(122518548737135215)
,p_button_name=>'BTN_BUSCAR_GARANTIA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Buscar Garant\00EDa')
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(122519162362135221)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(121624879546550646)
,p_button_name=>'BTN_BUSCAR_PLANILLA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar Planilla'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'Y'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(122568538568834846)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_imp.id(121624985517550647)
,p_button_name=>'BTN_REENVIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reenviar Correo'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(122520772591135237)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(122520477801135234)
,p_button_name=>'BTN_BUSQUEDA_PLANILLA'
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
 p_id=>wwv_flow_imp.id(122520654201135236)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(122520477801135234)
,p_button_name=>'BTN_LIMPIAR_CAMPOS_BUSQUEDA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(122691485146441104)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(123125974251526804)
,p_button_name=>'BTN_INSERTA_SEGUIMIENTO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Carga en Seguimiento'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(123349007180114137)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(122693889049441128)
,p_button_name=>'BTN_CERRAR_CR_ED_ART'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(123349810192114145)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(122693889049441128)
,p_button_name=>'BTN_ACEPTAR_CR_ARTICULO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(123349905844114146)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(122693889049441128)
,p_button_name=>'BTN_ACEPTAR_ED_ARTICULO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(123129665047526841)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(122519529955135225)
,p_button_name=>'BTN_CREAR_PLANILLA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Planilla'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(123280027004246803)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(122691386685441103)
,p_button_name=>'BTN_AGREGAR_ARTICULO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Articulo'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(123346914035114116)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(121624161106550639)
,p_button_name=>'BTN_LIMPIAR_CAMPOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(123128310371526828)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(121624161106550639)
,p_button_name=>'BTN_GUARDAR_CAMBIOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Cambios'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(627199700135991320)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(121624161106550639)
,p_button_name=>'BTN_IMPRIMIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121625069269550648)
,p_name=>'P409_TIPO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(121624879546550646)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:Servicio T\00E9cnico;STA,Deposito;DP')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121625139094550649)
,p_name=>'P409_SER_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(121624879546550646)
,p_prompt=>'Serie'
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
 p_id=>wwv_flow_imp.id(121625229816550650)
,p_name=>'P409_NRO_PLANILLA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(121624879546550646)
,p_prompt=>unistr('N\00FAmero')
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
 p_id=>wwv_flow_imp.id(122517131957135201)
,p_name=>'P409_SER_OT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(121624879546550646)
,p_prompt=>'Serie OT'
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
 p_id=>wwv_flow_imp.id(122517228674135202)
,p_name=>'P409_NRO_OT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(121624879546550646)
,p_prompt=>unistr('N\00FAmero OT')
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
 p_id=>wwv_flow_imp.id(122517389590135203)
,p_name=>'P409_IND_RECIBIDO_OG_CDE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(122517647142135206)
,p_prompt=>'Ind Recibido NGO CDE'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122517456495135204)
,p_name=>'P409_IND_RECIBIDO_OG_OVIEDO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(122517647142135206)
,p_prompt=>'Ind Recibido NGO OVIEDO'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122517531291135205)
,p_name=>'P409_IND_RECIBIDO_LOG'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(122517647142135206)
,p_prompt=>'Ind Recibido NGO CDSL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122517783151135207)
,p_name=>'P409_IND_RETIRADO_TALLER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(122517647142135206)
,p_prompt=>'Post Venta NGO'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122517874512135208)
,p_name=>'P409_FEC_RECIBIDO_OG_CDE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(122517647142135206)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(122517904566135209)
,p_name=>'P409_FEC_RECIBIDO_OG_OVIEDO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(122517647142135206)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(122518081144135210)
,p_name=>'P409_FEC_RECIBIDO_LOG'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(122517647142135206)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(122518113706135211)
,p_name=>'P409_FEC_RETIRADO_TALLER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(122517647142135206)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(122518307431135213)
,p_name=>'P409_IND_ENVIADO_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(122518232754135212)
,p_prompt=>'Confirma'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122518450744135214)
,p_name=>'P409_FEC_ENVIADO_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(122518232754135212)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(122518760201135217)
,p_name=>'P409_GARANTIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(122518548737135215)
,p_prompt=>unistr('Garant\00EDa')
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
 p_id=>wwv_flow_imp.id(122519029850135220)
,p_name=>'P409_FEC_PLANILLA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(121624879546550646)
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
 p_id=>wwv_flow_imp.id(122519609683135226)
,p_name=>'P409_TIPO_BUSQ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(122520477801135234)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:Servicio T\00E9cnico;STA,Deposito;DP')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122519703602135227)
,p_name=>'P409_SER_COMPROBANTE_BUSQ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(122520477801135234)
,p_prompt=>'Serie'
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
 p_id=>wwv_flow_imp.id(122519890687135228)
,p_name=>'P409_NRO_PLANILLA_BUSQ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(122520477801135234)
,p_prompt=>unistr('N\00FAmero')
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
 p_id=>wwv_flow_imp.id(122519928383135229)
,p_name=>'P409_FEC_PLAN_DESDE_BUSQ'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(122520477801135234)
,p_prompt=>'Fecha desde'
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
 p_id=>wwv_flow_imp.id(122520031025135230)
,p_name=>'P409_SER_OT_BUSQ'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(122520477801135234)
,p_prompt=>'Serie OT'
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
 p_id=>wwv_flow_imp.id(122520163896135231)
,p_name=>'P409_NRO_OT_BUSQ'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(122520477801135234)
,p_prompt=>unistr('N\00FAmero OT')
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
 p_id=>wwv_flow_imp.id(122520238500135232)
,p_name=>'P409_COD_CLIENTE_BUSQ'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(122520477801135234)
,p_prompt=>unistr('C\00F3digo Cliente')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.cod_cliente || '' - '' || ltrim( nvl(p.nombre, p.nomb_fantasia)) D, ',
'       c.cod_cliente R ',
'from cc_clientes c, personas p ',
'where c.cod_empresa = :P_COD_EMPRESA ',
'and c.cod_persona = p.cod_persona ',
'order by lpad( c.cod_cliente, 15, '' '' )'))
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
 p_id=>wwv_flow_imp.id(122521526593135245)
,p_name=>'P409_INDICADOR_REP_PLANTILLA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(122521491327135244)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122564770505834808)
,p_name=>'P409_ROW_ID_SELEC_PLANILLA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(122564613985834807)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122566168630834822)
,p_name=>'P409_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(122566023084834821)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122566255617834823)
,p_name=>'P409_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(121624985517550647)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.cod_cliente || '' - '' || ltrim( nvl(p.nombre, p.nomb_fantasia)) D, ',
'       c.cod_cliente R ',
'from cc_clientes c, personas p ',
'where c.cod_empresa = :P_COD_EMPRESA ',
'and c.cod_persona = p.cod_persona ',
'order by lpad( c.cod_cliente, 15, '' '' )'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122566359927834824)
,p_name=>'P409_NOM_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(121624985517550647)
,p_prompt=>'Nombre Cliente'
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
 p_id=>wwv_flow_imp.id(122566471694834825)
,p_name=>'P409_COD_PAIS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(121624985517550647)
,p_prompt=>unistr('Pa\00EDs ')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_pais || '' - '' || descripcion D, cod_pais R ',
'from paises ',
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
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122566829098834829)
,p_name=>'P409_INDICADOR_SEG_PLANTILLA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(122521491327135244)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122566906212834830)
,p_name=>'P409_COD_PROVINCIA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(121624985517550647)
,p_prompt=>'Provincia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_provincia || '' - '' || descripcion D, cod_provincia R ',
'from provincias ',
'where cod_pais = :P409_COD_PAIS',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P409_COD_PAIS'
,p_ajax_items_to_submit=>'P409_COD_PAIS'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(122567176382834832)
,p_name=>'P409_COD_CIUDAD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(121624985517550647)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_ciudad ',
'from ciudades ',
'where cod_pais = :P409_COD_PAIS',
'and cod_provincia = :P409_COD_PROVINCIA',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P409_COD_PAIS,P409_COD_PROVINCIA'
,p_ajax_items_to_submit=>'P409_COD_PAIS,P409_COD_PROVINCIA'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(122567300256834834)
,p_name=>'P409_RUC'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(121624985517550647)
,p_prompt=>'RUC/CI'
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
 p_id=>wwv_flow_imp.id(122567425731834835)
,p_name=>'P409_DIRECCION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(121624985517550647)
,p_prompt=>unistr('Direcci\00F3n')
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
 p_id=>wwv_flow_imp.id(122567539981834836)
,p_name=>'P409_COD_VENDEDOR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(121624985517550647)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.cod_vendedor || '' - '' || ltrim( nvl( p.nombre, p.nomb_fantasia ) ) D,',
'       v.cod_vendedor R',
'from fv_vendedores v, personas p ',
'where v.cod_empresa = :P_COD_EMPRESA',
'and v.cod_persona = p.cod_persona ',
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
 p_id=>wwv_flow_imp.id(122567796251834838)
,p_name=>'P409_TELEFONO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(121624985517550647)
,p_prompt=>'Telef'
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
 p_id=>wwv_flow_imp.id(122567806054834839)
,p_name=>'P409_COD_REPARTIDOR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(121624985517550647)
,p_prompt=>'Repartidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.cod_repartidor || '' - '' || ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D, ',
'       r.cod_repartidor R ',
'from rp_repartidores r, personas p ',
'where r.cod_empresa = :P_COD_EMPRESA',
'and r.cod_persona = p.cod_persona ',
'order by 1'))
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
 p_id=>wwv_flow_imp.id(122568026884834841)
,p_name=>'P409_COD_DISTRIBUIDOR'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(121624985517550647)
,p_prompt=>'Distribuidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cliente || '' - '' || ltrim( nvl( p.nombre, p.nomb_fantasia ) ) D, ',
'       c.cod_cliente R',
'from cc_clientes c, personas p ',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona ',
'order by lpad( c.cod_cliente, 15, '' '' )'))
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
 p_id=>wwv_flow_imp.id(122568263079834843)
,p_name=>'P409_SOLUCION'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(121624985517550647)
,p_prompt=>unistr('Soluci\00F3n')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:Nota de Cr\00E9dito;nota_credito,Cambio directo;cambio_directo,Reparaci\00F3n y posterior env\00EDo;reparacion')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122568370052834844)
,p_name=>'P409_TRANSPORTADORA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(121624985517550647)
,p_prompt=>'Transportadora'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Serincar;1,Contact Courrier;2,MultiEnvios;3,San Ignacio;4,STNGOCDE;5,CDSL;6,STNGOCAAG;7,DMD ;8'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'N/A'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122568418286834845)
,p_name=>'P409_CORREO_LOGISTICA'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(121624985517550647)
,p_prompt=>'Correo Logist.'
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
 p_id=>wwv_flow_imp.id(122568611819834847)
,p_name=>'P409_COSTO_ENVIO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(121624985517550647)
,p_prompt=>unistr('Costo Env\00EDo')
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
 p_id=>wwv_flow_imp.id(122568736391834848)
,p_name=>'P409_NRO_GUIA'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(121624985517550647)
,p_prompt=>unistr('N\00B0 Gu\00EDa/Levante')
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
 p_id=>wwv_flow_imp.id(122568835939834849)
,p_name=>'P409_IND_RECHAZO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(121624985517550647)
,p_prompt=>'Rechazo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122568915187834850)
,p_name=>'P409_COD_MOTIVO_RECHAZO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(121624985517550647)
,p_prompt=>'Motivo Rechazo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_MOTIVO || '' - '' || DESCRIPCION D, COD_MOTIVO R',
'FROM rp_MOTIVO_rechazo_retiro',
'WHERE COD_EMPRESA = :P_COD_EMPRESA'))
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
 p_id=>wwv_flow_imp.id(122691265153441102)
,p_name=>'P409_COMENTARIO_RECHAZO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(121624985517550647)
,p_prompt=>'Comentario'
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
 p_id=>wwv_flow_imp.id(122691834148441108)
,p_name=>'P409_INDICADOR_ART_PLANTILLA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(122521491327135244)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122693702057441127)
,p_name=>'P409_MENSAJE_ALERT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(122566023084834821)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122694199141441131)
,p_name=>'P409_FEC_PLAN_HASTA_BUSQ'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(122520477801135234)
,p_prompt=>'Fecha hasta'
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
 p_id=>wwv_flow_imp.id(123126063346526805)
,p_name=>'P409_COMENTARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(123125974251526804)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
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
 p_id=>wwv_flow_imp.id(123126157318526806)
,p_name=>'P409_SEGUIMIENTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(123125974251526804)
,p_prompt=>'Seguimiento'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123126301259526808)
,p_name=>'P409_COD_USUARIO_CREACION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(123126206500526807)
,p_prompt=>unistr('Usuario Creaci\00F3n')
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
 p_id=>wwv_flow_imp.id(123126417045526809)
,p_name=>'P409_FEC_ANULACION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(123126206500526807)
,p_prompt=>'Fec Anulacion'
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
 p_id=>wwv_flow_imp.id(123126568702526810)
,p_name=>'P409_FEC_HORA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(123126206500526807)
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
 p_id=>wwv_flow_imp.id(123126638981526811)
,p_name=>'P409_IND_ANULADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(123126206500526807)
,p_prompt=>'Anulado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123127792690526822)
,p_name=>'P409_PERMISO_IND_REC_LOG'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(122521491327135244)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123129095061526835)
,p_name=>'P409_P_SER_PLANILLA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(123128910894526834)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123129133817526836)
,p_name=>'P409_P_NRO_PLANILLA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(123128910894526834)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123129230893526837)
,p_name=>'P409_P_LOGISTICA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(123128910894526834)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123280322112246806)
,p_name=>'P409_SEQ_ID_BORRAR_ARTICULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(122564613985834807)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123282248649246825)
,p_name=>'P409_ROW_ID_SELEC_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(122564613985834807)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123282604126246829)
,p_name=>'P409_INDICADOR_REP_GARANTIA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(122521491327135244)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123283299305246835)
,p_name=>'P409_SEQ_ID_ART_CAORDTRA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(122564613985834807)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123283572911246838)
,p_name=>'P409_COD_ARTICULO_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(122693889049441128)
,p_prompt=>'Cod Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo || '' - '' || descripcion D, cod_articulo R',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA',
'and cod_RUBRO=''PR''',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123283600715246839)
,p_name=>'P409_CANTIDAD_CR_ED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(122693889049441128)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123283703055246840)
,p_name=>'P409_FACTURA_CR_ED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(122693889049441128)
,p_prompt=>'Factura'
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
 p_id=>wwv_flow_imp.id(123283849025246841)
,p_name=>'P409_GARANTIA_CR_ED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(122693889049441128)
,p_prompt=>'Garantia'
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
 p_id=>wwv_flow_imp.id(123283902125246842)
,p_name=>'P409_SERIE_CR_ED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(122693889049441128)
,p_prompt=>'Serie'
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
 p_id=>wwv_flow_imp.id(123284006076246843)
,p_name=>'P409_FEC_COMPRA_CR_ED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(122693889049441128)
,p_prompt=>'Fecha de Compra'
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
 p_id=>wwv_flow_imp.id(123284196552246844)
,p_name=>'P409_SER_OT_CR_ED'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(122693889049441128)
,p_prompt=>'Serie OT'
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
 p_id=>wwv_flow_imp.id(123284283511246845)
,p_name=>'P409_TIP_OT_CR_ED'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(122693889049441128)
,p_prompt=>'Tipo OT'
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
 p_id=>wwv_flow_imp.id(123284362334246846)
,p_name=>'P409_NRO_OT_CR_ED'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(122693889049441128)
,p_prompt=>unistr('N\00FAmero OT')
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
 p_id=>wwv_flow_imp.id(123284422817246847)
,p_name=>'P409_INDICADOR_IND'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(122566023084834821)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123347735197114124)
,p_name=>'P409_URL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(122566023084834821)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123349354606114140)
,p_name=>'P409_SEQ_ID_ART_ED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(122564613985834807)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416406767042081001)
,p_name=>'P409_GARANTIA_BUSQ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(122520477801135234)
,p_prompt=>'Garantia'
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
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(123346416129114111)
,p_validation_name=>'VL_NRO_PLANILLA'
,p_validation_sequence=>10
,p_validation=>'P409_NRO_PLANILLA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'El nro de planilla no puede ser nulo.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(123347547961114122)
,p_validation_name=>'VL_FEC_PLANILLA'
,p_validation_sequence=>20
,p_validation=>'P409_FEC_PLANILLA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'La fecha de la planilla no puede ser nula.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(122518896534135218)
,p_name=>'DA_SETEAR_SER_COMP'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P409_TIPO'
,p_condition_element=>'P409_TIPO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122518965280135219)
,p_event_id=>wwv_flow_imp.id(122518896534135218)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P409_TIPO = ''STA'' THEN',
'	    :P409_SER_COMPROBANTE := ''A'';',
'    ELSE                              ',
'	    :P409_SER_COMPROBANTE := ''B'';',
'	',
'    END IF;	',
'',
'    BEGIN',
'      SELECT nvl( max( nro_planilla ), 0 ) + 1',
'        INTO :P409_NRO_PLANILLA',
'        FROM RP_Retiro_CABECERA',
'       WHERE cod_empresa = :P_COD_EMPRESA',
'       AND SER_COMPROBANTE = :P409_SER_COMPROBANTE;',
'',
'      IF :P409_NRO_PLANILLA IS NULL THEN',
'        :P409_NRO_PLANILLA := 1;',
'      END IF;',
'',
'    EXCEPTION',
'      WHEN NO_DATA_FOUND THEN',
'        :P409_NRO_PLANILLA := 1;',
'',
'      WHEN OTHERS THEN',
'       APEX_DEBUG.ERROR (''Error en la tabla de Planillas Cabecera '' || sqlerrm );',
'    END;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P409_TIPO, P409_SER_COMPROBANTE'
,p_attribute_03=>'P409_NRO_PLANILLA, P409_SER_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(122519218726135222)
,p_name=>'DA_ABRIR_REG_BUSCAR_PLANILLA'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(122519162362135221)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122520355747135233)
,p_event_id=>wwv_flow_imp.id(122519218726135222)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P409_TIPO_BUSQ,P409_SER_COMPROBANTE_BUSQ,P409_NRO_PLANILLA_BUSQ,P409_FEC_PLAN_DESDE_BUSQ,P409_SER_OT_BUSQ,P409_NRO_OT_BUSQ,P409_COD_CLIENTE_BUSQ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122564200456834803)
,p_event_id=>wwv_flow_imp.id(122519218726135222)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P409_INDICADOR_REP_PLANTILLA := ''0'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P409_INDICADOR_REP_PLANTILLA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122564332680834804)
,p_event_id=>wwv_flow_imp.id(122519218726135222)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(122520503133135235)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122519374447135223)
,p_event_id=>wwv_flow_imp.id(122519218726135222)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(122519529955135225)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(122520881399135238)
,p_name=>'DA_LIMPIAR_BUSQUEDA_PLANILLA'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(122520654201135236)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122521054690135240)
,p_event_id=>wwv_flow_imp.id(122520881399135238)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P409_TIPO_BUSQ,P409_SER_COMPROBANTE_BUSQ,P409_NRO_PLANILLA_BUSQ,P409_FEC_PLAN_DESDE_BUSQ,P409_SER_OT_BUSQ,P409_NRO_OT_BUSQ,P409_COD_CLIENTE_BUSQ,P409_GARANTIA_BUSQ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(122521169796135241)
,p_name=>'DA_BUSCAR_PLANILLA'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(122520772591135237)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122521278775135242)
,p_event_id=>wwv_flow_imp.id(122521169796135241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P409_INDICADOR_REP_PLANTILLA := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P409_INDICADOR_REP_PLANTILLA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122564153982834802)
,p_event_id=>wwv_flow_imp.id(122521169796135241)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(122520503133135235)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(122564896719834809)
,p_name=>'DA_SETEAR_DATOS_BUSQ_PLAN'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P409_ROW_ID_SELEC_PLANILLA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122565051330834811)
,p_event_id=>wwv_flow_imp.id(122564896719834809)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT TIPO,',
'           SER_COMPROBANTE, ',
'           NRO_PLANILLA,',
'           FEC_PLANILLA,',
'           NRO_OT,',
'           SER_OT,',
'           IND_RECIBIDO_LOG_CDE,',
'           FEC_RECIBIDO_LOG_CDE,',
'           IND_RECIBIDO_LOG,',
'           FEC_RECIBIDO_LOG,',
'           IND_RECIBIDO_LOG_OVIEDO,',
'           FEC_RECIBIDO_LOG_OVIEDO,',
'           IND_RETIRADO_TALLER,',
'           FEC_RETIRADO_TALLER,',
'           IND_ENVIADO_CLIENTE,',
'           FEC_ENVIADO_CLIENTE,',
'           COD_CLIENTE,',
'           NOMBRE_CLIENTE,',
'           COD_PAIS,',
'           COD_PROVINCIA,',
'           COD_CIUDAD,',
'           RUC,',
'           DIRECCION,',
'           COD_VENDEDOR,',
'           TELEFONO,',
'           COD_REPARTIDOR,',
'           COD_DISTRIBUIDOR,',
'           SOLUCION,',
'           TRANSPORTADORA,',
'           CORREO_LOGISTICA,',
'           COSTO_ENVIO,',
'           NRO_GUIA,',
'           IND_RECHAZO,',
'           COD_MOTIVO_RECHAZO,',
'           COMENTARIO_RECHAZO,',
'           IND_ANULADO,',
'           FEC_ANULACION,',
'           COD_USUARIO_CREACION,',
'           FECHA_CREACION,',
'           COMENTARIO           ',
'',
'    INTO   :P409_TIPO,',
'           :P409_SER_COMPROBANTE, ',
'           :P409_NRO_PLANILLA,',
'           :P409_FEC_PLANILLA,',
'           :P409_NRO_OT,',
'           :P409_SER_OT,',
'           :P409_IND_RECIBIDO_OG_CDE,',
'           :P409_FEC_RECIBIDO_OG_CDE,',
'           :P409_IND_RECIBIDO_LOG,',
'           :P409_FEC_RECIBIDO_LOG,',
'           :P409_IND_RECIBIDO_OG_OVIEDO,',
'           :P409_FEC_RECIBIDO_OG_OVIEDO,',
'           :P409_IND_RETIRADO_TALLER,',
'           :P409_FEC_RETIRADO_TALLER,',
'           :P409_IND_ENVIADO_CLIENTE,',
'           :P409_FEC_ENVIADO_CLIENTE,',
'           :P409_COD_CLIENTE,',
'           :P409_NOM_CLIENTE,',
'           :P409_COD_PAIS,',
'           :P409_COD_PROVINCIA,',
'           :P409_COD_CIUDAD,',
'           :P409_RUC,',
'           :P409_DIRECCION,',
'           :P409_COD_VENDEDOR,',
'           :P409_TELEFONO,',
'           :P409_COD_REPARTIDOR,',
'           :P409_COD_DISTRIBUIDOR,',
'           :P409_SOLUCION,',
'           :P409_TRANSPORTADORA,',
'           :P409_CORREO_LOGISTICA,',
'           :P409_COSTO_ENVIO,',
'           :P409_NRO_GUIA,',
'           :P409_IND_RECHAZO,',
'           :P409_COD_MOTIVO_RECHAZO,',
'           :P409_COMENTARIO_RECHAZO,',
'           :P409_IND_ANULADO,',
'           :P409_FEC_ANULACION,',
'           :P409_COD_USUARIO_CREACION,',
'           :P409_FEC_HORA,',
'           :P409_COMENTARIO',
'',
'FROM RP_Retiro_CABECERA',
'WHERE ROWID = :P409_ROW_ID_SELEC_PLANILLA;',
'',
':P409_INDICADOR_IND := ''1'';',
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
,p_attribute_02=>'P409_ROW_ID_SELEC_PLANILLA'
,p_attribute_03=>'P409_TIPO,P409_SER_COMPROBANTE,P409_NRO_PLANILLA,P409_FEC_PLANILLA,P409_NRO_OT,P409_SER_OT,P409_IND_RECIBIDO_OG_CDE,P409_FEC_RECIBIDO_OG_CDE,P409_IND_RECIBIDO_LOG,P409_FEC_RECIBIDO_LOG,P409_IND_RECIBIDO_OG_OVIEDO,P409_FEC_RECIBIDO_OG_OVIEDO,P409_IND_'
||'RETIRADO_TALLER,P409_FEC_RETIRADO_TALLER,P409_IND_ENVIADO_CLIENTE,P409_FEC_ENVIADO_CLIENTE,P409_COD_CLIENTE,P409_NOM_CLIENTE,P409_COD_PAIS,P409_COD_PROVINCIA,P409_COD_CIUDAD,P409_RUC,P409_DIRECCION,P409_COD_VENDEDOR,P409_TELEFONO,P409_COD_REPARTIDOR,'
||'P409_COD_DISTRIBUIDOR,P409_SOLUCION,P409_TRANSPORTADORA,P409_CORREO_LOGISTICA,P409_COSTO_ENVIO,P409_NRO_GUIA,P409_IND_RECHAZO,P409_COD_MOTIVO_RECHAZO,P409_COMENTARIO_RECHAZO,P409_IND_ANULADO,P409_FEC_ANULACION,P409_COMENTARIO,P409_COD_USUARIO_CREACIO'
||'N,P409_FEC_HORA,P409_INDICADOR_IND'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122691732586441107)
,p_event_id=>wwv_flow_imp.id(122564896719834809)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    RPPLARET.PR_CREAR_COL_ARTICULOS (PI_NRO_PLANILLA => :P409_NRO_PLANILLA);',
'',
'    RPPLARET.PR_BUSCA_LLAMADAS (PI_NRO_PLANILLA => :P409_NRO_PLANILLA);    ',
'',
'    :P409_INDICADOR_ART_PLANTILLA := ''1'';',
'    :P409_INDICADOR_SEG_PLANTILLA := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P409_NRO_PLANILLA'
,p_attribute_03=>'P409_INDICADOR_ART_PLANTILLA,P409_INDICADOR_SEG_PLANTILLA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122691975601441109)
,p_event_id=>wwv_flow_imp.id(122564896719834809)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(122691386685441103)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123128465608526829)
,p_event_id=>wwv_flow_imp.id(122564896719834809)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(121624213535550640)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122564923678834810)
,p_event_id=>wwv_flow_imp.id(122564896719834809)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(122519529955135225)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(122565156241834812)
,p_name=>'DA_ABRIR_BUSQUEDA_PLANILLA'
,p_event_sequence=>60
,p_condition_element=>'P409_P_NRO_PLANILLA'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122565473742834815)
,p_event_id=>wwv_flow_imp.id(122565156241834812)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P409_TIPO_BUSQ,P409_SER_COMPROBANTE_BUSQ,P409_NRO_PLANILLA_BUSQ,P409_FEC_PLAN_DESDE_BUSQ,P409_SER_OT_BUSQ,P409_NRO_OT_BUSQ,P409_COD_CLIENTE_BUSQ,P409_FEC_PLAN_HASTA_BUSQ,P409_GARANTIA_BUSQ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122565516182834816)
,p_event_id=>wwv_flow_imp.id(122565156241834812)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P409_INDICADOR_REP_PLANTILLA := ''0'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P409_INDICADOR_REP_PLANTILLA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122565648040834817)
,p_event_id=>wwv_flow_imp.id(122565156241834812)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(122520503133135235)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122565202642834813)
,p_event_id=>wwv_flow_imp.id(122565156241834812)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(122519529955135225)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(122691574189441105)
,p_name=>'DA_CARGAR_SEGUIMIENTO'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(122691485146441104)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123127355411526818)
,p_event_id=>wwv_flow_imp.id(122691574189441105)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P409_SEGUIMIENTO IS NOT NULL THEN',
'',
'        DECLARE',
'        V_EXISTE_PLANILLA VARCHAR2(50);    ',
'        BEGIN',
'            BEGIN',
'                SELECT NRO_PLANILLA',
'                INTO   V_EXISTE_PLANILLA',
'                FROM RP_Retiro_CABECERA',
'                WHERE cod_empresa = :P_COD_EMPRESA',
'                AND nro_planilla = :P409_NRO_PLANILLA;',
'            EXCEPTION',
'                WHEN NO_DATA_FOUND THEN',
'                    V_EXISTE_PLANILLA := NULL;',
'            END;',
'',
'            --APEX_DEBUG.ERROR(''V_EXISTE_PLANILLA'' || V_EXISTE_PLANILLA);    ',
'',
'            IF V_EXISTE_PLANILLA IS NOT NULL THEN ',
'           	    INSERTA_SEGUIMIENTO_RET (:P_COD_EMPRESA,',
'                                         :P409_SEGUIMIENTO,',
'           	                             :APP_USER,',
'                                         to_char(:P409_NRO_PLANILLA));',
'                RPPLARET.PR_BUSCA_LLAMADAS (PI_NRO_PLANILLA => :P409_NRO_PLANILLA);',
'                :P409_MENSAJE_ALERT := NULL;',
'                :P409_INDICADOR_SEG_PLANTILLA := ''1'';',
'           ELSE',
'           	:P409_MENSAJE_ALERT := ''La solicitud de Credito debe estar Grabada para agregarle un comentario.'';',
'            :P409_INDICADOR_SEG_PLANTILLA := ''0'';',
'           END IF;',
'',
'           :P409_SEGUIMIENTO := NULL;',
'',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(SQLERRM);',
'        END;',
'',
'    ELSE',
'        :P409_MENSAJE_ALERT := ''Ingrese un seguimiento.'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P409_NRO_PLANILLA,P409_SEGUIMIENTO'
,p_attribute_03=>'P409_SEGUIMIENTO,P409_MENSAJE_ALERT,P409_INDICADOR_SEG_PLANTILLA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123127464414526819)
,p_event_id=>wwv_flow_imp.id(122691574189441105)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P409_MENSAJE_ALERT.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P409_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123127527750526820)
,p_event_id=>wwv_flow_imp.id(122691574189441105)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(121624213535550640)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P409_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123127676558526821)
,p_event_id=>wwv_flow_imp.id(122691574189441105)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Seguimiento cargado.'
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P409_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(122693557099441125)
,p_name=>'DA_BUSCAR_GARANTIA'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(122518693258135216)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122693665275441126)
,p_event_id=>wwv_flow_imp.id(122693557099441125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_EXCEPTION_GARANTIA EXCEPTION;',
'    V_EXISTE VARCHAR (100);',
'',
'BEGIN',
'',
'    BEGIN',
'',
'        IF :P409_GARANTIA IS NULL THEN',
'            RAISE V_EXCEPTION_GARANTIA;',
'        ELSE            ',
'            SELECT COD_ARTICULO',
'            INTO  V_EXISTE',
'            FROM RP_RETIRO_DETALLE',
'            WHERE GARANTIA = :P409_GARANTIA',
'            AND COD_EMPRESA = V(''P_COD_EMPRESA'');        ',
'        END IF;',
'',
'        :P409_MENSAJE_ALERT := NULL;',
'        :P409_INDICADOR_REP_GARANTIA := ''1'';',
'',
'    EXCEPTION    ',
'        WHEN NO_DATA_FOUND THEN',
unistr('            :P409_MENSAJE_ALERT := ''No se encontro el art\00EDculo.'';'),
'            :P409_INDICADOR_REP_GARANTIA := ''0'';',
'    END;',
'',
'    /*IF V_EXISTE IS NOT NULL THEN',
'            RPPLARET.PR_AGREGAR_MIE_ARTICULOS (PI_GARANTIA => :P409_GARANTIA);',
'            :P409_MENSAJE_ALERT := NULL;            ',
'    END IF;*/    ',
'',
'EXCEPTION',
'',
'    WHEN V_EXCEPTION_GARANTIA THEN',
unistr('        :P409_MENSAJE_ALERT := ''Ingrese un n\00FAmero de garantia.'';'),
'    ',
'    WHEN NO_DATA_FOUND THEN',
unistr('        :P409_MENSAJE_ALERT := ''No se encontro el art\00EDculo.'';'),
'    ',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'END;'))
,p_attribute_02=>'P409_GARANTIA_BUSQ'
,p_attribute_03=>'P409_MENSAJE_ALERT,P409_INDICADOR_REP_GARANTIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122693988798441129)
,p_event_id=>wwv_flow_imp.id(122693557099441125)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P409_MENSAJE_ALERT.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P409_MENSAJE_ALERT'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123282845829246831)
,p_event_id=>wwv_flow_imp.id(122693557099441125)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P409_INDICADOR_REP_GARANTIA := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P409_INDICADOR_REP_GARANTIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123282718159246830)
,p_event_id=>wwv_flow_imp.id(122693557099441125)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(123280964363246812)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122694044950441130)
,p_event_id=>wwv_flow_imp.id(122693557099441125)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(123282584760246828)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P409_MENSAJE_ALERT'
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
 p_id=>wwv_flow_imp.id(122694257847441132)
,p_name=>'DA_SETEAR_DATOS_CLIENTE'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P409_COD_CLIENTE'
,p_condition_element=>'P409_COD_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122694320125441133)
,p_event_id=>wwv_flow_imp.id(122694257847441132)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  BEGIN',
'    SELECT ltrim( nvl( p.nombre, p.nomb_fantasia)), COD_VENDEDOR',
'      INTO :P409_NOM_CLIENTE, :P409_COD_VENDEDOR',
'      FROM cc_clientes c, personas p',
'     WHERE c.cod_empresa = :P_COD_EMPRESA',
'       AND c.cod_cliente = :P409_COD_CLIENTE',
'       AND c.cod_persona = p.cod_persona;',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      :P409_NOM_CLIENTE := NULL;',
unistr('      APEX_DEBUG.ERROR(''No se encuentra c\00F3digo de cliente.'' || SQLERRM);'),
'    WHEN OTHERS THEN',
'      :P409_NOM_CLIENTE := NULL;',
'      APEX_DEBUG.ERROR(''Error en la tabla de Clientes/Personas.'' || SQLERRM);',
'  END;',
'',
'  BEGIN',
'    Select di.cod_pais, di.cod_provincia, di.cod_ciudad, di.detalle',
'      into :P409_COD_PAIS, :P409_COD_PROVINCIA, :P409_COD_CIUDAD, :P409_DIRECCION',
'      from cc_clientes c, personas p, direc_personas di',
'     where c.cod_empresa = :P_COD_EMPRESA',
'       and c.cod_cliente = :P409_COD_CLIENTE',
'       and c.cod_persona = p.cod_persona',
'       and p.cod_persona = di.cod_persona',
'       and di.por_defecto=''S'';',
'  EXCEPTION',
'    when no_data_found then',
'      APEX_DEBUG.ERROR(SQLERRM);  ',
'      :P409_COD_PAIS := null;',
'      :P409_COD_PROVINCIA := null;',
'      :P409_COD_CIUDAD :=null;',
'      :P409_DIRECCION := NULL;',
'      ',
'    when others then',
'      :P409_NOM_CLIENTE := NULL;     ',
'  END;',
'',
'',
'  BEGIN',
'    Select di.codigo_area||'' ''||di.NUM_TELEFONO',
'      into :P409_TELEFONO',
'      from cc_clientes c, personas p, telef_personas di',
'     where c.cod_empresa = :P_COD_EMPRESA',
'       and c.cod_cliente = :P409_COD_CLIENTE',
'       and c.cod_persona = p.cod_persona',
'       and p.cod_persona = di.cod_persona',
'       AND ROWNUM=1;',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      APEX_DEBUG.ERROR(SQLERRM);  ',
'      :P409_TELEFONO := null;      ',
'    WHEN OTHERS THEN',
'       APEX_DEBUG.ERROR(SQLERRM);   ',
'      :P409_TELEFONO := NULL;     ',
'  END;',
'',
'  BEGIN',
'    Select DI.NUMERO',
'      into :P409_RUC',
'      from cc_clientes c, personas p, IDENT_PERSONAS di',
'     where c.cod_empresa = :P_COD_EMPRESA',
'       and c.cod_cliente = :P409_COD_CLIENTE',
'       and c.cod_persona = p.cod_persona',
'       and p.cod_persona = di.cod_persona',
'       AND COD_IDENT=''RUC''',
'       AND ROWNUM=1;',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      APEX_DEBUG.ERROR(SQLERRM);  ',
'      :P409_RUC := null;      ',
'    WHEN OTHERS THEN',
'       APEX_DEBUG.ERROR(SQLERRM);   ',
'      :P409_RUC := NULL;     ',
'  END;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P409_COD_CLIENTE'
,p_attribute_03=>'P409_NOM_CLIENTE,P409_COD_VENDEDOR,P409_COD_PAIS,P409_COD_PROVINCIA,P409_COD_CIUDAD,P409_DIRECCION,P409_TELEFONO,P409_RUC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(122694428236441134)
,p_name=>'DA_HABILITAR_MOTIVO'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P409_IND_RECHAZO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122694500193441135)
,p_event_id=>wwv_flow_imp.id(122694428236441134)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P409_COD_MOTIVO_RECHAZO,P409_COMENTARIO_RECHAZO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P409_IND_RECHAZO'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122694747943441137)
,p_event_id=>wwv_flow_imp.id(122694428236441134)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P409_COD_MOTIVO_RECHAZO,P409_COMENTARIO_RECHAZO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P409_IND_RECHAZO'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122694854897441138)
,p_event_id=>wwv_flow_imp.id(122694428236441134)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P409_COD_MOTIVO_RECHAZO := NULL;',
'    :P409_COMENTARIO_RECHAZO := NULL;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'END;'))
,p_attribute_03=>'P409_COMENTARIO_RECHAZO,P409_COD_MOTIVO_RECHAZO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P409_IND_RECHAZO'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(122694969411441139)
,p_name=>'DA_SETEAR_FEC_OG_CDE'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P409_IND_RECIBIDO_OG_CDE'
,p_condition_element=>'P409_INDICADOR_IND'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122695012178441140)
,p_event_id=>wwv_flow_imp.id(122694969411441139)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P409_IND_RECIBIDO_OG_CDE = ''S'' THEN',
'	    :P409_FEC_RECIBIDO_OG_CDE :=SYSDATE;',
'    ELSIF :P409_IND_RECIBIDO_OG_CDE = ''N'' THEN',
'	    :P409_FEC_RECIBIDO_OG_CDE := NULL;',
'	END IF;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P409_IND_RECIBIDO_OG_CDE'
,p_attribute_03=>'P409_FEC_RECIBIDO_OG_CDE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(122695182384441141)
,p_name=>'DA_SETEAR_FEC_OG_OVIEDO'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P409_IND_RECIBIDO_OG_OVIEDO'
,p_condition_element=>'P409_INDICADOR_IND'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122695777920441147)
,p_event_id=>wwv_flow_imp.id(122695182384441141)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P409_IND_RECIBIDO_OG_OVIEDO = ''S'' THEN',
'	    :P409_FEC_RECIBIDO_OG_OVIEDO :=SYSDATE;',
'    ELSIF :P409_IND_RECIBIDO_OG_OVIEDO = ''N'' THEN',
'	    :P409_FEC_RECIBIDO_OG_OVIEDO := NULL;',
'	END IF;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P409_IND_RECIBIDO_OG_OVIEDO'
,p_attribute_03=>'P409_FEC_RECIBIDO_OG_OVIEDO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(122695368591441143)
,p_name=>'DA_SETEAR_FEC_RECIBIDO_LOG'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P409_IND_RECIBIDO_LOG'
,p_condition_element=>'P409_INDICADOR_IND'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122695829048441148)
,p_event_id=>wwv_flow_imp.id(122695368591441143)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P409_IND_RECIBIDO_LOG = ''S'' THEN',
'	    :P409_FEC_RECIBIDO_LOG :=SYSDATE;',
'    ELSIF :P409_IND_RECIBIDO_LOG = ''N'' THEN',
'	    :P409_FEC_RECIBIDO_LOG := NULL;',
'	END IF;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P409_IND_RECIBIDO_LOG'
,p_attribute_03=>'P409_FEC_RECIBIDO_LOG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(122695540077441145)
,p_name=>'DA_SETEAR_RETIRADO_TALLER'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P409_IND_RETIRADO_TALLER'
,p_condition_element=>'P409_INDICADOR_IND'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122695997381441149)
,p_event_id=>wwv_flow_imp.id(122695540077441145)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P409_IND_RETIRADO_TALLER = ''S'' THEN',
'	    :P409_FEC_RETIRADO_TALLER :=SYSDATE;',
'    ELSIF :P409_IND_RETIRADO_TALLER = ''N'' THEN',
'	    :P409_FEC_RETIRADO_TALLER := NULL;',
'	END IF;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P409_IND_RETIRADO_TALLER'
,p_attribute_03=>'P409_FEC_RETIRADO_TALLER'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(122696027146441150)
,p_name=>'DA_SETEAR_ENVIADO_CLIENTE'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P409_IND_ENVIADO_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123125771515526802)
,p_event_id=>wwv_flow_imp.id(122696027146441150)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P409_IND_ENVIADO_CLIENTE = ''S'' THEN',
'	    :P409_FEC_ENVIADO_CLIENTE :=SYSDATE;',
'    ELSIF :P409_IND_ENVIADO_CLIENTE = ''N'' THEN',
'	    :P409_FEC_ENVIADO_CLIENTE := NULL;',
'	END IF;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P409_IND_ENVIADO_CLIENTE'
,p_attribute_03=>'P409_FEC_ENVIADO_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123126770582526812)
,p_name=>'DA_SETEAR_ANULADO'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P409_IND_ANULADO'
,p_condition_element=>'P409_IND_ANULADO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123126998424526814)
,p_event_id=>wwv_flow_imp.id(123126770582526812)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P409_FEC_ANULACION'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P409_IND_ANULADO'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123127204337526817)
,p_event_id=>wwv_flow_imp.id(123126770582526812)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P409_FEC_ANULACION'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P409_IND_ANULADO'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123127194187526816)
,p_event_id=>wwv_flow_imp.id(123126770582526812)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P409_IND_ANULADO = ''S'' THEN',
'    	:P409_FEC_ANULACION := SYSDATE;',
'    ELSIF 	:P409_IND_ANULADO = ''N'' THEN',
'	    :P409_FEC_ANULACION := NULL;',
'	END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P409_IND_ANULADO'
,p_attribute_03=>'P409_FEC_ANULACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123127868706526823)
,p_name=>'DA_HABILITAR_IND_RECIBIDO_LOG'
,p_event_sequence=>170
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123127973176526824)
,p_event_id=>wwv_flow_imp.id(123127868706526823)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P409_IND_RECIBIDO_LOG'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P409_PERMISO_IND_REC_LOG'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123128272510526827)
,p_event_id=>wwv_flow_imp.id(123127868706526823)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P409_IND_RECIBIDO_LOG,P409_FEC_RECIBIDO_LOG'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P409_PERMISO_IND_REC_LOG'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123128009631526825)
,p_event_id=>wwv_flow_imp.id(123127868706526823)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P409_IND_RECIBIDO_LOG'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P409_PERMISO_IND_REC_LOG'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123128120878526826)
,p_event_id=>wwv_flow_imp.id(123127868706526823)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P409_IND_RECIBIDO_LOG,P409_FEC_RECIBIDO_LOG'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P409_PERMISO_IND_REC_LOG'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123129786790526842)
,p_name=>'DA_CREAR_PLANILLA'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(123129665047526841)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123130554201526850)
,p_event_id=>wwv_flow_imp.id(123129786790526842)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P409_TIPO,P409_SER_COMPROBANTE,P409_NRO_PLANILLA,P409_FEC_PLANILLA,P409_SER_OT,P409_NRO_OT,P409_IND_RECIBIDO_OG_CDE,P409_FEC_RECIBIDO_OG_CDE,P409_IND_RECIBIDO_OG_OVIEDO,P409_FEC_RECIBIDO_OG_OVIEDO,P409_IND_RECIBIDO_LOG,P409_FEC_RECIBIDO_LOG,P409_IND_'
||'RETIRADO_TALLER,P409_FEC_RETIRADO_TALLER,P409_IND_ENVIADO_CLIENTE,P409_FEC_ENVIADO_CLIENTE,P409_GARANTIA_BUSQ,P409_COD_CLIENTE,P409_NOM_CLIENTE,P409_COD_PAIS,P409_COD_PROVINCIA,P409_COD_CIUDAD,P409_RUC,P409_DIRECCION,P409_TELEFONO,P409_COD_VENDEDOR,P'
||'409_COD_REPARTIDOR,P409_COD_DISTRIBUIDOR,P409_SOLUCION,P409_TRANSPORTADORA,P409_CORREO_LOGISTICA,P409_COSTO_ENVIO,P409_NRO_GUIA,P409_IND_RECHAZO,P409_COD_MOTIVO_RECHAZO,P409_COMENTARIO_RECHAZO,P409_COMENTARIO,P409_SEGUIMIENTO,P409_COD_USUARIO_CREACIO'
||'N,P409_FEC_HORA,P409_IND_ANULADO,P409_FEC_ANULACION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123129987242526844)
,p_event_id=>wwv_flow_imp.id(123129786790526842)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    --:P409_FEC_HORA := to_char(sysdate,''DD/MM/YYYY HH24:MI:SS'');',
'    :P409_FEC_HORA := to_date(sysdate,''DD/MM/YYYY HH24:MI:SS'');',
'    :P409_SER_COMPROBANTE := ''A'';',
'    :P409_TIPO := ''STA'';',
'    :P409_IND_ANULADO :=''N'';',
'    :P409_IND_RECHAZO :=''N'';',
'    :P409_IND_RETIRADO_TALLER :=''N'';',
'    :P409_FEC_PLANILLA := sysdate;',
'    :P409_COD_USUARIO_CREACION := :APP_USER;',
'    :P409_TRANSPORTADORA := ''1'';',
'    :P409_CORREO_LOGISTICA := BS_busca_parametro( ''RP'', ''CORREO_LOGISTICA'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
'',
''))
,p_attribute_03=>'P409_FEC_HORA,P409_SER_COMPROBANTE,P409_TIPO,P409_IND_ANULADO,P409_IND_RECHAZO,P409_IND_RETIRADO_TALLER,P409_FEC_PLANILLA,P409_COD_USUARIO_CREACION,P409_TRANSPORTADORA,P409_CORREO_LOGISTICA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123130103663526846)
,p_event_id=>wwv_flow_imp.id(123129786790526842)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P409_TIPO = ''STA'' THEN',
'	    :P409_SER_COMPROBANTE := ''A'';',
'    ELSE                              ',
'	    :P409_SER_COMPROBANTE := ''B'';	',
'    END IF;	',
'',
'    BEGIN',
'      SELECT nvl( max( nro_planilla ), 0 ) + 1',
'        INTO :P409_NRO_PLANILLA',
'        FROM RP_Retiro_CABECERA',
'       WHERE cod_empresa = :P_COD_EMPRESA',
'       AND SER_COMPROBANTE = :P409_SER_COMPROBANTE;',
'',
'      IF :P409_NRO_PLANILLA IS NULL THEN',
'        :P409_NRO_PLANILLA := 1;',
'      END IF;',
'',
'    EXCEPTION',
'      WHEN NO_DATA_FOUND THEN',
'        :P409_NRO_PLANILLA := 1;',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'      WHEN OTHERS THEN',
'       APEX_DEBUG.ERROR (''Error en la tabla de Planillas Cabecera '' || sqlerrm );',
'    END;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P409_TIPO, P409_SER_COMPROBANTE'
,p_attribute_03=>'P409_NRO_PLANILLA, P409_SER_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123130292457526847)
,p_event_id=>wwv_flow_imp.id(123129786790526842)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    INSERT INTO RP_Retiro_CABECERA (COD_EMPRESA,',
'                                    COD_SUCURSAL,',
'                                    NRO_PLANILLA,',
'                                    ORIGEN,',
'                                    SER_COMPROBANTE,',
'                                    TIPO,',
'                                    SER_PLANILLA,',
'                                    FECHA_CREACION,',
'                                    COD_USUARIO_CREACION,',
'                                    TIP_COMPROBANTE,',
'                                    IND_ANULADO,',
'                                    IND_RECHAZO,',
'                                    IND_RETIRADO_TALLER,',
'                                    FEC_PLANILLA,',
'                                    TRANSPORTADORA,',
'                                    CORREO_LOGISTICA)',
'',
'                            VALUES (:P_COD_EMPRESA,',
'                                    :P_COD_SUCURSAL,',
'                                    :P409_NRO_PLANILLA,',
'                                    ''01'',',
'                                    :P409_SER_COMPROBANTE,',
'                                    :P409_TIPO,',
'                                    :P409_SER_COMPROBANTE,',
'                                    :P409_FEC_HORA,',
'                                    :P409_COD_USUARIO_CREACION,',
'                                    ''RET'',',
'                                    :P409_IND_ANULADO,',
'                                    :P409_IND_RECHAZO,',
'                                    :P409_IND_RETIRADO_TALLER,',
'                                    :P409_FEC_PLANILLA,',
'                                    :P409_TRANSPORTADORA,',
'                                    :P409_CORREO_LOGISTICA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P409_NRO_PLANILLA,P409_SER_COMPROBANTE,P409_TIPO,P409_P_SER_PLANILLA,P409_FEC_HORA,P409_COD_USUARIO_CREACION,P409_IND_ANULADO,P409_IND_RECHAZO,P409_IND_RETIRADO_TALLER,P409_FEC_PLANILLA,P409_TRANSPORTADORA,P409_CORREO_LOGISTICA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123130428849526849)
,p_event_id=>wwv_flow_imp.id(123129786790526842)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION (P_COLLECTION_NAME => ''SEGUIMIENTO_PLANILLA'');',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION (P_COLLECTION_NAME => ''ARTICULOS'');    ',
'',
'    :P409_INDICADOR_ART_PLANTILLA := ''1'';',
'    :P409_INDICADOR_SEG_PLANTILLA := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P409_NRO_PLANILLA'
,p_attribute_03=>'P409_INDICADOR_ART_PLANTILLA,P409_INDICADOR_SEG_PLANTILLA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123279803873246801)
,p_event_id=>wwv_flow_imp.id(123129786790526842)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(122691386685441103)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123279989058246802)
,p_event_id=>wwv_flow_imp.id(123129786790526842)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(121624213535550640)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123129839849526843)
,p_event_id=>wwv_flow_imp.id(123129786790526842)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(122519529955135225)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123280120988246804)
,p_name=>'DA_ABRIR_CREAR_ARTICULO'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(123280027004246803)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124200390753300503)
,p_event_id=>wwv_flow_imp.id(123280120988246804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P409_COD_ARTICULO_CR_ED,P409_CANTIDAD_CR_ED,P409_FACTURA_CR_ED,P409_GARANTIA_CR_ED,P409_SERIE_CR_ED,P409_FEC_COMPRA_CR_ED,P409_SER_OT_CR_ED,P409_TIP_OT_CR_ED,P409_NRO_OT_CR_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124200431538300504)
,p_event_id=>wwv_flow_imp.id(123280120988246804)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(123349905844114146)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124200564738300505)
,p_event_id=>wwv_flow_imp.id(123280120988246804)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(123349810192114145)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123280268878246805)
,p_event_id=>wwv_flow_imp.id(123280120988246804)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(122693889049441128)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123280402055246807)
,p_name=>'DA_BORRAR_ARTICULO'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P409_SEQ_ID_BORRAR_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123280650197246809)
,p_event_id=>wwv_flow_imp.id(123280402055246807)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea borrar el articulo?')
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123280555295246808)
,p_event_id=>wwv_flow_imp.id(123280402055246807)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    RPPLARET.PR_BORRAR_MIE_ARTICULOS (PI_SEQ_ID_ELIMINAR => :P409_SEQ_ID_BORRAR_ARTICULO);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P409_SEQ_ID_BORRAR_ARTICULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123280764811246810)
,p_event_id=>wwv_flow_imp.id(123280402055246807)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(122691386685441103)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123282304193246826)
,p_name=>'DA_SELEC_ARTICULO'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P409_ROW_ID_SELEC_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123282410842246827)
,p_event_id=>wwv_flow_imp.id(123282304193246826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    RPPLARET.PR_AGREGAR_MIE_ARTICULOS_GAR (PI_ROW_ID_ARTICULO => :P409_ROW_ID_SELEC_ARTICULO);',
'    :P409_INDICADOR_ART_PLANTILLA := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P409_ROW_ID_SELEC_ARTICULO,P409_INDICADOR_ART_PLANTILLA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123283080039246833)
,p_event_id=>wwv_flow_imp.id(123282304193246826)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(122691386685441103)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123283183682246834)
,p_event_id=>wwv_flow_imp.id(123282304193246826)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(123282584760246828)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123283397321246836)
,p_name=>'DA_LLAMAR_CAORDTRA'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P409_SEQ_ID_ART_CAORDTRA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123347662924114123)
,p_event_id=>wwv_flow_imp.id(123283397321246836)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    P_COD_ARTICULO VARCHAR2(50);',
'    p_nro_garantia VARCHAR2(50);',
'    P_NRO_COMPRA NUMBER;',
'    P_FECHA_COMPRA DATE;',
'',
'BEGIN',
'',
'    SELECT C001, C005, C004, D001',
'    INTO   P_COD_ARTICULO,',
'           p_nro_garantia,',
'           P_NRO_COMPRA,',
'           P_FECHA_COMPRA',
'    FROM   APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''ARTICULOS''',
'    AND SEQ_ID = :P409_SEQ_ID_ART_CAORDTRA;       ',
'',
'    SELECT APEX_PAGE.GET_URL (p_page => 244,',
'				              p_items  => ''P244_COD_CLIENTE,P244_NRO_COMPROBANTE,P244_COD_ARTICULO,P244_NRO_GARANTIA,P244_COD_DISTRIBUIDOR'', ',
'				              p_values => ''''||:P409_COD_CLIENTE||'',                                           ',
'                                           ''||:P409_NRO_PLANILLA||'',',
'                                           ''|| P_COD_ARTICULO||'',',
'                                           ''|| p_nro_garantia||'',',
'                                           ''|| :P409_COD_DISTRIBUIDOR||'''') f_url_1',
'	INTO :P409_URL',
'	FROM DUAL;',
'',
'    APEX_DEBUG.ERROR(:P409_URL);   ',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P409_COD_CLIENTE,P409_NRO_PLANILLA,P409_COD_DISTRIBUIDOR,P409_SEQ_ID_ART_CAORDTRA'
,p_attribute_03=>'P409_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123347889693114125)
,p_event_id=>wwv_flow_imp.id(123283397321246836)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P409_URL").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123347963880114126)
,p_event_id=>wwv_flow_imp.id(123283397321246836)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    vtip_comprobante varchar2(10);',
'    vser_comprobante varchar2(10);',
'    vnro_comprobante varchar2(10);',
'    vnro_orden        varchar2(10);',
'    V_TIP_OT VARCHAR2(50);',
'    V_ser_OT VARCHAR2(50);',
'    V_nro_OT VARCHAR2(50);',
'',
'BEGIN',
'    BEGIN',
'        select tip_comprobante, ser_comprobante, nro_comprobante',
'        into V_TIP_OT, V_ser_OT, V_nro_OT',
'        from vt_ordenes_trabajo',
'        where cod_empresa = :P_COD_EMPRESA',
'        and nro_llamada   = :P409_NRO_PLANILLA',
'        and nro_orden     = :P409_NRO_PLANILLA;',
'',
'         APEX_DEBUG.ERROR(''AA''||V_TIP_OT ||V_ser_OT || V_nro_OT);   ',
'',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ARTICULOS'',',
'        p_seq => :P409_SEQ_ID_ART_CAORDTRA,',
'        p_attr_number => 7,',
'        p_attr_value => V_ser_OT);',
'',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ARTICULOS'',',
'        p_seq => :P409_SEQ_ID_ART_CAORDTRA,',
'        p_attr_number => 8,',
'        p_attr_value => V_TIP_OT);',
'',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ARTICULOS'',',
'        p_seq => :P409_SEQ_ID_ART_CAORDTRA,',
'        p_attr_number => 1,',
'        p_number_value => V_nro_OT);',
'',
'        INSERTA_SEGUIMIENTO_RET(:P_COD_EMPRESA,',
'                                ''OT GENERADA NUMERO: ''|| vnro_comprobante,',
'                                :APP_USER,',
'                                to_char(:P409_NRO_PLANILLA));',
'',
'        RPPLARET.PR_BUSCA_LLAMADAS (PI_NRO_PLANILLA => :P409_NRO_PLANILLA);',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(SQLERRM);',
'    END;  ',
'         ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P409_NRO_PLANILLA,P409_SEQ_ID_ART_CAORDTRA'
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
 p_id=>wwv_flow_imp.id(123348020146114127)
,p_event_id=>wwv_flow_imp.id(123283397321246836)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(122691386685441103)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123284553857246848)
,p_name=>'DA_CARGAR_PLANILLA_PARAMETRO'
,p_event_sequence=>230
,p_condition_element=>'P409_P_NRO_PLANILLA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123345732848114104)
,p_event_id=>wwv_flow_imp.id(123284553857246848)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT TIPO,',
'           SER_COMPROBANTE, ',
'           NRO_PLANILLA,',
'           FEC_PLANILLA,',
'           NRO_OT,',
'           SER_OT,',
'           IND_RECIBIDO_LOG_CDE,',
'           FEC_RECIBIDO_LOG_CDE,',
'           IND_RECIBIDO_LOG,',
'           FEC_RECIBIDO_LOG,',
'           IND_RECIBIDO_LOG_OVIEDO,',
'           FEC_RECIBIDO_LOG_OVIEDO,',
'           IND_RETIRADO_TALLER,',
'           FEC_RETIRADO_TALLER,',
'           IND_ENVIADO_CLIENTE,',
'           FEC_ENVIADO_CLIENTE,',
'           COD_CLIENTE,',
'           NOMBRE_CLIENTE,',
'           COD_PAIS,',
'           COD_PROVINCIA,',
'           COD_CIUDAD,',
'           RUC,',
'           DIRECCION,',
'           COD_VENDEDOR,',
'           TELEFONO,',
'           COD_REPARTIDOR,',
'           COD_DISTRIBUIDOR,',
'           SOLUCION,',
'           TRANSPORTADORA,',
'           CORREO_LOGISTICA,',
'           COSTO_ENVIO,',
'           NRO_GUIA,',
'           IND_RECHAZO,',
'           COD_MOTIVO_RECHAZO,',
'           COMENTARIO_RECHAZO,',
'           IND_ANULADO,',
'           FEC_ANULACION,',
'           COD_USUARIO_CREACION,',
'           FECHA_CREACION,',
'           COMENTARIO           ',
'',
'    INTO   :P409_TIPO,',
'           :P409_SER_COMPROBANTE, ',
'           :P409_NRO_PLANILLA,',
'           :P409_FEC_PLANILLA,',
'           :P409_NRO_OT,',
'           :P409_SER_OT,',
'           :P409_IND_RECIBIDO_OG_CDE,',
'           :P409_FEC_RECIBIDO_OG_CDE,',
'           :P409_IND_RECIBIDO_LOG,',
'           :P409_FEC_RECIBIDO_LOG,',
'           :P409_IND_RECIBIDO_OG_OVIEDO,',
'           :P409_FEC_RECIBIDO_OG_OVIEDO,',
'           :P409_IND_RETIRADO_TALLER,',
'           :P409_FEC_RETIRADO_TALLER,',
'           :P409_IND_ENVIADO_CLIENTE,',
'           :P409_FEC_ENVIADO_CLIENTE,',
'           :P409_COD_CLIENTE,',
'           :P409_NOM_CLIENTE,',
'           :P409_COD_PAIS,',
'           :P409_COD_PROVINCIA,',
'           :P409_COD_CIUDAD,',
'           :P409_RUC,',
'           :P409_DIRECCION,',
'           :P409_COD_VENDEDOR,',
'           :P409_TELEFONO,',
'           :P409_COD_REPARTIDOR,',
'           :P409_COD_DISTRIBUIDOR,',
'           :P409_SOLUCION,',
'           :P409_TRANSPORTADORA,',
'           :P409_CORREO_LOGISTICA,',
'           :P409_COSTO_ENVIO,',
'           :P409_NRO_GUIA,',
'           :P409_IND_RECHAZO,',
'           :P409_COD_MOTIVO_RECHAZO,',
'           :P409_COMENTARIO_RECHAZO,',
'           :P409_IND_ANULADO,',
'           :P409_FEC_ANULACION,',
'           :P409_COD_USUARIO_CREACION,',
'           :P409_FEC_HORA,',
'           :P409_COMENTARIO',
'',
'FROM RP_Retiro_CABECERA',
'WHERE NRO_PLANILLA = :P409_P_NRO_PLANILLA',
'AND COD_EMPRESA = :P_COD_EMPRESA;',
'',
':P409_INDICADOR_IND := ''1'';',
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
,p_attribute_02=>'P409_P_NRO_PLANILLA'
,p_attribute_03=>'P409_TIPO,P409_SER_COMPROBANTE,P409_NRO_PLANILLA,P409_FEC_PLANILLA,P409_NRO_OT,P409_SER_OT,P409_IND_RECIBIDO_OG_CDE,P409_FEC_RECIBIDO_OG_CDE,P409_IND_RECIBIDO_LOG,P409_FEC_RECIBIDO_LOG,P409_IND_RECIBIDO_OG_OVIEDO,P409_FEC_RECIBIDO_OG_OVIEDO,P409_IND_'
||'RETIRADO_TALLER,P409_FEC_RETIRADO_TALLER,P409_IND_ENVIADO_CLIENTE,P409_FEC_ENVIADO_CLIENTE,P409_COD_CLIENTE,P409_NOM_CLIENTE,P409_COD_PAIS,P409_COD_PROVINCIA,P409_COD_CIUDAD,P409_RUC,P409_DIRECCION,P409_COD_VENDEDOR,P409_TELEFONO,P409_COD_REPARTIDOR,'
||'P409_COD_DISTRIBUIDOR,P409_SOLUCION,P409_TRANSPORTADORA,P409_CORREO_LOGISTICA,P409_COSTO_ENVIO,P409_NRO_GUIA,P409_IND_RECHAZO,P409_COD_MOTIVO_RECHAZO,P409_COMENTARIO_RECHAZO,P409_IND_ANULADO,P409_FEC_ANULACION,P409_COMENTARIO,P409_COD_USUARIO_CREACIO'
||'N,P409_FEC_HORA,P409_INDICADOR_IND'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123345837162114105)
,p_event_id=>wwv_flow_imp.id(123284553857246848)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    RPPLARET.PR_CREAR_COL_ARTICULOS (PI_NRO_PLANILLA => :P409_NRO_PLANILLA);',
'',
'    RPPLARET.PR_BUSCA_LLAMADAS (PI_NRO_PLANILLA => :P409_NRO_PLANILLA);    ',
'',
'    :P409_INDICADOR_ART_PLANTILLA := ''1'';',
'    :P409_INDICADOR_SEG_PLANTILLA := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P409_NRO_PLANILLA'
,p_attribute_03=>'P409_INDICADOR_ART_PLANTILLA,P409_INDICADOR_SEG_PLANTILLA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123345961990114106)
,p_event_id=>wwv_flow_imp.id(123284553857246848)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(122691386685441103)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123346045467114107)
,p_event_id=>wwv_flow_imp.id(123284553857246848)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(121624213535550640)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123346171329114108)
,p_name=>'DA_GUARDAR_DATOS_BD'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(123128310371526828)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123347324743114120)
,p_event_id=>wwv_flow_imp.id(123346171329114108)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFGuardar cambios?')
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123346219817114109)
,p_event_id=>wwv_flow_imp.id(123346171329114108)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDARBD'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123347081843114117)
,p_name=>'DA_LIMPIAR_CAMPOS'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(123346914035114116)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123347138939114118)
,p_event_id=>wwv_flow_imp.id(123347081843114117)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'LIMPIAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123348157777114128)
,p_name=>'DA_ENVIAR_CORREO'
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(122568538568834846)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123348294866114129)
,p_event_id=>wwv_flow_imp.id(123348157777114128)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    RPPLARET.PR_ENVIA_CORREO (PI_SER_COMPROBANTE => :P409_SER_COMPROBANTE,',
'                              PI_NRO_PLANILLA => :P409_NRO_PLANILLA,',
'                              PI_FEC_PLANILLA => :P409_FEC_PLANILLA,',
'                              PI_NOM_CLIENTE => :P409_NOM_CLIENTE,',
'                              PI_COD_CIUDAD => :P409_COD_CIUDAD,  ',
'                              PI_TELEFONO => :P409_TELEFONO,',
'                              PI_CORREO_LOGISTICA => :P409_CORREO_LOGISTICA,',
'                              PI_COD_PROVINCIA => :P409_COD_PROVINCIA,',
'                              PI_COD_PAIS => :P409_COD_PAIS,',
'                              PI_DIRECCION => :P409_DIRECCION,',
'                              PI_COMENTARIO => :P409_COMENTARIO,',
'                              PI_SER_OT => :P409_SER_OT,',
'                              PI_NRO_OT => :P409_NRO_OT);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P409_SER_COMPROBANTE,P409_NRO_PLANILLA,P409_FEC_PLANILLA,P409_NOM_CLIENTE,P409_COD_CIUDAD,P409_TELEFONO,P409_CORREO_LOGISTICA,P409_COD_PROVINCIA,P409_COD_PAIS,P409_DIRECCION,P409_COMENTARIO,P409_SER_OT,P409_NRO_OT'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123348313260114130)
,p_event_id=>wwv_flow_imp.id(123348157777114128)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Correo enviado.'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123348407959114131)
,p_name=>'DA_SETEAR_TRANSPORTADORA'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P409_TRANSPORTADORA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123348585351114132)
,p_event_id=>wwv_flow_imp.id(123348407959114131)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P409_TRANSPORTADORA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123348645637114133)
,p_name=>'DA_SETEAR_SOLUCION'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P409_SOLUCION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123348741588114134)
,p_event_id=>wwv_flow_imp.id(123348645637114133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P409_SOLUCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123349199315114138)
,p_name=>'DA_CERRAR_CR_ED_ART'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(123349007180114137)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123349210439114139)
,p_event_id=>wwv_flow_imp.id(123349199315114138)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(122693889049441128)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123349572137114142)
,p_name=>'DA_EDITAR_ARTICULO'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P409_SEQ_ID_ART_ED'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123349736257114144)
,p_event_id=>wwv_flow_imp.id(123349572137114142)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT C001,',
'           C003, ',
'           C004,',
'           C005,',
'           C006,',
'           D001,',
'           C007,',
'           C008,',
'           N001',
'',
'    INTO  :P409_COD_ARTICULO_CR_ED,',
'          :P409_CANTIDAD_CR_ED,',
'          :P409_FACTURA_CR_ED,',
'          :P409_GARANTIA_CR_ED,',
'          :P409_SERIE_CR_ED,',
'          :P409_FEC_COMPRA_CR_ED,',
'          :P409_SER_OT_CR_ED,',
'          :P409_TIP_OT_CR_ED,',
'          :P409_NRO_OT_CR_ED ',
'    ',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''ARTICULOS''',
'    AND SEQ_ID = :P409_SEQ_ID_ART_ED;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P409_SEQ_ID_ART_ED'
,p_attribute_03=>'P409_COD_ARTICULO_CR_ED,P409_CANTIDAD_CR_ED,P409_FACTURA_CR_ED,P409_GARANTIA_CR_ED,P409_SERIE_CR_ED,P409_FEC_COMPRA_CR_ED,P409_SER_OT_CR_ED,P409_TIP_OT_CR_ED,P409_NRO_OT_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123350077886114147)
,p_event_id=>wwv_flow_imp.id(123349572137114142)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(123349810192114145)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123350169087114148)
,p_event_id=>wwv_flow_imp.id(123349572137114142)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(123349905844114146)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123349647754114143)
,p_event_id=>wwv_flow_imp.id(123349572137114142)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(122693889049441128)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123350297659114149)
,p_name=>'DA_EDITAR_ART_COL'
,p_event_sequence=>310
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(123349905844114146)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123350393812114150)
,p_event_id=>wwv_flow_imp.id(123350297659114149)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    RPPLARET.PR_EDITAR_MIE_ARTICULOS (PI_SEQ_ID_EDITAR => :P409_SEQ_ID_ART_ED,',
'                                      PI_COD_ARTICULO => :P409_COD_ARTICULO_CR_ED,',
'                                      PI_CANTIDAD => :P409_CANTIDAD_CR_ED,',
'                                      PI_FACTURA => :P409_FACTURA_CR_ED,',
'                                      PI_GARANTIA => :P409_GARANTIA_CR_ED,',
'                                      PI_SERIE => :P409_SERIE_CR_ED,',
'                                      PI_FEC_COMPRA => :P409_FEC_COMPRA_CR_ED,',
'                                      PI_SER_OT => :P409_SER_OT_CR_ED,',
'                                      PI_TIP_OT => :P409_TIP_OT_CR_ED,',
'                                      PI_NRO_OT => :P409_NRO_OT_CR_ED);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P409_SEQ_ID_ART_ED,P409_COD_ARTICULO_CR_ED,P409_CANTIDAD_CR_ED,P409_FACTURA_CR_ED,P409_GARANTIA_CR_ED,P409_SERIE_CR_ED,P409_FEC_COMPRA_CR_ED,P409_SER_OT_CR_ED,P409_TIP_OT_CR_ED,P409_NRO_OT_CR_ED'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124200198395300501)
,p_event_id=>wwv_flow_imp.id(123350297659114149)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(122691386685441103)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124200266666300502)
,p_event_id=>wwv_flow_imp.id(123350297659114149)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(122693889049441128)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124200667559300506)
,p_name=>'DA_CREAR_ART_COL'
,p_event_sequence=>320
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(123349810192114145)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124200719151300507)
,p_event_id=>wwv_flow_imp.id(124200667559300506)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P409_COD_ARTICULO_CR_ED IS NULL OR :P409_CANTIDAD_CR_ED IS NULL THEN',
'        :P409_MENSAJE_ALERT := ''Compruebe que los datos obligatorios no esten vacios.'';',
'    ELSE',
'        :P409_MENSAJE_ALERT := NULL;',
'        RPPLARET.PR_AGREGAR_MIE_ARTICULOS (PI_COD_ARTICULO => :P409_COD_ARTICULO_CR_ED,',
'                                            PI_CANTIDAD => :P409_CANTIDAD_CR_ED,',
'                                            PI_FACTURA => :P409_FACTURA_CR_ED,',
'                                            PI_GARANTIA => :P409_GARANTIA_CR_ED,',
'                                            PI_SERIE => :P409_SERIE_CR_ED,',
'                                            PI_FEC_COMPRA => :P409_FEC_COMPRA_CR_ED,',
'                                            PI_SER_OT => :P409_SER_OT_CR_ED,',
'                                            PI_TIP_OT => :P409_TIP_OT_CR_ED,',
'                                            PI_NRO_OT => :P409_NRO_OT_CR_ED);',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P409_COD_ARTICULO_CR_ED,P409_CANTIDAD_CR_ED,P409_FACTURA_CR_ED,P409_GARANTIA_CR_ED,P409_SERIE_CR_ED,P409_FEC_COMPRA_CR_ED,P409_SER_OT_CR_ED,P409_TIP_OT_CR_ED,P409_NRO_OT_CR_ED'
,p_attribute_03=>'P409_MENSAJE_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124200847136300508)
,p_event_id=>wwv_flow_imp.id(124200667559300506)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P409_MENSAJE_ALERT.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P409_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124200999047300509)
,p_event_id=>wwv_flow_imp.id(124200667559300506)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(122691386685441103)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P409_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124201019437300510)
,p_event_id=>wwv_flow_imp.id(124200667559300506)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(122693889049441128)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P409_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(627199842310991321)
,p_name=>'DA_IMPRIMIR'
,p_event_sequence=>330
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(627199700135991320)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(627199988698991322)
,p_event_id=>wwv_flow_imp.id(627199842310991321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var comprobante = document.getElementById("P409_NRO_PLANILLA").value; ',
'var params = []',
'var empresa = apex.item("P_COD_EMPRESA").getValue();',
'',
'var nro_comprobante = apex.item("P409_NRO_PLANILLA").getValue();',
'var usuario = ''&APP_USER.'';',
'//var serie = $v("P723_SER_OT");',
'',
'var vfacnom = "CARETPRO2";',
' ',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})  ',
'params.push({ name: ''P_NRO_PLANILA'', value: nro_comprobante}) ',
'',
'createReportUrl(vfacnom, params)',
'                    '))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(122565938264834820)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P409_COD_MODULO  := ''RP'';',
'',
'    :P409_SER_COMPROBANTE := :P409_P_SER_PLANILLA;',
'    --:P409_NRO_PLANILLA := :P409_P_NRO_PLANILLA;',
'',
'    :P409_PERMISO_IND_REC_LOG := BUSCA_PERMISO (:P_COD_EMPRESA,',
'                                                ''RPPLARET'',',
'                                                :P_COD_USUARIO,',
'                                                ''TILDA_RECIBIDO_CDSL'');',
'                                              ',
'',
'	',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(123347288393114119)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_CAMPOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'LIMPIAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(123347475839114121)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   ',
'    RPPLARET.PR_ACTUALIZAR_PLANILLA (PI_NRO_PLANILLA => :P409_NRO_PLANILLA,',
'                                     PI_TIPO => :P409_TIPO,',
'                                     PI_SER_COMPROBANTE => :P409_SER_COMPROBANTE,',
'                                     PI_SER_OT => :P409_SER_OT,',
'                                     PI_NRO_OT => :P409_NRO_OT,',
'                                     PI_IND_RECIBIDO_OG_CDE => :P409_IND_RECIBIDO_OG_CDE,',
'                                     PI_FEC_RECIBIDO_OG_CDE => :P409_FEC_RECIBIDO_OG_CDE,',
'                                     PI_IND_RECIBIDO_LOG => :P409_IND_RECIBIDO_LOG,',
'                                     PI_FEC_RECIBIDO_LOG => :P409_FEC_RECIBIDO_LOG,',
'                                     PI_IND_RECIBIDO_OG_OVIEDO => :P409_IND_RECIBIDO_OG_OVIEDO,',
'                                     PI_FEC_RECIBIDO_OG_OVIEDO => :P409_FEC_RECIBIDO_OG_OVIEDO,',
'                                     PI_IND_RETIRADO_TALLER => :P409_IND_RETIRADO_TALLER,',
'                                     PI_FEC_RETIRADO_TALLER => :P409_FEC_RETIRADO_TALLER,',
'                                     PI_IND_ENVIADO_CLIENTE => :P409_IND_ENVIADO_CLIENTE,',
'                                     PI_FEC_ENVIADO_CLIENTE => :P409_FEC_ENVIADO_CLIENTE,',
'                                     PI_COD_CLIENTE => :P409_COD_CLIENTE,',
'                                     PI_NOM_CLIENTE => :P409_NOM_CLIENTE,',
'                                     PI_COD_PAIS => :P409_COD_PAIS,',
'                                     PI_COD_PROVINCIA => :P409_COD_PROVINCIA,',
'                                     PI_COD_CIUDAD => :P409_COD_CIUDAD,',
'                                     PI_RUC => :P409_RUC,',
'                                     PI_DIRECCION => :P409_DIRECCION,',
'                                     PI_COD_VENDEDOR => :P409_COD_VENDEDOR,',
'                                     PI_TELEFONO => :P409_TELEFONO,',
'                                     PI_COD_REPARTIDOR => :P409_COD_REPARTIDOR,',
'                                     PI_COD_DISTRIBUIDOR => :P409_COD_DISTRIBUIDOR,',
'                                     PI_SOLUCION => :P409_SOLUCION,',
'                                     PI_TRANSPORTADORA => :P409_TRANSPORTADORA,',
'                                     PI_CORREO_LOGISTICA => :P409_CORREO_LOGISTICA,',
'                                     PI_COSTO_ENVIO => :P409_COSTO_ENVIO,',
'                                     PI_NRO_GUIA => :P409_NRO_GUIA,',
'                                     PI_IND_RECHAZO => :P409_IND_RECHAZO,',
'                                     PI_COD_MOTIVO_RECHAZO => :P409_COD_MOTIVO_RECHAZO,',
'                                     PI_COMENTARIO_RECHAZO => :P409_COMENTARIO_RECHAZO,',
'                                     PI_IND_ANULADO => :P409_IND_ANULADO,',
'                                     PI_FEC_ANULACION => :P409_FEC_ANULACION,',
'                                     PI_COD_USUARIO_CREACION => :P409_COD_USUARIO_CREACION,',
'                                     PI_FEC_HORA => :P409_FEC_HORA,',
'                                     PI_COMENTARIO => :P409_COMENTARIO);',
'',
'        RPPLARET.PR_CONFIRMAR_ACCION (PI_NRO_PLANTILLA => :P409_NRO_PLANILLA, ',
'                                      PI_SER_COMPROBANTE => :P409_SER_COMPROBANTE);',
'/*',
'        BEGIN',
'        IF nvl(:P409_TRANSPORTADORA,''1'') =''3'' then		',
'    		RPPLARET.PR_ENVIAR_MENSAJE (PI_SER_COMPROBANTE => :P409_SER_COMPROBANTE,',
'                                        PI_NRO_PLANILLA => :P409_NRO_PLANILLA,',
'                                        PI_FEC_PLANILLA => :P409_FEC_PLANILLA,',
'                                        PI_NOM_CLIENTE => :P409_NOM_CLIENTE,',
'                                        PI_COD_CIUDAD => :P409_COD_CIUDAD,  ',
'                                        PI_TELEFONO => :P409_TELEFONO,',
'                                        PI_CORREO_LOGISTICA => :P409_CORREO_LOGISTICA,',
'                                        PI_COD_PROVINCIA => :P409_COD_PROVINCIA,',
'                                        PI_COD_PAIS => :P409_COD_PAIS,',
'                                        PI_DIRECCION => :P409_DIRECCION,',
'                                        PI_COMENTARIO => :P409_COMENTARIO,',
'                                        PI_SER_OT => :P409_SER_OT,',
'                                        PI_NRO_OT => :P409_NRO_OT);',
'		ELSE',
'	        RPPLARET.PR_ENVIA_CORREO (PI_SER_COMPROBANTE => :P409_SER_COMPROBANTE,',
'                                      PI_NRO_PLANILLA => :P409_NRO_PLANILLA,',
'                                      PI_FEC_PLANILLA => :P409_FEC_PLANILLA,',
'                                      PI_NOM_CLIENTE => :P409_NOM_CLIENTE,',
'                                      PI_COD_CIUDAD => :P409_COD_CIUDAD,  ',
'                                      PI_TELEFONO => :P409_TELEFONO,',
'                                      PI_CORREO_LOGISTICA => :P409_CORREO_LOGISTICA,',
'                                      PI_COD_PROVINCIA => :P409_COD_PROVINCIA,',
'                                      PI_COD_PAIS => :P409_COD_PAIS,',
'                                      PI_DIRECCION => :P409_DIRECCION,',
'                                      PI_COMENTARIO => :P409_COMENTARIO,',
'                                      PI_SER_OT => :P409_SER_OT,',
'                                      PI_NRO_OT => :P409_NRO_OT);',
'        END IF;',
'	  ',
'	EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(''Error para enviar correo '' || sqlerrm );',
'            ROLLBACK;',
'    END;',
'*/',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        ROLLBACK;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('Ocurri\00F3 un error.')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GUARDARBD'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>unistr('\00A1Los datos se guardaron exitosamente!')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(124201182412300511)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_CAMPOS_1'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GUARDARBD'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
