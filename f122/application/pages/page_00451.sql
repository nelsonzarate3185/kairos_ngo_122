prompt --application/pages/page_00451
begin
--   Manifest
--     PAGE: 00451
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
 p_id=>451
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CPPECOMF'
,p_alias=>'CPPECOMF'
,p_step_title=>'CPPECOMF'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function sumar_grilla(grilla, columna_sumar, elemento_asignar){',
' var total = 0;',
' var columna = apex.region(grilla).widget().interactiveGrid("getViews", ',
'"grid").model.getFieldKey(columna_sumar);',
' var datos = apex.region(grilla).widget().interactiveGrid("getViews", ',
'"grid").model._index;',
' datos.forEach(function(m){',
' if (!m.deleted){',
' var subtotal = parseInt(m.record[columna].replaceAll(''.'', ''''),0);',
' if(!isNaN(subtotal)){',
' total += subtotal;',
' }',
' console.log(total);',
' }',
' });',
'// apex.item(elemento_asignar).setValue(separadorMiles(total));',
'apex.item(elemento_asignar).setValue(total);',
'}',
'',
'',
'function separadorMiles(x) {',
'    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'HSEGOVIA'
,p_last_upd_yyyymmddhh24miss=>'20230330080344'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133050847836155749)
,p_plug_name=>'CPPECOMF'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CP_PEDIDOS_CAB'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133099272198146202)
,p_plug_name=>'izquierda'
,p_parent_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>340
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133099367466146203)
,p_plug_name=>'Derecha'
,p_parent_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>350
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133099780888146207)
,p_plug_name=>'DETALLES'
,p_region_name=>'detalles'
,p_parent_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id,',
'             c001   AS COD_EMPRESA,',
'             c002   AS TIP_PEDIDO,',
'             c003   AS NRO_PEDIDO,',
'             c004   AS ITEM_ORDEN,',
'             c005   AS NRO_PED_REF,',
'             c006   AS COD_ARTICULO,',
'             c007   AS DESC_ARTICULO,',
'             c008   AS CANTIDAD,',
'             c009   AS CANTIDAD_UB,',
'             c010   AS PRECIO_UNITARIO,',
'             c011   AS MONTO_TOTAL,',
'             c012   AS TOTAL,',
'             c013   AS OPCION,',
'             c014   AS ELIMINAR,',
'             c015   AS TOTAL_AUX',
'        FROM apex_collections',
'       WHERE collection_name = ''TMP_PEDIDOS''',
'       AND C013 IN (''C'', ''X'', ''U'');'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DETALLES'
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
 p_id=>wwv_flow_imp.id(133100548825146215)
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
 p_id=>wwv_flow_imp.id(133100687891146216)
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
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'COD_EMPRESA'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133100728842146217)
,p_name=>'TIP_PEDIDO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIP_PEDIDO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tip Pedido'
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
,p_static_id=>'TIP_PEDIDO'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133100820527146218)
,p_name=>'NRO_PEDIDO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_PEDIDO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nro Pedido'
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
,p_static_id=>'NRO_PEDIDO'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133100975048146219)
,p_name=>'ITEM_ORDEN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_ORDEN'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\00CDtem')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'ITEM_ORDEN'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133101009102146220)
,p_name=>'NRO_PED_REF'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_PED_REF'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Pedido'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'NRO_PED_REF'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133101189601146221)
,p_name=>'COD_ARTICULO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_ARTICULO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('Art\00EDculo')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>unistr('Art\00EDculos')
,p_attribute_10=>'DESCRIPCION:DESC_ARTICULO'
,p_is_required=>false
,p_max_length=>4000
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(133228736772611269)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'COD_ARTICULO'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133101229488146222)
,p_name=>'DESC_ARTICULO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESC_ARTICULO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('Descripci\00F3n de Art\00EDculo')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'DESC_ARTICULO'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133101370279146223)
,p_name=>'CANTIDAD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANTIDAD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cantidad'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_item_css_classes=>'allow_only_numbers'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_static_id=>'CANTIDAD'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133101493384146224)
,p_name=>'CANTIDAD_UB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANTIDAD_UB'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cantidad Ub'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
,p_static_id=>'CANTIDAD_UB'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133101595046146225)
,p_name=>'PRECIO_UNITARIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRECIO_UNITARIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Precio'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_item_css_classes=>'allow_only_numbers'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_static_id=>'PRECIO_UNITARIO'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133101637106146226)
,p_name=>'MONTO_TOTAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTO_TOTAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Monto Total'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>140
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_static_id=>'MONTO_TOTAL'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133101794952146227)
,p_name=>'TOTAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Total'
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
,p_static_id=>'TOTAL'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133102241899146232)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133102312706146233)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(133256025623371712)
,p_name=>'OPCION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPCION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Opcion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
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
 p_id=>wwv_flow_imp.id(133257089269371722)
,p_name=>'ELIMINAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ELIMINAR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Eliminar'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
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
 p_id=>wwv_flow_imp.id(133258581204371737)
,p_name=>'TOTAL_AUX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_AUX'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Total Aux'
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
 p_id=>wwv_flow_imp.id(133100492201146214)
,p_internal_uid=>133100492201146214
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
 p_id=>wwv_flow_imp.id(133153366885881049)
