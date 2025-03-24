prompt --application/pages/page_00762
begin
--   Manifest
--     PAGE: 00762
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
 p_id=>762
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Indice de Reparacion'
,p_alias=>'INDICE-DE-REPARACION1'
,p_step_title=>'Indice de Reparacion'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240722152949'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(354890067101931300)
,p_plug_name=>'Indice de Reparacion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'TIPO_INDICE,',
'(',
'select D.DESC_DIVISION||'' - ''||D.COD_DIVISION DESCRIPCION from  ST_DIVISION_ARTICULOS D',
'WHERE A.TIPO_INDICE=''DIVISION'' ',
'AND A.COD_TIPO_INDICE=COD_DIVISION',
'UNION ALL',
'select F.DESCRIPCION||'' - ''||F.COD_FAMILIA DESCRIPCION from  ST_FAMILIA F',
'WHERE A.TIPO_INDICE=''FAMILIA''',
'and f.cod_empresa=:p_cod_empresa',
'AND A.COD_TIPO_INDICE=COD_FAMILIA',
'',
'UNION ALL  ',
'select c.DESCRIPCION||'' - ''||c.cod_categoria DESCRIPCION from  st_categorias c',
'WHERE A.TIPO_INDICE=''CATEGORIA''',
'and c.cod_empresa=:p_cod_empresa',
'AND A.COD_TIPO_INDICE=cod_categoria',
'and estado=''A''',
')COD_TIPO_INDICE,',
'OBSERVACION,',
'CREADO_POR,',
'FECHA_ALTA,',
'ACTUALIZAD_POR,porc_indice,',
'FECHA_ACTUALIZACION, rowid',
'',
'from cm_indices_reparacion A'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Indice de Reparacion'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(354890100624931300)
,p_name=>'Indice de Reparacion'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:763:&SESSION.::&DEBUG.:RP:P763_ROWID:\#ROWID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'NZARATE'
,p_internal_uid=>354890100624931300
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(354893739954931305)
,p_db_column_name=>'ROWID'
,p_display_order=>0
,p_column_identifier=>'I'
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
 p_id=>wwv_flow_imp.id(354890578262931303)
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
 p_id=>wwv_flow_imp.id(354890949424931304)
,p_db_column_name=>'TIPO_INDICE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Tipo Indice'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(354891328983931304)
,p_db_column_name=>'COD_TIPO_INDICE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Cod Tipo Indice'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(345316909391285250)
,p_db_column_name=>'PORC_INDICE'
,p_display_order=>13
,p_column_identifier=>'J'
,p_column_label=>'Porc Indice'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(354891704607931304)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>23
,p_column_identifier=>'D'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(354892192879931304)
,p_db_column_name=>'CREADO_POR'
,p_display_order=>33
,p_column_identifier=>'E'
,p_column_label=>'Creado Por'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(354892552885931305)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>43
,p_column_identifier=>'F'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(354892960546931305)
,p_db_column_name=>'ACTUALIZAD_POR'
,p_display_order=>53
,p_column_identifier=>'G'
,p_column_label=>'Actualizad Por'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(354893322833931305)
,p_db_column_name=>'FECHA_ACTUALIZACION'
,p_display_order=>63
,p_column_identifier=>'H'
,p_column_label=>'Fecha Actualizacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(354896000424931566)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3548961'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_EMPRESA:TIPO_INDICE:COD_TIPO_INDICE:PORC_INDICE:OBSERVACION:CREADO_POR:FECHA_ALTA:ACTUALIZAD_POR:FECHA_ACTUALIZACION:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(354894222829931305)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(354890067101931300)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:763:&SESSION.::&DEBUG.:763'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(354894556505931306)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(354890067101931300)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(354895021719931306)
,p_event_id=>wwv_flow_imp.id(354894556505931306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(354890067101931300)
);
wwv_flow_imp.component_end;
end;
/
