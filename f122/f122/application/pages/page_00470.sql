prompt --application/pages/page_00470
begin
--   Manifest
--     PAGE: 00470
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
 p_id=>470
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Consulta de Saldos - CCCSALDO'
,p_alias=>'CCCSALDO'
,p_step_title=>'Consulta de Saldos - CCCSALDO'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'EMILIANOP'
,p_last_upd_yyyymmddhh24miss=>'20230404140237'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(139800717574306738)
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
 p_id=>wwv_flow_imp.id(139801824878306749)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140070378225472701)
,p_plug_name=>'B_SALDOS'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'       NULL CARGA_NOTAS, ',
'       C003 tipo_comprobante,',
'       C004 ser_comprobante,',
'       C005 nro_comprobante,',
'       C007 nro_cuota,',
'       C027 nro_valor,',
'       C014 cod_custodio,',
'       C006 cod_cliente,',
'       D003 fec_origen,',
'       D001 fec_vencimiento,',
'       C009 cod_moneda_cuota,',
'       C008 monto_cuota,',
'       C010 saldo_cuota,',
'       SEQ_ID SEQ_ID_SALDOS,',
'       NULL DETALLES',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''SALDOS''',
'AND :P470_IND_REP_SALDOS = ''1''',
'    '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P470_IND_REP_SALDOS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'B_SALDOS'
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
 p_id=>wwv_flow_imp.id(140070481495472702)
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
,p_internal_uid=>140070481495472702
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140070789572472705)
,p_db_column_name=>'TIPO_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tipo Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140070887639472706)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140071051461472708)
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
 p_id=>wwv_flow_imp.id(140071279976472710)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fec. Vencimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140071508243472713)
,p_db_column_name=>'COD_MONEDA_CUOTA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Moneda Cuota'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(41249848670130454)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140071851248472716)
,p_db_column_name=>'FEC_ORIGEN'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>unistr('Fec. Emisi\00F3n')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140072285100472720)
,p_db_column_name=>'COD_CUSTODIO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cod Custodio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140073621234472734)
,p_db_column_name=>'NRO_VALOR'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Nro Valor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140156731943123815)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>330
,p_column_identifier=>'AQ'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140156834241123816)
,p_db_column_name=>'NRO_CUOTA'
,p_display_order=>340
,p_column_identifier=>'AR'
,p_column_label=>'Nro Cuota'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140156965287123817)
,p_db_column_name=>'MONTO_CUOTA'
,p_display_order=>350
,p_column_identifier=>'AS'
,p_column_label=>'Monto Cuota'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140157031629123818)
,p_db_column_name=>'SALDO_CUOTA'
,p_display_order=>360
,p_column_identifier=>'AT'
,p_column_label=>'Saldo Cuota'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140157137781123819)
,p_db_column_name=>'DETALLES'
,p_display_order=>370
,p_column_identifier=>'AU'
,p_column_label=>'Detalles'
,p_column_link=>'javascript:$s(''P470_SEQ_ID_DET_SALDOS'',''#SEQ_ID_SALDOS#'');'
,p_column_linktext=>'<span class="fa fa-eye" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140157552780123823)
,p_db_column_name=>'SEQ_ID_SALDOS'
,p_display_order=>380
,p_column_identifier=>'AV'
,p_column_label=>'Seq Id Saldos'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140576423503633912)
,p_db_column_name=>'CARGA_NOTAS'
,p_display_order=>390
,p_column_identifier=>'AW'
,p_column_label=>'Carga Notas'
,p_column_link=>'javascript:$s(''P470_SEQ_ID_CARGA_NOTAS'',''#SEQ_ID_SALDOS#'');'
,p_column_linktext=>'<span class="fa fa-file-text-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(140101430801370566)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1401015'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CARGA_NOTAS:TIPO_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:NRO_VALOR:COD_CUSTODIO:COD_CLIENTE:FEC_ORIGEN:FEC_VENCIMIENTO:COD_MONEDA_CUOTA:MONTO_CUOTA:SALDO_CUOTA:DETALLES:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140074785076472745)
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
 p_id=>wwv_flow_imp.id(140155927912123807)
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
 p_id=>wwv_flow_imp.id(140157628492123824)
