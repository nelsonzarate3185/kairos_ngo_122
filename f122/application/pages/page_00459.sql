prompt --application/pages/page_00459
begin
--   Manifest
--     PAGE: 00459
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
 p_id=>459
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Solicitud Suministros MKT'
,p_alias=>'SOLICITUD-SUMINISTROS-MKT'
,p_page_mode=>'MODAL'
,p_step_title=>'Solicitud Suministros MKT'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico#MIN#.js'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog  ',
'{background-color: #8BC6EC;',
'background-image: linear-gradient(180deg, #e4f1fa 0%, #eeeeee 100%);',
'}'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20230525171533'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136458665374824210)
,p_plug_name=>'detalle'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  C001 DETALLE_PEDIDO,',
'        C002 TIPO_PEDIDO,',
'        C003 COD_CLASIFICACION,',
'        C004 COD_MARCA,',
'        C005 MONTO_PRESUPUESTO,        ',
'        C006 IND_APRUEBA,',
'        C007 IND_RECHAZA,',
'        C008 IND_ENTREGA,',
'        C009 IND_DEVOLUCION,',
'        C010 FECHA_APRUEBA,',
'        C011 USER_APRUEBA,',
'        C012 FECHA_RECHAZA,',
'        C013 USER_RECHAZA,',
'        C014 FECHA_ENTREGA,',
'        C015 USER_ENTREGA,',
'        C016 FECHA_DEVUELVE,',
'        C017 USER_DEVUELVE, ',
'        NULL ELIMINAR,',
'        seq_id    ',
'FROM APEX_COLLECTIONS ',
'WHERE collection_name =''SMPROMKT''',
'AND NVL(C018,''X'')<>''D''',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'detalle'
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
 p_id=>wwv_flow_imp.id(136459597345824219)
,p_name=>'DETALLE_PEDIDO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETALLE_PEDIDO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Detalle Pedido'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(136459667449824220)
,p_name=>'TIPO_PEDIDO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIPO_PEDIDO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Tipo Pedido'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	SELECT distinct categoria, categoria cod',
'	from sm_productos_clasificacion s',
'	order by categoria asc',
'	 ;'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(136459740318824221)
,p_name=>'COD_CLASIFICACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_CLASIFICACION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>' Clasificacion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion , cod_clasificacion',
'    from sm_productos_clasificacion    ',
'   where  CATEGORIA= :TIPO_PEDIDO;'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'TIPO_PEDIDO'
,p_ajax_items_to_submit=>'TIPO_PEDIDO'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(136459898521824222)
,p_name=>'COD_MARCA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_MARCA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Marca'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select descripcion ,cod_marca ',
'    from st_marcas',
'   ---where cod_marca = :SM_PRODUCTOS_MKT_DET.cod_marca;'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(136459917931824223)
,p_name=>'MONTO_PRESUPUESTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTO_PRESUPUESTO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Monto Presupuesto'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'0'
,p_attribute_02=>'999999999999'
,p_attribute_03=>'right'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_is_required=>true
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(136460036769824224)
,p_name=>'IND_APRUEBA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_APRUEBA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Aprobado'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ITEM_IS_NULL'
,p_readonly_condition=>'P459_NRO_SEGUIMIENTO'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(136460195262824225)
,p_name=>'IND_RECHAZA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_RECHAZA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Rechazado'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ITEM_IS_NULL'
,p_readonly_condition=>'P459_NRO_SEGUIMIENTO'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(136460288670824226)
,p_name=>'IND_ENTREGA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_ENTREGA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Entregado'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ITEM_IS_NULL'
,p_readonly_condition=>'P459_NRO_SEGUIMIENTO'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(136460399011824227)
,p_name=>'IND_DEVOLUCION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_DEVOLUCION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Devuelto'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ITEM_IS_NULL'
,p_readonly_condition=>'P459_NRO_SEGUIMIENTO'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(136460440130824228)
,p_name=>'FECHA_APRUEBA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA_APRUEBA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(136460527405824229)
,p_name=>'USER_APRUEBA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_APRUEBA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(136460662321824230)
,p_name=>'FECHA_RECHAZA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA_RECHAZA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(136460753873824231)
,p_name=>'USER_RECHAZA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_RECHAZA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(136460821920824232)
,p_name=>'FECHA_ENTREGA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA_ENTREGA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(136460923400824233)
,p_name=>'USER_ENTREGA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ENTREGA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(136461025976824234)
,p_name=>'FECHA_DEVUELVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA_DEVUELVE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(136461173911824235)
,p_name=>'USER_DEVUELVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_DEVUELVE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(136461467859824238)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(136461564398824239)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(136461790770824241)
,p_name=>'SEQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(152906180429462250)
,p_name=>'ELIMINAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ELIMINAR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Eliminar'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:$s(''P459_SEQID'',''&SEQ_ID.'');'
,p_link_text=>'<span class="fa fa-trash" aria-hidden="true"></span>'
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
 p_id=>wwv_flow_imp.id(136459432947824218)
