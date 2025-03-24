prompt --application/pages/page_00279
begin
--   Manifest
--     PAGE: 00279
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
 p_id=>279
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'STHISCAN'
,p_alias=>'STHISCAN'
,p_step_title=>unistr('Hist\00F3rico de Canje')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'ERASMOBEN'
,p_last_upd_yyyymmddhh24miss=>'20231018075527'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(203476905998477800)
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
 p_id=>wwv_flow_imp.id(203478084112477812)
,p_plug_name=>unistr('Hist\00F3rico de Canjes')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(203478352771477814)
,p_plug_name=>'Canjes'
,p_parent_plug_id=>wwv_flow_imp.id(203478084112477812)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID,',
'       C.COD_EMPRESA,',
'       C.COD_VENDEDOR,',
'       (SELECT NOMBRE',
'          FROM INV.PERSONAS P,',
'               ST_VENDEDOR_PROMO V',
'         WHERE V.COD_EMPRESA = :P279_COD_EMPRESA',
'           AND V.COD_VENDEDOR = C.COD_VENDEDOR',
'           AND P.COD_PERSONA = V.COD_PERSONA) NOM_VENDEDOR,',
'       C.NRO_CANJE,',
'       C.NRO_VALE,',
'       C.FEC_CANJE,',
'       C.TOTAL',
'',
'  FROM INV.st_historicos_puntos_canjeados C',
' WHERE COD_EMPRESA = :P_COD_EMPRESA',
'   AND (COD_VENDEDOR = :P279_COD_VENDEDOR OR :P279_COD_VENDEDOR IS NULL)',
'   AND (NRO_CANJE = :P279_NRO_CANJE OR :P279_NRO_CANJE IS NULL)',
'   AND (FEC_CANJE = :P279_FECHA_CANJE OR :P279_FECHA_CANJE IS NULL)',
'   AND (COD_DISTRIBUIDOR = :P279_COD_DISTRIBUIDOR OR :P279_COD_DISTRIBUIDOR IS NULL)'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P279_COD_VENDEDOR,P279_NRO_CANJE,P279_FECHA_CANJE,P279_COD_DISTRIBUIDOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Canjes'
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
 p_id=>wwv_flow_imp.id(69494514380710404)
,p_name=>'COD_VENDEDOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_VENDEDOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('C\00F3digo')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(69494672622710405)
,p_name=>'NRO_CANJE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_CANJE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Canje'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(69494944480710408)
,p_name=>'FEC_CANJE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_CANJE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fecha Canje'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
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
 p_id=>wwv_flow_imp.id(69495134166710410)
,p_name=>'NRO_VALE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_VALE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Nro. Vale'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(69495545962710414)
,p_name=>'TOTAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Puntos'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(69495655691710415)
,p_name=>'NOM_VENDEDOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOM_VENDEDOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Vendedor'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(207286125718539491)
,p_name=>'COD_EMPRESA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_EMPRESA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Empresa'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
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
,p_is_primary_key=>true
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':P279_COD_EMPRESA'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(207287773693539508)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(207287899417539509)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(207288851885539518)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(207285995425539490)
,p_internal_uid=>207285995425539490
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No se encontraron datos.'
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
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
 p_id=>wwv_flow_imp.id(207301436796564051)