,p_interactive_grid_id=>wwv_flow_imp.id(133100492201146214)
,p_static_id=>'1331534'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(133153540720881048)
,p_report_id=>wwv_flow_imp.id(133153366885881049)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133154058249881044)
,p_view_id=>wwv_flow_imp.id(133153540720881048)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(133100548825146215)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133154974241881039)
,p_view_id=>wwv_flow_imp.id(133153540720881048)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(133100687891146216)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133155896003881037)
,p_view_id=>wwv_flow_imp.id(133153540720881048)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(133100728842146217)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133156728557881035)
,p_view_id=>wwv_flow_imp.id(133153540720881048)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(133100820527146218)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133157612514881033)
,p_view_id=>wwv_flow_imp.id(133153540720881048)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(133100975048146219)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133158555026881032)
,p_view_id=>wwv_flow_imp.id(133153540720881048)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(133101009102146220)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133159445336881029)
,p_view_id=>wwv_flow_imp.id(133153540720881048)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(133101189601146221)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133160321930881028)
,p_view_id=>wwv_flow_imp.id(133153540720881048)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(133101229488146222)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>286
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133161227996881026)
,p_view_id=>wwv_flow_imp.id(133153540720881048)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(133101370279146223)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133162144198881024)
,p_view_id=>wwv_flow_imp.id(133153540720881048)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(133101493384146224)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133162921661881022)
,p_view_id=>wwv_flow_imp.id(133153540720881048)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(133101595046146225)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133163829327881020)
,p_view_id=>wwv_flow_imp.id(133153540720881048)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(133101637106146226)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>93
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133164712377881018)
,p_view_id=>wwv_flow_imp.id(133153540720881048)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(133101794952146227)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133176366195720483)
,p_view_id=>wwv_flow_imp.id(133153540720881048)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(133102241899146232)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133307250929068913)
,p_view_id=>wwv_flow_imp.id(133153540720881048)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(133256025623371712)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133505474900856283)
,p_view_id=>wwv_flow_imp.id(133153540720881048)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(133257089269371722)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133647831011244867)
,p_view_id=>wwv_flow_imp.id(133153540720881048)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(133258581204371737)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133074726796155732)
,p_plug_name=>'Botones'
,p_parent_plug_id=>wwv_flow_imp.id(133099780888146207)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133255209006371704)
,p_plug_name=>'Cabecera'
,p_parent_plug_id=>wwv_flow_imp.id(133099780888146207)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134115868467083432)
,p_plug_name=>'Impresiones'
,p_parent_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134116356320083437)
,p_plug_name=>'Enviar Correo'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133255388345371705)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(133255209006371704)
,p_button_name=>'Recepcion'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Recepci\00F3n')
,p_button_redirect_url=>'f?p=&APP_ID.:449:&SESSION.::&DEBUG.::P449_NRO_PEDIDO,P449_TIP_PEDIDO:&P451_NRO_PEDIDO.,&P451_TIP_PEDIDO.'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(134116516483083439)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(134116356320083437)
,p_button_name=>'enviar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enviar E-mail'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(134117073115083444)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(134115868467083432)
,p_button_name=>'REP_INTERNO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rep Interno'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column=>7
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(134116903943083443)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(134115868467083432)
,p_button_name=>'REP_PROVEEDOR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rep Proveedor'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(134115920085083433)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(134115868467083432)
,p_button_name=>'EnviarMail'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enviar mail'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133075127499155732)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133074726796155732)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:450:&SESSION.::&DEBUG.:451::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133076578606155730)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(133074726796155732)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Eliminar'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P451_NRO_PEDIDO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133076909168155730)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(133074726796155732)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Editar'
,p_button_position=>'NEXT'
,p_button_condition=>'P451_NRO_PEDIDO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133077300766155730)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(133074726796155732)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'NEXT'
,p_button_condition=>'P451_NRO_PEDIDO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(133099126135146201)
,p_branch_action=>'f?p=&APP_ID.:450:&SESSION.::&DEBUG.:451::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133051104569155748)
,p_name=>'P451_NRO_PEDIDO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133099272198146202)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_prompt=>unistr('N\00FAmero OC')
,p_source=>'NRO_PEDIDO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133051532327155746)
,p_name=>'P451_TIP_PEDIDO'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_source=>'TIP_PEDIDO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(133051922285155745)
,p_name=>'P451_COD_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_source=>'COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133052636711155744)
,p_name=>'P451_COD_SUCURSAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(133099272198146202)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_item_default=>':P_COD_SUCURSAL'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Cod Sucursal'
,p_source=>'COD_SUCURSAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_sucursal||'' - ''||descripcion  descripcion,  cod_sucursal',
'  FROM sucursales',
' WHERE cod_empresa = ''1''',
' ORDER BY descripcion',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133053017184155743)
,p_name=>'P451_FECHA'
,p_source_data_type=>'DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(133099272198146202)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha'
,p_source=>'FECHA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(133053462306155743)
,p_name=>'P451_COD_PROVEEDOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(133099367466146203)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_prompt=>'Proveedor'
,p_source=>'COD_PROVEEDOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT pr.cod_proveedor||'' - ''|| p.nombre nombre,',
'       pr.cod_proveedor',
'  FROM personas p, cm_proveedores pr',
' WHERE pr.cod_empresa = ''1''',
'   AND pr.cod_persona = p.cod_persona',
' ORDER BY nombre ASC'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133054179056155743)
,p_name=>'P451_REFERENCIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_source=>'REFERENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133054550033155743)
,p_name=>'P451_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133255209006371704)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_prompt=>'Confirmado'
,p_source=>'ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133054907272155742)
,p_name=>'P451_TOTAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(133255209006371704)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_prompt=>'Total'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_source=>'TOTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133055364502155742)
,p_name=>'P451_COMENTARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(133099367466146203)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_prompt=>'Comentario'
,p_source=>'COMENTARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133055798294155742)
,p_name=>'P451_COD_MONEDA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(133099272198146202)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_prompt=>'Cod Moneda'
,p_source=>'COD_MONEDA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_moneda || '' - '' || descripcion descripcion, cod_moneda',
'  FROM monedas',
' ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133056105758155742)
,p_name=>'P451_TIP_CAMBIO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_source=>'TIP_CAMBIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133056570631155741)
,p_name=>'P451_COD_PERSONA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133099367466146203)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_prompt=>'Registrado por'
,p_source=>'COD_PERSONA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133056989451155741)
,p_name=>'P451_FEC_COMPRA'
,p_source_data_type=>'DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_source=>'FEC_COMPRA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133057399883155741)
,p_name=>'P451_COD_USUARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'COD_USUARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133057776976155741)
,p_name=>'P451_COD_USUARIO_CONF'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(133255209006371704)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_prompt=>'Usuario Conf'
,p_source=>'COD_USUARIO_CONF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(133058145328155741)
,p_name=>'P451_FEC_CONFIRMACION'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(133255209006371704)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_prompt=>unistr('Fecha Confirmaci\00F3n')
,p_source=>'FEC_CONFIRMACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(133058512642155741)
,p_name=>'P451_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133058960134155740)
,p_name=>'P451_NRO_REFERENCIA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(133099272198146202)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_prompt=>'Nro Referencia'
,p_source=>'NRO_REFERENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133059321460155740)
,p_name=>'P451_COD_CONDICION_COMPRA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(133099272198146202)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_item_default=>'2'
,p_prompt=>'Cod Condicion Compra'
,p_source=>'COD_CONDICION_COMPRA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_condicion_compra||'' - ''||descripcion  descripcion, cod_condicion_compra',
'  FROM cm_condiciones_compras',
' WHERE estado = ''A''',
'   AND cod_empresa = ''1''',
' ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133059786226155740)
,p_name=>'P451_COD_SECCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_source=>'COD_SECCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133060108431155740)
,p_name=>'P451_COD_USR_INS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(133255209006371704)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_prompt=>unistr('Datos de Inserci\00F3n')
,p_source=>'COD_USR_INS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133060537017155740)
,p_name=>'P451_FEC_HOR_INS'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(133255209006371704)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_source=>'FEC_HOR_INS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(133060955791155740)
,p_name=>'P451_COD_USR_UPD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(133255209006371704)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_prompt=>unistr('Datos de Actualizaci\00F3n')
,p_source=>'COD_USR_UPD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(133061323667155739)
,p_name=>'P451_FEC_HOR_UPD'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(133255209006371704)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_source=>'FEC_HOR_UPD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(133061792210155739)
,p_name=>'P451_NRO_PUBLICACION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(133099272198146202)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_prompt=>unistr('Nro. Publicaci\00F3n')
,p_source=>'NRO_PUBLICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133062477557155739)
,p_name=>'P451_IND_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(133099272198146202)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_prompt=>'Ind Estado'
,p_source=>'IND_ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:PENDIENTE;P,AUTORIZADO;A,RECHAZADO;R'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133062851983155739)
,p_name=>'P451_REL_AUTORIZACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_source=>'REL_AUTORIZACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133063256965155738)
,p_name=>'P451_REL_RECHAZO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(133099272198146202)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_prompt=>'Rel Rechazo'
,p_source=>'REL_RECHAZO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133063673305155738)
,p_name=>'P451_COD_MOTIVO_RECHAZO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_source=>'COD_MOTIVO_RECHAZO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133064328121155738)
,p_name=>'P451_FEC_ENTREGA'
,p_source_data_type=>'DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133255209006371704)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_prompt=>'Fec. entrega'
,p_source=>'FEC_ENTREGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133064785197155738)
,p_name=>'P451_DIREC_ENTREGA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(133255209006371704)
,p_item_source_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_prompt=>'Direc. entrega'
,p_source=>'DIREC_ENTREGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133099401314146204)
,p_name=>'P451_COD_SUCURSAL_EMP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(133099367466146203)
,p_prompt=>'Suc. solicit.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133099536216146205)
,p_name=>'P451_COD_AREA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(133099367466146203)
,p_prompt=>unistr('\00C1rea solicit.')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133099656160146206)
,p_name=>'P451_COD_DEPARTAMENTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(133099367466146203)
,p_prompt=>'Dpto. solicit.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133099850124146208)
,p_name=>'P451_SINPRECIOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(134115868467083432)
,p_prompt=>'Sin precios'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_column=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133100112333146211)
,p_name=>'P451_DESC_SUCURSAL_EMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133099367466146203)
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
 p_id=>wwv_flow_imp.id(133100274820146212)