,p_internal_uid=>136459432947824218
,p_is_editable=>true
,p_edit_operations=>'i:u'
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
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(138358411672415182)
,p_interactive_grid_id=>wwv_flow_imp.id(136459432947824218)
,p_static_id=>'1383585'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(138358687694415181)
,p_report_id=>wwv_flow_imp.id(138358411672415182)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(138359114670415174)
,p_view_id=>wwv_flow_imp.id(138358687694415181)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(136459597345824219)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>461.993
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(138360066716415168)
,p_view_id=>wwv_flow_imp.id(138358687694415181)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(136459667449824220)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>367.99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(138360939597415164)
,p_view_id=>wwv_flow_imp.id(138358687694415181)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(136459740318824221)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>174.9931
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(138361851147415161)
,p_view_id=>wwv_flow_imp.id(138358687694415181)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(136459898521824222)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>205.979
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(138362767331415159)
,p_view_id=>wwv_flow_imp.id(138358687694415181)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(136459917931824223)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>172
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(138363620529415155)
,p_view_id=>wwv_flow_imp.id(138358687694415181)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(136460036769824224)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78.993
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(138364588589415153)
,p_view_id=>wwv_flow_imp.id(138358687694415181)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(136460195262824225)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>77.9826
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(138365453590415150)
,p_view_id=>wwv_flow_imp.id(138358687694415181)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(136460288670824226)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76.9965
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(138366394351415147)
,p_view_id=>wwv_flow_imp.id(138358687694415181)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(136460399011824227)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>73.941
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(138367209280415145)
,p_view_id=>wwv_flow_imp.id(138358687694415181)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(136460440130824228)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(138368104573415142)
,p_view_id=>wwv_flow_imp.id(138358687694415181)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(136460527405824229)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(138369056037415139)
,p_view_id=>wwv_flow_imp.id(138358687694415181)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(136460662321824230)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(138369935982415137)
,p_view_id=>wwv_flow_imp.id(138358687694415181)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(136460753873824231)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(138370819051415134)
,p_view_id=>wwv_flow_imp.id(138358687694415181)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(136460821920824232)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(138371717123415132)
,p_view_id=>wwv_flow_imp.id(138358687694415181)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(136460923400824233)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(138372630159415129)
,p_view_id=>wwv_flow_imp.id(138358687694415181)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(136461025976824234)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(138373520861415127)
,p_view_id=>wwv_flow_imp.id(138358687694415181)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(136461173911824235)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(138467834388309892)
,p_view_id=>wwv_flow_imp.id(138358687694415181)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(136461467859824238)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(138477425698306431)
,p_view_id=>wwv_flow_imp.id(138358687694415181)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(136461790770824241)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(165049908025457473)
,p_view_id=>wwv_flow_imp.id(138358687694415181)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(152906180429462250)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>77.184
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(137248304273554527)
,p_plug_name=>'Solicitud Suministros MKT'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_query_type=>'TABLE'
,p_query_table=>'SM_PRODUCTOS_MKT'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(165069480425894641)
,p_name=>'Seguimiento'
,p_parent_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>230
,p_region_template_options=>'#DEFAULT#:t-Region--hideShowIconsMath:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>4
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select fecha, usuario, observacion',
'from SM_PEDIDO_MK_SEGUIMIENTO',
'where cod_empresa= :P_COD_EMPRESA',
'and   nro_seguimiento=:P459_NRO_SEGUIMIENTO',
';'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P459_NRO_SEGUIMIENTO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(165069517175894642)
,p_query_column_id=>1
,p_column_alias=>'FECHA'
,p_column_display_sequence=>10
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(165069637456894643)
,p_query_column_id=>2
,p_column_alias=>'USUARIO'
,p_column_display_sequence=>20
,p_column_heading=>'Usuario'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(165069742089894644)
,p_query_column_id=>3
,p_column_alias=>'OBSERVACION'
,p_column_display_sequence=>30
,p_column_heading=>'Observacion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(137262656185554520)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(136458397897824207)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_button_name=>'Aprobar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--stretch:t-Button--padRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aprobar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-text'
,p_icon_css_classes=>'fa-check-circle'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(136458430195824208)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_button_name=>'Rechazar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--stretch:t-Button--padRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rechazar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-text'
,p_icon_css_classes=>'fa-ban'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(137263074532554520)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(137262656185554520)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(137264455417554519)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(137262656185554520)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P459_NRO_SEGUIMIENTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(137264855769554519)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(137262656185554520)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'NEXT'
,p_button_condition=>'P459_NRO_SEGUIMIENTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(137265245519554519)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(137262656185554520)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'NEXT'
,p_button_condition=>'P459_NRO_SEGUIMIENTO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137248761881554527)
,p_name=>'P459_NRO_SEGUIMIENTO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_item_source_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_prompt=>unistr('N\00BA Solicitud')
,p_source=>'NRO_SEGUIMIENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137249168087554526)
,p_name=>'P459_USUARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_item_source_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_prompt=>'Usuario'
,p_source=>'USUARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137249569567554526)
,p_name=>'P459_COD_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_item_source_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_source=>'COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137249938799554526)
,p_name=>'P459_FECHA'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_item_source_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_prompt=>'Fecha'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137250301799554526)
,p_name=>'P459_COD_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_item_source_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_prompt=>'Cliente'
,p_source=>'COD_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_CASOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CLIENTE,',
'       COD_CLIENTE,',
'       NCI,',
'       RUC,',
'       TELEFONO       ',
' from INV.VW_CLIENTES_CASOS',
'     ORDER BY 1 ASC'))
,p_cSize=>30
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'NO_FETCH'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'RUC:P459_RUC'
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
 p_id=>wwv_flow_imp.id(137250720737554526)