,p_interactive_grid_id=>wwv_flow_imp.id(207285995425539490)
,p_static_id=>'683463'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(207301607994564051)
,p_report_id=>wwv_flow_imp.id(207301436796564051)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69708545528370329)
,p_view_id=>wwv_flow_imp.id(207301607994564051)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(69494514380710404)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>108.31200000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69709430601370330)
,p_view_id=>wwv_flow_imp.id(207301607994564051)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(69494672622710405)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>115.31200000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69712105963370335)
,p_view_id=>wwv_flow_imp.id(207301607994564051)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(69494944480710408)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134.312
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69713954390370338)
,p_view_id=>wwv_flow_imp.id(207301607994564051)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(69495134166710410)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69782909708515557)
,p_view_id=>wwv_flow_imp.id(207301607994564051)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(69495545962710414)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>176.48399999999998
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69783880555515559)
,p_view_id=>wwv_flow_imp.id(207301607994564051)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(69495655691710415)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(139033711741291291)
,p_view_id=>wwv_flow_imp.id(207301607994564051)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(207288851885539518)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(207302767573564054)
,p_view_id=>wwv_flow_imp.id(207301607994564051)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(207286125718539491)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(207363905623684008)
,p_view_id=>wwv_flow_imp.id(207301607994564051)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(207287773693539508)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>40
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(203480418263477835)
,p_plug_name=>'Detalle'
,p_parent_plug_id=>wwv_flow_imp.id(203478084112477812)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID,',
'       H.COD_EMPRESA,',
'       H.COD_VENDEDOR,',
'       H.NRO_VALE,',
'       H.COD_DISTRIBUIDOR,',
'       (SELECT P.NOMBRE',
'          FROM PERSONAS P,',
'               CC_CLIENTES C,',
'               ST_VENDEDOR_PROMO S ',
'         WHERE C.COD_EMPRESA = :P279_COD_EMPRESA',
'           AND C.COD_CLIENTE = H.COD_DISTRIBUIDOR',
'           AND C.COD_PERSONA = P.COD_PERSONA',
'           AND S.COD_VENDEDOR = H.COD_VENDEDOR',
'           AND S.COD_EMPRESA = C.COD_EMPRESA) DESC_DISTRIBUIDOR,',
'       H.FEC_CIERRE_DESDE,',
'       H.FEC_CIERRE_HASTA',
'  FROM INV.st_historicos_puntos_canjeados H',
' WHERE COD_EMPRESA = :P_COD_EMPRESA',
'   AND (COD_VENDEDOR = :P279_COD_VENDEDOR OR :P279_COD_VENDEDOR IS NULL)',
'   AND (NRO_CANJE = :P279_NRO_CANJE OR :P279_NRO_CANJE IS NULL)',
'   AND (FEC_CANJE = :P279_FECHA_CANJE OR :P279_FECHA_CANJE IS NULL)',
'   AND (COD_DISTRIBUIDOR = :P279_COD_DISTRIBUIDOR OR :P279_COD_DISTRIBUIDOR IS NULL)'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(203478352771477814)
,p_ajax_items_to_submit=>'P279_COD_VENDEDOR,P279_NRO_CANJE,P279_FECHA_CANJE,P279_COD_DISTRIBUIDOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Detalle'
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
 p_id=>wwv_flow_imp.id(69495255401710411)
,p_name=>'COD_DISTRIBUIDOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_DISTRIBUIDOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('C\00F3digo')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_is_required=>false
,p_max_length=>50
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(6326446708295168)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_text=>'- Seleccione -'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(69495345225710412)
,p_name=>'FEC_CIERRE_DESDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_CIERRE_DESDE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Cierre Desde'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
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
 p_id=>wwv_flow_imp.id(69495464751710413)
,p_name=>'FEC_CIERRE_HASTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_CIERRE_HASTA'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Cierre Hasta'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
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
 p_id=>wwv_flow_imp.id(69495785313710416)
,p_name=>'NRO_VALE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_VALE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_parent_column_id=>wwv_flow_imp.id(69495134166710410)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(69496036333710419)
,p_name=>'COD_VENDEDOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_VENDEDOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Vendedor'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
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
 p_id=>wwv_flow_imp.id(69496153594710420)
,p_name=>'DESC_DISTRIBUIDOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESC_DISTRIBUIDOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Distribuidor'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_imp.id(207288159227539511)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(207288189719539512)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(207288376372539514)
,p_name=>'COD_EMPRESA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_EMPRESA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_parent_column_id=>wwv_flow_imp.id(207286125718539491)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(207288868293539519)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(207287184622539502)
,p_internal_uid=>207287184622539502
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No se encontraron datos.'
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
 p_id=>wwv_flow_imp.id(207302125295564052)
