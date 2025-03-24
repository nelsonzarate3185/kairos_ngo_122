prompt --application/pages/page_00697
begin
--   Manifest
--     PAGE: 00697
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
 p_id=>697
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Cerrar sesiones'
,p_alias=>'CERRAR-SESIONES'
,p_step_title=>'Cerrar sesiones'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>'<meta http-equiv="refresh" content="600">'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'21'
,p_last_updated_by=>'AARANDA'
,p_last_upd_yyyymmddhh24miss=>'20240715110909'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(862595218188239449)
,p_plug_name=>'Informe 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id,',
'             c001   AS username,',
'             c002   AS cod_sucursal,',
'             c003   AS desc_sucursal,',
'             c004   AS SID,',
'             c005   AS SERIAL#,',
'             c006   AS MACHINE,',
'             c007   AS object_Name,',
'             c008   AS TERMINAL,',
'             to_number(c009)   AS tiempo_min,',
'             c010   AS sentencia_kills,',
'             C011   AS CERRAR_SESION,',
'             C012 AS modo_bloqueo',
'        ',
'        FROM apex_collections',
'       WHERE collection_name = ''TMP_SESIONES''',
'         and c007 not like ''CO_%''',
'         and c007 not like ''RH_%''',
'         and c007 not like ''CM_%'''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Informe 1'
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
 p_id=>wwv_flow_imp.id(569307437040333382)
