prompt --application/pages/page_00190
begin
--   Manifest
--     PAGE: 00190
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
 p_id=>190
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CCSEGCLI'
,p_alias=>'CCSEGCLI'
,p_page_mode=>'MODAL'
,p_step_title=>'Seguimiento de Clientes'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DFINO'
,p_last_upd_yyyymmddhh24miss=>'20221115123557'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39689199347026622)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39689451996026625)
,p_plug_name=>'Seguimiento de Clientes'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROW_NUMBER() OVER(ORDER BY A.COD_CLIENTE ASC) AS Row#,',
'       A.COD_CLIENTE, ',
'	   NVL(P.NOMBRE, P.NOMB_FANTASIA)NOMB_CLIENTE,',
'       A.FECHA FEC_LLAMDA,',
'	   A.HORA,',
'	   A.COMENTARIO,',
'	   A.COD_USUARIO, ',
'	   A.FECHA_SEGUIMIENTO',
'  FROM CR_SEGUIMIENTO_CLI A,',
'	   CC_CLIENTES C,',
'	   PERSONAS P',
' WHERE A.COD_EMPRESA = :P190_P_COD_EMPRESA',
'   AND TO_DATE(A.FECHA,''DD/MM/YYYY'') BETWEEN NVL(TO_DATE(:P190_P_FEC_INI,''DD/MM/YYYY''),SYSDATE-2000) AND NVL(TO_DATE(:P190_P_FEC_FIN,''DD/MM/YYYY''),SYSDATE+50)',
'   AND A.COD_EMPRESA = C.COD_EMPRESA',
'   AND A.COD_CLIENTE = C.COD_CLIENTE',
'   AND P.COD_PERSONA = C.COD_PERSONA',
'   AND (A.COD_CLIENTE = :P190_P_COD_CLIENTE OR :P190_P_COD_CLIENTE IS NULL)',
' ORDER BY 1,A.FECHA,A.COD_USUARIO'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P190_P_COD_EMPRESA,P190_P_FEC_INI,P190_P_FEC_FIN,P190_P_COD_CLIENTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Seguimiento de Clientes'
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
 p_id=>wwv_flow_imp.id(39689844148026629)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>39689844148026629
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39690986530026640)
,p_db_column_name=>'ROW#'
,p_display_order=>10
,p_column_identifier=>'I'
,p_column_label=>'Orden'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39689965227026630)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39690048550026631)
,p_db_column_name=>'NOMB_CLIENTE'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Nomb Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39690163956026632)
,p_db_column_name=>'FEC_LLAMDA'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39690287873026633)
,p_db_column_name=>'HORA'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Hora'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39690318738026634)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39690412046026635)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39690545010026636)
,p_db_column_name=>'FECHA_SEGUIMIENTO'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Fecha Seguimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(41903318940528327)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'419034'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROW#:COMENTARIO:FECHA_SEGUIMIENTO:COD_USUARIO:FEC_LLAMDA:HORA:'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39689350708026624)
,p_name=>'P190_P_FEC_INI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(39689199347026622)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39689593414026626)
,p_name=>'P190_P_COD_CLIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(39689199347026622)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39689670970026627)
,p_name=>'P190_P_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(39689199347026622)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39690647884026637)
,p_name=>'P190_P_FEC_FIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(39689199347026622)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39690806262026639)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*:P190_P_COD_EMPRESA := 1;',
':P190_P_COD_CLIENTE := ''889'';',
':P190_P_FEC_INI := ''14/08/2018'';',
':P190_P_FEC_FIN := ''09/11/2022'';*/'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp.component_end;
end;
/
