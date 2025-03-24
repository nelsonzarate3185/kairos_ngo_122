prompt --application/pages/page_00464
begin
--   Manifest
--     PAGE: 00464
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
 p_id=>464
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'DIRECTORIO DE IMAGENES'
,p_alias=>'DIRECTORIO-DE-IMAGENES'
,p_step_title=>'DIRECTORIO DE IMAGENES'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
' #dir  > .t-Region-header {',
'    background-color: #003a85 !important;',
'    color: yellow !important;',
'    border-radius: 10px;',
'    border-color: #003a8586;',
'',
'}',
'#btn {',
'    background-color: #003a85 !important;',
'    color: yellow !important;',
'    border-radius: 10px;',
'    border-color: #003a8586;',
'    ',
'}',
'#btn::after{',
'    transform: scale(1.2);',
'    background-color: #003a85 !important;',
'    color: yellow !important;',
'    border-radius: 10px;',
'    border-color: #003a8586;',
'',
'}',
'',
'#dir{',
'border-radius: 10px;',
'}',
'#dir{',
'    box-shadow:  1px 3px 3px #003a8574; ',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'ETRINIDAD'
,p_last_upd_yyyymmddhh24miss=>'20230328101107'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(135661893113519804)
,p_plug_name=>'Directorios'
,p_region_name=>'dir'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136324933318654847)
,p_plug_name=>'DIRECTORIO DE IMAGENES'
,p_parent_plug_id=>wwv_flow_imp.id(135661893113519804)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'DIRECTORIO_IMAGENES'
,p_include_rowid_column=>true
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'DIRECTORIO DE IMAGENES'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(136325048723654847)
,p_name=>'DIRECTORIO DE IMAGENES'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No hay registro(s)'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:465:&SESSION.::&DEBUG.:RP,:P465_ROWID:#ROWID#'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>136325048723654847
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136325452127654846)
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
 p_id=>wwv_flow_imp.id(136325812661654845)
,p_db_column_name=>'ID_REGISTRO'
,p_display_order=>0
,p_column_identifier=>'B'
,p_column_label=>'Id Registro'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136326220675654845)
,p_db_column_name=>'COD_MODULO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>' Modulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136326655482654845)
,p_db_column_name=>'OPERACION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Operacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136327068655654845)
,p_db_column_name=>'DIRECTORIO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Directorio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(136329388450654365)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1363294'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROWID:ID_REGISTRO:COD_MODULO:OPERACION:DIRECTORIO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(136327587729654844)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(136324933318654847)
,p_button_name=>'CREAR'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:465:&SESSION.::&DEBUG.:465'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136327893345654844)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(136324933318654847)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136328395901654843)
,p_event_id=>wwv_flow_imp.id(136327893345654844)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136324933318654847)
);
wwv_flow_imp.component_end;
end;
/
