prompt --application/pages/page_00815
begin
--   Manifest
--     PAGE: 00815
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
 p_id=>815
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Importaci\00F3n de Metas de Clientes')
,p_alias=>unistr('IMPORTACI\00D3N-DE-METAS-DE-CLIENTES')
,p_step_title=>unistr('Importaci\00F3n de Metas de Clientes')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20241226122211'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(650649282721945187)
,p_plug_name=>unistr('Importaci\00F3n de Metas Por Clientes')
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(652166698025091067)
,p_plug_name=>'Datos Analizados'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(40132096801263663)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(450857543052357831)
,p_plug_name=>'Metas'
,p_parent_plug_id=>wwv_flow_imp.id(652166698025091067)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.cod_cliente,',
'       p.nombre,',
'       c.fecha_inicio,',
'       c.fecha_fin,',
'       c.cod_marca,',
'       m.descripcion   AS desc_marca,',
'       c.cod_categoria,',
'       cat.descripcion AS desc_categoria,',
'       c.monto',
'  FROM vt_metas_clientes_cab c',
'  JOIN cc_clientes cc',
'    ON c.cod_empresa = cc.cod_empresa',
'   AND c.cod_cliente = cc.cod_cliente',
'  JOIN personas p',
'    ON cc.cod_persona = p.cod_persona',
'  LEFT JOIN st_marcas m',
'    ON c.cod_marca = m.cod_marca',
'  LEFT JOIN st_categorias cat',
'    ON c.cod_empresa = cat.cod_empresa',
'   AND c.cod_categoria = cat.cod_categoria',
' WHERE c.cod_empresa = :p_cod_empresa',
'and c.fecha_inicio >= :P815_FECHA_INICIO',
'and c.fecha_fin <= :P815_FECHAFIN'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P815_FECHA_INICIO,P815_FECHAFIN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(450857645382357832)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encuentran datos'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'NZARATE'
,p_internal_uid=>450857645382357832
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450858155081357837)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450858224631357838)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450858391313357839)
,p_db_column_name=>'FECHA_INICIO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha Inicio'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450858485856357840)
,p_db_column_name=>'FECHA_FIN'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha Fin'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450858561941357841)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450858636568357842)
,p_db_column_name=>'DESC_MARCA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Desc Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450858723879357843)
,p_db_column_name=>'COD_CATEGORIA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450858866690357844)
,p_db_column_name=>'DESC_CATEGORIA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Desc Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450858920988357845)
,p_db_column_name=>'MONTO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(455505659364960669)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4555057'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_CLIENTE:NOMBRE:FECHA_INICIO:FECHA_FIN:COD_MARCA:DESC_MARCA:COD_CATEGORIA:DESC_CATEGORIA:MONTO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(650650069675945195)
,p_plug_name=>unistr('Importaci\00F3n de Metas')
,p_parent_plug_id=>wwv_flow_imp.id(652166698025091067)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_number(line_number)-1 as line_number, ',
'       col001 cod_cliente,              -- nombre_comercio, ',
'      (col002) nombre_cliente,                 -- id_envio, ',
'       col003 cod_marca,              -- fecha_procesamiento,',
'       col004 desc_marca,                 -- total_registros_enviados, ',
'         col005 cod_categoria,              -- fecha_procesamiento,',
'       col006 desc_categoria,                 -- total_registros_enviados, ',
'        to_date(col007,''DD/MM/YYYY'')  fecha_inicio,                -- importe_total_enviado,',
'        to_date(col008,''DD/MM/YYYY'')  fecha_fin,                -- importe_total_enviado,',
'       to_number(col009) Monto ',
'  from apex_application_temp_files f, ',
'       table( apex_data_parser.parse(',
'                  p_content                     => f.blob_content,',
'                  p_add_headers_row             => ''Y'',',
'                  p_xlsx_sheet_name             => :P815_WORKSHEET,',
'                  p_max_rows                    => 500,',
'                  p_store_profile_to_collection => ''FILE_PARSER_COLLECTION'',',
'                  p_file_name                   => f.filename ) ) p',
' where f.name = :P815_ARCHIVO',
' and line_number != 1'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P815_WORKSHEET'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Importaci\00F3n de Metas')
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
 p_id=>wwv_flow_imp.id(652165712232091057)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encuentran datos'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'FVILLALBA'