,p_name=>'P459_FECHA_ENTREGA_CLI'
,p_source_data_type=>'DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_item_source_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_prompt=>'Fecha Entrega'
,p_source=>'FECHA_ENTREGA_CLI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137251197399554525)
,p_name=>'P459_CIUDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_item_source_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_prompt=>'Ciudad'
,p_source=>'CIUDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select DISTINCT descripcion',
'               from ciudades',
'               where cod_pais      = ''PAR''',
'               ORDER BY 1 ASC'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137251550876554525)
,p_name=>'P459_CONTACTO_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_item_source_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_prompt=>'Contacto Cliente'
,p_source=>'CONTACTO_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137251905131554525)
,p_name=>'P459_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_item_source_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_prompt=>'Estado'
,p_source=>'ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>15
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137252397679554525)
,p_name=>'P459_IP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_item_source_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_prompt=>'IP %'
,p_source=>'COD_PROVEEDOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>15
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137253181672554525)
,p_name=>'P459_OBSERVACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_item_source_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_prompt=>'Observacion'
,p_source=>'OBSERVACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>600
,p_cMaxlength=>500
,p_cHeight=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137253566730554524)
,p_name=>'P459_CORREO_CONTACTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_item_source_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_prompt=>'Correo Contacto'
,p_source=>'CORREO_CONTACTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137253926555554524)
,p_name=>'P459_TELEF_CONTACTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_item_source_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_prompt=>'Telef. Contacto'
,p_source=>'TELEF_CONTACTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137254382942554524)
,p_name=>'P459_MONTO_PRESUPUESTO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_item_source_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_prompt=>'Monto Presupuesto'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_source=>'MONTO_PRESUPUESTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'allow_only_numbers'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137254733438554524)
,p_name=>'P459_COD_VENDEDOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_item_source_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_prompt=>'Vendedor'
,p_source=>'COD_VENDEDOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDOR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--LV PARA VTFAPECO  ',
'  select cod_vendedor || '' - '' || ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D,',
'         cod_vendedor R',
'    from fv_vendedores u,',
'          personas p',
'   where u.cod_empresa = :p_cod_empresa',
'     and u.cod_persona = p.cod_persona;',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>15
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
 p_id=>wwv_flow_imp.id(137255095910554524)
