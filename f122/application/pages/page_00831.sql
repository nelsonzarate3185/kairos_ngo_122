prompt --application/pages/page_00831
begin
--   Manifest
--     PAGE: 00831
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
 p_id=>831
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'documentos_org'
,p_alias=>'DOCUMENTOS-ORG1'
,p_step_title=>'documentos_org'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'VGAMARRA'
,p_last_upd_yyyymmddhh24miss=>'20250129133545'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(473319520393980785)
,p_plug_name=>'documentos_org'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'BS_DOCUMENTOS_ORG'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'documentos_org'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(473319610095980785)
,p_name=>'documentos_org'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'COD_DOCUMENTO'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:832:&SESSION.::&DEBUG.:RP:P832_COD_DOCUMENTO:\#COD_DOCUMENTO#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'VGAMARRA'
,p_internal_uid=>473319610095980785
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(473320032546980788)
,p_db_column_name=>'ROWID'
,p_display_order=>0
,p_column_identifier=>'A'
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
 p_id=>wwv_flow_imp.id(473320893650980794)
,p_db_column_name=>'COD_DOCUMENTO'
,p_display_order=>0
,p_column_identifier=>'C'
,p_column_label=>'Cod Documento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(473320409563980793)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(473321274061980794)
,p_db_column_name=>'COD_AREA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Cod Area'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(473321635965980794)
,p_db_column_name=>'COD_CONCEPTO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Cod Concepto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(473324108230981411)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4733242'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROWID:COD_DOCUMENTO:COD_EMPRESA:COD_AREA:COD_CONCEPTO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(473322164041980794)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(473319520393980785)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:832:&SESSION.::&DEBUG.:832'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(473322409828980794)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(473319520393980785)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(473322907786980796)
,p_event_id=>wwv_flow_imp.id(473322409828980794)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(473319520393980785)
);
wwv_flow_imp.component_end;
end;
/