,p_internal_uid=>652165712232091057
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(452460439175384463)
,p_db_column_name=>'LINE_NUMBER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Line Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(452462417485384465)
,p_db_column_name=>'MONTO'
,p_display_order=>110
,p_column_identifier=>'N'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450856567442357821)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>120
,p_column_identifier=>'AB'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450856659428357822)
,p_db_column_name=>'NOMBRE_CLIENTE'
,p_display_order=>130
,p_column_identifier=>'AC'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450856756817357823)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>140
,p_column_identifier=>'AD'
,p_column_label=>'Cod Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450856826377357824)
,p_db_column_name=>'DESC_MARCA'
,p_display_order=>150
,p_column_identifier=>'AE'
,p_column_label=>'Desc Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450856963999357825)
,p_db_column_name=>'FECHA_INICIO'
,p_display_order=>160
,p_column_identifier=>'AF'
,p_column_label=>'Fecha Inicio'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450857035196357826)
,p_db_column_name=>'FECHA_FIN'
,p_display_order=>170
,p_column_identifier=>'AG'
,p_column_label=>'Fecha Fin'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450857168509357827)
,p_db_column_name=>'COD_CATEGORIA'
,p_display_order=>180
,p_column_identifier=>'AH'
,p_column_label=>'Cod Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450857275306357828)
,p_db_column_name=>'DESC_CATEGORIA'
,p_display_order=>190
,p_column_identifier=>'AI'
,p_column_label=>'Desc Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(652177786549089911)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1997213'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LINE_NUMBER:COD_CLIENTE:NOMBRE_CLIENTE:COD_MARCA:DESC_MARCA:COD_CATEGORIA:DESC_CATEGORIA:FECHA_FIN:FECHA_INICIO:MONTO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(652023224647259979)
,p_plug_name=>'Columnas encontradas'
,p_parent_plug_id=>wwv_flow_imp.id(652166698025091067)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  column_position ID_COLUMNA, ',
'        column_name nombre_Columna, ',
'        data_type tipo_dato, ',
'        format_mask formato_mascara',
'  from apex_collections c, ',
'       table( apex_data_parser.get_columns( p_profile => c.clob001 ) )',
' where c.collection_name = ''FILE_PARSER_COLLECTION'' ',
'   and c.seq_id = 1'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P815_WORKSHEET'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Columnas encontradas'
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
 p_id=>wwv_flow_imp.id(652024881450259995)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encuentran datos'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'FVILLALBA'
,p_internal_uid=>652024881450259995
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(452465055106384468)
,p_db_column_name=>'ID_COLUMNA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id Columna'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(452465469247384468)
,p_db_column_name=>'NOMBRE_COLUMNA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre Columna'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(452465877734384468)
,p_db_column_name=>'TIPO_DATO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tipo Dato'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(452466255729384469)
,p_db_column_name=>'FORMATO_MASCARA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Formato Mascara'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(652178538617089900)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1997220'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_COLUMNA:NOMBRE_COLUMNA:TIPO_DATO:FORMATO_MASCARA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(452467645939384472)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(650649282721945187)
,p_button_name=>'BTN_EXPORTAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exportar'
,p_button_position=>'CREATE'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(450859065897357846)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(650649282721945187)
,p_button_name=>'BTN_Consultar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Consultar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(452457588824384459)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(650649282721945187)
,p_button_name=>'BTN_IMPORTAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Importar'
,p_button_position=>'NEXT'
,p_confirm_message=>'Estas seguro que desea importar?'
,p_confirm_style=>'information'
,p_icon_css_classes=>'fa-upload'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(452467281917384471)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(650649282721945187)
,p_button_name=>'BTN_GRABAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Grabar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(452457132768384458)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(650649282721945187)
,p_button_name=>'BTN_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450856428405357820)
,p_name=>'P815_FECHAFIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(650649282721945187)
,p_prompt=>'Fecha:'
,p_format_mask=>'dd-mm-rrrr'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(452457985711384459)
,p_name=>'P815_FECHA_INICIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(650649282721945187)
,p_prompt=>'Fecha:'
,p_format_mask=>'dd-mm-rrrr'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(452458360570384460)
,p_name=>'P815_DESCRIPCION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(650649282721945187)
,p_prompt=>unistr('Descripci\00F3n:')
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
 p_id=>wwv_flow_imp.id(452459146520384461)
