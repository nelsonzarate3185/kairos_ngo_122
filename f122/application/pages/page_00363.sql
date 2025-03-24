prompt --application/pages/page_00363
begin
--   Manifest
--     PAGE: 00363
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
 p_id=>363
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('CNFELECT Facturas Electr\00F3nicas no migradas')
,p_alias=>unistr('CNFELECT-FACTURAS-ELECTR\00D3NICAS-NO-MIGRADAS')
,p_step_title=>unistr('Facturas Electr\00F3nicas no migradas')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20230203125553'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66758297819612150)
,p_plug_name=>'Formulario consulta'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>4
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TIP_COMPROBANTE, SER_COMPROBANTE, NRO_COMPROBANTE,OBJETO_GENERADO,FECHA_GENERACION,RESPUESTA_OBJETO ',
'  FROM ',
'  (select a.* from VT_FACTURA_ELECTRONICA_LOG a',
'  WHERE A.NRO_COMPROBANTE  IN (SELECT C.NRO_COMPROBANTE',
'  FROM VT_COMPROBANTES_CABECERA C',
'  WHERE C.COD_EMPRESA=A.COD_EMPRESA',
'  AND C.TIP_COMPROBANTE=A.TIP_COMPROBANTE',
'  AND C.SER_COMPROBANTE=A.SER_COMPROBANTE',
'  AND C.NRO_COMPROBANTE=A.NRO_COMPROBANTE',
'  AND C.ID_FACTURA_ELECTRONICA IS  NULL)',
'  ORDER BY NRO_COMPROBANTE DESC) V',
'  WHERE 1=1',
unistr('  --and v.SER_COMPROBANTE =''FE1'' -->Descomentar para producci\00F3n'),
'order by  v.FECHA_GENERACION ,v.NRO_COMPROBANTE;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Formulario consulta'
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
 p_id=>wwv_flow_imp.id(104700049397157901)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'OSCARGO'
,p_internal_uid=>104700049397157901
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104700137149157902)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104700268227157903)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104700304688157904)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('N\00FAmero')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104700482932157905)
,p_db_column_name=>'OBJETO_GENERADO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Objeto Generado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104700518360157906)
,p_db_column_name=>'FECHA_GENERACION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Fecha Generaci\00F3n')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104700632734157907)
,p_db_column_name=>'RESPUESTA_OBJETO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Respuesta Objeto'
,p_column_type=>'CLOB'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(104712530110182815)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1047126'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:OBJETO_GENERADO:FECHA_GENERACION:RESPUESTA_OBJETO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104671067445114704)
,p_plug_name=>unistr('Facturas Electr\00F3nicas no migradas')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useRegionTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104700994788157910)
,p_name=>'P363_OBJETO_GENERADO'
,p_item_sequence=>30
,p_prompt=>'Objeto Generado'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_colspan=>5
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