,p_plug_name=>'SEQ ID'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140159816007123846)
,p_plug_name=>'B_PIE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1050
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140575998206633907)
,p_plug_name=>'IZQ'
,p_parent_plug_id=>wwv_flow_imp.id(140159816007123846)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>100
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140576052688633908)
,p_plug_name=>'DER'
,p_parent_plug_id=>wwv_flow_imp.id(140159816007123846)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>190
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(140155650195123804)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(140074785076472745)
,p_button_name=>'BTN_BUSCAR_SALDOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(140155799207123805)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(140074785076472745)
,p_button_name=>'BTN_LIMPIAR_CAMPOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139800977739306740)
,p_name=>'P470_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(139800717574306738)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139801064467306741)
,p_name=>'P470_CAMBIA_CUSTODIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(139800717574306738)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139801162568306742)
,p_name=>'P470_CAMBIA_SECTOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(139800717574306738)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139801255330306743)
,p_name=>'P470_CAMBIA_NRO_VALOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(139800717574306738)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139801387633306744)
,p_name=>'P470_CAMBIA_FEC_VENCIMIENTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(139800717574306738)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139801431730306745)
,p_name=>'P470_PERMITE_BORRAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(139800717574306738)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139801538129306746)
,p_name=>'P470_COD_MONEDA_BASE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(139800717574306738)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139801775431306748)
,p_name=>'P470_COD_FORMA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(139800717574306738)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139801962200306750)
,p_name=>'P470_P_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(139801824878306749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140074833581472746)
,p_name=>'P470_TIPO_COMPROBANTE_BUSQ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(140074785076472745)
,p_prompt=>'Tipo Comprobante'
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
 p_id=>wwv_flow_imp.id(140074939542472747)
,p_name=>'P470_SER_COMPROBANTE_BUSQ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(140074785076472745)
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
 p_id=>wwv_flow_imp.id(140075052457472748)
,p_name=>'P470_NRO_COMPROBANTE_BUSQ'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(140074785076472745)
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
 p_id=>wwv_flow_imp.id(140075111950472749)
,p_name=>'P470_COD_CLIENTE_BUSQ'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(140074785076472745)
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
,p_lov_null_text=>'--'
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
 p_id=>wwv_flow_imp.id(140075266620472750)
,p_name=>'P470_FEC_VENCIMIENTO_INI_BUSQ'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(140074785076472745)
,p_prompt=>'Fec. vencimiento desde'
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
 p_id=>wwv_flow_imp.id(140155369915123801)
,p_name=>'P470_FEC_ORIGEN_INI_BUSQ'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(140074785076472745)
,p_prompt=>unistr('Fec. emisi\00F3n desde')
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
 p_id=>wwv_flow_imp.id(140155451346123802)
,p_name=>'P470_FEC_VENCIMIENTO_FIN_BUSQ'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(140074785076472745)
,p_prompt=>'Fec. vencimiento hasta'
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
 p_id=>wwv_flow_imp.id(140155529164123803)
,p_name=>'P470_FEC_ORIGEN_FIN_BUSQ'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(140074785076472745)
,p_prompt=>unistr('Fec. emisi\00F3n hasta')
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
 p_id=>wwv_flow_imp.id(140156031095123808)
,p_name=>'P470_IND_REP_SALDOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(140155927912123807)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140157751602123825)
,p_name=>'P470_SEQ_ID_DET_SALDOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(140157628492123824)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140159969490123847)
,p_name=>'P470_COD_SECTOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(140575998206633907)
,p_prompt=>'Sector Cta. Cte.'
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
 p_id=>wwv_flow_imp.id(140160033560123848)
,p_name=>'P470_COD_SECTORE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(140575998206633907)
,p_prompt=>'Sector Persona'
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
 p_id=>wwv_flow_imp.id(140160137614123849)
,p_name=>'P470_COD_USUARIO_PIE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(140575998206633907)
,p_prompt=>'Usuario'
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
 p_id=>wwv_flow_imp.id(140160247260123850)
,p_name=>'P470_FACTURA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(140576052688633908)
,p_prompt=>'Facturas'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140575449241633902)
,p_name=>'P470_NOM_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(140575998206633907)
,p_prompt=>'Nombre Cliente'
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
 p_id=>wwv_flow_imp.id(140575567539633903)
,p_name=>'P470_DESC_SECTOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(140575998206633907)
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
 p_id=>wwv_flow_imp.id(140575656474633904)
,p_name=>'P470_DESC_SECTOR_E'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(140575998206633907)
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
 p_id=>wwv_flow_imp.id(140575722285633905)
,p_name=>'P470_DESC_MONEDA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(140575998206633907)
,p_prompt=>'Moneda'
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
 p_id=>wwv_flow_imp.id(140575898064633906)
