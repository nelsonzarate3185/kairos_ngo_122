prompt --application/pages/page_00081
begin
--   Manifest
--     PAGE: 00081
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
 p_id=>81
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Indicadores Repartos'
,p_alias=>'INDICADORES-REPARTOS'
,p_step_title=>'Indicadores Repartos'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>'<meta http-equiv="refresh" content="600">'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'04'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20220926165622'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77194978829130761)
,p_plug_name=>'Filtros'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81179835904597950)
,p_plug_name=>'Entrega Capital'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(13394342817027289)
,p_region_id=>wwv_flow_imp.id(81179835904597950)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlightAndExplode'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){',
'    // Add new 3D effect to existing chart style defaults   ',
'    options.styleDefaults = $.extend( options.styleDefaults, {threeDEffect: "on"});',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(13394883590027289)
,p_chart_id=>wwv_flow_imp.id(13394342817027289)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
' TIPO_ENTREGA,',
' TIPO_HORARIO,',
' SUM(CANTIDAD_PEDIDOS)CANTIDAD_PEDIDOS,',
'  case TIPO_HORARIO',
'           when ''ENTREGA EN ''||bs_busca_parametro(''RP'',''TIE_SAL_REP_CAP'')||'' HS'' then ''green''',
'           when ''Bananas'' then ''yellow''',
'           when ''Grapes'' then ''purple''',
'           when ''ENTREGA EN ''||bs_busca_parametro(''RP'',''TIE_SAL_REP_INT'')||'' HS'' then ''orange''',
'           when ''Dates'' then ''#791b19''',
'           else ''red''',
'       end series_colors',
'from (select',
' TIPO_ENTREGA,',
' TIPO_HORARIO,',
' SUM(CANTIDAD_PEDIDO)CANTIDAD_PEDIDOS,',
' NRO_PEDIDO, NRO_PLANILLA,',
' FECHA_SALIDA_GUARDIA,',
' FECHA_FACTURACION,',
' ',
'sum(CASE WHEN sin_fecha_registro_guardia =0 then 0 else 1 end)sin_fecha_registro_guardia  ',
'from (',
'select TIPO_ENTREGA,',
'CANTIDAD_PEDIDO,',
'FECHA_SALIDA_GUARDIA,',
'FECHA_FACTURACION,',
'CAL,',
'TIPO_HORARIO,',
'CAPITAL_SUPERIOR_48_HS,',
'CAPITAL_MENOS_48_HS,',
'INTERIOR_SUPERIOR_72_HS,',
'INTERIOR_MENOS_72_HS,',
'SIN_FECHA_REGISTRO_GUARDIA,',
'PLANILLA,',
'NRO_PEDIDO,',
'NRO_PLANILLA,fecha_factura',
'',
'from v_facturas_ind_logistica',
')',
'  where   fecha_factura between :P81_FECHA_INICIAL AND :P81_FECHA_FINAL',
'',
'group by TIPO_ENTREGA, TIPO_HORARIO, NRO_PEDIDO, NRO_PLANILLA,',
'FECHA_FACTURACION, fecha_salida_guardia',
'',
')',
'where tipo_entrega=''CAPITAL''',
'and  tipo_horario<>''SIN_REGISTRO_SALIDA''',
'',
'group by TIPO_ENTREGA,',
' TIPO_HORARIO'))
,p_ajax_items_to_submit=>'P81_FECHA_INICIAL,P81_FECHA_FINAL'
,p_series_name_column_name=>'TIPO_HORARIO'
,p_items_value_column_name=>'CANTIDAD_PEDIDOS'
,p_items_label_column_name=>'TIPO_HORARIO'
,p_color=>'&SERIES_COLORS.'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'COMBO'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.::P80_FECHA_FINAL,P80_FECHA_INICIAL,P80_TIPO_ENTREGA,P80_TIPO_HORARIO:&P81_FECHA_FINAL.,&P81_FECHA_INICIAL.,&TIPO_ENTREGA.,&TIPO_HORARIO.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81180313198597955)
,p_plug_name=>'Entrega Interior'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(13395779879027291)
,p_region_id=>wwv_flow_imp.id(81180313198597955)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){',
'    // Add new 3D effect to existing chart style defaults   ',
'    options.styleDefaults = $.extend( options.styleDefaults, {threeDEffect: "on"});',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(13396248999027291)
,p_chart_id=>wwv_flow_imp.id(13395779879027291)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
' TIPO_ENTREGA,',
' TIPO_HORARIO,',
' SUM(CANTIDAD_PEDIDOS)CANTIDAD_PEDIDOS,',
'  case TIPO_HORARIO',
'           when ''ENTREGA EN ''||bs_busca_parametro(''RP'',''TIE_SAL_REP_CAP'')||'' HS'' then ''purple''',
'           when ''Bananas'' then ''yellow''',
'           when ''Grapes'' then ''purple''',
'           when ''ENTREGA EN ''||bs_busca_parametro(''RP'',''TIE_SAL_REP_INT'')||'' HS'' then ''orange''',
'           when ''Dates'' then ''#791b19''',
'           else ''red''',
'       end series_colors',
'from (select',
' TIPO_ENTREGA,',
' TIPO_HORARIO,',
' SUM(CANTIDAD_PEDIDO)CANTIDAD_PEDIDOS,',
' NRO_PEDIDO, NRO_PLANILLA,',
' FECHA_SALIDA_GUARDIA,',
' FECHA_FACTURACION,',
' ',
'sum(CASE WHEN sin_fecha_registro_guardia =0 then 0 else 1 end)sin_fecha_registro_guardia  ',
'from (',
'select TIPO_ENTREGA,',
'CANTIDAD_PEDIDO,',
'FECHA_SALIDA_GUARDIA,',
'FECHA_FACTURACION,',
'CAL,',
'TIPO_HORARIO,',
'CAPITAL_SUPERIOR_48_HS,',
'CAPITAL_MENOS_48_HS,',
'INTERIOR_SUPERIOR_72_HS,',
'INTERIOR_MENOS_72_HS,',
'SIN_FECHA_REGISTRO_GUARDIA,',
'PLANILLA,',
'NRO_PEDIDO,',
'NRO_PLANILLA,fecha_factura',
'',
'from v_facturas_ind_logistica',
')',
'  where   fecha_factura between :P81_FECHA_INICIAL AND :P81_FECHA_FINAL',
'',
'group by TIPO_ENTREGA, TIPO_HORARIO, NRO_PEDIDO, NRO_PLANILLA,',
'FECHA_FACTURACION, fecha_salida_guardia',
'',
')',
'',
'where tipo_entrega=''INTERIOR''',
'and  tipo_horario<>''SIN_REGISTRO_SALIDA''',
'group by TIPO_ENTREGA,',
' TIPO_HORARIO',
' '))
,p_ajax_items_to_submit=>'P81_FECHA_FINAL,P81_FECHA_INICIAL'
,p_series_name_column_name=>'TIPO_HORARIO'
,p_items_value_column_name=>'CANTIDAD_PEDIDOS'
,p_items_label_column_name=>'TIPO_HORARIO'
,p_color=>'&SERIES_COLORS.'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'COMBO'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.::P80_FECHA_FINAL,P80_FECHA_INICIAL,P80_TIPO_ENTREGA,P80_TIPO_HORARIO:&P81_FECHA_FINAL.,&P81_FECHA_INICIAL.,&TIPO_ENTREGA.,&TIPO_HORARIO.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81180866191597960)
,p_plug_name=>'Sin Registro de Salida'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(13397118485027292)
,p_region_id=>wwv_flow_imp.id(81180866191597960)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(13397604605027292)
,p_chart_id=>wwv_flow_imp.id(13397118485027292)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
' TIPO_ENTREGA,',
' TIPO_HORARIO,',
' SUM(CANTIDAD_PEDIDOS)CANTIDAD_PEDIDOS',
'from (select',
' TIPO_ENTREGA,',
' TIPO_HORARIO,',
' SUM(CANTIDAD_PEDIDO)CANTIDAD_PEDIDOS,',
' NRO_PEDIDO, NRO_PLANILLA,',
' FECHA_SALIDA_GUARDIA,',
' FECHA_FACTURACION,',
' ',
'sum(CASE WHEN sin_fecha_registro_guardia =0 then 0 else 1 end)sin_fecha_registro_guardia  ',
'from (',
'select TIPO_ENTREGA,',
'CANTIDAD_PEDIDO,',
'FECHA_SALIDA_GUARDIA,',
'FECHA_FACTURACION,',
'CAL,',
'TIPO_HORARIO,',
'CAPITAL_SUPERIOR_48_HS,',
'CAPITAL_MENOS_48_HS,',
'INTERIOR_SUPERIOR_72_HS,',
'INTERIOR_MENOS_72_HS,',
'SIN_FECHA_REGISTRO_GUARDIA,',
'PLANILLA,',
'NRO_PEDIDO,',
'NRO_PLANILLA,fecha_factura',
'',
'from v_facturas_ind_logistica',
')',
'  where   fecha_factura between :P81_FECHA_INICIAL AND :P81_FECHA_FINAL',
'',
'group by TIPO_ENTREGA, TIPO_HORARIO, NRO_PEDIDO, NRO_PLANILLA,',
'FECHA_FACTURACION, fecha_salida_guardia',
'',
')',
'where  tipo_horario=''SIN_REGISTRO_SALIDA''',
'group by TIPO_ENTREGA,',
' TIPO_HORARIO'))
,p_ajax_items_to_submit=>'P81_FECHA_INICIAL,P81_FECHA_FINAL'
,p_series_name_column_name=>'TIPO_ENTREGA'
,p_items_value_column_name=>'CANTIDAD_PEDIDOS'
,p_items_label_column_name=>'TIPO_HORARIO'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'COMBO'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.::P80_FECHA_FINAL,P80_FECHA_INICIAL,P80_TIPO_ENTREGA,P80_TIPO_HORARIO:&P81_FECHA_FINAL.,&P81_FECHA_INICIAL.,&TIPO_ENTREGA.,&TIPO_HORARIO.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13392074038027286)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(77194978829130761)
,p_button_name=>'Refrescar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refrescar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13392407457027287)
,p_name=>'P81_FECHA_INICIAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(77194978829130761)
,p_item_default=>'LAST_DAY(ADD_MONTHS(SYSDATE,-1))+1'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Inicial'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13392888532027288)
,p_name=>'P81_FECHA_FINAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(77194978829130761)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'New'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13393239836027288)
,p_name=>'P81_HORARIO_CAPITAL'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(77194978829130761)
,p_prompt=>'Horario Capital'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13393623188027288)
,p_name=>'P81_HORARIO_INTERIOR'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(77194978829130761)
,p_prompt=>'HORARIO_INTERIOR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13398217546027292)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13392074038027286)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13398752937027293)
,p_event_id=>wwv_flow_imp.id(13398217546027292)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'UPDATE PARAMETROS_GENERALES SET VALOR=:P81_HORARIO_CAPITAL where parametro=''TIE_SAL_REP_CAP''',
'and nvl(valor,''0'')<>:P81_HORARIO_CAPITAL;',
'',
'',
'UPDATE PARAMETROS_GENERALES SET VALOR=:P81_HORARIO_INTERIOR where parametro=''TIE_SAL_REP_INT''',
'and nvl(valor,''0'')<>:P81_HORARIO_INTERIOR;',
'END;'))
,p_attribute_02=>'P81_HORARIO_CAPITAL,P81_HORARIO_INTERIOR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13399240641027293)
,p_event_id=>wwv_flow_imp.id(13398217546027292)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81179835904597950)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13399797723027293)
,p_event_id=>wwv_flow_imp.id(13398217546027292)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81180313198597955)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13400249353027293)
,p_event_id=>wwv_flow_imp.id(13398217546027292)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81180866191597960)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13400690947027294)
,p_name=>'New_1'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13401158724027294)
,p_event_id=>wwv_flow_imp.id(13400690947027294)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT NVL(bs_busca_parametro(''RP'',''TIE_SAL_REP_CAP''),''48''),NVL(bs_busca_parametro(''RP'',''TIE_SAL_REP_INT''),''72'')',
' INTO :P81_HORARIO_CAPITAL,:P81_HORARIO_INTERIOR',
'FROM DUAL;',
'',
'END;'))
,p_attribute_03=>'P81_HORARIO_CAPITAL,P81_HORARIO_INTERIOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
