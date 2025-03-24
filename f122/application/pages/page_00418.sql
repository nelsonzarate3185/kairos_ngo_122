prompt --application/pages/page_00418
begin
--   Manifest
--     PAGE: 00418
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
 p_id=>418
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Reporte Reposici\00F3n de Repuestos')
,p_alias=>unistr('REPORTE-REPOSICI\00D3N-DE-REPUESTOS')
,p_step_title=>unistr('Reporte Reposici\00F3n de Repuestos')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20241009105953'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124028590400866202)
,p_plug_name=>unistr('Reporte Reposici\00F3n de Repuestos')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select vt.TIP_COMPROBANTE,vt.SER_COMPROBANTE,vt.NRO_COMPROBANTE,vt.FEC_COMPROBANTE,(SELECT vt.COD_SUCURSAL||'' - ''||DESCRIPCION',
'FROM SUCURSALES',
'WHERE COD_EMPRESA=:P_COD_EMPRESA',
'AND COD_SUCURSAL= vt.COD_SUCURSAL) Sucursal,cod_usuario,cod_sucursal_ent',
'from VT_PEDIDOS_CABECERA_REP vt',
'where vt.cod_Empresa=:P_COD_EMPRESA',
'AND     vt.COD_SUCURSAL IS NOT NULL',
'AND     cod_sucursal_ent IS NOT NULL',
';',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Reporte Reposici\00F3n de Repuestos')
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
 p_id=>wwv_flow_imp.id(124028672233866203)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'FPONCE'
,p_internal_uid=>124028672233866203
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124028876833866205)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tipo Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124028911692866206)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124029018444866207)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Comprobante'
,p_column_link=>'f?p=&APP_ID.:371:&SESSION.::&DEBUG.:RP,371:P371_PARAM_NRO,P371_PARAM_SER:#NRO_COMPROBANTE#,#SER_COMPROBANTE#'
,p_column_linktext=>'#NRO_COMPROBANTE#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124029278269866209)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fecha Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124046292571908721)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>70
,p_column_identifier=>'DN'
,p_column_label=>'Sucursal Salida'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124046489084908723)
,p_db_column_name=>'COD_SUCURSAL_ENT'
,p_display_order=>90
,p_column_identifier=>'DP'
,p_column_label=>'Suc. Entrada'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124046374070908722)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>100
,p_column_identifier=>'DO'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(124084757778909072)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1240848'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_COMPROBANTE:TIP_COMPROBANTE:SER_COMPROBANTE:FEC_COMPROBANTE:SUCURSAL:COD_USUARIO:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(124046697722908725)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(124028590400866202)
,p_button_name=>'BTN_AGREGAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo Pedido'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:371:&SESSION.::&DEBUG.:RP,371::'
);
wwv_flow_imp.component_end;
end;
/