,p_name=>'P815_ARCHIVO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(650649282721945187)
,p_prompt=>'Archivo'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'INLINE'
,p_attribute_13=>'Escoger el Archivo'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(452464324875384467)
,p_name=>'P815_WORKSHEET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(650650069675945195)
,p_prompt=>'Worksheet'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  sheet_display_name, sheet_file_name',
'from    apex_application_temp_files f, ',
'        table(apex_data_parser.get_xlsx_worksheets(',
'                p_content=> blob_content',
'              )) p',
'where f.name = :P815_ARCHIVO'))
,p_cSize=>30
,p_grid_column=>3
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(452468177986384472)
,p_validation_name=>'Archivo Valido'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'lower( :P815_ARCHIVO ) like ''%.xlsx'' or',
'lower( :P815_ARCHIVO ) like ''%.xml'' or',
'lower( :P815_ARCHIVO ) like ''%.csv'' or',
'lower( :P815_ARCHIVO ) like ''%.txt'' or',
'lower( :P815_ARCHIVO ) like ''%.js'' or',
'lower( :P815_ARCHIVO ) like ''%.json'' or',
'lower( :P815_ARCHIVO ) like ''%.geojson'''))
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Los tipos de archivos permitidos son:',
'.xlsx, .xml, .csv, .txt, .js, .json, .geojson'))
,p_validation_condition=>'OBTENER_DATOS'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(452459146520384461)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(452468537987384472)
,p_validation_name=>'Archivo Not null'
,p_validation_sequence=>20
,p_validation=>':P815_ARCHIVO is not null'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Debe seleccionar un Archivo a modo de procesarlo.'
,p_validation_condition=>'OBTENER_DATOS'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(452459146520384461)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(452469291440384473)
,p_name=>'REFRESH_REPORT'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P815_WORKSHEET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(452469753105384475)
,p_event_id=>wwv_flow_imp.id(452469291440384473)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(650650069675945195)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(452470164247384475)
,p_name=>'INSERTAR_DATOS'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(452467281917384471)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(452470612892384475)
,p_event_id=>wwv_flow_imp.id(452470164247384475)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    INSERT INTO inv.vt_metas_clientes_cab (cod_empresa  ,',
'  cod_cliente  ,',
'  fecha_inicio  ,',
'  fecha_fin  ,',
'  cod_marca  ,',
'  cod_categoria ,',
'  monto  ,',
'  cod_usuario ,',
'  fec_alta)  ',
'                         ',
'    SELECT   :P_COD_EMPresa,         --empresa          ',
'            to_number(col001),         --cliente                 ',
'            to_date(col007,''DD/MM/YYYY''),         --fecha_emision      ',
'            to_date(col008,''DD/MM/YYYY''),         --fecha_vencimiento    ',
'            col004,   --marca,',
'            col005, -- categoria',
unistr('            to_number(replace(col009,''\00A0'',null)) ,        --monto         '),
'            :app_user, sysdate',
'    FROM    apex_application_temp_files f, ',
'           table( apex_data_parser.parse(',
'                p_content           => f.blob_content,',
'                p_skip_rows         => 1,',
'                --p_add_headers_row   => ''Y'',',
'                p_xlsx_sheet_name   => :P815_WORKSHEET,',
'                p_file_name                   => f.filename',
'            ))',
'    where f.name = :P815_ARCHIVO ',
'    ;',
'      exception',
'      ',
'        when others then',
'        raise_application_error(-20102, ''Error al insertar el vale '' || SQLERRM);',
' ',
'end;',
'',
' '))
,p_attribute_02=>'P815_WORKSHEET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(452471140835384476)
,p_event_id=>wwv_flow_imp.id(452470164247384475)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'INSERTAR_DATOS'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(452471555884384476)
,p_name=>'da_limpiar'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(452457132768384458)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(452472011557384476)
,p_event_id=>wwv_flow_imp.id(452471555884384476)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Delete apex_application_temp_files f',
'where f.name = :P815_ARCHIVO;'))
,p_attribute_02=>'P815_ARCHIVO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450859454892357850)
,p_event_id=>wwv_flow_imp.id(452471555884384476)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(650650069675945195)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(455511596832218401)
,p_event_id=>wwv_flow_imp.id(452471555884384476)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(652023224647259979)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(455511614891218402)
,p_event_id=>wwv_flow_imp.id(452471555884384476)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(450857543052357831)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(452472516254384476)
,p_event_id=>wwv_flow_imp.id(452471555884384476)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P815_FECHA_INICIO,P815_DESCRIPCION,P815_ARCHIVO,P815_FECHAFIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(450859128303357847)
,p_name=>'da_consultar'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(450859065897357846)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450859340658357849)
,p_event_id=>wwv_flow_imp.id(450859128303357847)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P815_FECHA_INICIO is null or :P815_FECHAFIN is null then',
' raise_application_error(-20102, ''Debe Ingresar la Fecha para poder consultar '' );',
'end if;'))
,p_attribute_02=>'P815_FECHA_INICIO,P815_FECHAFIN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450859273489357848)
,p_event_id=>wwv_flow_imp.id(450859128303357847)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(450857543052357831)
);
wwv_flow_imp.component_end;
end;
/
