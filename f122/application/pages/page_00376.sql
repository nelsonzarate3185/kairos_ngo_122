prompt --application/pages/page_00376
begin
--   Manifest
--     PAGE: 00376
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
 p_id=>376
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Pedidos de Repuesto Salon'
,p_alias=>'PEDIDOS-DE-REPUESTO-SALON'
,p_step_title=>'Pedidos de Repuesto Salon'
,p_allow_duplicate_submissions=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'HSEGOVIA'
,p_last_upd_yyyymmddhh24miss=>'20230425113624'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107670872783992548)
,p_plug_name=>'Pedidos de Repuesto Salon'
,p_region_name=>'pedidos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT SER_COMPROBANTE,',
'           NRO_COMPROBANTE,',
'           NOM_CLIENTE,',
'           OBSERVACION,',
'           TIP_COMPROBANTE,',
'           FEC_COMPROBANTE,',
'           COD_USUARIO,',
'           FACTURADO,',
'           ANULADO,',
'           NRO_DIARIO,',
'           P_TIPO,',
'           COD_CLIENTE,',
'           CONFIRMADO',
'      FROM VT_PEDIDOS_CABECERA_REP A',
'     WHERE COD_EMPRESA = :P_COD_EMPRESA         ',
'       AND NVL(P_TIPO,''A'') != ''W''',
'       AND NVL(ESPERA_CALL,''S'') != ''N''  ',
'       AND COD_SUCURSAL != ''190''',
'        order by fec_comprobante desc',
'                                                ',
'                                                        '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Pedidos de Repuesto Salon'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(107670998013992548)
,p_name=>'Pedidos de Repuesto Salon'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::P9_NRO_COMPROBANTE,P9_SER_COMPROBANTE_CAB,P9_OPERACION,P9_FACTURADO:#NRO_COMPROBANTE#,#SER_COMPROBANTE#,MODIFICAR,#FACTURADO#'
,p_detail_link_text=>'<span aria-label="Visualizar"><span class="fa fa-edit" aria-hidden="true" title="Visualizar"></span></span>'
,p_owner=>'INV'
,p_internal_uid=>107670998013992548
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107671361032992550)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107671790935992550)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nro. Comprobante'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107672160472992550)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107672582899992551)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>unistr('Observaci\00F3n')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107672922427992551)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Tipo Comprobante'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107673370298992551)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Fecha Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107673733091992551)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Creado Por'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107674193478992551)
,p_db_column_name=>'FACTURADO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Facturado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107674565726992552)
,p_db_column_name=>'ANULADO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Anulado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107674934895992552)
,p_db_column_name=>'NRO_DIARIO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Nro Diario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107675366676992552)
,p_db_column_name=>'P_TIPO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107675791713992552)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>unistr('C\00F3d. Cliente')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107676124070992553)
,p_db_column_name=>'CONFIRMADO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Confirmado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(107676530735993209)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1076766'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SER_COMPROBANTE:NRO_COMPROBANTE:COD_CLIENTE:NOM_CLIENTE:OBSERVACION:FEC_COMPROBANTE:COD_USUARIO:FACTURADO:ANULADO:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64085576931872820)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(107670872783992548)
,p_button_name=>'Agregar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:CR,9:P9_OPERACION:AGREGAR'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp.component_end;
end;
/
