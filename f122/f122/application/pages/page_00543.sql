prompt --application/pages/page_00543
begin
--   Manifest
--     PAGE: 00543
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
 p_id=>543
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Facturas Electronicas - Reprocesos'
,p_alias=>'FACTURAS-ELECTRONICAS-REPROCESOS'
,p_step_title=>'Facturas Electronicas - Reprocesos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:js-pageStickyMobileHeader'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20240925114044'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104704942484157950)
,p_plug_name=>unistr('Reprocesar Facturas Electr\00F3nicas')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_display_when_condition=>'P543_PROCESO'
,p_plug_display_when_cond2=>'HISTORIAL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(170063167507429901)
,p_plug_name=>unistr('Facturas electr\00F3nicas')
,p_parent_plug_id=>wwv_flow_imp.id(104704942484157950)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id,',
'        c001||''-''||c002||''-''||c003   AS v_documento,',
'        c004   AS v_fecha_emision,',
'        c005   AS v_cedula,',
'        c006   AS v_nombre,',
'        c014   AS estado,',
'        c015   AS estado_envio,',
'        c016 AS estado_anulacion,',
'        c017   AS RUC,',
'        c023  AS v_tot_operacion,',
'        c025 AS ID_FACTURA_ELECT,',
'        c027 as tipo,',
'        c028 as serie,',
'        c029 as cod_cliente,',
'        c030 as cod_persona,',
'        c026 as respuesta,',
'        c031 as estado_comprobante,',
'        trim(substr(c026,instr(c026,''"codigo"'')+10,instr(c026,''"mensaje"'')-instr(c026,''"codigo"'')-12)) AS Cod_Error,',
'        replace(trim(substr(c026,instr(c026,''"mensaje"'')+11,instr(c026,''"}]'')-instr(c026,''"mensaje"'')-11)),''}]}]}'','''') AS mensaje_Error,',
'        ''x'' AS Visualizar',
'        FROM apex_collections',
'       WHERE collection_name = ''TMP_FACTURAS'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Facturas electr\00F3nicas')
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
 p_id=>wwv_flow_imp.id(170063209098429902)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'javascript:$s(''P543_SEQ_ID'',''#SEQ_ID#'');'
,p_detail_link_text=>'<span class="fa fa-repeat" aria-hidden="true"></span>'
,p_owner=>'OSCARGO'
,p_internal_uid=>170063209098429902
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(170063455063429904)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'B'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(170063507111429905)
,p_db_column_name=>'V_DOCUMENTO'
,p_display_order=>20
,p_column_identifier=>'C'
,p_column_label=>'Documento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(170063678321429906)
,p_db_column_name=>'V_FECHA_EMISION'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>unistr('Fecha Emisi\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(170063756810429907)
,p_db_column_name=>'V_CEDULA'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'V Cedula'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(170063889576429908)
,p_db_column_name=>'V_NOMBRE'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(170064695674429916)
,p_db_column_name=>'ESTADO'
,p_display_order=>130
,p_column_identifier=>'H'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(170064921609429919)
,p_db_column_name=>'RUC'
,p_display_order=>160
,p_column_identifier=>'K'
,p_column_label=>'RUC/CI'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(170065545524429925)
,p_db_column_name=>'V_TOT_OPERACION'
,p_display_order=>220
,p_column_identifier=>'Q'
,p_column_label=>'Total'
,p_column_type=>'STRING'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(171274313307108408)
,p_db_column_name=>'ID_FACTURA_ELECT'
,p_display_order=>250
,p_column_identifier=>'S'
,p_column_label=>'Id Factura Elect'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(172001989132781006)
,p_db_column_name=>'MENSAJE_ERROR'
,p_display_order=>260
,p_column_identifier=>'T'
,p_column_label=>'Mensaje de error'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(172005641176781043)
,p_db_column_name=>'VISUALIZAR'
,p_display_order=>270
,p_column_identifier=>'V'
,p_column_label=>'Visualizar'
,p_column_link=>'f?p=&APP_ID.:543:&SESSION.::&DEBUG.:Y,:P543_FACTURA,P543_PROCESO:#ID_FACTURA_ELECT#,HISTORIAL'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-eye"> Ver historial</span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(89185811235051910)
,p_db_column_name=>'ESTADO_ENVIO'
,p_display_order=>280
,p_column_identifier=>'W'
,p_column_label=>'Estado Envio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(461746332195254740)
,p_db_column_name=>'TIPO'
,p_display_order=>290
,p_column_identifier=>'X'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(461746409885254741)
,p_db_column_name=>'SERIE'
,p_display_order=>300
,p_column_identifier=>'Y'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(461746566139254742)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>310
,p_column_identifier=>'Z'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(461746661998254743)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>320
,p_column_identifier=>'AA'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(461746773333254744)
,p_db_column_name=>'COD_ERROR'
,p_display_order=>330
,p_column_identifier=>'AB'
,p_column_label=>'Cod Error'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(690800035125936804)
,p_db_column_name=>'ESTADO_ANULACION'
,p_display_order=>340
,p_column_identifier=>'AC'
,p_column_label=>'Estado Anulacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(690800159855936805)
,p_db_column_name=>'RESPUESTA'
,p_display_order=>350
,p_column_identifier=>'AD'
,p_column_label=>'Respuesta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(690800235859936806)
,p_db_column_name=>'ESTADO_COMPROBANTE'
,p_display_order=>360
,p_column_identifier=>'AE'
,p_column_label=>'Estado Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(171006557834529630)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'1710066'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>'COD_CLIENTE:COD_PERSONA:TIPO:SERIE:V_DOCUMENTO:V_FECHA_EMISION:V_NOMBRE:ESTADO:RUC:V_TOT_OPERACION:COD_ERROR:MENSAJE_ERROR:'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(610864972354844417)
,p_report_id=>wwv_flow_imp.id(171006557834529630)
,p_pivot_columns=>'TIPO'
,p_row_columns=>'MENSAJE_ERROR'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(610865318048844417)
,p_pivot_id=>wwv_flow_imp.id(610864972354844417)
,p_display_seq=>1
,p_function_name=>'COUNT'
,p_column_name=>'V_DOCUMENTO'
,p_db_column_name=>'PFC1'
,p_column_label=>'Cantidad'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(170067696451429946)
,p_plug_name=>'FORMULARIO DE REPROCESO DE FACTURAS'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P543_PROCESO'
,p_plug_display_when_cond2=>'HISTORIAL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(171273654067108401)
,p_plug_name=>unistr('Resultado \00FAltima ejecuci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(170067696451429946)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(171273745743108402)
,p_plug_name=>'LISTADO'
,p_parent_plug_id=>wwv_flow_imp.id(170067696451429946)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>6
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.fecha_generacion, c.tip_comprobante Tipo_Comprobante, c.ser_comprobante Serie_Comprobante,',
'c.nro_comprobante, l.fecha_reproceso',
'from inv.vt_comprobantes_cabecera c ',
'inner join inv.vt_factura_electronica_log l on c.id_factura_electronica = :P543_FACTURA',
'and l.cod_empresa = c.cod_empresa and l.tip_comprobante = c.tip_comprobante',
'and l.ser_comprobante = c.ser_comprobante and l.nro_comprobante = c.nro_comprobante;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P543_FACTURA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'LISTADO'
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
 p_id=>wwv_flow_imp.id(172003358615781020)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'OSCARGO'
,p_internal_uid=>172003358615781020
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(172003478115781021)
,p_db_column_name=>'FECHA_GENERACION'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Fecha Generacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(172003598276781022)
,p_db_column_name=>'TIPO_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tipo Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(172003696178781023)
,p_db_column_name=>'SERIE_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Serie Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(172003756039781024)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(172003879303781025)
,p_db_column_name=>'FECHA_REPROCESO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha Reproceso'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(174987494162110471)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1749875'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FECHA_GENERACION:TIPO_COMPROBANTE:SERIE_COMPROBANTE:NRO_COMPROBANTE:FECHA_REPROCESO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(172002487204781011)
,p_plug_name=>'HISTORIAL_REPROCESO'
,p_parent_plug_id=>wwv_flow_imp.id(170067696451429946)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT r.idregistro, r.fecha_generacion,r.fecha_reproceso',
'    from vt_factura_elect_procesada_log r',
'        join inv.vt_factura_electronica_log l on ',
'            l.id_fact_elect = :P543_FACTURA and l.cod_empresa = r.cod_empresa and',
'            l.tip_comprobante = r.tip_comprobante and l.nro_comprobante = r.nro_comprobante;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P543_FACTURA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'HISTORIAL_REPROCESO'
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
,p_plug_header=>'Historial de ejecuciones anteriores'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(172002573957781012)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se ejecutaron reprocesos'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'OSCARGO'
,p_internal_uid=>172002573957781012
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(172002662350781013)
,p_db_column_name=>'IDREGISTRO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Idregistro'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(172002799992781014)
,p_db_column_name=>'FECHA_GENERACION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha Generacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(172002814300781015)
,p_db_column_name=>'FECHA_REPROCESO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha Reproceso'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(173461267960335738)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1734613'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IDREGISTRO:FECHA_GENERACION:FECHA_REPROCESO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(171277306453108438)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(170067696451429946)
,p_button_name=>'BTN_REPROCESAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reprocesar'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P543_MENSAJE'
,p_button_condition2=>'50000'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(170066499302429934)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(104704942484157950)
,p_button_name=>'BTN_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(171274506574108410)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(170067696451429946)
,p_button_name=>'BTN_INICIO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Volver al informe'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:543:&SESSION.::&DEBUG.::P543_FACTURA,P543_PROCESO:,'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82052442553403721)
,p_name=>'P543_SERIE_TIMBRADO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(104704942484157950)
,p_prompt=>unistr('Establecimiento - Expedici\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select T.SERIE||'' ''||S.TIMBRADO AS a, S.TIMBRADO b ',
'from TALONARIOS T',
'inner join SERIES_COMPROB S ON T.TIP_TALONARIO = S.TIP_COMPROBANTE ',
'    AND T.SERIE = S.SER_COMPROBANTE AND T.SERIE LIKE ''FE%''',
'    --AND NVL(S.ES_ELECTRONICO,''N'') = ''S''',
'    AND T.COD_EMPRESA = S.COD_EMPRESA AND T.COD_EMPRESA = :P_COD_EMPRESA',
'    /*AND BUSCA_PERMISO(',
'        p_empresa => :P_COD_EMPRESA,',
'        p_forma => ''VTFACTUR'',',
'        p_usuario => UPPER(:P_COD_USUARIO),',
'        p_permiso => ''REPROCESO_FACTURA'') = ''S''*/',
'group by T.SERIE, S.timbrado;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(170066234461429932)
,p_name=>'P543_DESDE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(104704942484157950)
,p_prompt=>'Fecha desde'
,p_placeholder=>'DD/MM/YYYY'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'ITEM'
,p_attribute_08=>'P543_HASTA'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(170066328039429933)
,p_name=>'P543_HASTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(104704942484157950)
,p_prompt=>'Fecha hasta'
,p_placeholder=>'DD/MM/YYYY'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'ITEM'
,p_attribute_05=>'P543_DESDE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(170066986951429939)
,p_name=>'P543_EXPEDICION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(104704942484157950)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(170067039158429940)
,p_name=>'P543_ESTABLECIMIENTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(104704942484157950)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171274160387108406)
,p_name=>'P543_FACTURA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(170067696451429946)
,p_prompt=>unistr('ID Factura Electr\00F3nica')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171276534253108430)
,p_name=>'P543_OBJETO_GENERADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(171273654067108401)
,p_prompt=>'Datos enviados'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>40000
,p_cHeight=>5
,p_tag_attributes=>'readonly'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171276645275108431)
,p_name=>'P543_OBJETO_RESPUESTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(171273654067108401)
,p_prompt=>'Datos recibidos'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>1000
,p_cHeight=>20
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(172001603494781003)
,p_name=>'P543_SEQ_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(104704942484157950)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(172002081760781007)
,p_name=>'P543_MENSAJE'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(172002913578781016)
,p_name=>'P543_PROCESO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(104704942484157950)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(175795058147694825)
,p_name=>'P543_DOC_FACTURA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(104704942484157950)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(170066522226429935)
,p_name=>'DA_BUSCA_FACTURAS'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(170066499302429934)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(170066684897429936)
,p_event_id=>wwv_flow_imp.id(170066522226429935)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner(); '
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(170066825153429938)
,p_event_id=>wwv_flow_imp.id(170066522226429935)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_establecimiento varchar2(5);',
'v_expedicion varchar2(5);',
'begin',
unistr('    ---------------------Toma el establecimiento y expedici\00F3n que el usuario tenga configruado------------'),
'    /*begin',
'        select substr(t.ser_timbrado,1,3) as establecimiento, substr(t.ser_timbrado,5,7) establecimiento ',
'        into :P543_ESTABLECIMIENTO, :P543_EXPEDICION',
'        from talonarios t ',
'        where t.codigo_usuario = :P_COD_USUARIO and rownum = 1 and t.cod_empresa = :P_COD_EMPRESA',
'        and nvl(t.activo,''S'')=''S'' order by fec_vencimiento desc;',
'    EXCEPTION WHEN OTHERS THEN',
'        :P543_ESTABLECIMIENTO := ''-'';',
'        :P543_EXPEDICION := ''-'';',
'    end;*/',
'    pkg_fact_electronica_control.sp_comprobantes_con_error(',
'        p_trunc_collection  => true,',
'        p_fecha_desde       => :P543_DESDE,',
'        p_fecha_hasta       => :P543_HASTA);',
'    IF :P543_SERIE_TIMBRADO is not null OR (:P543_DESDE is not null and :P543_HASTA is not null) then',
'        IF :P543_SERIE_TIMBRADO IS NULL THEN',
'            v_establecimiento := ''null'';',
'            v_expedicion := ''null'';',
'        ELSE ',
'            v_establecimiento := substr(:P543_SERIE_TIMBRADO,1,3);',
'            v_expedicion := substr(:P543_SERIE_TIMBRADO,5,7);',
'        END IF;',
'',
'        INV.pkg_fact_electronica_control.sp_consulta_mifactura(p_fecha_emision_deste  => TO_CHAR(TO_DATE(:P543_DESDE,''DD/MM/YYYY''),''YYYY-MM-DD''),',
'                                          p_fecha_emision_hasta  =>  TO_CHAR(TO_DATE(:P543_HASTA,''DD/MM/YYYY''),''YYYY-MM-DD''),',
'                                          p_establecimiento      => v_establecimiento,',
'                                          p_punto_expedicion     => v_expedicion,',
'                                          p_estado               => ''RECHAZADO'',',
'                                          p_estado_envio         => null,',
'                                          p_trunc_collection     => false);',
'',
'        INV.pkg_fact_electronica_control.sp_consulta_mifactura(p_fecha_emision_deste  => TO_CHAR(TO_DATE(:P543_DESDE,''DD/MM/YYYY''),''YYYY-MM-DD''),',
'                                          p_fecha_emision_hasta  =>  TO_CHAR(TO_DATE(:P543_HASTA,''DD/MM/YYYY''),''YYYY-MM-DD''),',
'                                          p_establecimiento      => v_establecimiento,',
'                                          p_punto_expedicion     => v_expedicion,',
'                                          p_estado               => '''',',
'                                          p_estado_envio         => ''ERROR_ENVIO'',',
'                                          p_trunc_collection     => false);',
'',
'        :P543_PROCESO:=''REPROCESO'';',
'    end if;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     RAISE_APPLICATION_ERROR(20001,''Error al consultar: ''||SQLERRM);',
'end;'))
,p_attribute_02=>'P543_DESDE,P543_HASTA,P543_SERIE_TIMBRADO'
,p_attribute_03=>'P543_PROCESO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(170067178656429941)
,p_event_id=>wwv_flow_imp.id(170066522226429935)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(170063167507429901)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(170067239614429942)
,p_event_id=>wwv_flow_imp.id(170066522226429935)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#apex_wait_overlay").remove(); $(".u-Processing").remove(); '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(171278037698108445)
,p_name=>'DA_REPROCESAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(171277306453108438)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(171278124225108446)
,p_event_id=>wwv_flow_imp.id(171278037698108445)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(171278218481108447)
,p_event_id=>wwv_flow_imp.id(171278037698108445)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P543_PROCESO <> ''REPROCESADO'' then',
'        inv.pkg_factura_electronica.sp_reprocesar_factura(  p_idfact_elect => :P543_FACTURA,',
'                                                            p_nuevo_idfactelect => :P543_FACTURA,',
'                                                            p_estado => :P543_MENSAJE);',
'        :P543_PROCESO := ''REPROCESADO'';',
'    else :P543_MENSAJE :=''El documento ya fue reprocesado''; end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    :P543_MENSAJE := ''Error al reprocesar:'' ||SQLERRM;',
'end;'))
,p_attribute_02=>'P543_FACTURA'
,p_attribute_03=>'P543_MENSAJE,P543_FACTURA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(171278441630108449)
,p_event_id=>wwv_flow_imp.id(171278037698108445)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#apex_wait_overlay").remove(); $(".u-Processing").remove(); '
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(172002387370781010)
,p_event_id=>wwv_flow_imp.id(171278037698108445)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P543_MENSAJE.'
,p_attribute_02=>'Resultado del reproceso'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(172004301021781030)
,p_event_id=>wwv_flow_imp.id(171278037698108445)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(170067696451429946)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(172004650495781033)
,p_name=>'DA_REPROCESO_DIRECTO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P543_SEQ_ID'
,p_condition_element=>'P543_SEQ_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(172005251474781039)
,p_event_id=>wwv_flow_imp.id(172004650495781033)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(172004731200781034)
,p_event_id=>wwv_flow_imp.id(172004650495781033)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c001||''-''||c002||''-''||c003, c025  INTO :P543_DOC_FACTURA, :P543_FACTURA',
'        FROM apex_collections',
'       WHERE collection_name = ''TMP_FACTURAS'' and seq_id = :P543_SEQ_ID;'))
,p_attribute_02=>'P543_SEQ_ID'
,p_attribute_03=>'P543_FACTURA,P543_DOC_FACTURA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(172004868093781035)
,p_event_id=>wwv_flow_imp.id(172004650495781033)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'resultado_aux varchar2(5);',
'',
'begin',
'    select NVL(MAX(ind_procesado),''N'') into resultado_aux from vt_factura_electronica_log where id_fact_elect = :P543_FACTURA;',
'    if resultado_aux = ''N'' then',
'        inv.pkg_fact_electronica_control.sp_reprocesar_factura(  p_cod_empresa => :P_COD_EMPRESA,',
'                                                            p_idfact_elect => :P543_FACTURA,',
'                                                            p_documento => :P543_DOC_FACTURA,',
'                                                            p_nuevo_idfactelect => :P543_FACTURA,',
'                                                            p_estado => :P543_MENSAJE);',
'    else :P543_MENSAJE := ''El documento ya fue procesado''; end if;',
'        :P543_SEQ_ID:=null;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    :P543_MENSAJE := null;',
'    RAISE_APPLICATION_ERROR(-20001,''Error al cargar: ''||SQLERRM);',
'end;'))
,p_attribute_02=>'P543_FACTURA,P543_DOC_FACTURA'
,p_attribute_03=>'P543_MENSAJE,P543_FACTURA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(172005365855781040)
,p_event_id=>wwv_flow_imp.id(172004650495781033)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#apex_wait_overlay").remove(); $(".u-Processing").remove(); '
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(172005056447781037)
,p_event_id=>wwv_flow_imp.id(172004650495781033)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INV.pkg_fact_electronica_control.sp_consulta_mifactura(p_fecha_emision_deste  => TO_CHAR(TO_DATE(:P543_DESDE,''DD/MM/YYYY''),''YYYY-MM-DD''),',
'                                              p_fecha_emision_hasta  =>  TO_CHAR(TO_DATE(:P543_HASTA,''DD/MM/YYYY''),''YYYY-MM-DD''),',
'                                              p_establecimiento      => :P543_ESTABLECIMIENTO,',
'                                              p_punto_expedicion     => :P543_EXPEDICION,',
'                                              p_estado => ''RECHAZADO'');'))
,p_attribute_02=>'P543_DESDE,P543_HASTA,P543_ESTABLECIMIENTO,P543_EXPEDICION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(172005191822781038)
,p_event_id=>wwv_flow_imp.id(172004650495781033)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P543_MENSAJE.'
,p_attribute_02=>'Resultado del reproceso'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(172004925852781036)
,p_event_id=>wwv_flow_imp.id(172004650495781033)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(170063167507429901)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(170067556644429945)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARGA_INICIAL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
unistr('    ---------------------Toma el establecimiento y expedici\00F3n que el usuario tenga configruado------------'),
'    begin',
'        select substr(t.ser_timbrado,1,3) as establecimiento, substr(t.ser_timbrado,5,7) establecimiento ',
'        into :P543_ESTABLECIMIENTO, :P543_EXPEDICION',
'        from talonarios t ',
'        where t.codigo_usuario = :P_COD_USUARIO and rownum = 1 and t.cod_empresa = :P_COD_EMPRESA',
'        and nvl(t.activo,''S'')=''S'' order by fec_vencimiento desc;',
'    EXCEPTION WHEN OTHERS THEN',
'        :P543_ESTABLECIMIENTO := ''-'';',
'        :P543_EXPEDICION := ''-'';',
'    end;',
'',
unistr('    -------------------Busca las facturas rechazadas de la aplicaci\00F3n MIFACTURA------------------'),
'    if :P543_FACTURA is null or :P543_PROCESO<>''HISTORIAL'' then',
'        INV.pkg_fact_electronica_control.sp_consulta_mifactura(p_fecha_emision_deste  => TO_CHAR(TO_DATE(:P543_DESDE,''DD/MM/YYYY''),''YYYY-MM-DD''),',
'                                              p_fecha_emision_hasta  =>  TO_CHAR(TO_DATE(:P543_HASTA,''DD/MM/YYYY''),''YYYY-MM-DD''),',
'                                              p_establecimiento      => :P543_ESTABLECIMIENTO,',
'                                              p_punto_expedicion     => :P543_EXPEDICION,',
'                                              p_estado => ''RECHAZADO'');',
'        :P543_OBJETO_GENERADO := null;',
'        :P543_OBJETO_RESPUESTA := null;',
'',
'        --Los documentos rechazadas se habilitan para reprocesar',
'        for cc in(select c025 as idfactura from apex_collections where collection_name = ''TMP_FACTURAS'' and c014 = ''RECHAZADO'')',
'        loop',
'            update vt_factura_electronica_log set ind_procesado = ''N'' where id_fact_elect = cc.idfactura and ind_procesado = ''S'';',
'        end loop;',
'    ---------Cuando se selecciona un documento se puede ver el historial del mismo--------------------',
'    else ',
'        select l.objeto_generado',
'        INTO :P543_OBJETO_GENERADO',
'        from vt_comprobantes_cabecera c ',
'        inner join vt_factura_electronica_log l on c.id_factura_electronica = :P543_FACTURA',
'        and l.cod_empresa = c.cod_empresa and l.tip_comprobante = c.tip_comprobante',
'        and l.ser_comprobante = c.ser_comprobante and l.nro_comprobante = c.nro_comprobante;',
'',
'        SELECT substr(c026,0,length(c026)-2) INTO :P543_OBJETO_RESPUESTA FROM apex_collections',
'           WHERE collection_name = ''TMP_FACTURAS'' and c025 = :P543_FACTURA;',
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     RAISE_APPLICATION_ERROR(-20001,''Error al cargar: ''||SQLERRM);',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
