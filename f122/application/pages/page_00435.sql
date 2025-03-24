prompt --application/pages/page_00435
begin
--   Manifest
--     PAGE: 00435
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
 p_id=>435
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('REMIRCA - Migraci\00F3n de Repuestos a Catalogo')
,p_alias=>unistr('REMIRCA-MIGRACI\00D3N-DE-REPUESTOS-A-CATALOGO')
,p_step_title=>unistr('REMIRCA - Migraci\00F3n de Repuestos a Catalogo')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var spinner;'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Cards-item .t-Card-wrap {',
'    list-style: none;',
'    padding: 0;',
'   ',
'    overflow: hidden;',
'    flex-wrap: wrap;',
'    border-radius: 10px;',
'',
'    box-shadow:  0px 3px 3px #003a8586; ',
'}',
' ',
'',
'',
'',
'',
'#DATOS,#filtro,#AVANCES,#REP{',
'border-radius: 10px;',
'}',
'#DATOS,#AVANCES,#REP{',
'    box-shadow:  1px 3px 3px #003a8574; ',
'}',
'',
'#DATOS  > .t-Region-header {',
'    background-color: #003a85 !important;',
'    color: yellow !important;',
'    border-radius: 10px;',
'    border-color: #003a8586;',
'',
'}',
'#AVANCES  > .t-Region-header {',
'    background-color: #003a85 !important;',
'    color: yellow !important;',
'    border-radius: 10px;',
'    border-color: #003a8586;',
'',
'}',
'#REP  > .t-Region-header {',
'    background-color: #003a85 !important;',
'    color: yellow !important;',
'    border-radius: 10px;',
'    border-color: #003a8586;',
'',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'24'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20230622105557'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(123959840987528332)
,p_name=>'Repuestos'
,p_region_name=>'REP'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--4cols:t-Cards--iconsRounded:t-Cards--animColorFill'
,p_new_grid_row=>false
,p_grid_column_span=>10
,p_display_column=>3
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' /*SELECT   NULL CARD_INITIALS,',
'         S.COD_ARTICULO CARD_TITLE,',
'         S.DESCRIPCION CARD_SUBTEXT,',
'         S.COD_ARTICULO CARD_TEXT,',
'         APEX_PAGE.GET_URL (p_application => 122,',
'            p_page   => 384,',
'            p_items  => ''P384_COD_ARTICULO'',',
'            p_values => S.COD_ARTICULO )CARD_LINK-- "URL",',
'  FROM ST_ARTICULOS S',
' WHERE S.COD_RUBRO = ''RE''',
'   AND S.COD_EMPRESA = :P_COD_EMPRESA',
'   AND S.COD_ARTICULO NOT IN (SELECT DISTINCT R.COD_ARTICULO',
'    FROM RE_CATALOGO_REPUESTO R ',
'   WHERE R.COD_EMPRESA = :P_COD_EMPRESA);*/',
'SELECT C001 CARD_TITLE,',
'       null CARD_SUBTEXT,',
'       C003 CARD_TEXT,',
'       C004 CARD_LINK',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''V_REPUESTOS'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40141194770263665)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'SEARCH_ENGINE'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123960027241528334)
,p_query_column_id=>1
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>20
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123960104216528335)
,p_query_column_id=>2
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>30
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123960278276528336)
,p_query_column_id=>3
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>40
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123960397771528337)
,p_query_column_id=>4
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>50
,p_column_heading=>'Card Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(123961160799528345)
,p_plug_name=>'filtro'
,p_region_name=>'filtro'
,p_parent_plug_id=>wwv_flow_imp.id(123959840987528332)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(123959840987528332)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'N'
,p_attribute_03=>'10000'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(123960408507528338)
,p_plug_name=>'Avances'
,p_region_name=>'AVANCES'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(123960579059528339)
,p_region_id=>wwv_flow_imp.id(123960408507528338)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(123960605947528340)
,p_chart_id=>wwv_flow_imp.id(123960579059528339)
,p_seq=>10
,p_name=>'Respuesto'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*)CANT,',
'        ''1 - REPUESTOS'' ETIQUETA',
'FROM ST_ARTICULOS S',
'WHERE S.COD_RUBRO = ''RE''',
'AND S.ESTADO = ''A''',
'AND S.COD_EMPRESA = :P_COD_EMPRESA'))
,p_items_value_column_name=>'CANT'
,p_items_label_column_name=>'ETIQUETA'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(123960934313528343)
,p_chart_id=>wwv_flow_imp.id(123960579059528339)
,p_seq=>20
,p_name=>'Catalogado'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) CANT,',
'       ''2 - CATALOGADOS'' ETIQUETA',
'    FROM RE_CATALOGO_REPUESTO R ',
'   WHERE R.COD_EMPRESA = :P_COD_EMPRESA'))
,p_items_value_column_name=>'CANT'
,p_items_label_column_name=>'ETIQUETA'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(123961023714528344)
,p_chart_id=>wwv_flow_imp.id(123960579059528339)
,p_seq=>30
,p_name=>'Repuestos Restantes'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*)CANT,',
'        ''3 - REPUESTOS RESTANTES'' ETIQUETA',
'FROM ST_ARTICULOS S',
'WHERE S.COD_RUBRO = ''RE''',
'AND S.ESTADO = ''A''',
'AND S.COD_EMPRESA = :P_COD_EMPRESA',
'AND S.COD_ARTICULO NOT IN (SELECT DISTINCT R.COD_ARTICULO',
'    						FROM RE_CATALOGO_REPUESTO R ',
'   							WHERE R.COD_EMPRESA = :P_COD_EMPRESA)'))
,p_items_value_column_name=>'CANT'
,p_items_label_column_name=>'ETIQUETA'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(123960728711528341)
,p_chart_id=>wwv_flow_imp.id(123960579059528339)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(123960832911528342)
,p_chart_id=>wwv_flow_imp.id(123960579059528339)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(129097743048845207)
,p_chart_id=>wwv_flow_imp.id(123960579059528339)
,p_axis=>'y2'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129097210439845202)
,p_plug_name=>'Datos'
,p_region_name=>'DATOS'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(129097946743845209)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(129097210439845202)
,p_button_name=>'CANCELAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:435:&SESSION.::&DEBUG.:RP,435::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(129097856053845208)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(129097210439845202)
,p_button_name=>'EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123961264641528346)
,p_name=>'P435_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(123961160799528345)
,p_prompt=>'Buscar'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'ROW'
,p_attribute_04=>'N'
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129097323947845203)
,p_name=>'P435_COD_LINEA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(129097210439845202)
,p_prompt=>'Linea'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT S.COD_LINEA||'' - ''||L.DESCRIPCION D,',
'       S.COD_LINEA R ',
'  FROM ST_ARTICULOS S,',
'       ST_LINEA L',
' WHERE S.COD_RUBRO = ''RE''',
'   AND S.COD_EMPRESA = :P_COD_EMPRESA',
'   AND S.ESTADO = ''A''',
'   AND S.COD_LINEA = L.COD_LINEA',
'   AND S.COD_ARTICULO NOT IN (SELECT DISTINCT R.COD_ARTICULO',
'                                FROM RE_CATALOGO_REPUESTO R ',
'                               WHERE R.COD_EMPRESA = :P_COD_EMPRESA)',
' ORDER BY D'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccionar Linea'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129097419054845204)
,p_name=>'P435_COD_MARCA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(129097210439845202)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT S.COD_MARCA||'' - ''||L.DESCRIPCION D,',
'       S.COD_MARCA R ',
'  FROM ST_ARTICULOS S,',
'       ST_MARCAS L',
' WHERE S.COD_RUBRO = ''RE''',
'   AND S.COD_EMPRESA = :P_COD_EMPRESA',
'   AND S.ESTADO = ''A''',
'   AND S.COD_MARCA = L.COD_MARCA',
'   AND S.COD_ARTICULO NOT IN (SELECT DISTINCT R.COD_ARTICULO',
'    FROM RE_CATALOGO_REPUESTO R ',
'   WHERE R.COD_EMPRESA = :P_COD_EMPRESA)',
' ORDER BY D'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccionar Marca'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129097526209845205)
,p_name=>'P435_COD_FAMILIA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(129097210439845202)
,p_prompt=>'Familia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT S.COD_FAMILIA||'' - ''||L.DESCRIPCION D,',
'       S.COD_FAMILIA R ',
'  FROM ST_ARTICULOS S,',
'       ST_FAMILIA L',
' WHERE S.COD_RUBRO = ''RE''',
'   AND S.COD_EMPRESA = :P_COD_EMPRESA',
'   AND S.ESTADO = ''A''',
'   AND S.COD_FAMILIA = L.COD_FAMILIA',
'   AND S.COD_ARTICULO NOT IN (SELECT DISTINCT R.COD_ARTICULO',
'    FROM RE_CATALOGO_REPUESTO R ',
'   WHERE R.COD_EMPRESA = :P_COD_EMPRESA)',
' ORDER BY D'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccionar Familia'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129097620781845206)
,p_name=>'P435_COD_CATEGORIA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(129097210439845202)
,p_prompt=>'Categoria'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT S.COD_CATEGORIA||'' - ''||L.DESCRIPCION D,',
'       S.COD_CATEGORIA R ',
'  FROM ST_ARTICULOS S,',
'       ST_CATEGORIAS L',
' WHERE S.COD_RUBRO = ''RE''',
'   AND S.COD_EMPRESA = :P_COD_EMPRESA',
'   AND S.ESTADO = ''A''',
'   AND S.COD_CATEGORIA = L.COD_CATEGORIA',
'   AND S.COD_ARTICULO NOT IN (SELECT DISTINCT R.COD_ARTICULO',
'    FROM RE_CATALOGO_REPUESTO R ',
'   WHERE R.COD_EMPRESA = :P_COD_EMPRESA)',
' ORDER BY D'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccionar Categoria'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129098545413845215)
,p_name=>'P435_MENSAJE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(129097210439845202)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(123961482806528348)
,p_name=>'Cerrar Recuadro de Dialogo'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(123959840987528332)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123961511347528349)
,p_event_id=>wwv_flow_imp.id(123961482806528348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'REMIRCA.PROCBD_CARGA_COL(:P_COD_EMPRESA,',
'                         :P435_COD_MARCA,',
'                         :P435_COD_FAMILIA,',
'                         :P435_COD_LINEA,',
'                         :P435_COD_CATEGORIA,',
'                         :P435_MENSAJE);'))
,p_attribute_02=>'P_COD_EMPRESA,P435_COD_LINEA,P435_COD_MARCA,P435_COD_FAMILIA,P435_COD_CATEGORIA'
,p_attribute_03=>'P435_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(123961614536528350)
,p_event_id=>wwv_flow_imp.id(123961482806528348)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(123959840987528332)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129097114054845201)
,p_event_id=>wwv_flow_imp.id(123961482806528348)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(123960408507528338)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(129098091979845210)
,p_name=>'Clic_Ejecutar'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(129097856053845208)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129098328206845213)
,p_event_id=>wwv_flow_imp.id(129098091979845210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'spinner = apex.util.showSpinner("#REP");'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129098145674845211)
,p_event_id=>wwv_flow_imp.id(129098091979845210)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'REMIRCA.PROCBD_CARGA_COL(:P_COD_EMPRESA,',
'                         :P435_COD_MARCA,',
'                         :P435_COD_FAMILIA,',
'                         :P435_COD_LINEA,',
'                         :P435_COD_CATEGORIA,',
'                         :P435_MENSAJE);'))
,p_attribute_02=>'P435_COD_MARCA,P435_COD_FAMILIA,P435_COD_LINEA,P435_COD_CATEGORIA,P_COD_EMPRESA'
,p_attribute_03=>'P435_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129098455871845214)
,p_event_id=>wwv_flow_imp.id(129098091979845210)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'spinner.remove();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129098619229845216)
,p_event_id=>wwv_flow_imp.id(129098091979845210)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P435_MENSAJE != ''S'' THEN ',
'RAISE_APPLICATION_ERROR(-20001,replace(:P435_MENSAJE,''ORA-20001:''));',
'END IF;'))
,p_attribute_02=>'P435_MENSAJE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129098247408845212)
,p_event_id=>wwv_flow_imp.id(129098091979845210)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(123959840987528332)
);
wwv_flow_imp.component_end;
end;
/
