prompt --application/pages/page_00236
begin
--   Manifest
--     PAGE: 00236
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
 p_id=>236
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'BSOBSCLI'
,p_alias=>'BSOBSCLI'
,p_step_title=>'BSOBSCLI'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'HSEGOVIA'
,p_last_upd_yyyymmddhh24miss=>'20221206114137'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53841608831297834)
,p_plug_name=>'BSOBSCLI'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'CC_OBSERVACION_CLIENTE'
,p_query_where=>'COD_PERSONA = :P236_COD_PERSONA'
,p_include_rowid_column=>true
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P236_COD_PERSONA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'BSOBSCLI'
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
 p_id=>wwv_flow_imp.id(53841885227297836)
,p_name=>'COD_EMPRESA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_EMPRESA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Empresa'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
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
 p_id=>wwv_flow_imp.id(53841910558297837)
,p_name=>'COD_CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_CLIENTE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cod Cliente'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(53842035363297838)
,p_name=>'COMENTARIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMENTARIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Comentario'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>2000
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
 p_id=>wwv_flow_imp.id(53842163959297839)
,p_name=>'HORA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HORA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Hora'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly'
,p_is_required=>false
,p_max_length=>30
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
 p_id=>wwv_flow_imp.id(53842238680297840)
,p_name=>'FECHA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Fecha'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(53842304918297841)
,p_name=>'COD_USUARIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_USUARIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Usuario'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly'
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(53842468672297842)
,p_name=>'COD_PERSONA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_PERSONA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Persona'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
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
 p_id=>wwv_flow_imp.id(53843034756297848)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53843130278297849)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53843256294297850)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(53841720219297835)
,p_internal_uid=>53841720219297835
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
 p_id=>wwv_flow_imp.id(54277572577839635)
,p_interactive_grid_id=>wwv_flow_imp.id(53841720219297835)
,p_static_id=>'542776'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(54277754088839636)
,p_report_id=>wwv_flow_imp.id(54277572577839635)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54278289072839642)
,p_view_id=>wwv_flow_imp.id(54277754088839636)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(53841885227297836)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54279136728839647)
,p_view_id=>wwv_flow_imp.id(54277754088839636)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(53841910558297837)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54280018255839650)
,p_view_id=>wwv_flow_imp.id(54277754088839636)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(53842035363297838)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>420
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54280924698839652)
,p_view_id=>wwv_flow_imp.id(54277754088839636)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(53842163959297839)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54281846013839655)
,p_view_id=>wwv_flow_imp.id(54277754088839636)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(53842238680297840)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>165
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54282792347839657)
,p_view_id=>wwv_flow_imp.id(54277754088839636)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(53842304918297841)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>223
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54283662807839659)
,p_view_id=>wwv_flow_imp.id(54277754088839636)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(53842468672297842)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54297519978917843)
,p_view_id=>wwv_flow_imp.id(54277754088839636)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(53843034756297848)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54304071743918280)
,p_view_id=>wwv_flow_imp.id(54277754088839636)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(53843130278297849)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>106
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54298507897918006)
,p_plug_name=>'Botoneras'
,p_parent_plug_id=>wwv_flow_imp.id(53841608831297834)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53842693023297844)
,p_plug_name=>'Personas'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54298756942918008)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54298507897918006)
,p_button_name=>'Guardar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53842781086297845)
,p_name=>'P236_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(53842693023297844)
,p_prompt=>'Persona'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53842886494297846)
,p_name=>'P236_NOMBRE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(53842693023297844)
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
 p_id=>wwv_flow_imp.id(53842927702297847)