,p_name=>'P459_COD_SUCURSAL_DIST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_item_source_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_prompt=>'Sucursal Cliente'
,p_source=>'COD_SUCURSAL_DIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	select p.nombre,p.cod_sucursal /* p.direccion, p.telefono',
'	 into :B_BLOQUE.nombre, :B_BLOQUE.lugar_entrega, :B_BLOQUE.TELEF_CONTACTO*/',
'	from cc_clientes c, BS_SUCURSAL_CLIENTE p',
'	where c.cod_empresa=:P_COD_EMPRESA',
'	and c.cod_cliente=:P459_COD_CLIENTE',
'	and c.cod_persona=p.cod_persona ',
'	;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P459_COD_CLIENTE'
,p_ajax_items_to_submit=>'P459_COD_CLIENTE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>15
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137255435380554523)
,p_name=>'P459_LUGAR_ENTREGA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_item_source_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_prompt=>'Lugar Entrega'
,p_source=>'LUGAR_ENTREGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>300
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137256241328554523)
,p_name=>'P459_NRO_FACT_PROV'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_item_source_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_prompt=>unistr('N\00BA Fact. Proveedor')
,p_source=>'NRO_FACT_PROV'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(165066820042894615)
,p_name=>'P459_RUC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_item_source_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_prompt=>'RUC'
,p_source=>'RUC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(165067015361894617)
,p_name=>'P459_SEQID'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(137248304273554527)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137263136180554520)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(137263074532554520)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137263963915554519)
,p_event_id=>wwv_flow_imp.id(137263136180554520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(165065679505894603)
,p_name=>'DA_IP_PORC'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P459_COD_CLIENTE'
,p_condition_element=>'P459_COD_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165065765627894604)
,p_event_id=>wwv_flow_imp.id(165065679505894603)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF      :P459_NRO_SEGUIMIENTO IS NULL THEN',
'     BEGIN',
'        SELECT COD_VENDEDOR',
'        INTO :P459_COD_VENDEDOR',
'        FROM CC_CLIENTES ',
'        WHERE COD_EMPRESA=:P_COD_EMPRESA',
'        AND   COD_CLIENTE=:P459_COD_CLIENTE',
'        ; ',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'          :P459_COD_VENDEDOR:=NULL;',
'    END;',
'END IF;',
'',
'',
'  inv.smpromkt.calcula_ip(pi_cod_empresa => :P_COD_EMPRESA,',
'                          pi_cod_cliente => :P459_COD_CLIENTE,',
'                          pi_cod_vendedor => :P459_COD_VENDEDOR,',
'                          po_porc => :P459_IP);',
''))
,p_attribute_02=>'P459_COD_CLIENTE'
,p_attribute_03=>'P459_IP,P459_COD_VENDEDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(165066321721894610)
,p_name=>'DA_LOAD'
,p_event_sequence=>30
,p_condition_element=>'P459_NRO_SEGUIMIENTO'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165066532155894612)
,p_event_id=>wwv_flow_imp.id(165066321721894610)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(136458397897824207)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165066659471894613)
,p_event_id=>wwv_flow_imp.id(165066321721894610)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(136458430195824208)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(165067198780894618)
,p_name=>'DA_SETEA_COLL'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P459_SEQID'
,p_condition_element=>'P459_SEQID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165067296185894619)
,p_event_id=>wwv_flow_imp.id(165067198780894618)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
' BEGIN',
'',
' apex_collection.update_member_attribute(p_collection_name=> ''SMPROMKT'',',
'                                             p_seq => :P459_SEQID,',
'                                             p_attr_number => ''18'',',
'                                             p_attr_value=>''D'');',
'                                             /*',
'    apex_collection.update_member(p_collection_name => ''SMPROMKT'',',
'                                       p_seq             => :P459_SEQID, ',
'                                       p_c018            => ''D'' ',
'                                       );',
'*/',
'    EXCEPTION',
'    WHEN OTHERS THEN ',
'        raise_application_error(-20000,  sqlerrm );',
'',
'    END; '))
,p_attribute_02=>'P459_SEQID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165067389675894620)
,p_event_id=>wwv_flow_imp.id(165067198780894618)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136458665374824210)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(165067547276894622)
,p_name=>'da_autoriza'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(136458397897824207)
,p_condition_element=>'P459_NRO_SEGUIMIENTO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165067613276894623)
,p_event_id=>wwv_flow_imp.id(165067547276894622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea Aprobar la solicitud N\00BA &P459_NRO_SEGUIMIENTO.?')
,p_attribute_02=>'Autorizar Solicitud'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165067913927894626)
,p_event_id=>wwv_flow_imp.id(165067547276894622)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  inv.smpromkt.autoriza_rechaza(pi_cod_empresa => :P_COD_EMPRESA,',
'',
'                                pi_nro_solicitud => :P459_NRO_SEGUIMIENTO,',
'                                pi_operacion => ''APROBADO'');',
'exception',
'when others then',
'     raise_application_error(-20000, ''Error al intentar Aprobar '' || sqlerrm );',
'end;'))
,p_attribute_02=>'P459_NRO_SEGUIMIENTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165068054826894627)
,p_event_id=>wwv_flow_imp.id(165067547276894622)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(165068175966894628)
,p_name=>'da_rechaza'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(136458430195824208)
,p_condition_element=>'P459_NRO_SEGUIMIENTO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165068206220894629)
,p_event_id=>wwv_flow_imp.id(165068175966894628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea Rechazar la solicitud N\00BA &P459_NRO_SEGUIMIENTO.?')
,p_attribute_02=>'Rechazar Solicitud'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165068321298894630)
,p_event_id=>wwv_flow_imp.id(165068175966894628)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  inv.smpromkt.autoriza_rechaza(pi_cod_empresa => :P_COD_EMPRESA,',
'',
'                                pi_nro_solicitud => :P459_NRO_SEGUIMIENTO,',
'                                pi_operacion => ''RECHAZADO'');',
'exception',
'when others then',
'     raise_application_error(-20000, ''Error al intentar Rechazar '');',
'end;'))
,p_attribute_02=>'P459_NRO_SEGUIMIENTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165068463145894631)
,p_event_id=>wwv_flow_imp.id(165068175966894628)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(165068929566894636)
,p_name=>'da_estado'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P459_ESTADO'
,p_condition_element=>'P459_ESTADO'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'CREADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165069003294894637)
,p_event_id=>wwv_flow_imp.id(165068929566894636)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(136458430195824208)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165069337439894640)
,p_event_id=>wwv_flow_imp.id(165068929566894636)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(136458397897824207)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P459_NRO_SEGUIMIENTO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165069190049894638)
,p_event_id=>wwv_flow_imp.id(165068929566894636)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(136458397897824207)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165069270393894639)
,p_event_id=>wwv_flow_imp.id(165068929566894636)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(136458430195824208)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P459_NRO_SEGUIMIENTO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(136461844311824242)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(136458665374824210)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'detalle'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    vcar varchar2(5);',
'BEGIN  ',
'    CASE :APEX$ROW_STATUS ',
'        WHEN ''C'' THEN   ',
'            apex_collection.add_member(p_collection_name => ''SMPROMKT'',',
'                                       p_c001            => :DETALLE_PEDIDO,',
'                                       p_c002            => :TIPO_PEDIDO,',
'                                       p_c003            => :COD_CLASIFICACION,',
'                                       p_c004            => :COD_MARCA,',
'                                       p_C005            => :MONTO_PRESUPUESTO,',
'                                       p_c006            => :IND_APRUEBA,',
'                                       p_c007            => :IND_RECHAZA,',
'                                       p_c008            => :IND_ENTREGA,',
'                                       p_c009            => :IND_DEVOLUCION,',
'                                       p_c010            => :FECHA_APRUEBA,',
'                                       p_c011            => :USER_APRUEBA,',
'                                       p_c012            => :FECHA_RECHAZA,',
'                                       p_c013            => :USER_RECHAZA,',
'                                       p_c014            => :FECHA_ENTREGA,',
'                                       p_c015            => :USER_ENTREGA,',
'                                       p_c016            => :FECHA_DEVUELVE,',
'                                       p_c017            => :USER_DEVUELVE,',
'                                       p_c018            => ''C'' ',
'                                       );',
'         ',
'        WHEN ''U'' THEN ',
'                apex_collection.update_member(p_collection_name => ''SMPROMKT'',',
'                                       p_seq             => :SEQ_ID,',
'                                       p_c001            => :DETALLE_PEDIDO,',
'                                       p_c002            => :TIPO_PEDIDO,',
'                                       p_c003            => :COD_CLASIFICACION,',
'                                       p_c004            => :COD_MARCA,',
'                                       p_C005            => :MONTO_PRESUPUESTO,',
'                                       p_c006            => :IND_APRUEBA,',
'                                       p_c007            => :IND_RECHAZA,',
'                                       p_c008            => :IND_ENTREGA,',
'                                       p_c009            => :IND_DEVOLUCION,',
'                                       p_c010            => :FECHA_APRUEBA,',
'                                       p_c011            => :USER_APRUEBA,',
'                                       p_c012            => :FECHA_RECHAZA,',
'                                       p_c013            => :USER_RECHAZA,',
'                                       p_c014            => :FECHA_ENTREGA,',
'                                       p_c015            => :USER_ENTREGA,',
'                                       p_c016            => :FECHA_DEVUELVE,',
'                                       p_c017            => :USER_DEVUELVE,',
'                                       p_c018            => ''U'' ',
'                                       );',
'        WHEN ''D'' THEN ',
'               NULL;',
'        END CASE; ',
'         ',
' ',
'        EXCEPTION  ',
'        WHEN OTHERS THEN ',
'                raise_application_error(-20001,  sqlerrm);   ',
'END; ',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(165066741252894614)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GUARDAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' BEGIN',
'  inv.smpromkt.guarda_actualiza_pedido(pi_cod_empresa => :P_COD_EMPRESA,',
'                                       pi_nro_seguimiento => :P459_NRO_SEGUIMIENTO,',
'                                       pi_cod_cliente => :P459_cod_cliente,',
'                                       pi_fecha_entrega_cli => :P459_fecha_entrega_cli,',
'                                       pi_ciudad => :P459_ciudad,',
'                                       pi_contacto_cliente => :P459_contacto_cliente,',
'                                       pi_estado => :P459_estado,',
'                                       pi_cod_proveedor => null,',
'                                       pi_fecha_entrega_prov => null,',
'                                       pi_observacion => :P459_observacion,',
'                                       pi_correo_contacto => :P459_correo_contacto,',
'                                       pi_telef_contacto => :P459_telef_contacto,',
'                                       pi_monto_presupuesto => :P459_monto_presupuesto,',
'                                       pi_cod_vendedor => :P459_cod_vendedor,',
'                                       pi_cod_sucursal_dist => :P459_cod_sucursal_dist,',
'                                       pi_lugar_entrega => :P459_lugar_entrega,',
'                                       pi_ruc => :P459_ruc,',
'                                       pi_nro_fact_prov => :P459_nro_fact_prov);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     raise_application_error(-20000, ''Error al intentar crear la solicitud. '' || sqlerrm );',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'No se ha podido Crear el Registro'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(137265245519554519)
,p_process_success_message=>'Registro Creado Exitosamente. Nro &P459_NRO_SEGUIMIENTO.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(165066901170894616)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACTUALIZAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' declare',
'    verror exception;',
' BEGIN',
'    if :P459_ESTADO NOT in (''FINALIZADO'',''FACTURADO'',''RECHAZADO'') THEN',
'  inv.smpromkt.guarda_actualiza_pedido(pi_cod_empresa => :P_COD_EMPRESA,',
'                                       pi_nro_seguimiento => :P459_NRO_SEGUIMIENTO,',
'                                       pi_cod_cliente => :P459_cod_cliente,',
'                                       pi_fecha_entrega_cli => :P459_fecha_entrega_cli,',
'                                       pi_ciudad => :P459_ciudad,',
'                                       pi_contacto_cliente => :P459_contacto_cliente,',
'                                       pi_estado => :P459_estado,',
'                                       pi_cod_proveedor => null,',
'                                       pi_fecha_entrega_prov => null,',
'                                       pi_observacion => :P459_observacion,',
'                                       pi_correo_contacto => :P459_correo_contacto,',
'                                       pi_telef_contacto => :P459_telef_contacto,',
'                                       pi_monto_presupuesto => :P459_monto_presupuesto,',
'                                       pi_cod_vendedor => :P459_cod_vendedor,',
'                                       pi_cod_sucursal_dist => :P459_cod_sucursal_dist,',
'                                       pi_lugar_entrega => :P459_lugar_entrega,',
'                                       pi_ruc => :P459_ruc,',
'                                       pi_nro_fact_prov => :P459_nro_fact_prov);',
'   ELSE',
'        raise verror;',
'   END IF;',
'EXCEPTION',
'    when verror then ',
'     raise_application_error(-20000, ''ERROR: Al intentar actualizar.''||''</p>La Solicitud se encuentra en un Estado: ''||:P459_ESTADO );',
'    WHEN OTHERS THEN',
'     raise_application_error(-20000, ''Error al intentar actualizar la solicitud. '' || sqlerrm );',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'No se ha podido actualizar correctamente.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(137264855769554519)
,p_process_success_message=>'Registro Actualizado Exitosamente. Nro &P459_NRO_SEGUIMIENTO.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(137266464396554518)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(137265638517554519)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(137248304273554527)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Solicitud Suministros MKT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(165065585131894602)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARGA_DETALLE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P459_NRO_SEGUIMIENTO IS NOT NULL THEN  ',
'  inv.smpromkt.recupera_detalle(:P_COD_EMPRESA,:P459_NRO_SEGUIMIENTO);',
'else',
'',
'        apex_collection.create_or_truncate_collection(p_collection_name => ''SMPROMKT'');',
'        :P459_ESTADO:=''CREADO'';',
'        :P459_USUARIO:=:APP_USER;',
'        :P459_FECHA:=TRUNC(SYSDATE);',
'',
'',
'END IF ;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