,p_name=>'P451_DESC_AREA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(133099367466146203)
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
 p_id=>wwv_flow_imp.id(133100389722146213)
,p_name=>'P451_DESC_DEPARTAMENTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(133099367466146203)
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
 p_id=>wwv_flow_imp.id(133103130453146241)
,p_name=>'P451_DECIMALES'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133103220154146242)
,p_name=>'P451_MULT'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133103342233146243)
,p_name=>'P451_DIV'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133103894387146248)
,p_name=>'P451_CARGA_SUCURSAL'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133103961249146249)
,p_name=>'P451_CONFIRMA_ORDEN'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133255933306371711)
,p_name=>'P451_OPERACION'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133257300139371725)
,p_name=>'P451_SECUENCIA'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(133050847836155749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134116208947083436)
,p_name=>'P451_EMAIL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(134116356320083437)
,p_prompt=>'Email prov.'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133099999517146209)
,p_name=>'Validaciones de Referencias'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P451_NRO_REFERENCIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133100071724146210)
,p_event_id=>wwv_flow_imp.id(133099999517146209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.cppecom.pr_validaciones_ref(p_nro_referencia    => :P451_NRO_REFERENCIA,',
'                                p_cod_persona       => :P451_COD_PERSONA,',
'                                p_cod_sucursal_emp  => :P451_COD_SUCURSAL_EMP,',
'                                p_cod_area          => :P451_COD_AREA,',
'                                p_cod_departamento  => :P451_COD_DEPARTAMENTO,',
'                                p_fec_compra        => :P451_FEC_COMPRA,',
'                                p_referencia        => :P451_REFERENCIA,',
'                                p_comentario        => :P451_COMENTARIO,',
'                                p_cod_empresa       => :P_COD_EMPRESA,',
'                                p_tip_pedido        => :P451_TIP_PEDIDO,',
'                                p_nombre            => :P451_NOMBRE,',
'                                p_desc_sucursal_emp => :P451_DESC_SUCURSAL_EMP,',
'                                p_desc_area         => :P451_DESC_AREA,',
'                                p_desc_departamento => :P451_DESC_DEPARTAMENTO,',
'                                p_mensaje_error     => :P0_MENSAJE_VALIDACION);'))
,p_attribute_02=>'P451_NRO_REFERENCIA,P_COD_EMPRESA,P451_TIP_PEDIDO'
,p_attribute_03=>'P451_NRO_REFERENCIA,P451_COD_PERSONA,P451_COD_SUCURSAL_EMP,P451_COD_AREA,P451_COD_DEPARTAMENTO,P451_FEC_COMPRA,P451_REFERENCIA,P451_COMENTARIO,P451_NOMBRE,P451_DESC_SUCURSAL_EMP,P451_DESC_AREA,P451_DESC_DEPARTAMENTO,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133101854084146228)
,p_event_id=>wwv_flow_imp.id(133099999517146209)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.cppecom.pr_carga_detalles(p_nro_referencia => :P451_NRO_REFERENCIA,',
'                              p_cod_empresa    => :P_COD_EMPRESA);'))
,p_attribute_02=>'P451_NRO_REFERENCIA,P_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133101993798146229)
,p_event_id=>wwv_flow_imp.id(133099999517146209)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133099780888146207)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133102008078146230)
,p_name=>'Valida persona'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P451_COD_PERSONA'
,p_condition_element=>'P451_COD_PERSONA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133102155570146231)
,p_event_id=>wwv_flow_imp.id(133102008078146230)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.cppecom.pr_valida_persona(p_cod_persona     => :P451_COD_PERSONA,',
'                            p_cod_empresa       => :P_COD_EMPRESA,',
'                            p_nombre            => :P451_NOMBRE,',
'                            p_cod_sucursal_emp  => :P451_COD_SUCURSAL_EMP,',
'                            p_cod_area          => :P451_COD_AREA,',
'                            p_cod_departamento  => :P451_COD_DEPARTAMENTO,',
'                            p_desc_sucursal_emp => :P451_DESC_SUCURSAL_EMP,',
'                            p_desc_area         => :P451_DESC_AREA,',
'                            p_desc_departamento => :P451_DESC_DEPARTAMENTO,',
'                            p_mensaje_error     => :P0_MENSAJE_VALIDACION);'))
,p_attribute_02=>'P451_COD_PERSONA,P_COD_EMPRESA'
,p_attribute_03=>'P451_NOMBRE,P451_COD_SUCURSAL_EMP,P451_COD_AREA,P451_COD_DEPARTAMENTO,P451_DESC_SUCURSAL_EMP,P451_DESC_AREA,P451_DESC_DEPARTAMENTO,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133102593808146235)
,p_name=>'Valida pedidos'
,p_event_sequence=>30
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(133099780888146207)
,p_triggering_element=>'NRO_PED_REF'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133102671174146236)
,p_event_id=>wwv_flow_imp.id(133102593808146235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :NRO_PED_REF  IS NOT NULL THEN',
'		DECLARE',
'			  DUMMY CHAR(1);',
'		BEGIN',
'				SELECT DISTINCT ''1''',
'			    INTO DUMMY',
'				  from cp_ord_pedidos_cab',
'				 WHERE cod_empresa = :P_COD_EMPRESA',
'				   AND tip_pedido  = ''PED''',
'				   AND nro_pedido  = :NRO_PED_REF',
'				   AND nvl(ESTADO, ''X'') =''A''  ;',
'		EXCEPTION',
'			  WHEN OTHERS THEN',
'						:NRO_PED_REF := null;',
'						:P0_MENSAJE_VALIDACION :=  ''El pedido ingresado no existe o no ha sido aprobado. ''||sqlerrm;',
'		END;',
'END IF;',
''))
,p_attribute_02=>'NRO_PED_REF,P_COD_EMPRESA'
,p_attribute_03=>'NRO_PED_REF,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133102700439146237)
,p_name=>'Valida Articulos'
,p_event_sequence=>40
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(133099780888146207)
,p_triggering_element=>'COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133102889313146238)
,p_event_id=>wwv_flow_imp.id(133102700439146237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.cppecom.pr_valida_articulos(p_cod_articulo  => :COD_ARTICULO,',
'                              p_nro_ped_ref     => :NRO_PED_REF,',
'                              p_cantidad        => :CANTIDAD,',
'                              p_cantidad_ub     => :CANTIDAD_UB,',
'                              p_precio_unitario => :PRECIO_UNITARIO,',
'                              p_monto_total     => :MONTO_TOTAL,',
'                              p_cod_empresa     => :P_COD_EMPRESA,',
'                              p_desc_articulo   => :DESC_ARTICULO,',
'                              p_mensaje_error   => :P0_MENSAJE_VALIDACION);'))
,p_attribute_02=>'COD_ARTICULO,NRO_PED_REF,P_COD_EMPRESA'
,p_attribute_03=>'CANTIDAD,CANTIDAD_UB,PRECIO_UNITARIO,MONTO_TOTAL,DESC_ARTICULO,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133102920696146239)
,p_name=>'Valida Cantidad'
,p_event_sequence=>50
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(133099780888146207)
,p_triggering_element=>'CANTIDAD'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'CANTIDAD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
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
 p_id=>wwv_flow_imp.id(133103042029146240)
