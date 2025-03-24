prompt --application/pages/page_00779
begin
--   Manifest
--     PAGE: 00779
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
 p_id=>779
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Reporte Recepci\00F3n de Pedidos')
,p_alias=>unistr('REPORTE-RECEPCI\00D3N-DE-PEDIDOS')
,p_step_title=>'Ingreso de Productos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20240906082625'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(393706815647494306)
,p_plug_name=>'Ingreso de Productos'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(393706948416494307)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(393706815647494306)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.nro_comprobante, c.fec_comprobante, d.Cod_Articulo,',
'L.DESCRIPCION DESC_ARTICULO,',
'D.CANTIDAD CANTIDAD_FACTURA,  D.CANTIDAD_SOBRA CANTIDAD_SOBRANTE, D.CANTIDAD_FALTA CANTIDAD_FALTANTE, c.nro_comprobante_ref, l.cod_origen_art, l.cod_alterno',
'      ',
' from CM_REC_PEDIDO_CAB c,CM_REC_PEDIDO_DET d, ST_ARTICULOS l',
'where c.cod_empresa = :p_cod_empresa',
' and  c.nro_comprobante = :P779_P_NRO_COMPROBANTE',
' and  d.cod_empresa = c.cod_empresa',
' and  d.tip_comprobante = c.tip_comprobante',
' and  d.ser_comprobante = c.ser_comprobante',
' and  d.nro_comprobante = c.nro_comprobante',
'',
'',
' and c.cod_empresa = l.cod_empresa',
' and d.COD_ARTICULO = l.COD_ARTICULO'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P779_P_NRO_COMPROBANTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE'
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
 p_id=>wwv_flow_imp.id(393707006082494308)
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
,p_internal_uid=>393707006082494308
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(393707139465494309)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(393707259306494310)
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
 p_id=>wwv_flow_imp.id(393707349226494311)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(393707442209494312)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Desc Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(393707525318494313)
,p_db_column_name=>'CANTIDAD_FACTURA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cantidad Factura'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(393707672488494314)
,p_db_column_name=>'CANTIDAD_SOBRANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cantidad Sobrante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(393707713938494315)
,p_db_column_name=>'CANTIDAD_FALTANTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cantidad Faltante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(393707820965494316)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(393707943157494317)
,p_db_column_name=>'COD_ORIGEN_ART'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Origen Art'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(393708037296494318)
,p_db_column_name=>'COD_ALTERNO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Alterno'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(393770946460785673)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3937710'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'NRO_COMPROBANTE:FEC_COMPROBANTE:COD_ARTICULO:DESC_ARTICULO:CANTIDAD_FACTURA:CANTIDAD_SOBRANTE:CANTIDAD_FALTANTE:NRO_COMPROBANTE_REF:COD_ORIGEN_ART:COD_ALTERNO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(393708133967494319)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>950
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(393708587273494323)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(393706815647494306)
,p_button_name=>'BT_VOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:776:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-left'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(393708272006494320)
,p_name=>'P779_P_NRO_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(393708133967494319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
