prompt --application/pages/page_00460
begin
--   Manifest
--     PAGE: 00460
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
 p_id=>460
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Planilla de Liquidaci\00F3n de Fletes - RPPLALIQ')
,p_alias=>'RPPLALIQ'
,p_step_title=>unistr('Planilla de Liquidaci\00F3n de Fletes - RPPLALIQ')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function descargaRPLIQFLEDET(p_cod_vehiculo, p_nro_planilla, p_repartidor, p_transportadora, p_fecha_ini, p_fecha_FIN, p_tipo, p_zona1, p_zona2){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/RPLIQFLEDET.pdf?''',
'            + ''P_ZONA1='' + p_zona1 ',
'            + ''&P_TRANSPORTADORA=''+ p_transportadora ',
'            + ''&P_ZONA2='' + p_zona2  ',
'            + ''&P_FECHA_FIN=''+ p_fecha_FIN',
'            + ''&P_TIPO=''+ p_tipo ',
'            + ''&P_VEHICULO='' + p_cod_vehiculo ',
'            + ''&P_NRO_PLANILLA='' + p_nro_planilla  ',
'            + ''&P_FECHA_INI=''+ p_fecha_ini ',
'            + ''&P_REPARTIDOR=''+ p_repartidor ',
'            + ''&j_username=jasperadmin&j_password=jasperadmin'';',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20241105102545'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134479473874191628)
,p_plug_name=>'B_CABECERA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134480189997191635)
,p_plug_name=>'IZQ'
,p_parent_plug_id=>wwv_flow_imp.id(134479473874191628)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134480228641191636)
,p_plug_name=>'DER'
,p_parent_plug_id=>wwv_flow_imp.id(134479473874191628)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>100
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134479537971191629)
,p_plug_name=>'B_DETALLE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1050
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    cod_empresa,',
'    usuario,',
'    fecha_alta,',
'    fecha,',
'    cod_vehiculo,',
'    cod_repartidor,',
'    valor_transito,',
'    volumen,',
'    km_estimado,',
'    indice,',
'    cant_viaje,',
'    monto_pago,',
'    nro_planilla',
'FROM',
'    inv.rp_liquida_fletes',
'WHERE nro_planilla = :P460_NRO_PLANILLA',
'AND COD_EMPRESA = :P_COD_EMPRESA',
'AND :P460_IND_LIQ_FLETES = ''1''; ',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P460_NRO_PLANILLA,P460_IND_LIQ_FLETES'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'B_DETALLE'
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
 p_id=>wwv_flow_imp.id(135818127306837044)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>135818127306837044
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135818352890837046)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135818492982837047)
,p_db_column_name=>'USUARIO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135818523862837048)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135818619658837049)
,p_db_column_name=>'FECHA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135818719407837050)
,p_db_column_name=>'COD_VEHICULO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Veh\00EDculo')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(99206271110692763)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135880770041639101)
,p_db_column_name=>'COD_REPARTIDOR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Repartidor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(22826330480737714)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135880829898639102)
,p_db_column_name=>'VALOR_TRANSITO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Valor Transito'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135880930452639103)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Volumen'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135881098239639104)
,p_db_column_name=>'KM_ESTIMADO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Km Estimado'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135881179839639105)
,p_db_column_name=>'INDICE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Indice'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135881244891639106)
,p_db_column_name=>'CANT_VIAJE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cant Viaje'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135881313373639107)
,p_db_column_name=>'MONTO_PAGO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Monto Pago'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135881489891639108)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Nro Planilla'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(135892940804633347)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1358930'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_EMPRESA:USUARIO:FECHA_ALTA:FECHA:COD_VEHICULO:COD_REPARTIDOR:VALOR_TRANSITO:VOLUMEN:KM_ESTIMADO:INDICE:CANT_VIAJE:MONTO_PAGO:NRO_PLANILLA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134479650897191630)
,p_plug_name=>'B_DETALLE_LIQ'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1060
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    cod_empresa,',
'    nro_planilla,',
'    fecha,',
'    cod_vehiculo,',
'    tip_ref,',
'    nro_ref,',
'    valor_carga,',
'    volumen,',
'    cod_zona,',
'    ( select descripcion',
'      from rp_zonas_reparto ',
'      WHERE COD_ZONA_REPARTO = cod_zona) descripcion,',
'    km_estimado',
'FROM',
'    inv.rp_liquida_fletes_det',
'WHERE COD_EMPRESA = :P_COD_EMPRESA',
'AND NRO_PLANILLA = :P460_NRO_PLANILLA',
'AND :P460_IND_DET_FLETES = ''1'';',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P460_NRO_PLANILLA,P460_IND_DET_FLETES'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'B_DETALLE_LIQ'
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
 p_id=>wwv_flow_imp.id(135881711723639111)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>135881711723639111
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135881903269639113)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135882059505639114)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro Planilla'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135882121686639115)
,p_db_column_name=>'FECHA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135882278269639116)
,p_db_column_name=>'COD_VEHICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Vehiculo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135882398760639117)
,p_db_column_name=>'TIP_REF'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135882459924639118)
,p_db_column_name=>'NRO_REF'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('N\00FAmero')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135882544704639119)
,p_db_column_name=>'VALOR_CARGA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Valor'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D0000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135882649592639120)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Volumen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135882730970639121)
,p_db_column_name=>'COD_ZONA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>unistr('C\00F3digo Zona')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(36511791648272355)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135882830802639122)
,p_db_column_name=>'KM_ESTIMADO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Km'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135883696611639130)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(135937467167574288)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1359375'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIP_REF:NRO_REF:VALOR_CARGA:VOLUMEN:KM_ESTIMADO:COD_ZONA:DESCRIPCION:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134480676042191640)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134481245412191646)
,p_plug_name=>'BUSCAR PLANILLA'
,p_region_css_classes=>'js-dialog-size1200x580'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(135813865998837001)
,p_plug_name=>'FILTROS'
,p_parent_plug_id=>wwv_flow_imp.id(134481245412191646)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(135813910498837002)
,p_plug_name=>'RESULTADOS'
,p_parent_plug_id=>wwv_flow_imp.id(134481245412191646)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    NULL SELECCIONAR, ',
'    cod_empresa,',
'    nro_planilla,',
'    fecha,',
'    usuario,',
'    fecha_alta,',
'    nro_factura,',
'    observacion,',
'    fec_rendicion,',
'    ROWID ROW_ID_PLANILLA',
'    ',
'FROM rp_planilla_liquida_fletes',
'WHERE COD_EMPRESA = :P_COD_EMPRESA',
'AND (NRO_PLANILLA = :P460_NRO_PLANILLA_BUSQ OR :P460_NRO_PLANILLA_BUSQ IS NULL)',
'AND (FECHA >= TO_DATE(:P460_FECHA_INI_BUSQ, ''DD/MM/YYYY'') OR :P460_FECHA_INI_BUSQ IS NULL)',
'AND (FECHA <= TO_DATE(:P460_FECHA_FIN_BUSQ, ''DD/MM/YYYY'') OR :P460_FECHA_FIN_BUSQ IS NULL)',
'AND (NRO_FACTURA= :P460_NRO_FACTURA_BUSQ OR :P460_NRO_FACTURA_BUSQ IS NULL)',
'AND (FEC_RENDICION = TO_DATE(:P460_FEC_RENDICION_BUSQ, ''DD/MM/YYYY'') OR :P460_FEC_RENDICION_BUSQ IS NULL)',
'AND :P460_IND_BUSQ_PLANILLA = ''1'';',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P460_NRO_PLANILLA_BUSQ,P460_FECHA_INI_BUSQ,P460_FECHA_FIN_BUSQ,P460_NRO_FACTURA_BUSQ,P460_FEC_RENDICION_BUSQ,P460_IND_BUSQ_PLANILLA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'RESULTADOS'
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
 p_id=>wwv_flow_imp.id(135814084845837003)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>135814084845837003
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135814866414837011)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135814961828837012)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro Planilla'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135815057943837013)
,p_db_column_name=>'FECHA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135815106480837014)
,p_db_column_name=>'USUARIO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135815239328837015)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135815398797837016)
,p_db_column_name=>'NRO_FACTURA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nro Factura'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135815484405837017)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135815571181837018)
,p_db_column_name=>'FEC_RENDICION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fec Rendicion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135816468158837027)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Seleccionar'
,p_column_link=>'javascript:$s(''P460_ROW_ID_SELEC_PLAN'',''#ROW_ID_PLANILLA#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(135817019554837033)
,p_db_column_name=>'ROW_ID_PLANILLA'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Row Id Planilla'
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
,p_column_alignment=>'CENTER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(135849434901750474)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1358495'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECCIONAR:NRO_PLANILLA:FECHA:NRO_FACTURA:FEC_RENDICION:'
,p_sort_column_1=>'FECHA'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(135814608786837009)
,p_plug_name=>'INDICADORES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(135816572103837028)
,p_plug_name=>'ROW / SEQ'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(137387480068507047)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(135815634235837019)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(135813865998837001)
,p_button_name=>'BTN_BUSCAR_PLANILLA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(135815799636837020)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(135813865998837001)
,p_button_name=>'BTN_LIMPIAR_CAMPOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(135817199340837034)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(134481245412191646)
,p_button_name=>'DA_CERRAR_BUSQUEDA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(135883029438639124)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(134479473874191628)
,p_button_name=>'BTN_ABRIR_BUSQUEDA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar Planilla'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(135883783199639131)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(134479473874191628)
,p_button_name=>'BTN_IMPRIMIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134479771137191631)
,p_name=>'P460_NRO_PLANILLA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(134480189997191635)
,p_prompt=>unistr('N\00B0 Liquidaci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134479896488191632)
,p_name=>'P460_FECHA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(134480189997191635)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134479992274191633)
,p_name=>'P460_NRO_FACTURA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(134480189997191635)
,p_prompt=>unistr('Factura N\00B0')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134480013785191634)
,p_name=>'P460_OBSERVACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(134480189997191635)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134480314142191637)
,p_name=>'P460_FECHA_ALTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(134480228641191636)
,p_prompt=>'Fec. Alta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134480467516191638)
,p_name=>'P460_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(134480228641191636)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134480554028191639)
,p_name=>'P460_FEC_RENDICION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(134480228641191636)
,p_prompt=>'Rendido'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134480798836191641)
,p_name=>'P460_COD_MONEDA_BASE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(134480676042191640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134480813305191642)
,p_name=>'P460_FAC_CREDITO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(134480676042191640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134480917676191643)
,p_name=>'P460_FAC_CONTADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(134480676042191640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134481080280191644)
,p_name=>'P460_NOTA_REMISION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(134480676042191640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134481119044191645)
,p_name=>'P460_SER_CONTADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(134480676042191640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134481346664191647)
,p_name=>'P460_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(134480676042191640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135814161691837004)
,p_name=>'P460_NRO_PLANILLA_BUSQ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(135813865998837001)
,p_prompt=>'Nro Planilla'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135814221689837005)
,p_name=>'P460_FECHA_INI_BUSQ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(135813865998837001)
,p_prompt=>'Fecha desde'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135814327813837006)
,p_name=>'P460_FECHA_FIN_BUSQ'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(135813865998837001)
,p_prompt=>'Fecha hasta'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135814471896837007)
,p_name=>'P460_NRO_FACTURA_BUSQ'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(135813865998837001)
,p_prompt=>'Nro Factura'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135814536521837008)
,p_name=>'P460_FEC_RENDICION_BUSQ'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(135813865998837001)
,p_prompt=>unistr('Fec. Rendici\00F3n')
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135814730626837010)
,p_name=>'P460_IND_BUSQ_PLANILLA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(135814608786837009)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135816656990837029)
,p_name=>'P460_ROW_ID_SELEC_PLAN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(135816572103837028)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135818212130837045)
,p_name=>'P460_IND_LIQ_FLETES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(135814608786837009)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135881834345639112)
,p_name=>'P460_IND_DET_FLETES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(135814608786837009)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137387590274507048)
,p_name=>'P460_P_NRO_PLANILLA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(137387480068507047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134481502636191649)
,p_name=>'DA_ABRIR_BUSQUEDA'
,p_event_sequence=>10
,p_condition_element=>'P460_P_NRO_PLANILLA'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134481642580191650)
,p_event_id=>wwv_flow_imp.id(134481502636191649)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134481245412191646)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137387640538507049)
,p_name=>'DA_CARGAR_P_PLANILLA'
,p_event_sequence=>20
,p_condition_element=>'P460_P_NRO_PLANILLA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139797447844306705)
,p_event_id=>wwv_flow_imp.id(137387640538507049)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'        nro_planilla,',
'        fecha,',
'        usuario,',
'        fecha_alta,',
'        nro_factura,',
'        observacion,',
'        fec_rendicion',
'    INTO',
'        :P460_NRO_PLANILLA,',
'        :P460_FECHA,',
'        :P460_USUARIO,',
'        :P460_FECHA_ALTA,',
'        :P460_NRO_FACTURA,',
'        :P460_OBSERVACION,',
'        :P460_FEC_RENDICION',
'',
'FROM rp_planilla_liquida_fletes',
'WHERE nro_planilla = :P460_P_NRO_PLANILLA;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P460_P_NRO_PLANILLA'
,p_attribute_03=>'P460_NRO_PLANILLA,P460_FECHA,P460_USUARIO,P460_FECHA_ALTA,P460_NRO_FACTURA,P460_OBSERVACION,P460_FEC_RENDICION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139797574526306706)
,p_event_id=>wwv_flow_imp.id(137387640538507049)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P460_IND_LIQ_FLETES := ''1'';',
'    :P460_IND_DET_FLETES := ''1'';',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P460_IND_LIQ_FLETES,P460_IND_DET_FLETES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139797609958306707)
,p_event_id=>wwv_flow_imp.id(137387640538507049)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134479537971191629)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139797772316306708)
,p_event_id=>wwv_flow_imp.id(137387640538507049)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134479650897191630)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(135815898082837021)
,p_name=>'DA_LIMPIAR_CAMPOS_BUSQ'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(135815799636837020)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(135815946709837022)
,p_event_id=>wwv_flow_imp.id(135815898082837021)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P460_IND_BUSQ_PLANILLA,P460_NRO_PLANILLA_BUSQ,P460_FECHA_INI_BUSQ,P460_FECHA_FIN_BUSQ,P460_NRO_FACTURA_BUSQ,P460_FEC_RENDICION_BUSQ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(135816054630837023)
,p_event_id=>wwv_flow_imp.id(135815898082837021)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(135813910498837002)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(135816117692837024)
,p_name=>'DA_BUSCAR_PLANILLA'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(135815634235837019)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(135816219338837025)
,p_event_id=>wwv_flow_imp.id(135816117692837024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P460_IND_BUSQ_PLANILLA := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P460_IND_BUSQ_PLANILLA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(135816337679837026)
,p_event_id=>wwv_flow_imp.id(135816117692837024)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(135813910498837002)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(135816742420837030)
,p_name=>'DA_SELECCIONAR_PLANILLA'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P460_ROW_ID_SELEC_PLAN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(135817410901837037)
,p_event_id=>wwv_flow_imp.id(135816742420837030)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'        nro_planilla,',
'        fecha,',
'        usuario,',
'        fecha_alta,',
'        nro_factura,',
'        observacion,',
'        fec_rendicion',
'    INTO',
'        :P460_NRO_PLANILLA,',
'        :P460_FECHA,',
'        :P460_USUARIO,',
'        :P460_FECHA_ALTA,',
'        :P460_NRO_FACTURA,',
'        :P460_OBSERVACION,',
'        :P460_FEC_RENDICION',
'',
'FROM rp_planilla_liquida_fletes',
'WHERE ROWID = :P460_ROW_ID_SELEC_PLAN;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P460_ROW_ID_SELEC_PLAN'
,p_attribute_03=>'P460_NRO_PLANILLA,P460_FECHA,P460_USUARIO,P460_FECHA_ALTA,P460_NRO_FACTURA,P460_OBSERVACION,P460_FEC_RENDICION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(135881523648639109)
,p_event_id=>wwv_flow_imp.id(135816742420837030)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P460_IND_LIQ_FLETES := ''1'';',
'    :P460_IND_DET_FLETES := ''1'';',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P460_IND_LIQ_FLETES,P460_IND_DET_FLETES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(135881654167639110)
,p_event_id=>wwv_flow_imp.id(135816742420837030)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134479537971191629)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(135882906682639123)
,p_event_id=>wwv_flow_imp.id(135816742420837030)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134479650897191630)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(135816898466837031)
,p_event_id=>wwv_flow_imp.id(135816742420837030)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134481245412191646)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(135817246858837035)
,p_name=>'DA_CERRAR_BUSQUEDA'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(135817199340837034)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(135817395958837036)
,p_event_id=>wwv_flow_imp.id(135817246858837035)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134481245412191646)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(135817805884837041)
,p_name=>'DA_MODIFICAR_OBSERVACION'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P460_OBSERVACION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(135817935603837042)
,p_event_id=>wwv_flow_imp.id(135817805884837041)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    UPDATE rp_planilla_liquida_fletes',
'    SET OBSERVACION = :P460_OBSERVACION',
'    WHERE ROWID = :P460_ROW_ID_SELEC_PLAN;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P460_ROW_ID_SELEC_PLAN,P460_OBSERVACION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(135883162472639125)
,p_name=>'DA_ABRIR_BUSQUEDA_MAIN'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(135883029438639124)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(135883406561639128)
,p_event_id=>wwv_flow_imp.id(135883162472639125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P460_IND_BUSQ_PLANILLA,P460_NRO_PLANILLA_BUSQ,P460_FECHA_INI_BUSQ,P460_FECHA_FIN_BUSQ,P460_NRO_FACTURA_BUSQ,P460_FEC_RENDICION_BUSQ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(135883504073639129)
,p_event_id=>wwv_flow_imp.id(135883162472639125)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(135813910498837002)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(135883301956639127)
,p_event_id=>wwv_flow_imp.id(135883162472639125)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134481245412191646)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(135883821428639132)
,p_name=>'DA_HABILITAR_IMPRIMIR'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P460_NRO_PLANILLA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(135883932987639133)
,p_event_id=>wwv_flow_imp.id(135883821428639132)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(135883783199639131)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P460_NRO_PLANILLA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(135884134688639135)
,p_event_id=>wwv_flow_imp.id(135883821428639132)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(135883783199639131)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P460_NRO_PLANILLA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137387229329507045)
,p_name=>'DA_LLAMAR_RPLIQFLEDET '
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(135883783199639131)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137387371160507046)
,p_event_id=>wwv_flow_imp.id(137387229329507045)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'descargaRPLIQFLEDET("",',
'                    apex.item(''P460_NRO_PLANILLA'').getValue(),',
'                    "",',
'                    "",',
'                    "",',
'                    "",',
'                    "",',
'                    "",',
'                    "");',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(135818069794837043)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_DATOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when=>'P460_P_NRO_PLANILLA'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(134481472778191648)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P460_COD_MODULO := ''RP'';',
'    :P460_COD_MONEDA_BASE := BS_busca_parametro( :P460_COD_MODULO, ''COD_MONEDA_BASE'' );',
'    :P460_FAC_CREDITO := BS_busca_parametro( :P460_COD_MODULO, ''TIPO_CREDITO'' );',
'    :P460_FAC_CONTADO := BS_busca_parametro( :P460_COD_MODULO, ''TIPO_CONTADO'' );',
'    :P460_NOTA_REMISION := BS_busca_parametro( :P460_COD_MODULO, ''TIPO_REMISION'' );',
'    :P460_SER_CONTADO := BS_busca_parametro( :P460_COD_MODULO, ''SERIE_CONTADO'' );',
'',
'',
'    --:P460_P_NRO_PLANILLA := ''906'';',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
