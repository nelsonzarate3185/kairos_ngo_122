prompt --application/pages/page_00541
begin
--   Manifest
--     PAGE: 00541
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
 p_id=>541
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'TUR - NOTA CREDITO'
,p_alias=>'NOTA-CREDITO'
,p_step_title=>'NOTA CREDITO'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20240429142057'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(161014918799538842)
,p_plug_name=>'ORDEN DE TRABAJO'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.NRO_COMPROBANTE, a.SER_COMPROBANTE, b.estado , a.cod_cliente, a.nom_cliente, a.fec_comprobante, a.cod_origen, a.cod_Articulo',
'',
'FROM vt_ordenes_trabajo a,  ',
'',
'ca_conformidad b ',
'',
'WHERE a.COD_EMPRESA = 1 ',
'',
'AND a.COD_EMPRESA = b.cod_empresa ',
'',
'AND (a.IND_ENTREGA = ''N'' OR a.IND_ENTREGA Is null) ',
'',
'AND a.FEC_COMPROBANTE IS NOT NULL ',
'',
'AND a.cerrado = ''S'' ',
'',
'--AND a.ind_abandonado <> ''S'' ',
'AND (a.ind_abandonado  = ''N'' OR a.IND_ABANDONADO IS NULL)',
'',
'AND a.ESTADO_PRESU in(''C'',''CRR'') ',
'',
'-- AND a.TIPO_CIERRE in(''CR'') --COMENTANDO EL 290424',
'',
'AND a.RETIRADO_POR IS NULL ',
'',
'and a.cod_origen not in (2,13,27) ',
'',
'AND a.IND_SNC = ''S'' ',
'',
'AND a.TIP_COMPROBANTE = b.tip_comprobante_ref  ',
'',
'AND a.NRO_COMPROBANTE = b.nro_comprobante_ref ',
'',
'AND a.SER_COMPROBANTE = b.ser_comprobante_ref ',
'',
'AND a.NRO_SOL_CONF = b.nro_solicitud ',
'',
'AND b.ESTADO in(''CREADO'',''PROCESADO'', ''AUTORIZADO'') --AGREGADO AUTORIZADO EL 290424',
'AND a.COD_CLIENTE = :P541_CLIENTE',
'',
'ORDER BY a.FEC_COMPROBANTE desc ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'ORDEN DE TRABAJO'
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
 p_id=>wwv_flow_imp.id(161015338761538846)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>550
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'HSEGOVIA'
,p_internal_uid=>161015338761538846
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(161015403867538847)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nro. Comprobante'
,p_column_link=>'f?p=&APP_ID.:370:&SESSION.::&DEBUG.::P370_COD_CLIENTE,P370_PARAM_NRO_OT,P370_PARAM_SER_OT,P370_OPERACION,P370_COD_ARTICULO_OT,P370_COD_ARTICULO_OT_1,P370_NRO_COMPROBANTE_REF,P370_COD_ORIGEN_AUX,P370_VOLVER:#COD_CLIENTE#,#NRO_COMPROBANTE#,#SER_COMPROB'
||'ANTE#,MODIFICAR,#COD_ARTICULO#,#COD_ARTICULO#,#NRO_COMPROBANTE#,#COD_ORIGEN#,S'
,p_column_linktext=>'#NRO_COMPROBANTE#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_help_text=>'Ver detalles de OT'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(161015566788538848)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Serie Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(161015618535538849)
,p_db_column_name=>'ESTADO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162609831044555703)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('C\00F3d. Cliente')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162609973879555704)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182764602251206902)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182764733928206903)
,p_db_column_name=>'COD_ORIGEN'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Origen'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182764897557206904)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(162607097761572562)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1626071'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SER_COMPROBANTE:NRO_COMPROBANTE:ESTADO:COD_CLIENTE:NOM_CLIENTE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(162609777067555702)
,p_plug_name=>'Botoneras'
,p_parent_plug_id=>wwv_flow_imp.id(161014918799538842)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(162609685458555701)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(162609777067555702)
,p_button_name=>'Cancelar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_redirect_url=>'f?p=&APP_ID.:486:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161015795490538850)
,p_name=>'P541_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(161014918799538842)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
