prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
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
 p_id=>11
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Control de Pedidos de Respuestos'
,p_alias=>'CONTROL-DE-PEDIDOS-DE-RESPUESTOS'
,p_step_title=>'Control de Pedidos de Respuestos'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function refrescar(tiempo){',
'    setInterval("apex.region(''REPUESTOS'').refresh();", tiempo);',
'  };'))
,p_javascript_code_onload=>'refrescar(10000);'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-header  a , #checktext, .a-GV-header, .a-IRR-headerLink {color: yellow; }',
'.a-IRR-header, .a-GV-header, .a-IRR-headerLink {    background-color: #003A85;',
'background-image:  #003A85 ;',
' ',
'}',
'',
'.t-Body-mainContent  { ',
'                        background: #082b642f!important;',
'                    } ',
'  ',
'  .t-Form-label{',
'                color:  #003A85  !important;  ',
'                font-weight: bold;   ',
'                } ',
''))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20241016140409'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41134274602206001)
,p_plug_name=>'Pedidos de Respuestos'
,p_region_name=>'REPUESTOS'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C001,--SER_COMPROBANTE',
'       C002,--NRO_COMPROBANTE',
'       C003,--NOM_CLIENTE',
'       C004,--OBSERVACION',
'       C005,--ESTADO_PREPA',
'       C006,--TIP_COMPROBANTE',
'       C007,--FEC_COMPROBANTE',
'       C008,--COD_USUARIO',
'       C009,--FACTURADO',
'       C010,--ANULADO',
'       C011,--NRO_DIARIO',
'       C012,--P_TIPO',
'       C013,--COD_CLIENTE',
'       C014,--SOLICITADO',
'       C015, --CONFIRMADO',
'       C002 AS NRO',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_PEDIDOS_REPUESTOS'';'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Pedidos de Respuestos'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5912274112181116)
,p_name=>'Serie'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C001'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Serie'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5912346954181117)
,p_name=>unistr('N\00FAmero')
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C002'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>unistr('N\00FAmero')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_link_target=>unistr('f?p=&APP_ID.:322:&SESSION.::&DEBUG.::P322_P_SER_COMPROBANTE,P322_P_NRO_COMPROBANTE:&"Serie".,&"N\00FAmero".')
,p_link_text=>unistr('&"N\00FAmero".')
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5912476749181118)
,p_name=>'Cliente'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C003'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Cliente'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5912578845181119)
,p_name=>unistr('Observaci\00F3n')
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C004'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('Observaci\00F3n')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5912643791181120)
,p_name=>'Estado'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C005'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Estado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5912769053181121)
,p_name=>'tip_comprobante'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C006'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'tip_comprobante'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5912820196181122)
,p_name=>'fec_comprobante'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C007'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'fec_comprobante'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5912928842181123)
,p_name=>'cod_usuario'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C008'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'cod_usuario'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5913042303181124)
,p_name=>'facturado'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C009'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'facturado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5913146333181125)
,p_name=>'anulado'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C010'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'anulado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5913235410181126)
,p_name=>'nro_diario'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C011'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'nro_diario'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5913333602181127)
,p_name=>'p_tipo'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C012'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'p_tipo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5913498561181128)
,p_name=>'cod_cliente'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C013'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'cod_cliente'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5913545647181129)
,p_name=>'solicitado'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C014'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'solicitado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5913603135181130)
,p_name=>'confirmado'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C015'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'confirmado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(891488591239281901)
,p_name=>'NRO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nro'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(41593107591799807)
,p_internal_uid=>41593107591799807
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No se encontraron datos'
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(5339548078581044)
,p_interactive_grid_id=>wwv_flow_imp.id(41593107591799807)
,p_static_id=>'53396'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5339731613581044)
,p_report_id=>wwv_flow_imp.id(5339548078581044)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33284380856296)
,p_view_id=>wwv_flow_imp.id(5339731613581044)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(5912274112181116)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(34703462856298)
,p_view_id=>wwv_flow_imp.id(5339731613581044)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5912346954181117)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>143
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(36138860856301)
,p_view_id=>wwv_flow_imp.id(5339731613581044)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(5912476749181118)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>385
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(37529293856303)
,p_view_id=>wwv_flow_imp.id(5339731613581044)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5912578845181119)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>398
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38927094856304)
,p_view_id=>wwv_flow_imp.id(5339731613581044)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(5912643791181120)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(40277671856306)
,p_view_id=>wwv_flow_imp.id(5339731613581044)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(5912769053181121)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41703193856308)
,p_view_id=>wwv_flow_imp.id(5339731613581044)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(5912820196181122)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43109757856310)
,p_view_id=>wwv_flow_imp.id(5339731613581044)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(5912928842181123)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44421671856312)
,p_view_id=>wwv_flow_imp.id(5339731613581044)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(5913042303181124)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(45808505856313)
,p_view_id=>wwv_flow_imp.id(5339731613581044)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(5913146333181125)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47191686856315)
,p_view_id=>wwv_flow_imp.id(5339731613581044)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(5913235410181126)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48602946856317)
,p_view_id=>wwv_flow_imp.id(5339731613581044)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(5913333602181127)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(50054222856319)
,p_view_id=>wwv_flow_imp.id(5339731613581044)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(5913498561181128)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(51404879856321)
,p_view_id=>wwv_flow_imp.id(5339731613581044)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(5913545647181129)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(52818038856322)
,p_view_id=>wwv_flow_imp.id(5339731613581044)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(5913603135181130)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(891494821116286181)
,p_view_id=>wwv_flow_imp.id(5339731613581044)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(891488591239281901)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(386300000001)
,p_view_id=>wwv_flow_imp.id(5339731613581044)
,p_execution_seq=>5
,p_name=>'CONFIRMADO'
,p_background_color=>'#64e042'
,p_text_color=>'#000000'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(5912643791181120)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'CONFIRMADO'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(9246073007402)
,p_view_id=>wwv_flow_imp.id(5339731613581044)
,p_execution_seq=>10
,p_name=>'EN PREPARACION'
,p_background_color=>'#48bdcc'
,p_text_color=>'#000000'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(5912643791181120)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'EN PREPARACION'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(9746400007402)
,p_view_id=>wwv_flow_imp.id(5339731613581044)
,p_execution_seq=>15
,p_name=>'SIN EXISTENCIA'
,p_background_color=>'#fa2121'
,p_text_color=>'#000000'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(5912643791181120)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'SIN EXISTENCIA'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41135985920206018)
,p_plug_name=>'Variables'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(881701168139652622)
,p_plug_name=>'Pedidos de Respuestos'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C001 SER_COMPROBANTE,',
'       C002 NRO_COMPROBANTE,',
'       C003 NOM_CLIENTE,',
'       C004 OBSERVACION,',
'       C005 ESTADO_PREPA,',
'       C006 TIP_COMPROBANTE,',
'       C007 FEC_COMPROBANTE,',
'       C008 COD_USUARIO,',
'       C009 FACTURADO,',
'       C010 ANULADO,',
'       C011 NRO_DIARIO,',
'       C012 P_TIPO,',
'       C013 COD_CLIENTE,',
'       C014 SOLICITADO,',
'       C015 CONFIRMADO ',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_PEDIDOS_REPUESTOS'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Pedidos de Respuestos'
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
 p_id=>wwv_flow_imp.id(881702914638652640)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>881702914638652640
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(891526592231316907)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>170
,p_column_identifier=>'B'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(891526605781316908)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>180
,p_column_identifier=>'C'
,p_column_label=>'Numero'
,p_column_link=>'f?p=&APP_ID.:322:&SESSION.::&DEBUG.::P322_P_SER_COMPROBANTE,P322_P_NRO_COMPROBANTE:#SER_COMPROBANTE#,#NRO_COMPROBANTE#'
,p_column_linktext=>'#NRO_COMPROBANTE#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(891526745495316909)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>190
,p_column_identifier=>'D'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(891526883823316910)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>200
,p_column_identifier=>'E'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(891526982703316911)
,p_db_column_name=>'ESTADO_PREPA'
,p_display_order=>210
,p_column_identifier=>'F'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(891527070296316912)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>220
,p_column_identifier=>'G'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(891527187224316913)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>230
,p_column_identifier=>'H'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(891527233195316914)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>240
,p_column_identifier=>'I'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(891527343781316915)
,p_db_column_name=>'FACTURADO'
,p_display_order=>250
,p_column_identifier=>'J'
,p_column_label=>'Facturado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(891527403867316916)
,p_db_column_name=>'ANULADO'
,p_display_order=>260
,p_column_identifier=>'K'
,p_column_label=>'Anulado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(891527563631316917)
,p_db_column_name=>'NRO_DIARIO'
,p_display_order=>270
,p_column_identifier=>'L'
,p_column_label=>'Nro Diario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(891527676093316918)
,p_db_column_name=>'P_TIPO'
,p_display_order=>280
,p_column_identifier=>'M'
,p_column_label=>'P Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(891527767043316919)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>290
,p_column_identifier=>'N'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(891527816083316920)
,p_db_column_name=>'SOLICITADO'
,p_display_order=>300
,p_column_identifier=>'O'
,p_column_label=>'Solicitado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(891527928005316921)
,p_db_column_name=>'CONFIRMADO'
,p_display_order=>310
,p_column_identifier=>'P'
,p_column_label=>'Confirmado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(891537301346323161)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'8915374'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SER_COMPROBANTE:NRO_COMPROBANTE:NOM_CLIENTE:OBSERVACION:ESTADO_PREPA:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(891546098987357039)
,p_report_id=>wwv_flow_imp.id(891537301346323161)
,p_name=>'CONFIRMADO'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO_PREPA'
,p_operator=>'='
,p_expr=>'CONFIRMADO'
,p_condition_sql=>' (case when ("ESTADO_PREPA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''CONFIRMADO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#64e042'
,p_row_font_color=>'#000000'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(891546427537357039)
,p_report_id=>wwv_flow_imp.id(891537301346323161)
,p_name=>'EN PREPARACION'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO_PREPA'
,p_operator=>'='
,p_expr=>'EN PREPARACION'
,p_condition_sql=>' (case when ("ESTADO_PREPA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''EN PREPARACION''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#48bdcc'
,p_row_font_color=>'#000000'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(891546806221357039)
,p_report_id=>wwv_flow_imp.id(891537301346323161)
,p_name=>'SIN EXISTENCIA'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO_PREPA'
,p_operator=>'='
,p_expr=>'SIN EXISTENCIA'
,p_condition_sql=>' (case when ("ESTADO_PREPA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''SIN EXISTENCIA''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ea2525'
,p_row_font_color=>'#000000'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41136011831206019)
,p_name=>'P11_COD_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41135985920206018)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41136153986206020)
,p_name=>'P11_NOM_EMPRESA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(41135985920206018)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41136299161206021)
,p_name=>'P11_NOM_SUCURSAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(41135985920206018)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_imp.id(41136345219206022)
,p_name=>'P11_COD_SUCURSAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(41135985920206018)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41136486499206023)
,p_name=>'P11_COD_EMPRESA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41135985920206018)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41136532329206024)
,p_name=>'P11_COD_MODULO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(41135985920206018)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118839320173846443)
,p_name=>'P11_COD_ARTICULO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(41135985920206018)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41136656373206025)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION( p_collection_name => ''COL_PEDIDOS_REPUESTOS'');',
'    :P11_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
'    :P11_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
'    :P11_NOM_EMPRESA := :P_NOM_EMPRESA;',
'    :P11_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');',
'    :P11_NOM_SUCURSAL := :P_NOM_SUCURSAL;',
'DECLARE ',
'    VESTADO VARCHAR2(100);',
'	VCANTIDAD_CONFIRMADA NUMBER;',
'	VCANTIDAD NUMBER;',
'	VCANTF NUMBER;',
'	VCANT NUMBER;',
'	VCONFIRMADO VARCHAR2(100);',
'    V_SOLICITADO VARCHAR2(100); --COLUMNA',
'    V_ESTADO_PREPA VARCHAR2(100); --COLUMNA',
'    V_CONFIRMADO VARCHAR2(100); --COLUMNA',
'BEGIN',
'    FOR C IN (',
'        SELECT SER_COMPROBANTE,',
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
'     WHERE COD_EMPRESA = :P_COD_EMPRESA AND NVL(ANULADO,''N'')<>''S''',
'       AND NVL(FACTURADO,''N'') != ''S''',
'       AND NVL(P_TIPO,''A'') != ''W''',
'       AND NVL(ESPERA_CALL,''S'') != ''N''  ',
'       AND COD_SUCURSAL != ''190''',
'       AND A.SER_COMPROBANTE|| A.NRO_COMPROBANTE NOT IN (SELECT R.SER_COMPROBANTE|| R.NRO_COMPROBANTE',
'                                                         FROM VT_PEDIDOS_CABECERA_REP R',
'                                                         WHERE R.COD_EMPRESA=A.COD_EMPRESA',
'                                                         AND R.TIP_COMPROBANTE=A.TIP_COMPROBANTE',
'                                                         AND R.SER_COMPROBANTE=A.SER_COMPROBANTE',
'                                                         AND R.NRO_COMPROBANTE=A.NRO_COMPROBANTE',
'     ',
'                                                        AND NVL(R.ANULADO,''N'')<>''S''',
'                                                        AND NVL(R.FACTURADO,''N'')<>''S''',
'',
'                                                        AND NVL(P_TIPO,''A'')<>''W''',
'                                                        AND NVL(ESPERA_CALL,''S'')<>''N''',
'                                                        AND NVL(R.CONFIRMADO,''N'')<>''S''',
'                                                        AND R.ENVIO_INTERIOR=''S'')',
'        ORDER BY A.NRO_COMPROBANTE ASC )',
'                ',
'        LOOP ',
'            APEX_COLLECTION.ADD_MEMBER(',
'                P_COLLECTION_NAME => ''COL_PEDIDOS_REPUESTOS'',',
'                P_C001 => C.SER_COMPROBANTE,',
'                P_C002 => C.NRO_COMPROBANTE,',
'                P_C003 => C.NOM_CLIENTE,',
'                P_C004 => C.OBSERVACION,',
'                P_C005 => NULL, --ESTADO_PREPA',
'                P_C006 => C.TIP_COMPROBANTE,',
'                P_C007 => C.FEC_COMPROBANTE,',
'                P_C008 => C.COD_USUARIO,',
'                P_C009 => C.FACTURADO,',
'                P_C010 => C.ANULADO,',
'                P_C011 => C.NRO_DIARIO,',
'                P_C012 => C.P_TIPO,',
'                P_C013 => C.COD_CLIENTE,',
'                P_C014 => NULL, --SOLICITADO',
'                P_C015 => C.CONFIRMADO',
'            );',
'        END LOOP;',
'',
'    FOR C IN (',
'        SELECT SEQ_ID,',
'               C001,--SER_COMPROBANTE',
'               C002,--NRO_COMPROBANTE',
'               C003,--NOM_CLIENTE',
'               C004,--OBSERVACION',
'               C005,--ESTADO_PREPA',
'               C006,--TIP_COMPROBANTE',
'               C007,--FEC_COMPROBANTE',
'               C008,--COD_USUARIO',
'               C009,--FACTURADO',
'               C010,--ANULADO',
'               C011,--NRO_DIARIO',
'               C012,--P_TIPO',
'               C013,--COD_CLIENTE',
'               C014,--SOLICITADO',
'               C015 --CONFIRMADO',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''COL_PEDIDOS_REPUESTOS'')',
'    LOOP',
'        BEGIN',
'        	BEGIN',
'        		SELECT SUM( DECODE(D.VERIFICADO,''S'',1,0)) ,  ',
'        			   COUNT(D.COD_ARTICULO), ',
'        			   SUM(CANTIDAD_CONFIRMADA), ',
'        			   SUM(CANTIDAD)',
'        		  INTO VCANTIDAD_CONFIRMADA, ',
'        			   VCANTIDAD, ',
'        			   VCANTF, ',
'        			   VCANT',
'        		  FROM VT_PEDIDOS_CABECERA_REP C, VT_PEDIDOS_DETALLE_REP D, ST_ARTICULOS S',
'        		 WHERE C.COD_EMPRESA = :P_COD_EMPRESA',
'        		   AND C.COD_EMPRESA = D.COD_EMPRESA',
'        		   AND C.TIP_COMPROBANTE = D.TIP_COMPROBANTE',
'        		   AND C.SER_COMPROBANTE = D.SER_COMPROBANTE',
'        		   AND C.NRO_COMPROBANTE = D.NRO_COMPROBANTE',
'        		   AND S.COD_EMPRESA(+) = D.COD_EMPRESA',
'        		   AND S.COD_ARTICULO(+) = D.COD_ARTICULO',
'        		   AND NVL(C.ANULADO,''N'') != ''S''',
'        		   AND C.NRO_COMPROBANTE= C.C002',
'        		 GROUP BY C.NRO_COMPROBANTE,C.CONFIRMADO;',
'        	EXCEPTION',
'        		WHEN OTHERS THEN ',
'        			NULL;',
'        	END;',
'        	IF NVL(VCANTIDAD_CONFIRMADA,0)=NVL(VCANTIDAD,0) AND NVL(VCANTIDAD_CONFIRMADA,0)>0 THEN ',
'        		VCONFIRMADO :=''S'' ;',
'        	ELSE ',
'        		VCONFIRMADO :=''N'' ;',
'        	END IF;	',
'',
'        	IF (NVL(VCANTF,0))=0 AND NVL(VCONFIRMADO,''N'')=''N'' THEN ',
'        		V_ESTADO_PREPA := ''EN ESPERA'';',
'        	ELSIF NVL(VCANTF,0) >0  AND NVL(VCONFIRMADO,''N'')=''N''  THEN ',
'        		V_ESTADO_PREPA := ''EN PREPARACION'';	',
'        	ELSIF NVL((VCANTIDAD_CONFIRMADA),0)>0 AND NVL(VCANTF,0)>0 ',
'        	AND  NVL(VCONFIRMADO,''N'') =''S'' THEN ',
'        		V_ESTADO_PREPA := ''CONFIRMADO'';	',
'        		IF C.C013 = ''8417'' THEN',
'        			INV.CORREO_REP_PREPARADOS_CLI(C.C002 );',
'        		END IF;',
'',
'        	ELSIF NVL((VCANTIDAD_CONFIRMADA),0)>0 AND NVL(VCANTF,0)=0 AND NVL(VCONFIRMADO,''N'')=''S'' THEN ',
'        		V_ESTADO_PREPA:= ''SIN EXISTENCIA'';',
'        	END IF ;',
'        END;',
'',
'        BEGIN',
'        	SELECT SUM (ROUND(PRECIO(COD_ARTICULO,0))*CANTIDAD)',
'        	  INTO V_SOLICITADO',
'        	  FROM VT_PEDIDOS_DETALLE_REP D',
'        	 WHERE D.COD_EMPRESA = :P_COD_EMPRESA',
'        	   AND D.TIP_COMPROBANTE = C.C006',
'        	   AND D.SER_COMPROBANTE = C.C001',
'        	   AND D.NRO_COMPROBANTE = C.C002;',
'        EXCEPTION',
'        	WHEN OTHERS THEN',
'        	  V_SOLICITADO := 0;',
'        END;',
'',
'        BEGIN',
'        	SELECT SUM (ROUND(PRECIO(COD_ARTICULO,0))*CANTIDAD_CONFIRMADA)',
'        	  INTO V_CONFIRMADO',
'        	  FROM VT_PEDIDOS_DETALLE_REP D',
'        	 WHERE D.COD_EMPRESA = :P_COD_EMPRESA',
'        	   AND D.TIP_COMPROBANTE = C.C006',
'        	   AND D.SER_COMPROBANTE = C.C001',
'        	   AND D.NRO_COMPROBANTE = C.C002;',
'        EXCEPTION',
'        	WHEN OTHERS THEN',
'        	  V_CONFIRMADO := 0;',
'        END;',
'',
'        APEX_COLLECTION.UPDATE_MEMBER (',
'            p_collection_name => ''COL_PEDIDOS_REPUESTOS'',',
'            p_seq  => C.SEQ_ID,',
'            P_C001 => C.C001,',
'            P_C002 => C.C002,',
'            P_C003 => C.C003,',
'            P_C004 => C.C004,',
'            P_C005 => V_ESTADO_PREPA, --ESTADO_PREPA',
'            P_C006 => C.C005,',
'            P_C007 => C.C006,',
'            P_C008 => C.C007,',
'            P_C009 => C.C008,',
'            P_C010 => C.C009,',
'            P_C011 => C.C010,',
'            P_C012 => C.C011,',
'            P_C013 => C.C012,',
'            P_C014 => V_SOLICITADO, --SOLICITADO',
'            P_C015 => V_CONFIRMADO);',
'    END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