,p_interactive_grid_id=>wwv_flow_imp.id(207287184622539502)
,p_static_id=>'683470'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(207302356253564052)
,p_report_id=>wwv_flow_imp.id(207302125295564052)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69771029741441277)
,p_view_id=>wwv_flow_imp.id(207302356253564052)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(69495255401710411)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>148
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69771964743441279)
,p_view_id=>wwv_flow_imp.id(207302356253564052)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(69495345225710412)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>278
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69772851461441280)
,p_view_id=>wwv_flow_imp.id(207302356253564052)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(69495464751710413)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>253
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69790135518531323)
,p_view_id=>wwv_flow_imp.id(207302356253564052)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(69495785313710416)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69808544084600796)
,p_view_id=>wwv_flow_imp.id(207302356253564052)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(69496036333710419)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69809414942600798)
,p_view_id=>wwv_flow_imp.id(207302356253564052)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(69496153594710420)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(207365665768684012)
,p_view_id=>wwv_flow_imp.id(207302356253564052)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(207288159227539511)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(207374963954691639)
,p_view_id=>wwv_flow_imp.id(207302356253564052)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(207288376372539514)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(208008201294829826)
,p_view_id=>wwv_flow_imp.id(207302356253564052)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(207288868293539519)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69672627665254981)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(203478084112477812)
,p_button_name=>'BT_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-top:9px;"'
,p_grid_new_row=>'N'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69672231576254980)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(203478084112477812)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_cattributes=>'style="margin-top:9px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69667933670254977)
,p_name=>'P279_COD_PAIS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(203476905998477800)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69668301535254978)
,p_name=>'P279_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(203476905998477800)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69668772929254979)
,p_name=>'P279_NOM_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(203476905998477800)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69669191662254979)
,p_name=>'P279_COD_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(203476905998477800)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69669595475254979)
,p_name=>'P279_NOM_FORMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(203476905998477800)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69669980010254979)
,p_name=>'P279_COD_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(203476905998477800)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69670385708254979)
,p_name=>'P279_NOM_EMPRESA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(203476905998477800)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69670772218254979)
,p_name=>'P279_COD_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(203476905998477800)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69671189406254980)
,p_name=>'P279_NOM_SUCURSAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(203476905998477800)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69671558386254980)
,p_name=>'P279_COD_USUARIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(203476905998477800)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69673015381254981)
,p_name=>'P279_COD_VENDEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(203478084112477812)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDORES_STHISCAN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.cod_persona||'' - ''||p.nombre D,',
'       p.cod_persona R',
'  from personas P, ',
'       st_vendedor_promo V',
' where V.COD_EMPRESA = :P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione - '
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69673465473254981)
,p_name=>'P279_NRO_CANJE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(203478084112477812)
,p_prompt=>'Nro. Canje'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69673879041254982)
,p_name=>'P279_FECHA_CANJE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(203478084112477812)
,p_prompt=>unistr('Fecha de Recepci\00F3n')
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(69674261620254982)
,p_name=>'P279_COD_DISTRIBUIDOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(203478084112477812)
,p_prompt=>'Distribuidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DISTRIBUIDOR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cliente||'' - ''||ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D, ',
'        c.cod_cliente R',
'  from cc_clientes c, personas p ',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_persona = p.cod_persona',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69690859339254994)
,p_name=>'DA_REFRESH'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69672627665254981)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
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
 p_id=>wwv_flow_imp.id(69691343648254995)
