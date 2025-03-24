prompt --application/pages/page_00518
begin
--   Manifest
--     PAGE: 00518
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
 p_id=>518
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'TUR - Mantener Puesto'
,p_alias=>'MANTENER-PUESTO'
,p_page_mode=>'MODAL'
,p_step_title=>'Mantener Puesto'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico.js'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'800'
,p_dialog_width=>'1080'
,p_dialog_max_width=>'800'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'PAGONZALEZ'
,p_last_upd_yyyymmddhh24miss=>'20250306092713'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889138914816985)
,p_plug_name=>'Mantener Puesto'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CA_PUESTO_BOX'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(152756716004015808)
,p_plug_name=>'Detalles'
,p_parent_plug_id=>wwv_flow_imp.id(154889138914816985)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id,',
'             c001   AS cod_tipo_cliente,',
'             c002   AS id_puesto,',
'             c003   AS cod_tipo_ticket,',
'             c004   AS fecha,',
'             c005   AS eliminar,',
'             c006   AS opcion, ',
'             c007   AS secuencia',
'        FROM apex_collections',
'       WHERE collection_name = ''TMP_PUESTO''',
'       AND c006 in (''A'', ''U'', ''X'');'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Detalles'
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
 p_id=>wwv_flow_imp.id(152756957143015810)
,p_name=>'SEQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Seq Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(152757098718015811)
,p_name=>'COD_TIPO_CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_TIPO_CLIENTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Cod Tipo Cliente'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC2:Distribuidor;1,Clientes;2'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'COD_TIPO_CLIENTE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(152757109847015812)
,p_name=>'ID_PUESTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PUESTO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Id Puesto'
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
,p_static_id=>'ID_PUESTO'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(152757219762015813)
,p_name=>'COD_TIPO_TICKET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_TIPO_TICKET'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Tipo Ticket'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.descripcion, C.COD_TICKET CODIGO',
'                          FROM ca_tickets_tipo c',
'                     ',
'   where c.origen = ''STNGO'''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'COD_TIPO_TICKET'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(152757384270015814)
,p_name=>'FECHA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Fecha'
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
,p_static_id=>'FECHA'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(152757404830015815)
,p_name=>'ELIMINAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ELIMINAR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Eliminar'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:void(null);'
,p_link_text=>'<span class="t-Icon fa fa-trash delete-irrow" aria-hidden="true" title="Borrar registro"></span>'
,p_link_attributes=>'data-id_1=&SEQ_ID.'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'ELIMINAR'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(152757566562015816)
,p_name=>'OPCION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPCION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Opcion'
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
,p_static_id=>'OPCION'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(152757615251015817)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(152757779524015818)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(152758549927015826)
,p_name=>'SECUENCIA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SECUENCIA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Secuencia'
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
,p_static_id=>'SECUENCIA'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(152756808816015809)
,p_internal_uid=>152756808816015809
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
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
 p_id=>wwv_flow_imp.id(154906835265767560)
,p_interactive_grid_id=>wwv_flow_imp.id(152756808816015809)
,p_static_id=>'1549069'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(154907099284767559)
,p_report_id=>wwv_flow_imp.id(154906835265767560)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154907536589767556)
,p_view_id=>wwv_flow_imp.id(154907099284767559)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(152756957143015810)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154908411879767551)
,p_view_id=>wwv_flow_imp.id(154907099284767559)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(152757098718015811)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154909322067767549)
,p_view_id=>wwv_flow_imp.id(154907099284767559)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(152757109847015812)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154910247784767547)
,p_view_id=>wwv_flow_imp.id(154907099284767559)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(152757219762015813)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154911182178767545)
,p_view_id=>wwv_flow_imp.id(154907099284767559)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(152757384270015814)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154912011043767544)
,p_view_id=>wwv_flow_imp.id(154907099284767559)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(152757404830015815)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>149
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154912934320767542)
,p_view_id=>wwv_flow_imp.id(154907099284767559)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(152757566562015816)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154914732204767247)
,p_view_id=>wwv_flow_imp.id(154907099284767559)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(152757615251015817)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>105
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154943877347476093)
,p_view_id=>wwv_flow_imp.id(154907099284767559)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(152758549927015826)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154893297653816967)
,p_plug_name=>'Botones'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154893680015816967)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(154893297653816967)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:517:&SESSION.::&DEBUG.:518::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154895098415816965)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(154893297653816967)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Suprimir'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P518_ID_PUESTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154895448627816965)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(154893297653816967)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aplicar Cambios'
,p_button_position=>'NEXT'
,p_button_condition=>'P518_ID_PUESTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154895876297816965)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(154893297653816967)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'NEXT'
,p_button_condition=>'P518_ID_PUESTO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(152758862853015829)
,p_branch_action=>'f?p=&APP_ID.:517:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152758453496015825)
,p_name=>'P518_OPERACION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(154889138914816985)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152759246339015833)
,p_name=>'P518_SECUENCIA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(154889138914816985)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152759659795015837)
,p_name=>'P518_NOMBRE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(154889138914816985)
,p_prompt=>'Nombre'
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
 p_id=>wwv_flow_imp.id(152759873887015839)
