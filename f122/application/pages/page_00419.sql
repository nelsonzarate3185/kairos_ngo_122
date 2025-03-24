prompt --application/pages/page_00419
begin
--   Manifest
--     PAGE: 00419
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
 p_id=>419
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Control de Stock de Clientes - STKCLIEN'
,p_alias=>'STKCLIEN'
,p_step_title=>'Control de Stock de Clientes - STKCLIEN'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240910160622'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124201211960300512)
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
 p_id=>wwv_flow_imp.id(124201417556300514)
,p_plug_name=>'B_CABECERA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124201587119300515)
,p_plug_name=>'IZQ'
,p_parent_plug_id=>wwv_flow_imp.id(124201417556300514)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124201635259300516)
,p_plug_name=>unistr('Recepci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(124201417556300514)
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
 p_id=>wwv_flow_imp.id(124203230945300532)
,p_plug_name=>'BUSCAR COMPROBANTE'
,p_region_css_classes=>'js-dialog-size1200x580'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1050
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124204777464300547)
,p_plug_name=>'FILTROS'
,p_parent_plug_id=>wwv_flow_imp.id(124203230945300532)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124204964861300549)
,p_plug_name=>'RESULTADOS BUSQUEDA'
,p_parent_plug_id=>wwv_flow_imp.id(124203230945300532)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  NULL SELECCIONAR,',
'        NRO_COMPROBANTE,',
'        FEC_COMPROBANTE,',
'        TIP_COMPROBANTE_REF,',
'        SER_COMPROBANTE_REF,',
'        NRO_COMPROBANTE_REF,',
'        COD_SUCURSAL,',
'        COD_CLIENTE,',
'        ROWID ROW_ID_CONTROL        ',
'        ',
'FROM ST_STOCK_CLIENTE_CAB',
'WHERE COD_EMPRESA = :P_COD_EMPRESA',
'AND (NRO_COMPROBANTE = :P419_NRO_CONTROL_BUS OR :P419_NRO_CONTROL_BUS IS NULL)',
'AND (COD_CLIENTE = :P419_COD_CLIENTE_BUSQ OR :P419_COD_CLIENTE_BUSQ IS NULL)',
'AND (TIP_COMPROBANTE_REF = :P419_TIP_COMP_REF_BUSQ OR :P419_TIP_COMP_REF_BUSQ IS NULL)',
'AND (SER_COMPROBANTE_REF = :P419_SER_COMP_REF_BUSQ OR :P419_SER_COMP_REF_BUSQ IS NULL)',
'AND (NRO_COMPROBANTE_REF = :P419_NRO_COMP_REF_BUSQ OR :P419_NRO_COMP_REF_BUSQ IS NULL)',
'AND (FEC_COMPROBANTE >= TO_DATE (:P419_FEC_COMP_INI_BUSQ, ''DD/MM/YYYY'') OR :P419_FEC_COMP_INI_BUSQ IS NULL)',
'AND (FEC_COMPROBANTE <= TO_DATE (:P419_FEC_COMP_FIN_BUSQ, ''DD/MM/YYYY'') OR :P419_FEC_COMP_FIN_BUSQ IS NULL)',
'AND :P419_IND_REPORT_CONTROL = ''1'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P419_IND_REPORT_CONTROL,P419_NRO_CONTROL_BUS,P419_COD_CLIENTE_BUSQ,P419_SER_COMP_REF_BUSQ,P419_NRO_COMP_REF_BUSQ,P419_FEC_COMP_INI_BUSQ,P419_FEC_COMP_FIN_BUSQ,P419_IND_REPORT_CONTROL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'RESULTADOS BUSQUEDA'
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
 p_id=>wwv_flow_imp.id(124523027321365217)
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
,p_internal_uid=>124523027321365217
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124523137744365218)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nro Control'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124523256973365219)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124523360519365220)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tipo Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124523494884365221)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Serie Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124523517219365222)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nro. Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124523670963365223)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124523738872365224)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124524040614365227)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Seleccionar'
,p_column_link=>'javascript:$s(''P419_ROW_ID_BUSQ_CTRL'',''#ROW_ID_CONTROL#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124525024490365237)
,p_db_column_name=>'ROW_ID_CONTROL'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Row Id Control'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(124579047559074115)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1245791'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECCIONAR:NRO_COMPROBANTE:FEC_COMPROBANTE:TIP_COMPROBANTE_REF:SER_COMPROBANTE_REF:NRO_COMPROBANTE_REF:COD_SUCURSAL:COD_CLIENTE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124522483669365211)
,p_plug_name=>'B_DETALLE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  C001 cod_articulo,',
'        C002 descripcion,',
'        C003 CANTIDAD,',
'        C004 CANT_REMITIDA,',
'        C005 CANT_DISPONIBLE,',
'        C006 TIP_COMPROBANTE_REF,',
'        C007 SER_COMPROBANTE_REF,',
'        N001 NRO_COMPROBANTE_REF',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''ARTICULOS''',
'AND :P419_IND_REPORT_ARTICULOS = ''1'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P419_IND_REPORT_ARTICULOS'
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
 p_id=>wwv_flow_imp.id(124525851760365245)
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
,p_internal_uid=>124525851760365245
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124525989416365246)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124526091114365247)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124526139996365248)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124526274261365249)
,p_db_column_name=>'CANT_REMITIDA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cant Remitida'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124526358814365250)
,p_db_column_name=>'CANT_DISPONIBLE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cant Disponible'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124598935223789501)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124599034953789502)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Ser Comprobante Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124599184637789503)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(124607189151787397)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1246072'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ARTICULO:DESCRIPCION:CANTIDAD:CANT_REMITIDA:CANT_DISPONIBLE:TIP_COMPROBANTE_REF:SER_COMPROBANTE_REF:NRO_COMPROBANTE_REF'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124523883855365225)
,p_plug_name=>'INDICADORES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124524775523365234)
,p_plug_name=>'ROW/SEQ'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(124600062454789512)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(124201587119300515)
,p_button_name=>'BTN_BUSCAR_FACTURA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar Factura'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(124521877639365205)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(124204777464300547)
,p_button_name=>'BTN_BUSCAR_CONTROL'
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
 p_id=>wwv_flow_imp.id(124521930557365206)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(124204777464300547)
,p_button_name=>'BTN_LIMPIAR_CAMPOS_BUSQUEDA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(124203195165300531)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(124201635259300516)
,p_button_name=>'BTN_CREA_REMISION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Crea Remisi\00F3n')
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(124522707362365214)
,p_button_sequence=>1030
,p_button_plug_id=>wwv_flow_imp.id(124203230945300532)
,p_button_name=>'BTN_CREAR_CONTROL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Control de Stock'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(124599883686789510)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(124201417556300514)
,p_button_name=>'BTN_CREAR_CONTROL_MAIN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Control de Stock'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(124203302841300533)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(124201587119300515)
,p_button_name=>'BTN_BUSCAR_COMPROBANTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar Comprobante'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(124525460102365241)
,p_button_sequence=>1030
,p_button_plug_id=>wwv_flow_imp.id(124201417556300514)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124201794777300517)
,p_name=>'P419_IND_RECIBIDO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(124201635259300516)
,p_prompt=>'Recibido'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124201840703300518)
,p_name=>'P419_COD_USUARIO_RECEPCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(124201635259300516)
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
 p_id=>wwv_flow_imp.id(124201933904300519)
,p_name=>'P419_FECHA_RECEPCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(124201635259300516)
,p_prompt=>unistr('Fecha Recepci\00F3n')
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
 p_id=>wwv_flow_imp.id(124202287027300522)
,p_name=>'P419_NRO_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(124201587119300515)
,p_prompt=>'Nro. Control'
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
 p_id=>wwv_flow_imp.id(124202481577300524)
,p_name=>'P419_FECHA_ENTREGA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(124201587119300515)
,p_prompt=>'Fecha Entrega'
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
 p_id=>wwv_flow_imp.id(124202569968300525)
,p_name=>'P419_TIP_COMPROBANTE_REF'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(124201587119300515)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:1) FCR;FCR,2) FCO;FCO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124202699944300526)
,p_name=>'P419_SER_COMPROBANTE_REF'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(124201587119300515)
,p_prompt=>'Serie'
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
 p_id=>wwv_flow_imp.id(124202728624300527)
,p_name=>'P419_NRO_COMPROBANTE_REF'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(124201587119300515)
,p_prompt=>unistr('N\00FAmero')
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
 p_id=>wwv_flow_imp.id(124202878964300528)
,p_name=>'P419_FEC_COMPROBANTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(124201587119300515)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(124202933226300529)
,p_name=>'P419_COD_SUCURSAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(124201587119300515)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124203027385300530)
,p_name=>'P419_COD_CLIENTE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(124201587119300515)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124203642340300536)
,p_name=>'P419_CARGA_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(124201211960300512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124203720215300537)
,p_name=>'P419_MENSAJE_CREDITO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(124201211960300512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124203853484300538)
,p_name=>'P419_MENSAJE_CONTADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(124201211960300512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124203954947300539)
,p_name=>'P419_VENDEDOR_SERVICIOS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(124201211960300512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124204002289300540)
,p_name=>'P419_TIP_REFERENCIAS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(124201211960300512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124204164771300541)
,p_name=>'P419_COD_CLIENTE_OCA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(124201211960300512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124204349393300543)
,p_name=>'P419_COD_MODULO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(124201211960300512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124204413034300544)
,p_name=>'P419_COD_FORMA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(124201211960300512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124205065980300550)
,p_name=>'P419_TIP_COMP_REF_BUSQ'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(124204777464300547)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:1) FCR;FCR,2) FCO;FCO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124521491241365201)
,p_name=>'P419_SER_COMP_REF_BUSQ'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(124204777464300547)
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
 p_id=>wwv_flow_imp.id(124521502345365202)
,p_name=>'P419_NRO_COMP_REF_BUSQ'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(124204777464300547)
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
 p_id=>wwv_flow_imp.id(124521672698365203)
,p_name=>'P419_FEC_COMP_INI_BUSQ'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(124204777464300547)
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
 p_id=>wwv_flow_imp.id(124521745179365204)
,p_name=>'P419_COD_CLIENTE_BUSQ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(124204777464300547)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVCLIENTES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_CLIENTE||'' - ''||NOMBRE D, ',
'	   COD_CLIENTE R',
'  FROM CC_CLIENTES, ',
'       PERSONAS ',
' WHERE CC_CLIENTES.COD_EMPRESA = :P_COD_EMPRESA ',
'   AND CC_CLIENTES.COD_PERSONA = PERSONAS.COD_PERSONA ',
' ORDER BY NOMBRE'))
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
 p_id=>wwv_flow_imp.id(124522579998365212)
,p_name=>'P419_NRO_CONTROL_BUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(124204777464300547)
,p_prompt=>'Nro. Control de Stock'
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
 p_id=>wwv_flow_imp.id(124522853156365215)
,p_name=>'P419_FEC_COMP_FIN_BUSQ'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(124204777464300547)
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
 p_id=>wwv_flow_imp.id(124523956111365226)
,p_name=>'P419_IND_REPORT_CONTROL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(124523883855365225)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124524950420365236)
,p_name=>'P419_ROW_ID_BUSQ_CTRL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(124524775523365234)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124525775169365244)
,p_name=>'P419_IND_REPORT_ARTICULOS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(124523883855365225)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124602065064789532)
,p_name=>'P419_MENSAJE_ALERT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(124201211960300512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124602403697789536)
,p_name=>'P419_COD_SUCURSAL_MOSTRAR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(124201587119300515)
,p_prompt=>'Sucursal'
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
 p_id=>wwv_flow_imp.id(124602558188789537)
,p_name=>'P419_COD_CLIENTE_MOSTRAR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(124201587119300515)
,p_prompt=>'Cliente'
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
 p_id=>wwv_flow_imp.id(124603440299789546)
,p_name=>'P419_TIP_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(124201587119300515)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124603505782789547)
,p_name=>'P419_SER_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(124201587119300515)
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
 p_id=>wwv_flow_imp.id(124773268246288701)
,p_name=>'P419_URL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(124201211960300512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124202025689300520)
,p_name=>'DA_SETEAR_USUARIO_RECIBIDO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P419_IND_RECIBIDO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124202132679300521)
,p_event_id=>wwv_flow_imp.id(124202025689300520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P419_IND_RECIBIDO = ''S'' THEN',
'        :P419_COD_USUARIO_RECEPCION := :APP_USER;',
'        :P419_FECHA_RECEPCION := SYSDATE;',
'    ELSE',
'        :P419_COD_USUARIO_RECEPCION := NULL;',
'        :P419_FECHA_RECEPCION := NULL;',
'	END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P419_IND_RECIBIDO'
,p_attribute_03=>'P419_COD_USUARIO_RECEPCION,P419_FECHA_RECEPCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124203464653300534)
,p_name=>'DA_ABRIR_BUSQUEDA_COMPROBANTE'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(124203302841300533)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124599357073789505)
,p_event_id=>wwv_flow_imp.id(124203464653300534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P419_IND_REPORT_CONTROL := ''0'';',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P419_IND_REPORT_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124599443642789506)
,p_event_id=>wwv_flow_imp.id(124203464653300534)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124204964861300549)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124203563200300535)
,p_event_id=>wwv_flow_imp.id(124203464653300534)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124203230945300532)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124204527120300545)
,p_name=>'DA_LLAMAR_STREMISI'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(124203195165300531)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124204632455300546)
,p_event_id=>wwv_flow_imp.id(124204527120300545)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	SELECT APEX_PAGE.GET_URL (  p_page   => 178,',
'				    p_items  => ''P178_P_TIP_REF,P178_P_SER_REF,P178_P_NRO_REF'',',
'				    p_values => (''''||:P419_TIP_COMPROBANTE_REF||'',',
'                                  ''||:P419_SER_COMPROBANTE_REF||'',',
'                                  ''||:P419_NRO_COMPROBANTE_REF||'''')) f_url_1',
'		INTO :P419_URL',
'		FROM DUAL;    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P419_TIP_COMPROBANTE_REF,P419_SER_COMPROBANTE_REF,P419_NRO_COMPROBANTE_REF'
,p_attribute_03=>'P419_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124773373001288702)
,p_event_id=>wwv_flow_imp.id(124204527120300545)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P419_URL").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124522062665365207)
,p_name=>'DA_LIMPIAR_CAMPOS_BUSQUEDA'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(124521930557365206)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124522173694365208)
,p_event_id=>wwv_flow_imp.id(124522062665365207)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P419_SER_COMP_REF_BUSQ,P419_NRO_COMP_REF_BUSQ,P419_FEC_COMP_INI_BUSQ,P419_COD_CLIENTE_BUSQ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124522208822365209)
,p_name=>'DA_BUSCAR_CONTROL'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(124521877639365205)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124522997403365216)
,p_event_id=>wwv_flow_imp.id(124522208822365209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P419_IND_REPORT_CONTROL := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P419_IND_REPORT_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124524129280365228)
,p_event_id=>wwv_flow_imp.id(124522208822365209)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124204964861300549)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124524321312365230)
,p_name=>'DA_ABRIR_BUSQUEDA_CONTROL'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124524427759365231)
,p_event_id=>wwv_flow_imp.id(124524321312365230)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124203230945300532)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124600872961789520)
,p_event_id=>wwv_flow_imp.id(124524321312365230)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(124600062454789512)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124525161067365238)
,p_name=>'DA_SETEAR_CONTROL'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P419_ROW_ID_BUSQ_CTRL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124525372379365240)
,p_event_id=>wwv_flow_imp.id(124525161067365238)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT  NRO_COMPROBANTE,',
'            FEC_COMPROBANTE,',
'            TIP_COMPROBANTE_REF,',
'            SER_COMPROBANTE_REF,',
'            NRO_COMPROBANTE_REF,',
'            COD_SUCURSAL,',
'            COD_CLIENTE,',
'            IND_RECIBIDO,',
'            COD_USUARIO_RECEPCION,',
'            FECHA_RECEPCION',
'            ',
'    INTO    :P419_NRO_COMPROBANTE,',
'            :P419_FEC_COMPROBANTE,',
'            :P419_TIP_COMPROBANTE_REF,',
'            :P419_SER_COMPROBANTE_REF,',
'            :P419_NRO_COMPROBANTE_REF,',
'            :P419_COD_SUCURSAL,',
'            :P419_COD_CLIENTE,',
'            :P419_IND_RECIBIDO,',
'            :P419_COD_USUARIO_RECEPCION,',
'            :P419_FECHA_RECEPCION',
'',
'    FROM ST_STOCK_CLIENTE_CAB',
'    WHERE ROWID = :P419_ROW_ID_BUSQ_CTRL;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        ',
'END;',
''))
,p_attribute_02=>'P419_ROW_ID_BUSQ_CTRL'
,p_attribute_03=>'P419_NRO_COMPROBANTE,P419_FEC_COMPROBANTE,P419_TIP_COMPROBANTE_REF,P419_SER_COMPROBANTE_REF,P419_NRO_COMPROBANTE_REF,P419_COD_SUCURSAL,P419_COD_CLIENTE,P419_IND_RECIBIDO,P419_COD_USUARIO_RECEPCION,P419_FECHA_RECEPCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124525546013365242)
,p_event_id=>wwv_flow_imp.id(124525161067365238)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT  (A.FECHA_ENTREGA )',
'       INTO :P419_FECHA_ENTREGA',
'       FROM VT_PEDIDOS_CABECERA A, VT_COMPROBANTES_CABECERA C',
'      WHERE C.cod_empresa = :P_COD_EMPRESA',
'        AND A.TIP_COMPROBANTE IN (''FCO'',''FCR'')',
'        AND A.NRO_COMPROBANTE= :P419_NRO_COMPROBANTE_REF',
'        AND A.SER_COMPROBANTE= :P419_SER_COMPROBANTE_REF',
'        AND A.COD_EMPRESA = C.COD_EMPRESA',
'        AND A.tip_comprobante = C.tip_comprobante_ref',
'        AND A.ser_comprobante = C.ser_comprobante_ref',
'        AND A.nro_comprobante = C.nro_comprobante_ref;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'       APEX_DEBUG.ERROR(SQLERRM);',
'       :P419_FECHA_ENTREGA := NULL;',
'END;',
'',
'',
''))
,p_attribute_02=>'P419_NRO_COMPROBANTE_REF,P419_SER_COMPROBANTE_REF'
,p_attribute_03=>'P419_FECHA_ENTREGA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124525669316365243)
,p_event_id=>wwv_flow_imp.id(124525161067365238)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STKCLIEN.PR_BUSCA_ARTICULOS (PI_TIP_COMPROBANTE_REF => :P419_TIP_COMPROBANTE_REF,',
'                                 PI_SER_COMPROBANTE_REF => :P419_SER_COMPROBANTE_REF,',
'                                 PI_NRO_COMPROBANTE_REF => :P419_NRO_COMPROBANTE_REF,',
'                                 PI_COD_CLIENTE => :P419_COD_CLIENTE);',
'',
'    :P419_IND_REPORT_ARTICULOS := ''1'';',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
''))
,p_attribute_02=>'P419_TIP_COMPROBANTE_REF,P419_SER_COMPROBANTE_REF,P419_NRO_COMPROBANTE_REF,P419_COD_CLIENTE'
,p_attribute_03=>'P419_IND_REPORT_ARTICULOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124599244015789504)
,p_event_id=>wwv_flow_imp.id(124525161067365238)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124522483669365211)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124601482085789526)
,p_event_id=>wwv_flow_imp.id(124525161067365238)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(124600062454789512)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124601571878789527)
,p_event_id=>wwv_flow_imp.id(124525161067365238)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P419_TIP_COMPROBANTE_REF,P419_SER_COMPROBANTE_REF,P419_NRO_COMPROBANTE_REF'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124525214365365239)
,p_event_id=>wwv_flow_imp.id(124525161067365238)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124203230945300532)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124599571223789507)
,p_name=>'DA_GUARDAR_CAMBIOS'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(124525460102365241)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124603707050789549)
,p_event_id=>wwv_flow_imp.id(124599571223789507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar los cambios?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124599661872789508)
,p_event_id=>wwv_flow_imp.id(124599571223789507)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDARCAMBIOS'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124600123590789513)
,p_name=>'DA_BUSQUEDA_FACTURA'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(124600062454789512)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124774060559288709)
,p_event_id=>wwv_flow_imp.id(124600123590789513)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P419_NRO_COMPROBANTE_REF IS NOT NULL AND :P419_SER_COMPROBANTE_REF IS NOT NULL AND :P419_TIP_COMPROBANTE_REF IS NOT NULL THEN',
'        ',
'        STKCLIEN.PR_VALIDAR_FACTURA (PI_TIP_COMPROBANTE_REF => :P419_TIP_COMPROBANTE_REF,',
'                                     PI_SER_COMPROBANTE_REF => :P419_SER_COMPROBANTE_REF,',
'                                     PI_NRO_COMPROBANTE_REF => :P419_NRO_COMPROBANTE_REF,',
'                                     PO_MENSAJE_ALERT => :P419_MENSAJE_ALERT);',
'',
'    ELSE',
'        :P419_MENSAJE_ALERT := ''Compruebe que los datos obligatorios no esten vacio.'';',
'    END IF;',
'',
'    APEX_DEBUG.ERROR(''FACTURA'' || :P419_MENSAJE_ALERT);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        :P419_MENSAJE_ALERT := ''Error en Validaci\00F3n Factura.'';'),
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P419_NRO_COMPROBANTE_REF,P419_SER_COMPROBANTE_REF,P419_TIP_COMPROBANTE_REF'
,p_attribute_03=>'P419_MENSAJE_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124601942950789531)
,p_event_id=>wwv_flow_imp.id(124600123590789513)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P419_NRO_COMPROBANTE_REF IS NOT NULL AND',
'       :P419_SER_COMPROBANTE_REF IS NOT NULL AND',
'       :P419_TIP_COMPROBANTE_REF IS NOT NULL THEN',
'',
'        	BEGIN',
'              select ca.cod_cliente, fec_comprobante, ca.tip_comprobante, ca.cod_sucursal	',
'                 into :P419_COD_CLIENTE,',
'                      :P419_FEC_COMPROBANTE,',
'                      :P419_TIP_COMPROBANTE_REF,',
'                      :P419_COD_SUCURSAL	                                      		                                      ',
'                 from cc_clientes c, ',
'                      personas p, ',
'                      vt_comprobantes_cabecera ca',
'                where ca.cod_empresa = :P_COD_EMPRESA',
'                  and c.cod_persona = p.cod_persona',
'                  and c.cod_cliente = ca.cod_cliente',
'                  and c.cod_empresa = ca.cod_empresa',
'                   and ca.tip_comprobante   in( ''FCR'',''FCO'')',
'                  and ca.ser_comprobante = :P419_SER_COMPROBANTE_REF',
'                  and ca.nro_comprobante = :P419_NRO_COMPROBANTE_REF;',
'',
'               :P419_MENSAJE_ALERT := NULL;',
'',
'        	EXCEPTION',
'        		WHEN NO_DATA_FOUND THEN',
'        			:P419_MENSAJE_ALERT := ''No se encuentra la Factura Ingresada'';',
'                    APEX_DEBUG.ERROR(SQLERRM);',
'        		WHEN OTHERS THEN',
unistr('        			:P419_MENSAJE_ALERT := ''Error en Validaci\00F3n Factura.'';'),
'        		    APEX_DEBUG.ERROR(SQLERRM);',
'        	END;',
'',
'            BEGIN',
'              SELECT  (A.FECHA_ENTREGA )',
'                INTO :P419_FECHA_ENTREGA',
'                FROM VT_PEDIDOS_CABECERA A, VT_COMPROBANTES_CABECERA C',
'               where C.cod_empresa = :P_COD_EMPRESA',
'               AND A.TIP_COMPROBANTE IN (''FCO'',''FCR'')',
'               AND A.NRO_COMPROBANTE = :P419_NRO_COMPROBANTE_REF',
'               AND A.SER_COMPROBANTE = :P419_SER_COMPROBANTE_REF',
'               AND A.COD_EMPRESA=C.COD_EMPRESA',
'                 and A.tip_comprobante = C.tip_comprobante_ref',
'                 and A.ser_comprobante = C.ser_comprobante_ref',
'                 and A.nro_comprobante = C.nro_comprobante_ref;',
'            EXCEPTION',
'              WHEN OTHERS THEN',
'                :P419_FECHA_ENTREGA := NULL;',
'            END;',
'',
'            BEGIN',
'        		SELECT NVL(MAX(NRO_COMPROBANTE),0)+1',
'        		INTO :P419_NRO_COMPROBANTE',
'        		FROM st_stock_cliente_cab',
'        		WHERE COD_EMPRESA = :P_COD_EMPRESA;',
'            EXCEPTION',
'            	WHEN OTHERS THEN',
'            		:P419_NRO_COMPROBANTE := 1;',
'            END;',
'',
'            :P419_TIP_COMPROBANTE := ''CSC'';',
'            :P419_SER_COMPROBANTE := ''A'';    ',
'    ELSE',
'        :P419_MENSAJE_ALERT := ''Compruebe que los datos obligatorios de la factura no esten vacios.'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        :P419_MENSAJE_ALERT := ''Error en Validaci\00F3n Factura.'';'),
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P419_NRO_COMPROBANTE_REF,P419_SER_COMPROBANTE_REF,P419_TIP_COMPROBANTE_REF'
,p_attribute_03=>'P419_MENSAJE_ALERT,P419_COD_CLIENTE,P419_FEC_COMPROBANTE,P419_TIP_COMPROBANTE_REF,P419_COD_SUCURSAL,P419_FECHA_ENTREGA,P419_NRO_COMPROBANTE,P419_TIP_COMPROBANTE,P419_SER_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124602185270789533)
,p_event_id=>wwv_flow_imp.id(124600123590789513)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P419_MENSAJE_ALERT.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P419_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124602376619789535)
,p_event_id=>wwv_flow_imp.id(124600123590789513)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STKCLIEN.PR_BUSCA_ARTICULOS (PI_TIP_COMPROBANTE_REF => :P419_TIP_COMPROBANTE_REF,',
'                                 PI_SER_COMPROBANTE_REF => :P419_SER_COMPROBANTE_REF,',
'                                 PI_NRO_COMPROBANTE_REF => :P419_NRO_COMPROBANTE_REF,',
'                                 PI_COD_CLIENTE => :P419_COD_CLIENTE);',
'',
'    :P419_IND_REPORT_ARTICULOS := ''1'';',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
''))
,p_attribute_02=>'P419_TIP_COMPROBANTE_REF,P419_SER_COMPROBANTE_REF,P419_NRO_COMPROBANTE_REF,P419_COD_CLIENTE'
,p_attribute_03=>'P419_IND_REPORT_ARTICULOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P419_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124602219887789534)
,p_event_id=>wwv_flow_imp.id(124600123590789513)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124522483669365211)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P419_MENSAJE_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124600958905789521)
,p_name=>'DA_CREAR_CONTROL'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(124522707362365214)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124603245897789544)
,p_event_id=>wwv_flow_imp.id(124600958905789521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P419_NRO_COMPROBANTE,P419_FECHA_ENTREGA,P419_FECHA_RECEPCION,P419_TIP_COMPROBANTE_REF,P419_SER_COMPROBANTE_REF,P419_NRO_COMPROBANTE_REF,P419_COD_SUCURSAL,P419_COD_SUCURSAL_MOSTRAR,P419_COD_CLIENTE,P419_COD_CLIENTE_MOSTRAR,P419_IND_REPORT_ARTICULOS,P4'
||'19_FEC_COMPROBANTE,P419_COD_USUARIO_RECEPCION,P419_IND_RECIBIDO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124603362351789545)
,p_event_id=>wwv_flow_imp.id(124600958905789521)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124522483669365211)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124601121244789523)
,p_event_id=>wwv_flow_imp.id(124600958905789521)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124203230945300532)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124601091156789522)
,p_event_id=>wwv_flow_imp.id(124600958905789521)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(124600062454789512)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124601638044789528)
,p_event_id=>wwv_flow_imp.id(124600958905789521)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P419_TIP_COMPROBANTE_REF,P419_SER_COMPROBANTE_REF,P419_NRO_COMPROBANTE_REF'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124601219626789524)
,p_name=>'DA_CREAR_CONTROL_MAIN'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(124599883686789510)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124603031109789542)
,p_event_id=>wwv_flow_imp.id(124601219626789524)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P419_NRO_COMPROBANTE,P419_FECHA_ENTREGA,P419_FECHA_RECEPCION,P419_TIP_COMPROBANTE_REF,P419_SER_COMPROBANTE_REF,P419_NRO_COMPROBANTE_REF,P419_COD_SUCURSAL,P419_COD_SUCURSAL_MOSTRAR,P419_COD_CLIENTE,P419_COD_CLIENTE_MOSTRAR,P419_IND_REPORT_ARTICULOS,P4'
||'19_FEC_COMPROBANTE,P419_COD_USUARIO_RECEPCION,P419_IND_RECIBIDO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124603123064789543)
,p_event_id=>wwv_flow_imp.id(124601219626789524)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124522483669365211)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124601756809789529)
,p_event_id=>wwv_flow_imp.id(124601219626789524)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(124600062454789512)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124601810367789530)
,p_event_id=>wwv_flow_imp.id(124601219626789524)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P419_TIP_COMPROBANTE_REF,P419_SER_COMPROBANTE_REF,P419_NRO_COMPROBANTE_REF'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124602625191789538)
,p_name=>'DA_SETEAR_SUCURSAL'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P419_COD_SUCURSAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124602708618789539)
,p_event_id=>wwv_flow_imp.id(124602625191789538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   BEGIN',
'    select cod_sucursal || '' - '' || descripcion',
'      into :P419_COD_SUCURSAL_MOSTRAR',
'      from sucursales',
'     where cod_empresa = :P_COD_EMPRESA',
'       and cod_sucursal = :P419_COD_SUCURSAL;',
'  EXCEPTION',
'    when no_data_found then',
'      :P419_COD_SUCURSAL_MOSTRAR := NULL;',
unistr('      APEX_DEBUG.ERROR(''No se encuentra c\00F3digo de sucursal.'' || SQLERRM);'),
'    when others then',
'      :P419_COD_SUCURSAL_MOSTRAR := NULL;',
'      APEX_DEBUG.ERROR(''Error en la tabla de Sucursales .'' || SQLERRM);',
'  END;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P419_COD_SUCURSAL'
,p_attribute_03=>'P419_COD_SUCURSAL_MOSTRAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124602871319789540)
,p_name=>'DA_SETEAR_CLIENTE'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P419_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124602993429789541)
,p_event_id=>wwv_flow_imp.id(124602871319789540)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT COD_CLIENTE ||'' - ''|| NOMBRE',
'    INTO :P419_COD_CLIENTE_MOSTRAR',
'    FROM CC_CLIENTES, PERSONAS ',
'     WHERE CC_CLIENTES.COD_EMPRESA = :P_COD_EMPRESA ',
'       AND CC_CLIENTES.COD_PERSONA = PERSONAS.COD_PERSONA',
'       AND CC_CLIENTES.COD_CLIENTE = :P419_COD_CLIENTE;',
'',
'',
'',
'EXCEPTION',
'	WHEN NO_DATA_FOUND THEN',
'		:P419_COD_CLIENTE_MOSTRAR := NULL;',
'        APEX_DEBUG.ERROR(''No se encuentran datos del cliente.'' ||SQLERRM);',
'	WHEN OTHERS THEN',
'		:P419_COD_CLIENTE_MOSTRAR := NULL;',
'        APEX_DEBUG.ERROR(''Error en tabla clientes.'' ||SQLERRM);',
'END;'))
,p_attribute_02=>'P419_COD_CLIENTE'
,p_attribute_03=>'P419_COD_CLIENTE_MOSTRAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(124524651282365233)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_DATOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(124204269428300542)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P419_COD_MODULO := ''ST'';',
'    :P419_COD_FORMA := ''STKCLIEN'';',
'',
'    :P419_COD_CLIENTE_OCA := BS_busca_parametro (:P419_COD_MODULO, ''COD_CLIENTE_OCASION'');',
'    :P419_TIP_REFERENCIAS  := BS_busca_parametro(:P419_COD_MODULO, ''TIP_REFERENCIAS'');',
'    :P419_VENDEDOR_SERVICIOS := BS_busca_parametro (:P419_COD_MODULO, ''VENDEDOR_SERVICIOS'');',
'    :P419_MENSAJE_CONTADO := BS_busca_parametro (:P419_COD_MODULO, ''LEYENDA_CONTADO'');',
'    :P419_MENSAJE_CREDITO := BS_busca_parametro (:P419_COD_MODULO, ''LEYENDA_CREDITO'');',
'',
'    :P419_CARGA_SUCURSAL := busca_permiso (:P_COD_EMPRESA,',
'                                           :P419_COD_FORMA,',
'                                           :P_COD_USUARIO,',
'                                           ''CARGA_SUCURSAL'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(124603647330789548)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR_BD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    STKCLIEN.PR_GUARDAR_CONTROL_BD (  PI_TIP_COMPROBANTE => :P419_TIP_COMPROBANTE,',
'                                      PI_SER_COMPROBANTE => :P419_SER_COMPROBANTE,',
'                                      PI_NRO_COMPROBANTE => :P419_NRO_COMPROBANTE,',
'                                      PI_COD_SUCURSAL => :P419_COD_SUCURSAL,',
'                                      PI_FEC_COMPROBANTE => :P419_FEC_COMPROBANTE,',
'                                      PI_COD_CLIENTE => :P419_COD_CLIENTE,',
'                                      PI_TIP_COMPROBANTE_REF => :P419_TIP_COMPROBANTE_REF,',
'                                      PI_SER_COMPROBANTE_REF => :P419_SER_COMPROBANTE_REF,',
'                                      PI_NRO_COMPROBANTE_REF => :P419_NRO_COMPROBANTE_REF,',
'                                      PI_IND_RECIBIDO => :P419_IND_RECIBIDO,',
'                                      PI_COD_USUARIO_RECEPCION => :P419_COD_USUARIO_RECEPCION,',
'                                      PI_FECHA_RECEPCION => :P419_FECHA_RECEPCION);',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('Ocurri\00F3 un error.')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GUARDARCAMBIOS'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Datos guardados exitosamente.'
);
wwv_flow_imp.component_end;
end;
/