,p_event_id=>wwv_flow_imp.id(69690859339254994)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(203478352771477814)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69691741606254995)
,p_name=>'DA_REFRESH_MASTER'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(203478352771477814)
,p_bind_type=>'bind'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69692294088254995)
,p_event_id=>wwv_flow_imp.id(69691741606254995)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(203478352771477814)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69692757654254995)
,p_event_id=>wwv_flow_imp.id(69691741606254995)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(203480418263477835)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69693161544254995)
,p_name=>'DA_REFRESH_DETALLE'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(203480418263477835)
,p_bind_type=>'bind'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69694155329254996)
,p_event_id=>wwv_flow_imp.id(69693161544254995)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(203478352771477814)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69693622725254996)
,p_event_id=>wwv_flow_imp.id(69693161544254995)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(203480418263477835)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69495804196710417)
,p_name=>'DA_BUSCA_VEND'
,p_event_sequence=>50
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(203478352771477814)
,p_triggering_element=>'COD_VENDEDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69495946348710418)
,p_event_id=>wwv_flow_imp.id(69495804196710417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT NOMBRE',
'      INTO :NOM_VENDEDOR',
'      FROM INV.PERSONAS P,',
'           ST_VENDEDOR_PROMO V',
'     WHERE V.COD_EMPRESA = :P279_COD_EMPRESA',
'       AND V.COD_VENDEDOR = :COD_VENDEDOR',
'       AND P.COD_PERSONA = V.COD_PERSONA;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        :NOM_VENDEDOR := NULL;',
'END;'))
,p_attribute_02=>'P279_COD_EMPRESA,COD_VENDEDOR'
,p_attribute_03=>'NOM_VENDEDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69687842079254992)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(203478352771477814)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Aranceles - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CASE :APEX$ROW_STATUS',
'        WHEN ''C'' THEN',
'            INSERT INTO INV.st_historicos_puntos_canjeados(COD_EMPRESA,',
'                                                           COD_VENDEDOR,',
'                                                           NRO_CANJE,',
'                                                           NRO_VALE,',
'                                                           FEC_CANJE,',
'                                                           TOTAL)',
'                                                    VALUES(:P279_COD_EMPRESA,',
'                                                           :COD_VENDEDOR,',
'                                                           :NRO_CANJE,',
'                                                           :NRO_VALE,',
'                                                           :FEC_CANJE,',
'                                                           :TOTAL)',
'        RETURNING ROWID INTO :ROWID;',
'    WHEN ''U'' THEN',
'        ',
'        UPDATE INV.st_historicos_puntos_canjeados',
'           SET COD_VENDEDOR = :COD_VENDEDOR,',
'               NRO_CANJE = :NRO_CANJE,',
'               NRO_VALE = :NRO_VALE,',
'               FEC_CANJE = :FEC_CANJE,',
'               TOTAL = :TOTAL',
'         WHERE ROWID = :ROWID;',
'    WHEN ''D'' THEN',
'        DELETE INV.st_historicos_puntos_canjeados',
'         WHERE ROWID = :ROWID;',
'    END CASE;',
'END;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(69672231576254980)
,p_process_success_message=>'Los cambios se guardaron correctamente.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69679634549254987)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(203480418263477835)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Detalle - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CASE :APEX$ROW_STATUS',
'    WHEN ''U'' THEN',
'        UPDATE INV.st_historicos_puntos_canjeados',
'           SET COD_DISTRIBUIDOR = :COD_DISTRIBUIDOR,',
'               FEC_CIERRE_DESDE = :FEC_CIERRE_DESDE,',
'               FEC_CIERRE_HASTA = :FEC_CIERRE_HASTA',
'         WHERE ROWID = :ROWID;',
'    END CASE;',
'END;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69688678046254993)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69688224604254992)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE_FORM',
':P_COD_MODULO := ''ST'';',
'--INICIALIZA GLOBALES',
':P279_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
':P279_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
':P279_NOM_EMPRESA := :P_NOM_EMPRESA;',
':P279_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');',
':P279_NOM_SUCURSAL := :P_NOM_SUCURSAL;',
':P279_COD_MODULO := NVL(:P_COD_MODULO,''FV'');',
'--INIICALIZA LOCALES',
'',
'--RUTINA INICIAL',
'LIBRERIA_FORMAS.RUTINA_INICIAL(PI_COD_MODULO => :P279_COD_MODULO,',
'                               PI_COD_FORMA  => :P279_COD_FORMA,',
'                               PI_NOM_MODULO => :P279_NOM_MODULO,',
'                               PI_NOM_FORMA  => :P279_NOM_FORMA,',
'            				   PO_NOM_MODULO => :P279_NOM_MODULO,',
'            				   PO_NOM_FORMA  => :P279_NOM_FORMA);'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