,p_name=>'P236_ES_FISICA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(53842693023297844)
,p_prompt=>'T. persona'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC2:F\00EDsica;S,Jur\00EDdica;N')
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54298154986918002)
,p_name=>'Obtiene datos del cliente'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_da_event_comment=>'Obtiene datos del cliente'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54299290572918013)
,p_event_id=>wwv_flow_imp.id(54298154986918002)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P236_COD_PERSONA'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'889'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_da_action_comment=>unistr('Se debe borrar la acci\00F3n, se agreg\00F3 para la prueba del formulario.')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54298267293918003)
,p_event_id=>wwv_flow_imp.id(54298154986918002)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_cod_persona VARCHAR2(30);',
'',
'',
'BEGIN',
'    BEGIN ',
'        select CC.COD_PERSONA',
'        INTO v_cod_persona',
'        from CC_CLIENTES CC',
'        WHERE CC.COD_CLIENTE = :P236_COD_PERSONA',
'        AND ROWNUM = 1;',
'        EXCEPTION ',
'            WHEN OTHERS THEN',
'                v_cod_persona := NULL;',
'    END;',
'',
'',
'    BEGIN',
'         select NOMBRE, ES_FISICA',
'         INTO :P236_NOMBRE,',
'              :P236_ES_FISICA',
'         from PERSONAS P',
'         WHERE P.COD_PERSONA = v_cod_persona',
'         AND ROWNUM = 1;',
'        EXCEPTION ',
'            WHEN OTHERS THEN',
'                :P236_NOMBRE := NULL;',
'                :P236_ES_FISICA := NULL;',
'    END;',
'END;',
'',
'',
' ',
''))
,p_attribute_02=>'P236_COD_PERSONA'
,p_attribute_03=>'P236_NOMBRE,P236_ES_FISICA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54298357208918004)
,p_event_id=>wwv_flow_imp.id(54298154986918002)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53841608831297834)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54299584705918016)
,p_name=>'Carga de mensajes'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_da_event_comment=>'Carga mensajes de procesos'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54299612233918017)
,p_event_id=>wwv_flow_imp.id(54299584705918016)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P0_MENSAJE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>unistr('Registro Procesado con \00C9xito')
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54299707413918018)
,p_event_id=>wwv_flow_imp.id(54299584705918016)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P0_ERROR'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Error al procesar el Registro'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54298434308918005)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(53841608831297834)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Proceso de Carga'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' v_fecha VARCHAR2(18);',
' V_hora VARCHAR2(18);',
' v_secuencia_detalle NUMBER;',
'BEGIN',
' CASE :APEX$ROW_STATUS',
'     WHEN ''C'' THEN',
'        BEGIN ',
'            SELECT TO_CHAR(SYSDATE, ''DD/MM/YYYY'') INTO v_fecha FROM DUAL;',
'        END;',
'',
'        BEGIN ',
'            SELECT TO_CHAR(SYSDATE, ''HH24:MM:SS'') INTO V_hora FROM DUAL;',
'        END;',
'        ',
'         :COD_PERSONA := :P236_COD_PERSONA;',
'         :COD_EMPRESA := :1;',
'         :COD_USUARIO := :APP_USER;',
'         :FECHA := v_fecha;',
'         :HORA := V_hora;',
'     WHEN ''U'' THEN',
'        BEGIN ',
'            SELECT TO_CHAR(SYSDATE, ''DD/MM/YYYY'') INTO v_fecha FROM DUAL;',
'        END;',
'',
'        BEGIN ',
'            SELECT TO_CHAR(SYSDATE, ''HH24:MM:SS'') INTO V_hora FROM DUAL;',
'        END;',
'',
'        :COD_PERSONA := :P236_COD_PERSONA;',
'        :COD_USUARIO := :APP_USER;',
'         :FECHA := v_fecha;',
'         :HORA := V_hora;',
'     WHEN ''D'' THEN',
'        NULL;',
'    END CASE;',
' EXCEPTION ',
' WHEN OTHERS THEN',
' raise_application_error(-20001, ''Error'' || sqlerrm); ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_comment=>'Proceso de Carga'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54298061573918001)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(53841608831297834)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('BSOBSCLI: Guardar Datos de Cuadr\00EDcula Interactiva')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_process_error_message=>'&P0_ERROR. #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'&P0_MENSAJE.'
,p_process_comment=>'Guarda datos en la base de datos'
);
wwv_flow_imp.component_end;
end;
/
