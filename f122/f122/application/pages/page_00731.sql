prompt --application/pages/page_00731
begin
--   Manifest
--     PAGE: 00731
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
 p_id=>731
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Segmentacion por Linea'
,p_alias=>'SEGMENTACION-POR-LINEA1'
,p_step_title=>'Segmentacion por Linea'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20240312165008'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(283002638730657594)
,p_plug_name=>'Segmentacion por Linea'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'COD_TIP_SEGMENTO,',
'DESCRIPCION_SEGMENTO,',
'LINEA_INICIAL,',
'LINEA_MAXIMA,',
'COD_USUARIO,',
'FECHA_ALTA, rowid',
'',
'from cc_segmentacion_linea'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Segmentacion por Linea'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(283002722064657594)
,p_name=>'Segmentacion por Linea'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ROWID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:734:&SESSION.::&DEBUG.:RP:P734_ROWID:\#ROWID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'NZARATE'
,p_internal_uid=>283002722064657594
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(283005976669657597)
,p_db_column_name=>'ROWID'
,p_display_order=>0
,p_column_identifier=>'H'
,p_column_label=>'ROWID'
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
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(283003120257657595)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(283003566531657596)
,p_db_column_name=>'COD_TIP_SEGMENTO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Cod Tip Segmento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(283003962844657596)
,p_db_column_name=>'DESCRIPCION_SEGMENTO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Descripcion Segmento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(283004351547657596)
,p_db_column_name=>'LINEA_INICIAL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Linea Inicial'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(283004711454657597)
,p_db_column_name=>'LINEA_MAXIMA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Linea Maxima'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(283005112694657597)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(283005521903657597)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(283008276971657808)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2830083'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROWID:COD_EMPRESA:COD_TIP_SEGMENTO:DESCRIPCION_SEGMENTO:LINEA_INICIAL:LINEA_MAXIMA:COD_USUARIO:FECHA_ALTA'
,p_sort_column_1=>'COD_TIP_SEGMENTO'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(283006476503657598)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(283002638730657594)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:734:&SESSION.::&DEBUG.:734'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(283006752205657598)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(283002638730657594)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(283007288722657599)
,p_event_id=>wwv_flow_imp.id(283006752205657598)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(283002638730657594)
);
wwv_flow_imp.component_end;
end;
/
