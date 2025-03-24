prompt --application/pages/page_00410
begin
--   Manifest
--     PAGE: 00410
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
 p_id=>410
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'SMASISGA - reporte'
,p_alias=>'SMASISGA-REPORTE'
,p_step_title=>'SMASISGA - reporte'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20230308121200'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(122748572932118005)
,p_plug_name=>'Asistencia seguimiento'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'    NRO_ASISTENCIA,',
'    FECHA_ALTA,',
'    COD_USUARIO,',
'    TIPO_ASIST,',
'    ESTADO,',
'    COD_CLIENTE,',
'    FECHA_FINALIZA,',
'    COD_ARTICULO,',
'    TIP_COMPROBANTE_ORT,',
'    SER_COMPROBANTE_ORT,',
'    NRO_COMPROBANTE_ORT',
'from sm_asistencia_gastro;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Asistencia seguimiento'
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
 p_id=>wwv_flow_imp.id(122748608848118006)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>122748608848118006
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122748876370118008)
,p_db_column_name=>'NRO_ASISTENCIA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro Asistencia'
,p_column_link=>'f?p=&APP_ID.:267:&SESSION.::&DEBUG.:CR,267:P267_P_NRO_ASISTENCIA:#NRO_ASISTENCIA#'
,p_column_linktext=>'#NRO_ASISTENCIA#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122748985328118009)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122749006740118010)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122749144178118011)
,p_db_column_name=>'ESTADO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(123829768422115961)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122749722392118017)
,p_db_column_name=>'TIPO_ASIST'
,p_display_order=>60
,p_column_identifier=>'K'
,p_column_label=>'Tipo Asist'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(65705815907158191)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122749951688118019)
,p_db_column_name=>'TIP_COMPROBANTE_ORT'
,p_display_order=>80
,p_column_identifier=>'M'
,p_column_label=>'Tip Comprobante Ort'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122750023044118020)
,p_db_column_name=>'SER_COMPROBANTE_ORT'
,p_display_order=>90
,p_column_identifier=>'N'
,p_column_label=>'Ser Comprobante Ort'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122750176311118021)
,p_db_column_name=>'NRO_COMPROBANTE_ORT'
,p_display_order=>100
,p_column_identifier=>'O'
,p_column_label=>'Nro Comprobante Ort'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122750285370118022)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>110
,p_column_identifier=>'P'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(64824997829940020)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122750375931118023)
,p_db_column_name=>'FECHA_FINALIZA'
,p_display_order=>120
,p_column_identifier=>'Q'
,p_column_label=>'Fecha Finaliza'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(122750409659118024)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>130
,p_column_identifier=>'R'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(65308562179471480)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(123819697646053716)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1238197'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_ASISTENCIA:TIPO_ASIST:FECHA_ALTA:COD_ARTICULO:COD_USUARIO:COD_CLIENTE:NRO_COMPROBANTE_ORT:SER_COMPROBANTE_ORT:TIP_COMPROBANTE_ORT:FECHA_FINALIZA:ESTADO:'
,p_sort_column_1=>'NRO_ASISTENCIA'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(122750523209118025)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(122748572932118005)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:267:&SESSION.::&DEBUG.:CR,:P267_P_NRO_ASISTENCIA:'
);
wwv_flow_imp.component_end;
end;
/