,p_name=>'MODO_BLOQUEO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODO_BLOQUEO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Modo Bloqueo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(862614030215103739)
,p_name=>'SEQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Seq Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'SEQ_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(862614136580103740)
,p_name=>'USERNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USERNAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Username'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(862614283081103741)
,p_name=>'COD_SUCURSAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_SUCURSAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Sucursal'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(862614423306103742)
,p_name=>'DESC_SUCURSAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESC_SUCURSAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Desc Sucursal'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(862614515886103743)
,p_name=>'SID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sid'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(862614597604103744)
,p_name=>'SERIAL#'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERIAL#'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Serial#'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(862614674664103745)
,p_name=>'MACHINE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Machine'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(862614808742103746)
,p_name=>'OBJECT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBJECT_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Object Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(862614850519103747)
,p_name=>'TERMINAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TERMINAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Terminal'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(862614943525103748)
,p_name=>'TIEMPO_MIN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIEMPO_MIN'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Tiempo Min'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(862615075749103749)
,p_name=>'SENTENCIA_KILLS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SENTENCIA_KILLS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sentencia Kills'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_link_target=>'$s(''P5_SEQ_ID'',''#SEQ_ID#'');'
,p_link_text=>'&SENTENCIA_KILLS.'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(862615220356103750)
,p_name=>'CERRAR_SESION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CERRAR_SESION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Cerrar Sesion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_link_target=>'javascript:$s(''P697_SEQ_ID'',''&SEQ_ID.'');'
,p_link_text=>'<span class="t-Icon fa fa-trash delete-irrow" aria-hidden="true" title="Borrar registro"></span>'
,p_link_attributes=>'data-id_1=&SEQ_ID.'
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
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(862613965529103738)
,p_internal_uid=>862613965529103738
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(862623785880103561)
,p_interactive_grid_id=>wwv_flow_imp.id(862613965529103738)
,p_static_id=>'3322532'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(862623943709103561)
,p_report_id=>wwv_flow_imp.id(862623785880103561)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(589995407069987757)
,p_view_id=>wwv_flow_imp.id(862623943709103561)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(569307437040333382)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(862624451770103559)
,p_view_id=>wwv_flow_imp.id(862623943709103561)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(862614030215103739)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(862625329093103556)
,p_view_id=>wwv_flow_imp.id(862623943709103561)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(862614136580103740)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(862626246567103554)
,p_view_id=>wwv_flow_imp.id(862623943709103561)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(862614283081103741)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(862627183384103552)
,p_view_id=>wwv_flow_imp.id(862623943709103561)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(862614423306103742)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(862628078225103550)
,p_view_id=>wwv_flow_imp.id(862623943709103561)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(862614515886103743)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(862628938478103548)
,p_view_id=>wwv_flow_imp.id(862623943709103561)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(862614597604103744)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(862629832363103546)
,p_view_id=>wwv_flow_imp.id(862623943709103561)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(862614674664103745)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(862630764141103544)
,p_view_id=>wwv_flow_imp.id(862623943709103561)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(862614808742103746)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(862631671493103542)
,p_view_id=>wwv_flow_imp.id(862623943709103561)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(862614850519103747)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(862632529700103540)
,p_view_id=>wwv_flow_imp.id(862623943709103561)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(862614943525103748)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(862633466419103538)
,p_view_id=>wwv_flow_imp.id(862623943709103561)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(862615075749103749)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(862634336974103536)
,p_view_id=>wwv_flow_imp.id(862623943709103561)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(862615220356103750)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(245630749666079257)
,p_name=>'P697_SEQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(862595218188239449)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(245631182136079257)
,p_name=>'Nuevo'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(245631671050079258)
,p_event_id=>wwv_flow_imp.id(245631182136079257)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  cursor cerrar is ',
'    /*select v.USERNAME, u.cod_sucursal, s.descripcion desc_sucursal,',
'       v.SID, v.SERIAL#, v.MACHINE,',
'       o.object_Name,',
'       v.TERMINAL,',
'       round(l.CTIME / 60, 2) tiempo_min,',
'       ''alter system kill session ''||''''''''||v.SID||'',''||v.SERIAL#||''''''''||'' IMMEDIATE;'' sentencia_kills',
'        from   sys.all_objects o, v$lock l, v$session v, usuarios u, sucursales s',
'        where  l.sid = v.SID',
'        and  l.type = ''TM''',
'        and  o.object_id = l.id1',
'        and  u.cod_usuario = v.USERNAME',
'        and  s.cod_empresa = u.cod_empresa',
'        and  s.cod_sucursal = u.cod_sucursal',
'        --and round(l.CTIME / 60, 2) > 1',
'        -- and o.object_name = ''AUDITORIA''',
'        order by tiempo_min desc;*/',
'',
'               select v.USERNAME, u.cod_sucursal, s.descripcion desc_sucursal,',
'       v.SID, v.SERIAL#, v.MACHINE,',
'       o.object_Name,',
'       v.TERMINAL,',
'       round(l.CTIME / 60, 2) tiempo_min,',
'       ''alter system kill session ''||''''''''||v.SID||'',''||v.SERIAL#||''''''''||'' IMMEDIATE;'' sentencia_kills,',
'       DECODE(LOCKED_MODE',
'',
'  , 2, ''Row Share''',
'',
'  , 3, ''ROW EXCLUSIVE''',
'',
'  , 4, ''SHARE''',
'',
'  , 5, ''SHARE ROW EXCLUSIVE''',
'',
'  , 6, ''EXCLUSIVE'',  ''UNKNOWN'') LockMode',
'        from   sys.all_objects o, v$lock l, v$session v, usuarios u, sucursales s,',
'         GV$LOCKED_OBJECT A',
'        where  l.sid = v.SID',
'        and  l.type = ''TM''',
'        and  o.object_id = l.id1',
'        and  u.cod_usuario = v.USERNAME',
'        and  s.cod_empresa = u.cod_empresa',
'        and  s.cod_sucursal = u.cod_sucursal',
'        AND A.OBJECT_ID = O.OBJECT_ID',
'        AND A.session_id=V.SID',
'        --and round(l.CTIME / 60, 2) > 1',
'        -- and o.object_name = ''AUDITORIA''',
'        order by tiempo_min desc; ',
'',
'begin',
'   ',
'apex_collection.create_or_truncate_collection(p_collection_name => ''TMP_SESIONES'');',
'   for a in cerrar loop',
'',
'       apex_collection.add_member(p_collection_name => ''TMP_SESIONES'',',
'                                   p_c001            => a.username,',
'                                   p_c002            => a.cod_sucursal,',
'                                   p_c003            => a.desc_sucursal,',
'                                   p_c004            => a.SID,',
'                                   p_c005            => a.SERIAL#,',
'                                   p_c006            => a.MACHINE,',
'                                   p_c007            => a.object_Name,',
'                                   p_c008            => a.TERMINAL,',
'                                   p_c009            => a.tiempo_min,',
'                                   p_c010            => a.sentencia_kills,',
'                                   p_c012            => a.LockMode);',
'end loop;',
'',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(245632121383079258)
,p_event_id=>wwv_flow_imp.id(245631182136079257)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(862595218188239449)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(245632506812079258)
,p_name=>'Nuevo_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P697_SEQ_ID'
,p_condition_element=>'P697_SEQ_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(245634013000079259)
,p_event_id=>wwv_flow_imp.id(245632506812079258)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  declare',
'   l_sql varchar2(200);',
'   vsid  varchar2(15);',
'   vserial varchar2(20);',
'   begin ',
'       select c004, c005',
'        into vsid, vserial',
'         FROM apex_collections',
'       WHERE collection_name = ''TMP_SESIONES''',
'       and seq_id = :P697_SEQ_ID;',
'',
'       l_sql := ''alter system kill session ''||''''''''||vsid||'',''||vserial||'''''''';',
'       --l_sql := ''alter system kill session ''||''''''''||''6947''||'',''||''27248''||'''''''';',
' ',
'       EXECUTE IMMEDIATE l_sql;',
'       commit;',
'',
'       APEX_COLLECTION.DELETE_MEMBER(',
'        p_collection_name => ''TMP_SESIONES'',',
'        p_seq             => :P697_SEQ_ID);',
'',
'    end;',
'end;',
''))
,p_attribute_02=>'P697_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(245633031929079258)
,p_event_id=>wwv_flow_imp.id(245632506812079258)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  cursor cerrar is ',
'    select v.USERNAME, u.cod_sucursal, s.descripcion desc_sucursal,',
'       v.SID, v.SERIAL#, v.MACHINE,',
'       o.object_Name,',
'       v.TERMINAL,',
'       round(l.CTIME / 60, 2) tiempo_min,',
'       ''alter system kill session ''||''''''''||v.SID||'',''||v.SERIAL#||''''''''||'' IMMEDIATE;'' sentencia_kills',
'        from   sys.all_objects o, v$lock l, v$session v, usuarios u, sucursales s',
'        where  l.sid = v.SID',
'        and  l.type = ''TM''',
'        and  o.object_id = l.id1',
'        and  u.cod_usuario = v.USERNAME',
'        and  s.cod_empresa = u.cod_empresa',
'        and  s.cod_sucursal = u.cod_sucursal',
'        and round(l.CTIME / 60, 2) > 1',
'        -- and o.object_name = ''AUDITORIA''',
'        order by tiempo_min desc;',
'',
'begin',
'   ',
'apex_collection.create_or_truncate_collection(p_collection_name => ''TMP_SESIONES'');',
'   for a in cerrar loop',
'',
'       apex_collection.add_member(p_collection_name => ''TMP_SESIONES'',',
'                                   p_c001            => a.username,',
'                                   p_c002            => a.cod_sucursal,',
'                                   p_c003            => a.desc_sucursal,',
'                                   p_c004            => a.SID,',
'                                   p_c005            => a.SERIAL#,',
'                                   p_c006            => a.MACHINE,',
'                                   p_c007            => a.object_Name,',
'                                   p_c008            => a.TERMINAL,',
'                                   p_c009            => a.tiempo_min,',
'                                   p_c010            => a.sentencia_kills);',
'end loop;',
'',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(245633583696079259)
,p_event_id=>wwv_flow_imp.id(245632506812079258)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(862595218188239449)
);
wwv_flow_imp.component_end;
end;
/
