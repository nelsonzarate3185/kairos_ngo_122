prompt --application/pages/page_00822
begin
--   Manifest
--     PAGE: 00822
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
 p_id=>822
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Bloqueo de Rubro por Sucursales'
,p_alias=>'BLOQUEO-DE-RUBRO-POR-SUCURSALES'
,p_step_title=>'Bloqueo de Rubro por Sucursales'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250116105152'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(466388637476625592)
,p_plug_name=>'Bloqueo de Rubro por Sucursales'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'COD_SUCURSAL,',
'COD_RUBRO,',
'ESTADO,',
'IND_BLOQUEADO_RUBRO,',
'USUARIO_ALTA,',
'FECHA_ALTA, a.rowid',
' from st_rubro_sucursales a',
' where cod_empresa=:p_cod_empresa'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Bloqueo de Rubro por Sucursales'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(466388707868625592)
,p_name=>'Bloqueo de Rubro por Sucursales'
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
,p_detail_link=>'f?p=&APP_ID.:823:&SESSION.::&DEBUG.:RP:P823_ROWID:\#ROWID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'NZARATE'
,p_internal_uid=>466388707868625592
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(466391954389625594)
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
 p_id=>wwv_flow_imp.id(466389115115625593)
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
 p_id=>wwv_flow_imp.id(466389545604625593)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(41127354264101747)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(466389979876625593)
,p_db_column_name=>'COD_RUBRO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Cod Rubro'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(6220317477599209)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(466390355626625594)
,p_db_column_name=>'ESTADO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(466390751213625594)
,p_db_column_name=>'IND_BLOQUEADO_RUBRO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Ind Bloqueado Rubro'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(466391154567625594)
,p_db_column_name=>'USUARIO_ALTA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Usuario Alta'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(466391509860625594)
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
 p_id=>wwv_flow_imp.id(466394293251626783)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4663943'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_SUCURSAL:COD_RUBRO:ESTADO:IND_BLOQUEADO_RUBRO:USUARIO_ALTA:FECHA_ALTA:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(466392491763625595)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(466388637476625592)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:823:&SESSION.::&DEBUG.:823'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(466392766791625595)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(466388637476625592)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(466393258529625596)
,p_event_id=>wwv_flow_imp.id(466392766791625595)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(466388637476625592)
);
wwv_flow_imp.component_end;
end;
/