,p_event_id=>wwv_flow_imp.id(133102920696146239)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :PRECIO_UNITARIO is not null then',
'	  :MONTO_TOTAL := round(nvl(TO_NUMBER(REPLACE(:CANTIDAD,''.'')), 0) * nvl(TO_NUMBER(REPLACE(:PRECIO_UNITARIO,''.'')), 0), nvl(:P451_DECIMALES, 0));',
'end if;',
':CANTIDAD_UB := TO_NUMBER(REPLACE(:CANTIDAD,''.''));',
''))
,p_attribute_02=>'PRECIO_UNITARIO,CANTIDAD,P451_DECIMALES,P451_MULT,P451_DIV'
,p_attribute_03=>'MONTO_TOTAL,CANTIDAD_UB'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133256843784371720)
,p_event_id=>wwv_flow_imp.id(133102920696146239)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :cantidad is not null then',
'	  :monto_total := round(nvl(TO_NUMBER(REPLACE(:cantidad, ''.'')), 0) * nvl(TO_NUMBER(REPLACE(:precio_unitario, ''.'')), 0), nvl(:P451_DECIMALES, 0));',
'end if;'))
,p_attribute_02=>'CANTIDAD,PRECIO_UNITARIO,P451_DECIMALES'
,p_attribute_03=>'MONTO_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133103404758146244)
,p_name=>'Valida Precio'
,p_event_sequence=>60
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(133099780888146207)
,p_triggering_element=>'PRECIO_UNITARIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133103506759146245)
,p_event_id=>wwv_flow_imp.id(133103404758146244)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :cantidad is not null then',
'	  :monto_total := round(nvl(TO_NUMBER(REPLACE(:cantidad, ''.'')), 0) * nvl(TO_NUMBER(REPLACE(:precio_unitario, ''.'')), 0), nvl(:P451_DECIMALES, 0));',
'end if;'))
,p_attribute_02=>'CANTIDAD,PRECIO_UNITARIO,P451_DECIMALES'
,p_attribute_03=>'MONTO_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133103652382146246)
,p_name=>'Datos Predeterminadas'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133103780551146247)
,p_event_id=>wwv_flow_imp.id(133103652382146246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P451_TIP_PEDIDO := ''PED'';',
'',
':P451_CARGA_SUCURSAL := busca_permiso(:P_COD_EMPRESA,',
'                                       ''CPPECOM'',',
'                                           :APP_USER,',
'                                           ''CARGA SUCURSAL'' );',
'',
':P451_CONFIRMA_ORDEN := busca_permiso(:P_COD_EMPRESA,',
'                                      ''CPPECOM'',',
'                                      :APP_USER,',
'                                       ''CONFIRMA_ORDEN'' );',
'	IF :P451_DECIMALES > 2 THEN',
'		    :P451_DECIMALES := 2;',
'		END IF;'))
,p_attribute_02=>'P_COD_EMPRESA,P451_DECIMALES'
,p_attribute_03=>'P451_TIP_PEDIDO,P451_CARGA_SUCURSAL,P451_CONFIRMA_ORDEN,P451_DECIMALES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133255000511371702)
,p_name=>'Valida moneda'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P451_COD_MONEDA'
,p_condition_element=>'P451_COD_MONEDA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133255116421371703)
,p_event_id=>wwv_flow_imp.id(133255000511371702)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P451_COD_MONEDA is not null then',
'		BEGIN',
'				select decimales',
'			  	into :P451_DECIMALES',
'				  from monedas',
'				 where cod_moneda = :P451_COD_MONEDA;',
'		EXCEPTION',
'			  when no_data_found then ',
'				    :P451_DECIMALES   := NULL;',
unistr('				    raise_application_error(-20001,  ''No se encuentra la moneda. Favor verifique el c\00F3digo ingresado.'');'),
'			  when others then',
'				    :P451_DECIMALES   := NULL;',
'				    raise_application_error(-20001, ''Error al consultar la moneda ingresada. ''||sqlerrm);',
'		END;',
'		',
'		IF :P451_DECIMALES is not null and :P451_DECIMALES > 2 THEN',
'		    :P451_DECIMALES := 2;',
'		END IF;',
'else',
'   :P451_DECIMALES  := NULL;			 ',
'end if;'))
,p_attribute_02=>'P451_COD_MONEDA'
,p_attribute_03=>'P451_DECIMALES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133255547392371707)
,p_name=>unistr('Validaci\00F3n de confirmaci\00F3n')
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P451_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133255633062371708)
,p_event_id=>wwv_flow_imp.id(133255547392371707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if NVL(:P451_ESTADO,''N'')=''S'' THEN',
'	:P451_COD_USUARIO_CONF:=:app_user;',
'	:P451_FEC_CONFIRMACION:=SYSDATE;',
'	',
'	',
'	DECLARE',
'	VDIREC varchar2(400);',
'	Vpedido                varchar2(400);',
'	begin	',
'BEGIN	',
'	select p.direc_electronica',
'	  INTO VDIREC',
'	from personas   P, usuarios c',
'	where c.cod_empresa = :P_COD_EMPRESA',
'	 and c.cod_usuario = :APP_USER',
'	 and P.cod_persona = c.cod_persona',
'	 ',
'	 AND ROWNUM=1;',
'exception',
'	when others then',
'	  vdirec:=''mail@ngosaeca.com.py'';',
'	  end;',
'',
'	',
'BEGIN	',
'	select p.direc_electronica',
'	  INTO vpedido',
'	from  personas p',
'	where P.cod_persona = :P451_COD_PERSONA;',
'exception',
'	when others then ',
'         	       vpedido:=null;',
'         	       end;',
'EnviarCorreo(''mail@ngosaeca.com.py'',',
'           VDIREC,',
'             ''Orden de Compra Aprobada  Nro. ''||:P451_NRO_PEDIDO,',
'              ''Orden de Compra Aprobada  Nro. ''||:P451_NRO_PEDIDO,',
'                ''192.168.15.13''); ',
'	',
'	EnviarCorreo(vdirec,',
'           vpedido,',
'            ''Orden de Compra Aprobada  Nro. ''||:P451_NRO_PEDIDO,',
'              ''Orden de Compra Aprobada  Nro. ''||:P451_NRO_PEDIDO,',
'                ''192.168.15.13''); ',
'                end;',
'	',
'ELSE',
'	:P451_COD_USUARIO_CONF:=NULL;',
'	:P451_FEC_CONFIRMACION:=NULL;',
'END IF;	'))
,p_attribute_02=>'P451_ESTADO,P_COD_EMPRESA,P451_COD_PERSONA,P451_NRO_PEDIDO'
,p_attribute_03=>'P451_COD_USUARIO_CONF,P451_FEC_CONFIRMACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133256362019371715)
,p_name=>'Obtiene datos de pedidos'
,p_event_sequence=>100
,p_condition_element=>'P451_NRO_PEDIDO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133104023402146250)
,p_event_id=>wwv_flow_imp.id(133256362019371715)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P451_COD_PERSONA IS NOT NULL THEN',
'		BEGIN',
'			  select ltrim( rtrim( nvl( pe.nombre, pe.nomb_fantasia ) ) )',
'			    into :P451_NOMBRE',
'			    from personas pe',
'			   where pe.cod_persona = :P451_COD_PERSONA;',
'		EXCEPTION',
'			  when no_data_found then ',
'				    :P451_NOMBRE := NULL;',
'			  when others then',
'				    :P451_NOMBRE := NULL;',
'		END;',
'END IF;',
'',
'',
'',
'if :P451_NRO_REFERENCIA is not null then',
'		begin',
'				select cod_area, ',
'							 cod_departamento, ',
'							 cod_sucursal_emp',
'				  into :P451_COD_AREA,',
'				  		 :P451_COD_DEPARTAMENTO,',
'				  		 :P451_COD_SUCURSAL_EMP ',
'				  from cp_ord_pedidos_cab',
'				 where cod_empresa = :P_COD_EMPRESA',
'				   and nro_pedido  = :P451_NRO_REFERENCIA;',
'		exception',
'			  when others then',
'					    :P451_COD_AREA         := null;',
'				      :P451_COD_DEPARTAMENTO  := null;',
'				      :P451_COD_SUCURSAL_EMP  := null;',
'		end;',
'		',
'		if :P451_COD_SUCURSAL_EMP is not null then',
'				begin',
'			      select descripcion',
'					    into :P451_DESC_SUCURSAL_EMP',
'					    from sucursales',
'					   where cod_empresa  = :P_COD_EMPRESA',
'					     and cod_sucursal = :P451_COD_SUCURSAL_EMP;          ',
'				exception      ',
'				     when others then',
'				         :P451_DESC_SUCURSAL_EMP := '''';',
'				end;',
'    end if;',
'',
'		if :P451_COD_AREA is not null then',
'				begin',
'						select descripcion',
'						  into :P451_DESC_AREA',
'						  from rh_areas',
'						 where cod_empresa = :P_COD_EMPRESA',
'						   and cod_sucursal= :P451_COD_SUCURSAL_EMP ',
'						   and cod_area    = :P451_COD_AREA;              ',
'				exception      ',
'						when others then',
'						    :P451_DESC_AREA:= '''';',
'				end;',
'		END IF;',
'',
'		IF :P451_COD_DEPARTAMENTO is not null then',
'				begin',
'						select descripcion',
'						  into :P451_DESC_DEPARTAMENTO',
'						  from rh_departamentos',
'						 where cod_empresa  = :P_COD_EMPRESA',
'						   and cod_sucursal = :P451_COD_SUCURSAL_EMP',
'						   and cod_departamento = :P451_COD_DEPARTAMENTO;           ',
'				exception      ',
'						when others then',
'						    :P451_DESC_DEPARTAMENTO := '''';',
'				end;',
'		END IF;',
'END IF;'))
,p_attribute_02=>'P451_COD_PERSONA,P451_NRO_REFERENCIA,P_COD_EMPRESA'
,p_attribute_03=>'P451_NOMBRE,P451_COD_AREA,P451_COD_DEPARTAMENTO,P451_COD_SUCURSAL_EMP,P451_DESC_SUCURSAL_EMP,P451_DESC_AREA,P451_DESC_DEPARTAMENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133254926914371701)
,p_event_id=>wwv_flow_imp.id(133256362019371715)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P451_NRO_PUBLICACION is not null then',
'		declare',
'				vnro_pedido number(8);			',
'		begin',
'				begin',
'				    select nro_pedido',
'				      into vnro_pedido',
'				      from cp_ped_publico',
'				     where cod_empresa     = :P_COD_EMPRESA',
'				       and nro_publicacion = :P451_NRO_PUBLICACION;',
'				exception',
'				    when others then',
'				        vnro_pedido := null;',
'				end;',
'				',
'				if vnro_pedido is not null then',
'					  begin',
'								select cod_area, ',
'											 cod_departamento, ',
'											 cod_sucursal_emp',
'								  into :P451_COD_AREA, ',
'								  		 :P451_COD_DEPARTAMENTO, ',
'								  		 :P451_COD_SUCURSAL_EMP ',
'								  from cp_ord_pedidos_cab',
'								 where cod_empresa = :P_COD_EMPRESA',
'								   and nro_pedido  = vnro_pedido;',
'						exception',
'							  when others then',
'									    :P451_COD_AREA          := null;',
'								      :P451_COD_DEPARTAMENTO  := null;',
'								      :P451_COD_SUCURSAL_EMP  := null;',
'						end;',
'						',
'						if :P451_COD_SUCURSAL_EMP is not null then',
'								begin',
'							      select descripcion',
'									    into :P451_DESC_SUCURSAL_EMP',
'									    from sucursales',
'									   where cod_empresa  = :P_COD_EMPRESA',
'									     and cod_sucursal = :P451_COD_SUCURSAL_EMP;          ',
'								exception      ',
'								     when others then',
'								         :P451_DESC_SUCURSAL_EMP  := '''';',
'								end;',
'				    end if;',
'				',
'						if :P451_COD_AREA is not null then',
'								begin',
'										select descripcion',
'										  into :P451_DESC_AREA',
'										  from rh_areas',
'										 where cod_empresa = :P_COD_EMPRESA',
'										   and cod_sucursal= :P451_COD_SUCURSAL_EMP',
'										   and cod_area    = :P451_COD_AREA;              ',
'								exception      ',
'										when others then',
'										    :P451_DESC_AREA  := '''';',
'								end;',
'						END IF;',
'				',
'						IF :P451_COD_DEPARTAMENTO is not null then',
'								begin',
'										select descripcion',
'										  into :P451_DESC_DEPARTAMENTO',
'										  from rh_departamentos',
'										 where cod_empresa  = :P_COD_EMPRESA',
'										   and cod_sucursal = :P451_COD_SUCURSAL_EMP',
'										   and cod_departamento = :P451_COD_DEPARTAMENTO;           ',
'								exception      ',
'										when others then',
'										    :P451_DESC_DEPARTAMENTO  := '''';',
'								end;',
'						END IF;',
'				end if;',
'		end;',
'end if;'))
,p_attribute_02=>'P451_NRO_PUBLICACION,P_COD_EMPRESA'
,p_attribute_03=>'P451_COD_AREA,P451_COD_DEPARTAMENTO,P451_COD_SUCURSAL_EMP,P451_DESC_SUCURSAL_EMP,P451_DESC_AREA,P451_DESC_DEPARTAMENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133256489610371716)
,p_event_id=>wwv_flow_imp.id(133256362019371715)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.cppecom.pr_obtiene_detalles(p_nro_pedido  => :P451_NRO_PEDIDO,',
'                                p_tip_pedido  => :P451_TIP_PEDIDO,',
'                                p_cod_empresa => :P_COD_EMPRESA,',
'                                p_total       => :P451_TOTAL);'))
,p_attribute_02=>'P451_NRO_PEDIDO,P451_TIP_PEDIDO,P_COD_EMPRESA'
,p_attribute_03=>'P451_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133256525707371717)
,p_event_id=>wwv_flow_imp.id(133256362019371715)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133099780888146207)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133257158226371723)
,p_name=>'Elimina detalles'
,p_event_sequence=>110
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-irrow'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133257263086371724)
,p_event_id=>wwv_flow_imp.id(133257158226371723)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P451_SECUENCIA'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id_1'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133257432647371726)
,p_event_id=>wwv_flow_imp.id(133257158226371723)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.update_member_attribute(p_collection_name=> ',
'                        ''TMP_PEDIDOS'',',
'                         p_seq => :P451_SECUENCIA,',
'                         p_attr_number => ''13'',',
'                         p_attr_value=>''D'');'))
,p_attribute_02=>'P451_SECUENCIA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133257528959371727)
,p_event_id=>wwv_flow_imp.id(133257158226371723)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133099780888146207)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133257680280371728)
,p_event_id=>wwv_flow_imp.id(133257158226371723)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'      SELECT SUM(to_number(REPLACE(c011, ''.''))) AS monto_total',
'        INTO :P451_TOTAL',
'        FROM apex_collections',
'       WHERE collection_name = ''TMP_PEDIDOS''',
'       AND C013  <> ''D'';',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        :P451_TOTAL := 0;',
'    END;'))
,p_attribute_03=>'P451_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133258340051371735)
,p_name=>'Nuevo'
,p_event_sequence=>120
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(133099780888146207)
,p_triggering_element=>'MONTO_TOTAL'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'MONTO_TOTAL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133258487237371736)
,p_event_id=>wwv_flow_imp.id(133258340051371735)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'TOTAL_AUX'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':MONTO_TOTAL'
,p_attribute_07=>'MONTO_TOTAL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133258624903371738)
,p_name=>'Nuevo_1'
,p_event_sequence=>130
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(133099780888146207)
,p_triggering_element=>'TOTAL_AUX'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'MONTO_TOTAL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133258702811371739)
,p_event_id=>wwv_flow_imp.id(133258624903371738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'sumar_grilla("detalles","MONTO_TOTAL","P451_TOTAL");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134116074974083434)
,p_name=>'Enviar correo'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(134115920085083433)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134116185598083435)
,p_event_id=>wwv_flow_imp.id(134116074974083434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P451_EMAIL := NULL;',
'BEGIN',
'	  SELECT PE.DIREC_ELECTRONICA',
'	    INTO :P451_EMAIL',
'	    FROM CM_PROVEEDORES P,',
'	    		 PERSONAS PE',
'	   WHERE P.COD_EMPRESA   = :P_COD_EMPRESA',
'	     AND P.COD_PROVEEDOR = :P451_COD_PROVEEDOR',
'	     AND P.COD_PERSONA   = PE.COD_PERSONA;',
'EXCEPTION',
'	  WHEN OTHERS THEN',
'	      :P451_EMAIL := NULL;',
'END;',
''))
,p_attribute_02=>'P451_EMAIL,P_COD_EMPRESA,P451_COD_PROVEEDOR'
,p_attribute_03=>'P451_EMAIL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134116618253083440)
,p_event_id=>wwv_flow_imp.id(134116074974083434)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134116356320083437)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134116786215083441)
,p_name=>'Envia Correo'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(134116516483083439)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134814714175775541)
,p_event_id=>wwv_flow_imp.id(134116786215083441)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_link VARCHAR2(4000);',
'    v_cod number;',
'    v_host VARCHAR2(4000);',
'        v_request  SYS.utl_http.req;',
'    v_response SYS.utl_http.resp;',
'    v_download RAW(32767);',
'    v_file     BLOB := NULL;',
'    v_mimetype VARCHAR2(50) := ''application/pdf'';',
'    v_charset  VARCHAR2(50) := ''UTF-8'';',
'    t_timeout integer;',
'',
'BEGIN',
'    ',
'    BEGIN',
'',
'    v_host := bs_busca_parametro(''BS'', ''HOST_CORREO'');',
'    v_link := :REPORT_BASE_URL||''CPORDCOM&standAlone=true&j_username=''||:REPORT_USER||''&j_password=''||:REPORT_PASS||''&output=''||:REPORT_FORMAT||',
'                                                                ''&p_cod_empresa='' ||',
'                                                                :P_COD_EMPRESA ||',
'                                                                ''&p_cod_orden='' ||',
'                                                                ''6982'';',
'  /* inv.cppecom.pr_imprimir_mail(p_link     => v_link,',
'                                 p_cod_resp => v_cod);*/',
'',
'',
'',
'',
'    END; ',
'',
'',
'    utl_http.set_persistent_conn_support(true);',
'    utl_http.set_transfer_timeout(5000);',
'    ---utl_http.get_transfer_timeout(t_timeout);',
'    UTL_HTTP.SET_WALLET(''file:/home/oracle/data/cert'');',
'    v_request := SYS.utl_http.begin_request(v_link);',
'    SYS.utl_http.set_header(v_request,',
'                            ''User-Agent'',',
'                            ''Mozilla/5.0 (Windows NT x.y; Win64; x64; rv:10.0) Gecko/20100101 Firefox/10.0'');',
'    v_response := SYS.utl_http.get_response(v_request);',
'    dbms_lob.createtemporary(v_file, TRUE, dbms_lob.SESSION);',
'    LOOP',
'      BEGIN',
'        SYS.utl_http.read_raw(v_response, v_download);',
'        dbms_lob.writeappend(v_file,',
'                             utl_raw.LENGTH(v_download),',
'                             v_download);',
'      ',
'   --     p_file := v_file;',
'',
'        apex_collection.create_or_truncate_collection(p_collection_name => ''TMP_MAIL_APEX'');',
'        apex_collection.add_member(p_collection_name => ''TMP_MAIL_APEX'',',
'                               p_c007            => v_link,',
'                               p_blob001         => v_file);',
'      ',
'      EXCEPTION',
'        WHEN SYS.utl_http.end_of_body THEN',
'          EXIT;',
'        WHEN OTHERS THEN',
'          RAISE_APPLICATION_ERROR(-20001,',
'                                  ''Error al obtener el reporte del servidor: ''||',
'                                  SQLERRM);',
'      END;',
'    END LOOP;',
'    SYS.utl_http.end_response(v_response);',
'    COMMIT;',
'    ',
' ',
'END;'))
,p_attribute_02=>'P451_NRO_PEDIDO,P_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134117149666083445)
,p_name=>'Imprimir reportes'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(134117073115083444)
,p_condition_element=>'P451_NRO_PEDIDO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134117221934083446)
,p_event_id=>wwv_flow_imp.id(134117149666083445)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var params = []',
'var comprobante = document.getElementById("P451_NRO_PEDIDO").value; ',
'var empresa = apex.item("P_COD_EMPRESA").getValue();',
'var usuario = ''&APP_USER.'';',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})',
'params.push({ name: ''P_NRO_COMPROBANTE'', value: comprobante}) ',
'params.push({ name: ''P_USUARIO'', value: usuario})  ',
'createReportUrl(''CPPEDIDO'', params)',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134117390677083447)
,p_name=>'Imprimir reporte'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(134116903943083443)
,p_condition_element=>'P451_NRO_PEDIDO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134117499759083448)
,p_event_id=>wwv_flow_imp.id(134117390677083447)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var params = []',
'var comprobante = document.getElementById("P451_NRO_PEDIDO").value; ',
'var empresa = apex.item("P_COD_EMPRESA").getValue();',
'var usuario = ''&APP_USER.'';',
'params.push({ name: ''p_cod_empresa'', value: empresa})',
'params.push({ name: ''p_cod_orden'', value: comprobante}) ',
'createReportUrl(''CPORDCOM'', params)',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133256296422371714)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(133099780888146207)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Guarda Colecci\00F3n')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    ',
'BEGIN ',
'    CASE :APEX$ROW_STATUS ',
'        WHEN ''C'' THEN ',
'        IF :cod_art_corto IS NOT NULL THEN   ',
'            apex_collection.add_member(p_collection_name => ''TMP_PEDIDOS'',',
'                                       p_c001            => :COD_EMPRESA,',
'                                       p_c002            => :TIP_PEDIDO,',
'                                       p_c003            => :NRO_PEDIDO,',
'                                       p_c004            => :ITEM_ORDEN,',
'                                       p_c005            => :NRO_PED_REF,',
'                                       p_c006            => :COD_ARTICULO,',
'                                       p_c007            => :DESC_ARTICULO,',
'                                       p_c008            => :CANTIDAD,',
'                                       p_N001            => :CANTIDAD_UB,',
'                                       p_c010            => :PRECIO_UNITARIO,',
'                                       p_c011            => :MONTO_TOTAL,',
'                                       p_c012            => :TOTAL,',
'                                       p_c013            => ''C'');',
'            END IF;',
'        WHEN ''U'' THEN ',
'                apex_collection.update_member(p_collection_name => ''TMP_PEDIDOS'',',
'                                       p_seq             => :SEQ_ID,',
'                                       p_c001            => :P451_COD_EMPRESA,',
'                                       p_c002            => :P451_TIP_PEDIDO,',
'                                       p_c003            => :P451_NRO_PEDIDO,',
'                                       p_c004            => :ITEM_ORDEN,',
'                                       p_c005            => :NRO_PED_REF,',
'                                       p_c006            => :COD_ARTICULO,',
'                                       p_c007            => :DESC_ARTICULO,',
'                                       p_c008            => :CANTIDAD,',
'                                       p_N001            => :CANTIDAD_UB,',
'                                       p_c010            => :PRECIO_UNITARIO,',
'                                       p_c011            => :MONTO_TOTAL,',
'                                       p_c012            => :TOTAL,',
'                                       p_c013            => ''U'');',
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
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133256952897371721)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Validaciones'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_contador NUMBER := 0;',
'BEGIN ',
'    BEGIN ',
'        SELECT COUNT(*)',
'                INTO v_contador',
'                FROM apex_collections',
'               WHERE collection_name = ''TMP_PEDIDOS''',
'               AND c013 NOT IN (''D'');',
'    EXCEPTION ',
'        WHEN NO_DATA_FOUND  THEN ',
'            v_contador := 0;',
'        WHEN OTHERS THEN ',
'            v_contador := 0;',
'    END;',
'    IF v_contador = 0 THEN ',
'        RAISE_APPLICATION_ERROR(-20001, ''No se puede insertar Orden sin detalles'');',
'    END IF;',
'END;',
'',
'DECLARE ',
'    CURSOR cur_detalles  IS ',
'        SELECT c011  MONTO_TOTAL',
'                FROM apex_collections',
'               WHERE collection_name = ''TMP_PEDIDOS''',
'               AND c013 NOT IN (''D'');',
'BEGIN ',
'    FOR a IN cur_detalles LOOP',
'        IF a.MONTO_TOTAL IS NULL OR A.MONTO_TOTAL = ''0'' THEN ',
'            RAISE_APPLICATION_ERROR(-20001, ''El monto total de la OC no puede ser cero(0). Ingrese los datos de cantidad y precio unitario.'');',
'        END IF;',
'    END  LOOP;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133255783963371709)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P451_COD_EMPRESA := :P_COD_EMPRESA;',
'',
'if :P451_COD_MONEDA is null then',
unistr('	  RAISE_APPLICATION_ERROR(-20001, ''El c\00F3digo de moneda se encuentra nulo. Debe ingresar el dato. '');'),
'end if;',
'',
'if :P451_COD_CONDICION_COMPRA is null then',
unistr('	  RAISE_APPLICATION_ERROR(-20001, ''El c\00F3digo de condici\00F3n de compra se encuentra nulo. Debe ingresar el dato. '');'),
'end if;',
'',
'if :P451_NRO_REFERENCIA is null then',
unistr('	  RAISE_APPLICATION_ERROR(-20001, ''El n\00FAmero de pedido de compra se encuentra nulo. Debe ingresar el dato. '');'),
'end if;',
'',
'if :P451_COD_PERSONA is null then',
unistr('	  RAISE_APPLICATION_ERROR(-20001, ''El c\00F3digo de solicitante se encuentra nulo. Debe ingresar el dato. '');'),
'end if;',
'',
'if :P451_COD_PROVEEDOR is null then',
unistr('	RAISE_APPLICATION_ERROR(-20001, ''El c\00F3digo de proveedor se encuentra nulo. Debe ingresar el dato. '');'),
'end if;',
'',
'BEGIN',
'		select nvl( max( nro_pedido ), 0 ) + 1',
'		  into :P451_NRO_PEDIDO',
'		  from cp_pedidos_cab',
'		 where cod_empresa  = :P_COD_EMPRESA',
'		   and tip_pedido   = :P451_TIP_PEDIDO;',
'',
'',
'           :P0_MENSAJE  := ''Se ha generado la orden Nro. ''||:P451_NRO_PEDIDO;',
'EXCEPTION',
'    when others then',
'        :P451_NRO_PEDIDO := 1;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(133077300766155730)
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
 p_id=>wwv_flow_imp.id(133256677619371718)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE_UPDATE'
