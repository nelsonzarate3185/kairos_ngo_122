prompt --application/pages/page_00441
begin
--   Manifest
--     PAGE: 00441
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
 p_id=>441
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Rendici\00F3n de Planillas')
,p_alias=>unistr('RENDICI\00D3N-DE-PLANILLAS')
,p_step_title=>unistr('Rendici\00F3n de Planillas')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230331100036'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129532433109885811)
,p_plug_name=>unistr('Rendici\00F3n de Planillas')
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129971319026723600)
,p_plug_name=>unistr('Rendici\00F3n de Planillas')
,p_parent_plug_id=>wwv_flow_imp.id(129532433109885811)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nro_planilla,',
'    COD_REPARTIDOR,',
'    ESTADO, fec_planilla',
'from RP_REPARTO_CABECERA',
'where cod_empresa= :p_cod_empresa',
'and fec_planilla>sysdate-3000',
'order by fec_planilla desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>unistr('Rendici\00F3n de Planillas')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(129971426723723600)
,p_name=>unistr('Rendici\00F3n de Planillas')
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>129971426723723600
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129971856592723594)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Nro Planilla'
,p_column_link=>'f?p=&APP_ID.:430:&SESSION.::&DEBUG.:CR,430:P430_P_NRO_PLANILLA:#NRO_PLANILLA#'
,p_column_linktext=>'#NRO_PLANILLA#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129972221415723594)
,p_db_column_name=>'COD_REPARTIDOR'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Cod Repartidor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(129987294224699355)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129972617907723593)
,p_db_column_name=>'ESTADO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(130001223166628536)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108924461939676443)
,p_db_column_name=>'FEC_PLANILLA'
,p_display_order=>13
,p_column_identifier=>'D'
,p_column_label=>'Fec Planilla'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(129985310700721236)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1299854'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FEC_PLANILLA:NRO_PLANILLA:COD_REPARTIDOR:ESTADO:'
,p_sort_column_1=>'FEC_PLANILLA'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'NRO_PLANILLA'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
