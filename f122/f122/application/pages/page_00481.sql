prompt --application/pages/page_00481
begin
--   Manifest
--     PAGE: 00481
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
 p_id=>481
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'REPORTE Check list de Productos - STCHKPRO'
,p_alias=>'REPORTE-CHECK-LIST-DE-PRODUCTOS-STCHKPRO'
,p_step_title=>'REPORTE Check list de Productos - STCHKPRO'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20230410091303'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141905274356792615)
,p_plug_name=>'Check list de Productos - STCHKPRO'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    COD_EMPRESA,',
'    FECHA,',
'    COD_SUCURSAL,',
'    NRO_PLANILLA,',
'    OBSERVACIONES,',
'    COD_USUARIO,',
'    HORA_ALTA,',
'    FECHA_FIN,',
'    HORA_FIN,',
'    COD_USUARIO_CONFIRMADO,',
'    COD_ARTICULO,',
'    CANTIDAD,',
'    NRO_GARANTIA,',
'    APEX_ITEM.CHECKBOX(p_idx => 1 , ',
'                            p_value => ROWID, ',
'                            p_attributes => (case CONFIRMADO when ''S'' then ''checked '' else null end ) )CONFIRMADO,',
'    COD_ARMADOR,',
'    COD_ART_CORTO',
'FROM ST_CKECK_PRODUCTOS_CAB;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Check list de Productos - STCHKPRO'
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
 p_id=>wwv_flow_imp.id(141905366122792616)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>141905366122792616
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141905433388792617)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141905571883792618)
,p_db_column_name=>'FECHA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141905657764792619)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141905774925792620)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Planilla'
,p_column_link=>'f?p=&APP_ID.:480:&SESSION.::&DEBUG.:480:P480_P_NRO_PLANILLA:#NRO_PLANILLA#'
,p_column_linktext=>'#NRO_PLANILLA#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141905809046792621)
,p_db_column_name=>'OBSERVACIONES'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Observaciones'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141905994058792622)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141906053493792623)
,p_db_column_name=>'HORA_ALTA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Hora Alta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141906130346792624)
,p_db_column_name=>'FECHA_FIN'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fecha Fin'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141906216397792625)
,p_db_column_name=>'HORA_FIN'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Hora Fin'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141906389930792626)
,p_db_column_name=>'COD_USUARIO_CONFIRMADO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Usuario Confirmado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141906452835792627)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(67457036557057765)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141906526890792628)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141906625990792629)
,p_db_column_name=>'NRO_GARANTIA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Nro Garantia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141906707808792630)
,p_db_column_name=>'CONFIRMADO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Confirmado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141906806602792631)
,p_db_column_name=>'COD_ARMADOR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Armador'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(141970958026789901)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141906978805792632)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(141990455950638292)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1419905'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_PLANILLA:FECHA:COD_ARTICULO:COD_USUARIO:COD_ARMADOR:NRO_GARANTIA:COD_USUARIO_CONFIRMADO:CONFIRMADO:'
,p_sort_column_1=>'NRO_PLANILLA'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(141908505164792648)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(141905274356792615)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:480:&SESSION.::&DEBUG.:480:P480_P_NRO_PLANILLA:'
);
wwv_flow_imp.component_end;
end;
/
