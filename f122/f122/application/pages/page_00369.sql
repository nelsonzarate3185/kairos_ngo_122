prompt --application/pages/page_00369
begin
--   Manifest
--     PAGE: 00369
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
 p_id=>369
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'NOTAS DE ENVIOS PENDIENTES - STENVPE'
,p_alias=>'NOTAS-DE-ENVIOS-PENDIENTES-STENVPE'
,p_step_title=>'NOTAS DE ENVIOS PENDIENTES - STENVPE'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20230421110843'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108953461934031379)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(40070279985263645)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(40189153869263678)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108954026411031380)
,p_plug_name=>'NOTAS DE ENVIOS PENDIENTES - STENVPE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    NULL LINK339,',
'    COD_EMPRESA,',
'    TIP_ENVIO,   ',
'    NRO_ENVIO,   ',
'    COD_SUCURSAL, ',
'    COD_SUCURSAL SUCURSAL, ',
'    COD_SUCURSAL_ENT,',
'    COD_SUCURSAL_ENT  SUCURSAL_ENT,     ',
'    FECHA,   ',
'    ESTADO   ',
'    SER_ENVIO,  ',
'    TIP_COMPROBANTE_REF,',
'    SER_COMPROBANTE_REF,',
'    NRO_COMPROBANTE_REF,',
'    FEC_VENCIMIENTO  ',
'   ',
'FROM ST_NOTAS_ENVIO_CAB_PEND',
'WHERE cod_empresa = :P_COD_EMPRESA',
'and tip_envio = ''ENV'' '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'NOTAS DE ENVIOS PENDIENTES - STENVPE'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(108954171540031380)
,p_name=>'NOTAS DE ENVIOS PENDIENTES - STENVPE'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>108954171540031380
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108954557159031382)
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
 p_id=>wwv_flow_imp.id(108954924986031383)
,p_db_column_name=>'TIP_ENVIO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Tip Envio'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108955389163031383)
,p_db_column_name=>'NRO_ENVIO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nro Envio'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108955759504031383)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108956130887031383)
,p_db_column_name=>'FECHA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108956515603031384)
,p_db_column_name=>'SER_ENVIO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Ser Envio'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108956973352031384)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108957311632031384)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Ser Comprobante Ref'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108957720658031384)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108958179216031384)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Fec Vencimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108046111388228026)
,p_db_column_name=>'LINK339'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'Ver'
,p_column_link=>'f?p=&APP_ID.:339:&SESSION.::&DEBUG.:RP,339:P339_P_NRO_COMPROBANTE:#NRO_ENVIO#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108046236474228027)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'L'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(41127354264101747)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108046304570228028)
,p_db_column_name=>'COD_SUCURSAL_ENT'
,p_display_order=>40
,p_column_identifier=>'M'
,p_column_label=>'Cod Sucursal Ent'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(109009275530354950)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108046476539228029)
,p_db_column_name=>'SUCURSAL_ENT'
,p_display_order=>50
,p_column_identifier=>'N'
,p_column_label=>'Sucursal Entrada'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(109009275530354950)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(108961792373046934)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1089618'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LINK339:NRO_ENVIO:TIP_ENVIO:SER_ENVIO:COD_SUCURSAL:SUCURSAL:COD_SUCURSAL_ENT:SUCURSAL_ENT:FECHA:'
,p_sort_column_1=>'NRO_ENVIO'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(123912129356910536)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(108954026411031380)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:339:&SESSION.::&DEBUG.:CR,339:P339_P_NRO_COMPROBANTE:'
);
wwv_flow_imp.component_end;
end;
/
