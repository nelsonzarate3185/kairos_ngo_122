prompt --application/pages/page_00485
begin
--   Manifest
--     PAGE: 00485
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
 p_id=>485
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Manteminiemto de Promociones'
,p_alias=>'MANTEMINIEMTO-DE-PROMOCIONES'
,p_step_title=>'Manteminiemto de Promociones'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240923154458'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(261200529338232952)
,p_plug_name=>'Mantenimiento de Promociones - STPROMOC'
,p_region_name=>'Promociones'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_empresa,a.eventid, a.event_name, a.fecha_inicio, a.fecha_fin , case when a.estado=''N'' THEN ''ACTIVO'' ELSE ''INACTIVO'' END ESTADO, a.cod_usuario_creado, a.fecha_alta,',
'A.AUTORIZADO, A.FEC_AUTORIZADO, A.AUTORIZADO_POR ,',
'',
'       a.ROWID ROW_ID,',
'       NULL EDITAR , NVL((select descripcion from st_marcas m where   m.cod_marca=a.codIGO_marca),''NA'') MARCA, CODIGO_MARCA',
'       from st_promocion_cab a',
'where a.cod_empresa=:P_COD_EMPRESA',
'order by a.eventid desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Mantenimiento de Promociones - STPROMOC'
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
 p_id=>wwv_flow_imp.id(261200578079232953)
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
,p_internal_uid=>261200578079232953
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143831340425464121)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143836129590464118)
,p_db_column_name=>'ESTADO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143837332001464117)
,p_db_column_name=>'EDITAR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Editar'
,p_column_link=>'f?p=&APP_ID.:241:&SESSION.::&DEBUG.:241:P241_EVENTID:#EVENTID#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143839702586464116)
,p_db_column_name=>'ROW_ID'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Row Id'
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
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(138646857437528703)
,p_db_column_name=>'EVENTID'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Nro Promo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(138646978005528704)
,p_db_column_name=>'EVENT_NAME'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Nombre Promo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(138647004633528705)
,p_db_column_name=>'FECHA_INICIO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Fecha Inicio'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(138647133283528706)
,p_db_column_name=>'FECHA_FIN'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Fecha Fin'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(138647212876528707)
,p_db_column_name=>'COD_USUARIO_CREADO'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Cod Usuario Creado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(138647370471528708)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(138647477743528709)
,p_db_column_name=>'AUTORIZADO'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Autorizado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(138647559967528710)
,p_db_column_name=>'FEC_AUTORIZADO'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Fec Autorizado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(138647607196528711)
,p_db_column_name=>'AUTORIZADO_POR'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Autorizado Por'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175478662671656524)
,p_db_column_name=>'MARCA'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175478740941656525)
,p_db_column_name=>'CODIGO_MARCA'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Codigo Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(262208311855051575)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1183775'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'EVENTID:EVENT_NAME:MARCA:FECHA_INICIO:FECHA_FIN:ESTADO:AUTORIZADO:AUTORIZADO_POR:FEC_AUTORIZADO:COD_USUARIO_CREADO:FECHA_ALTA:EDITAR:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(143840477767464113)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(261200529338232952)
,p_button_name=>'BTCREAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:241:&SESSION.::&DEBUG.:241:P394_CONTROL_ORIGEN:0'
);
wwv_flow_imp.component_end;
end;
/