,p_process_sql_clob=>':P0_MENSAJE := ''Se ha actualizado la Orden Nro. ''||:P451_NRO_PEDIDO;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(133076909168155730)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133255871178371710)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE_DELETE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   DELETE FROM CP_PEDIDOS_DET C',
'   WHERE C.COD_EMPRESA = :P_COD_EMPRESA and C.TIP_PEDIDO = :P451_TIP_PEDIDO and C.NRO_PEDIDO = :P451_NRO_PEDIDO;',
'',
'    :P0_MENSAJE  := ''Se ha eliminado la order Nro. ''||:P451_NRO_PEDIDO;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(133076578606155730)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133078162067155729)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(133050847836155749)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Procesar pantalla CPPECOMF'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'&P0_MENSAJE.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133256172075371713)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Guarda detalles'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.cppecom.pr_guarda_detalles(p_operacion     =>  :P451_OPERACION,',
'                               p_cod_empresa   =>  :P_COD_EMPRESA,',
'                               p_tip_pedido    => :P451_TIP_PEDIDO,',
'                               p_nro_pedido    => :P451_NRO_PEDIDO,',
'                               p_cod_proveedor => :P451_COD_PROVEEDOR,',
'                               p_mensaje_error =>  :P0_ERROR);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'&P0_MENSAJE.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133077772316155730)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(133050847836155749)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Inicializar pantalla CPPECOMF'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133258205798371734)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Crea coleccion'
,p_process_sql_clob=>'apex_collection.create_or_truncate_collection(p_collection_name => ''TMP_PEDIDOS'');'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