,p_name=>'P518_TIPO_CLIENTE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(154889138914816985)
,p_prompt=>'Tipo Cliente'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Distribuidor;1,Clientes;2,Ambos;0'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889487256816984)
,p_name=>'P518_ID_PUESTO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(154889138914816985)
,p_item_source_plug_id=>wwv_flow_imp.id(154889138914816985)
,p_source=>'ID_PUESTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889813155816973)
,p_name=>'P518_DESCRIPCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(154889138914816985)
,p_item_source_plug_id=>wwv_flow_imp.id(154889138914816985)
,p_prompt=>unistr('Descripci\00F3n')
,p_source=>'DESCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_read_only_when=>'P518_ID_PUESTO'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154890242258816971)
,p_name=>'P518_COD_USUARIO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(154889138914816985)
,p_item_source_plug_id=>wwv_flow_imp.id(154889138914816985)
,p_prompt=>'Usuario'
,p_source=>'COD_USUARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_USUARIOS_TICKET'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT /*U.COD_SUCURSAL,R.COD_AREA,R.COD_DEPARTAMENTO, */u.cod_usuario, p.nombre',
' ',
'  FROM USUARIOS U,',
'       personas p ',
' WHERE  u.cod_persona = p.cod_persona',
'   and U.cod_persona = p.cod_persona'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_read_only_when=>'P518_ID_PUESTO'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'NOMBRE:P518_NOMBRE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154890936064816969)
,p_name=>'P518_COD_BOX'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(154889138914816985)
,p_item_source_plug_id=>wwv_flow_imp.id(154889138914816985)
,p_prompt=>'Box'
,p_source=>'COD_BOX'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4
,p_tag_css_classes=>'allow_only_numbers'
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P518_ID_PUESTO'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154891304641816969)
,p_name=>'P518_FECHA'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(154889138914816985)
,p_item_source_plug_id=>wwv_flow_imp.id(154889138914816985)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha'
,p_source=>'FECHA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179497773064419338)
,p_name=>'P518_TIPO_USUARIO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(154889138914816985)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:Cajero;C,Atenci\00F3n al Cliente;A')
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179497857473419339)
,p_name=>'P518_BOX_CAJERO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(154889138914816985)
,p_prompt=>'Caja'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Caja 1;1,Caja 2;2,Caja 3;3'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(179498616547419347)
,p_validation_name=>'Nuevo'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P518_TIPO_USUARIO = ''C'' THEN ',
'    IF :P518_BOX_CAJERO IS NULL THEN ',
'        RETURN ''Debe seleccionar el numero de caja'';',
'    end if;',
'end if;',
'',
'',
'if :P518_TIPO_USUARIO = ''A'' THEN ',
'    IF :P518_COD_BOX IS NULL THEN ',
'        RETURN ''Debe ingresar el numero de box'';',
'    end if;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(179497857473419339)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152757967961015820)
,p_name=>'Obtiene datos detalles'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152758069527015821)
,p_event_id=>wwv_flow_imp.id(152757967961015820)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE     ',
'',
'    CURSOR cur_detalles IS ',
'        SELECT COD_TIPO_CLIENTE, ',
'               ID_PUESTO,',
'               COD_TIPO_TICKET,',
'               FECHA,',
'               SECUENCIA',
'        FROM ca_servicios_por_puestos',
'        WHERE ID_PUESTO = :P518_ID_PUESTO;',
'',
'BEGIN ',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''TMP_PUESTO'');',
'    FOR a IN cur_detalles LOOP',
'        APEX_COLLECTION.ADD_MEMBER(p_collection_name => ''TMP_PUESTO'',',
'                                    p_c001          => A.COD_TIPO_CLIENTE,',
'                                    p_c002          => A.ID_PUESTO,',
'                                    p_c003          => A.COD_TIPO_TICKET,',
'                                    p_c004          => A.FECHA,',
'                                    p_c005          => '''',',
'                                    p_c006          => ''X'',',
'                                    p_c007          => A.SECUENCIA);',
'',
'',
'    END LOOP;',
'',
'        begin ',
'        SELECT COD_TIPO_CLIENTE',
'        INTO :P518_TIPO_CLIENTE',
'        FROM ca_servicios_por_puestos',
'        WHERE ID_PUESTO = :P518_ID_PUESTO',
'        AND ROWNUM = 1;',
'        exception ',
'            when others then ',
'                null;',
'        end;',
'END;',
'',
''))
,p_attribute_02=>'P518_ID_PUESTO'
,p_attribute_03=>'P518_TIPO_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152758151300015822)
,p_event_id=>wwv_flow_imp.id(152757967961015820)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(152756716004015808)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152759903341015840)
,p_event_id=>wwv_flow_imp.id(152757967961015820)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'SELECT  p.nombre',
' INTO :P518_NOMBRE',
'  FROM USUARIOS U,',
'       personas p ',
' WHERE  u.cod_persona = p.cod_persona',
'   and U.cod_persona = p.cod_persona',
'   AND U.COD_USUARIO = :P518_COD_USUARIO;',
'EXCEPTION ',
'    WHEN OTHERS THEN ',
'        NULL;',
'END;'))
,p_attribute_02=>'P518_COD_USUARIO'
,p_attribute_03=>'P518_NOMBRE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152759030175015831)
,p_name=>'elimina datos'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-irrow'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152759109038015832)
,p_event_id=>wwv_flow_imp.id(152759030175015831)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P518_SECUENCIA'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id_1'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152759316587015834)
,p_event_id=>wwv_flow_imp.id(152759030175015831)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.update_member_attribute(p_collection_name=> ',
'''TMP_PUESTO'',',
' p_seq => :P518_SECUENCIA,',
' p_attr_number => ''6'',',
' p_attr_value=>''D'');'))
,p_attribute_02=>'P518_SECUENCIA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152759486329015835)
,p_event_id=>wwv_flow_imp.id(152759030175015831)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(152756716004015808)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(179498108283419342)
,p_name=>'Nuevo'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P518_TIPO_USUARIO'
,p_condition_element=>'P518_TIPO_USUARIO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'C'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179498459783419345)
,p_event_id=>wwv_flow_imp.id(179498108283419342)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P518_BOX_CAJERO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179498267744419343)
,p_event_id=>wwv_flow_imp.id(179498108283419342)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P518_BOX_CAJERO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179498370912419344)
,p_event_id=>wwv_flow_imp.id(179498108283419342)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P518_COD_BOX'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179498553862419346)
,p_event_id=>wwv_flow_imp.id(179498108283419342)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P518_COD_BOX'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(179498735404419348)
,p_name=>'Nuevo_1'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P518_ID_PUESTO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(179498802755419349)
,p_event_id=>wwv_flow_imp.id(179498735404419348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P518_BOX_CAJERO,P518_COD_BOX'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(152758673355015827)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(152756716004015808)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Guarda coleccion'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CASE :APEX$ROW_STATUS',
'            WHEN ''C'' THEN',
'                APEX_COLLECTION.ADD_MEMBER(p_collection_name => ''TMP_PUESTO'',',
'                                                p_C001            => :P518_TIPO_CLIENTE,',
'                                                p_C002            => :id_puesto,',
'                                                p_C003            => :cod_tipo_ticket,',
'                                                p_C004            => :fecha,',
'                                                p_C005            => :eliminar,',
'                                                p_C006            => ''C'',',
'                                                p_c007            => :secuencia);',
'        ',
'            WHEN ''U'' THEN',
'                APEX_COLLECTION.UPDATE_MEMBER(p_collection_name => ''TMP_PUESTO'',',
'                                                p_seq             => :SEQ_ID,',
'                                                p_C001            => :P518_TIPO_CLIENTE,',
'                                                p_C002            => :id_puesto,',
'                                                p_C003            => :cod_tipo_ticket,',
'                                                p_C004            => :fecha,',
'                                                p_C005            => :eliminar,',
'                                                p_C006            => ''U'',',
'                                                p_c007            => :secuencia);',
'        WHEN ''D'' THEN',
'                NULL;',
'        END CASE;',
'        EXCEPTION ',
'        WHEN OTHERS THEN',
'                apex_error.add_error (p_message          => ''Error'',',
'                                        p_display_location => ''INLINE_IN_NOTIFICATION'' );  ',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(67056303883084730)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Validaciones insercion'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P518_COD_BOX is null then ',
'    :P518_COD_BOX := :P518_BOX_CAJERO;',
'end if;',
'',
'declare ',
'    v_contador NUMBER := 0;',
'BEGIN',
'    BEGIN',
'      select COUNT(*)',
'     INTO v_contador',
'          from CA_PUESTO_BOX A, ca_servicios_por_puestos S',
'          where A.fecha = trunc(sysdate)',
'          AND A.ID_PUESTO = S.ID_PUESTO',
'          AND A.COD_BOX = :P518_COD_BOX',
'          AND S.COD_TIPO_CLIENTE = :P518_TIPO_CLIENTE',
'          AND ROWNUM = 1;',
'    EXCEPTION',
'        WHEN OTHERS THEN ',
'            v_contador := 0;',
'    END;',
'',
'    IF v_contador > 0 THEN ',
'        RAISE_APPLICATION_ERROR(-20001, ''El numero de box ingresado ya corresponde a otro usuario'');',
'    END IF;',
'END;',
'',
'',
'declare ',
'    v_contador NUMBER := 0;',
'BEGIN',
'    BEGIN',
'      select COUNT(*)',
'     INTO v_contador',
'          from CA_PUESTO_BOX A, ca_servicios_por_puestos S',
'          where A.fecha = trunc(sysdate)',
'          AND A.ID_PUESTO = S.ID_PUESTO',
'          AND A.COD_USUARIO = :P518_COD_USUARIO',
'          AND S.COD_TIPO_CLIENTE = :P518_TIPO_CLIENTE',
'          AND ROWNUM = 1;',
'    EXCEPTION',
'        WHEN OTHERS THEN ',
'            v_contador := 0;',
'    END;',
'',
'    IF v_contador > 0 THEN ',
'        RAISE_APPLICATION_ERROR(-20001, ''El usuario seleccionado ya tiene asignado un numero de box'');',
'    END IF;',
'END;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(154895876297816965)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(152759574924015836)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Validaciones'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_cont NUMBER := 0;',
'begin ',
'    begin',
'        SELECT COUNT(*)',
'            INTO v_cont',
'                FROM apex_collections',
'                WHERE collection_name = ''TMP_PUESTO''',
'                AND c006 IN (''C'', ''U'', ''X'');',
'    EXCEPTION ',
'            WHEN OTHERS THEN ',
'                v_cont := 0;',
'        END;',
'',
'        IF v_cont = 0 THEN ',
'            RAISE_APPLICATION_ERROR(-20001, ''Debe seleccionar la operacion para el box'');',
'        END IF;',
'end;',
'',
'',
'DECLARE ',
'    CURSOR cur_detalles IS',
'            SELECT seq_id,',
'                    c003   tipo_ticket',
'            FROM apex_collections',
'            WHERE collection_name = ''TMP_PUESTO''',
'            AND c006 IN (''C'', ''U'', ''X'');',
'    v_contador NUMBER := 0;',
'BEGIN ',
'    FOR a IN cur_detalles LOOP',
'        BEGIN ',
'            SELECT COUNT(*)',
'            INTO v_contador',
'                FROM apex_collections',
'                WHERE collection_name = ''TMP_PUESTO''',
'                AND c003 = A.tipo_ticket',
'                AND c006 IN (''C'', ''U'', ''X'');',
'        EXCEPTION ',
'            WHEN OTHERS THEN ',
'                v_contador := 0;',
'        END;',
'',
'        IF v_contador > 1 THEN ',
'            RAISE_APPLICATION_ERROR(-20001, ''Tipo de Ticket duplicado '' || A.tipo_ticket);',
'        END IF;',
'        ',
'    END LOOP;',
'END;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(152758746234015828)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Obtiene id puesto'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'    SELECT NVL(MAX(ID_PUESTO),0)+1',
'    INTO :P518_ID_PUESTO',
'    FROM ca_puesto_box a;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(154895876297816965)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(152758927105015830)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Elimina detalles'
,p_process_sql_clob=>'delete from ca_servicios_por_puestos where id_puesto = :P518_ID_PUESTO;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(154895098415816965)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154896687596816964)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(154889138914816985)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Procesar pantalla Mantener Puesto'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(152758382620015824)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Guarda detalles'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    CURSOR cur_detalles IS ',
'            SELECT seq_id,',
'                 TO_NUMBER(c001)   AS cod_tipo_cliente,',
'                 TO_NUMBER(c002)   AS id_puesto,',
'                 c003   AS cod_tipo_ticket,',
'                 c004   AS fecha,',
'                 c005   AS eliminar,',
'                 c006   AS opcion,',
'                TO_NUMBER(c007)   AS secuencia',
'            FROM apex_collections',
'           WHERE collection_name = ''TMP_PUESTO''',
'           AND c006 in (''C'', ''U'', ''D'');',
'    v_secuencia NUMBER := 0;',
'BEGIN ',
'    IF :P518_OPERACION = ''AGREGAR'' THEN ',
'        FOR a in cur_detalles LOOP ',
'            BEGIN ',
'                SELECT NVL(MAX(SECUENCIA),0)+1',
'                INTO v_secuencia',
'                FROM ca_servicios_por_puestos;',
'            EXCEPTION ',
'                WHEN OTHERS THEN',
'                    v_secuencia := 0;',
'            END;',
'            INSERT INTO ca_servicios_por_puestos (cod_tipo_cliente, id_puesto, cod_tipo_ticket, FECHA, secuencia)',
'            values (:P518_TIPO_CLIENTE, :P518_ID_PUESTO, a.cod_tipo_ticket, SYSDATE, v_secuencia);',
'        END LOOP;',
'   ',
'   ELSIF :P518_OPERACION = ''MODIFICAR'' THEN ',
'        BEGIN',
'        update  ca_servicios_por_puestos set cod_tipo_cliente = :P518_TIPO_CLIENTE',
'          where id_puesto = :P518_ID_PUESTO;',
'        EXCEPTION ',
'            WHEN OTHERS THEN ',
'                NULL;',
'        END;',
'        ',
'        FOR a in cur_detalles LOOP  ',
'            IF a.opcion = ''C'' then ',
'                 BEGIN ',
'                    SELECT NVL(MAX(SECUENCIA),0)+1',
'                    INTO v_secuencia',
'                    FROM ca_servicios_por_puestos;',
'                EXCEPTION ',
'                    WHEN OTHERS THEN',
'                        v_secuencia := 0;',
'                END;',
'',
'                INSERT INTO ca_servicios_por_puestos (cod_tipo_cliente, id_puesto, cod_tipo_ticket, FECHA, secuencia)',
'                values (:P518_TIPO_CLIENTE, :P518_ID_PUESTO, a.cod_tipo_ticket, SYSDATE, v_secuencia);   ',
'            elsif a.opcion  = ''U'' THEN ',
'                update  ca_servicios_por_puestos set cod_tipo_cliente = :P518_TIPO_CLIENTE,',
'                                                     cod_tipo_ticket = a.cod_tipo_ticket,',
'                                                     FECHA = TO_DATE(a.fecha, ''DD/MM/YYYY'')',
'                where id_puesto = :P518_ID_PUESTO',
'                and secuencia  = a.secuencia;',
'',
'            ELSIF a.opcion = ''D'' then ',
'                delete from ca_servicios_por_puestos  ',
'                where id_puesto = :P518_ID_PUESTO',
'                and secuencia  = a.secuencia;',
'            end if;',
'',
'        END LOOP;',
'   ',
'   END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154896298917816965)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(154889138914816985)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Inicializar pantalla Mantener Puesto'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(152758237861015823)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Crea colecci\00F3n')
,p_process_sql_clob=>'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''TMP_PUESTO'');'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