,p_name=>'P470_FEC_CUSTODIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(140575998206633907)
,p_prompt=>'Fecha Custodio'
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
 p_id=>wwv_flow_imp.id(140576519185633913)
,p_name=>'P470_SEQ_ID_CARGA_NOTAS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(140157628492123824)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140576884141633916)
,p_name=>'P470_TIP_REP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(140155927912123807)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140576915100633917)
,p_name=>'P470_TIP_COMP_ENVIAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(140155927912123807)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140577036120633918)
,p_name=>'P470_SER_COMP_ENVIAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(140155927912123807)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140577107400633919)
,p_name=>'P470_NRO_COMP_ENVIAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(140155927912123807)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140577724009633925)
,p_name=>'P470_URL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(139800717574306738)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140156137583123809)
,p_name=>'DA_LIMPIAR_CAMPOS'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(140155799207123805)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140576129040633909)
,p_event_id=>wwv_flow_imp.id(140156137583123809)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P470_TIPO_COMPROBANTE_BUSQ,P470_SER_COMPROBANTE_BUSQ,P470_NRO_COMPROBANTE_BUSQ,P470_COD_CLIENTE_BUSQ,P470_FEC_VENCIMIENTO_INI_BUSQ,P470_FEC_VENCIMIENTO_FIN_BUSQ,P470_FEC_ORIGEN_INI_BUSQ,P470_FEC_ORIGEN_FIN_BUSQ,P470_IND_REP_SALDOS,P470_NOM_CLIENTE,P4'
||'70_COD_SECTOR,P470_DESC_SECTOR,P470_COD_SECTORE,P470_DESC_SECTOR_E,P470_DESC_MONEDA,P470_COD_USUARIO_PIE,P470_FEC_CUSTODIO,P470_FACTURA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140156401501123812)
,p_name=>'DA_BUSCAR_SALDOS'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(140155650195123804)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140158090580123828)
,p_event_id=>wwv_flow_imp.id(140156401501123812)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140156560648123813)
,p_event_id=>wwv_flow_imp.id(140156401501123812)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'      CCCSALDO.PR_CREAR_COL_SALDOS (PI_COD_CLIENTE => :P470_COD_CLIENTE_BUSQ,',
'                                    PI_TIPO_COMPROBANTE => :P470_TIPO_COMPROBANTE_BUSQ,',
'                                    PI_SER_COMPROBANTE => :P470_SER_COMPROBANTE_BUSQ,',
'                                    PI_NRO_COMPROBANTE => :P470_NRO_COMPROBANTE_BUSQ,',
'                                    PI_FEC_VENCIMIENTO_INI => :P470_FEC_VENCIMIENTO_INI_BUSQ,',
'                                    PI_FEC_VENCIMIENTO_FIN => :P470_FEC_VENCIMIENTO_FIN_BUSQ,',
'                                    PI_FEC_ORIGEN_INI => :P470_FEC_ORIGEN_INI_BUSQ,',
'                                    PI_FEC_ORIGEN_FIN => :P470_FEC_ORIGEN_FIN_BUSQ);',
'',
'     :P470_IND_REP_SALDOS := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P470_COD_CLIENTE_BUSQ,P470_TIPO_COMPROBANTE_BUSQ,P470_SER_COMPROBANTE_BUSQ,P470_NRO_COMPROBANTE_BUSQ,P470_FEC_VENCIMIENTO_INI_BUSQ,P470_FEC_VENCIMIENTO_FIN_BUSQ,P470_FEC_ORIGEN_INI_BUSQ,P470_FEC_ORIGEN_FIN_BUSQ'
,p_attribute_03=>'P470_IND_REP_SALDOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140158109030123829)
,p_event_id=>wwv_flow_imp.id(140156401501123812)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140156650296123814)
,p_event_id=>wwv_flow_imp.id(140156401501123812)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(140070378225472701)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140576289529633910)
,p_event_id=>wwv_flow_imp.id(140156401501123812)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P470_NOM_CLIENTE,P470_COD_SECTOR,P470_DESC_SECTOR,P470_COD_SECTORE,P470_DESC_SECTOR_E,P470_DESC_MONEDA,P470_COD_USUARIO_PIE,P470_FEC_CUSTODIO,P470_FACTURA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140157201490123820)
,p_name=>'DA_LIMPIAR_CAMPOS_LOAD'
,p_event_sequence=>30
,p_condition_element=>'P470_P_COD_CLIENTE'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140157345435123821)
,p_event_id=>wwv_flow_imp.id(140157201490123820)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P470_TIPO_COMPROBANTE_BUSQ,P470_SER_COMPROBANTE_BUSQ,P470_NRO_COMPROBANTE_BUSQ,P470_COD_CLIENTE_BUSQ,P470_FEC_VENCIMIENTO_INI_BUSQ,P470_FEC_VENCIMIENTO_FIN_BUSQ,P470_FEC_ORIGEN_INI_BUSQ,P470_FEC_ORIGEN_FIN_BUSQ,P470_IND_REP_SALDOS,P470_NOM_CLIENTE,P4'
||'70_COD_SECTOR,P470_DESC_SECTOR,P470_COD_SECTORE,P470_DESC_SECTOR_E,P470_DESC_MONEDA,P470_COD_USUARIO_PIE,P470_FEC_CUSTODIO,P470_FACTURA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140157478549123822)
,p_event_id=>wwv_flow_imp.id(140157201490123820)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(140070378225472701)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140157859177123826)
,p_name=>'DA_MOSTRAR_DET_SALDOS'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P470_SEQ_ID_DET_SALDOS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140575321651633901)
,p_event_id=>wwv_flow_imp.id(140157859177123826)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_CLIENTE VARCHAR2(50);',
'    V_COD_MONEDA_CUOTA VARCHAR2(50);',
'BEGIN',
'    SELECT C025, C006, C016, C016, D005, C009, C012',
'    INTO :P470_FACTURA, V_CLIENTE, :P470_COD_SECTORE, :P470_COD_SECTOR, :P470_FEC_CUSTODIO, V_COD_MONEDA_CUOTA, :P470_COD_USUARIO_PIE ',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''SALDOS''',
'    AND SEQ_ID = :P470_SEQ_ID_DET_SALDOS;',
'        ',
'    BEGIN',
'        select nvl( nombre, nomb_fantasia )',
'         into :P470_NOM_CLIENTE',
'         from cc_clientes c, personas p',
'        where c.cod_empresa = :P_COD_EMPRESA',
'          and c.cod_cliente = V_CLIENTE',
'          and c.cod_persona = p.cod_persona;',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        :P470_NOM_CLIENTE := NULL;',
'    END;',
'',
'    BEGIN',
'       select descripcion ',
'          into :P470_DESC_SECTOR_E',
'          from sectores_econ',
'          where cod_sector = :P470_COD_SECTORE;',
'        exception',
'    WHEN OTHERS THEN',
'          :P470_DESC_SECTOR_E := null ;',
'    END;',
'',
'    begin',
'       select descripcion ',
'          into :P470_DESC_SECTOR',
'          from sectores',
'          where cod_sector = :P470_COD_SECTOR ',
'          and cod_empresa  = :P_COD_EMPRESA;',
'    exception',
'       when others then',
'          :P470_DESC_SECTOR := null ;',
'    end;',
'',
'    begin',
'       select descripcion ',
'          into :P470_DESC_MONEDA',
'          from monedas',
'          where cod_moneda = V_COD_MONEDA_CUOTA ;',
'    exception',
'       when others then',
'          :P470_DESC_MONEDA := null ;',
'    end ;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P470_SEQ_ID_DET_SALDOS'
,p_attribute_03=>'P470_COD_USUARIO_PIE,P470_DESC_MONEDA,P470_FEC_CUSTODIO,P470_FACTURA,P470_NOM_CLIENTE,P470_DESC_SECTOR_E,P470_COD_SECTORE,P470_COD_SECTOR,P470_DESC_SECTOR'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140576685219633914)
,p_name=>'DA_LLAMAR_VTNOTCRE_VTFACTUR'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P470_SEQ_ID_CARGA_NOTAS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140577272900633920)
,p_event_id=>wwv_flow_imp.id(140576685219633914)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT C003, C004, C005 INTO :P470_TIP_COMP_ENVIAR, :P470_SER_COMP_ENVIAR, :P470_NRO_COMP_ENVIAR',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''SALDOS''',
'    AND SEQ_ID = :P470_SEQ_ID_CARGA_NOTAS;',
'',
'    --:P470_TIP_COMP_ENVIAR := ''NCR'';',
'',
'    IF :P470_TIP_COMP_ENVIAR IN (''NCR'') THEN',
'        :P470_TIP_REP := ''VTNOTCRE''; ',
'    ELSIF :P470_TIP_COMP_ENVIAR IN (''FCO'',''FCR'',''TKT'',''NCR'') THEN',
'        :P470_TIP_REP := ''VTFACTUR''; ',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P470_SEQ_ID_CARGA_NOTAS'
,p_attribute_03=>'P470_TIP_COMP_ENVIAR,P470_SER_COMP_ENVIAR,P470_NRO_COMP_ENVIAR,P470_TIP_REP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140577335262633921)
,p_event_id=>wwv_flow_imp.id(140576685219633914)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	SELECT APEX_PAGE.GET_URL (  p_page   => 103,',
'				    p_items  => ''P103_TIP_COMPROBANTE,P103_SER_COMPROBANTE,P103_NRO_COMPROBANTE'',',
'				    p_values => (''''||:P470_TIP_COMP_ENVIAR||'',',
'                                  ''||:P470_SER_COMP_ENVIAR||'',',
'                                  ''||:P470_NRO_COMP_ENVIAR||'''')) f_url_1',
'		INTO :P470_URL',
'		FROM DUAL;        ',
'	 ',
'    APEX_DEBUG.ERROR(:P470_URL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P470_NRO_COMP_ENVIAR,P470_TIP_COMP_ENVIAR,P470_SER_COMP_ENVIAR'
,p_attribute_03=>'P470_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P470_TIP_REP'
,p_client_condition_expression=>'VTNOTCRE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140577423497633922)
,p_event_id=>wwv_flow_imp.id(140576685219633914)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P470_URL").getValue();',
'',
'apex.navigation.redirect(url);'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P470_TIP_REP'
,p_client_condition_expression=>'VTNOTCRE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140577596387633923)
,p_event_id=>wwv_flow_imp.id(140576685219633914)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	SELECT APEX_PAGE.GET_URL (  p_page   => 99,',
'				    p_items  => ''P99_P_NRO_COMPROBANTE,P99_P_TIP_COMPROBANTE,P99_P_SER_COMPROBANTE'',',
'				    p_values => (''''||:P470_NRO_COMP_ENVIAR||'',',
'                                  ''||:P470_TIP_COMP_ENVIAR||'',',
'                                  ''||:P470_SER_COMP_ENVIAR||'''')) f_url_1',
'		INTO :P470_URL',
'		FROM DUAL;        ',
'	 ',
'    APEX_DEBUG.ERROR(:P470_URL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P470_NRO_COMP_ENVIAR,P470_TIP_COMP_ENVIAR,P470_SER_COMP_ENVIAR'
,p_attribute_03=>'P470_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P470_TIP_REP'
,p_client_condition_expression=>'VTFACTUR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140577668753633924)
,p_event_id=>wwv_flow_imp.id(140576685219633914)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P470_URL").getValue();',
'',
'apex.navigation.openInNewWindow(url, "_blank");'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P470_TIP_REP'
,p_client_condition_expression=>'VTFACTUR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(139801649991306747)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P470_COD_MODULO := ''CC'';',
'    :P470_COD_FORMA := ''CCCSALDO'';',
'',
'    :P470_CAMBIA_NRO_VALOR := busca_permiso ( :P_COD_EMPRESA,',
'                                              :P470_COD_FORMA,',
'                                              :P_COD_USUARIO,',
'                                              ''CAMBIA_NRO_VALOR'');',
'',
'    :P470_CAMBIA_CUSTODIO := busca_permiso ( :P_COD_EMPRESA,',
'                                             :P470_COD_FORMA,',
'                                             :P_COD_USUARIO,',
'                                             ''CAMBIA_CUSTODIO'') ;',
'',
'    :P470_CAMBIA_FEC_VENCIMIENTO := busca_permiso ( :P_COD_EMPRESA,',
'                                                    :P470_COD_FORMA,',
'                                                    :P_COD_USUARIO,',
'                                                    ''CAMBIA_FEC_VENCIMIENTO'') ;                                                 ',
'',
'    :P470_CAMBIA_SECTOR := busca_permiso ( :P_COD_EMPRESA,',
'                                           :P470_COD_FORMA,',
'                                           :P_COD_USUARIO,',
'                                           ''CAMBIA_SECTOR'') ;',
'',
'    :P470_PERMITE_BORRAR := busca_permiso ( :P_COD_EMPRESA,',
'                                            :P470_COD_FORMA,',
'                                            :P_COD_USUARIO,',
'                                            ''PERMITE_BORRAR'') ;',
'',
'    :P470_COD_MONEDA_BASE := bs_busca_parametro (:P470_COD_MODULO, ''COD_MONEDA_BASE'');                                                 ',
'',
'',
'    ',
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
