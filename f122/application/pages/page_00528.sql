prompt --application/pages/page_00528
begin
--   Manifest
--     PAGE: 00528
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
 p_id=>528
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'TUR - INFORMES TICKETS'
,p_alias=>'INFORMES-TICKETS'
,p_step_title=>'INFORMES TICKETS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20250108133003'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(94787835596106415)
,p_plug_name=>'Tickets por usuario'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>935
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(94787964361106416)
,p_region_id=>wwv_flow_imp.id(94787835596106415)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'none'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(94788005920106417)
,p_chart_id=>wwv_flow_imp.id(94787964361106416)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	',
'	s.cod_usuario as label, ',
'	(',
'                        select count(*)',
'                        from ca_ticket_atencion i',
'                        where i.cod_usuario = s.cod_usuario						',
'                        and i.fecha  = trunc (sysdate)',
'						and i.estado in(''ATENDIDO'',''FINALIZADO'')				',
'                      ) as value,					   ',
'                      ''ATENDIDOS'' as series,',
'                      ''green'' as color',
'       ',
' from LLAMADOR_TICKET a, ca_ticket_atencion  S,  usuarios u, personas p',
' where 1=1',
' and S.ID_TICKET  = A.ID_TICKET',
' and s.fecha  = trunc (sysdate)',
' and u.cod_usuario = s.cod_usuario',
' and u.cod_persona = p.cod_persona',
' group by s.cod_usuario, p.nombre',
' UNION ALL',
' select',
'	s.cod_usuario as label, ',
'	(',
'                        select count(*)',
'                        from ca_ticket_atencion i',
'                        where i.cod_usuario = s.cod_usuario						',
'                        and i.fecha  = trunc (sysdate)',
'						and i.estado in(''CANCELADO'')											',
'                      ) as value,					   ',
'                      ''CANCELADOS'' as series,',
'                      ''red'' as color',
'       ',
' ',
'FROM LLAMADOR_TICKET a,',
'ca_ticket_atencion S,',
'usuarios u,',
'personas p',
'WHERE',
'1 = 1',
'AND S.ID_TICKET = A.ID_TICKET',
'AND s.fecha = trunc (sysdate)',
'AND u.cod_usuario = s.cod_usuario',
'AND u.cod_persona = p.cod_persona',
'GROUP BY',
's.cod_usuario,',
'p.nombre'))
,p_series_name_column_name=>'SERIES'
,p_items_value_column_name=>'VALUE'
,p_group_short_desc_column_name=>'LABEL'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(94788138742106418)
,p_chart_id=>wwv_flow_imp.id(94787964361106416)
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
 p_id=>wwv_flow_imp.id(94788278683106419)
,p_chart_id=>wwv_flow_imp.id(94787964361106416)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(152760151330015842)
,p_plug_name=>'Contador general de tickets '
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(152760202888015843)
,p_region_id=>wwv_flow_imp.id(152760151330015842)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
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
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlightAndExplode'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(152760389535015844)
,p_chart_id=>wwv_flow_imp.id(152760202888015843)
,p_seq=>10
,p_name=>'Contador'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''PENDIENTES'' codigo,',
'       (SELECT COUNT(*)',
'          FROM ca_ticket_atencion s',
'         WHERE s.fecha = trunc(SYSDATE)',
'           AND s.estado = ''PENDIENTE''',
'           AND s.cod_tipo_cliente IS NOT NULL) cantidad,',
'       ''red'' series_colors,',
'       ''Cantidad '' || (SELECT COUNT(*)',
'                         FROM  ca_ticket_atencion s',
'                        WHERE s.fecha = trunc(SYSDATE)',
'                          AND s.estado = ''PENDIENTE''',
'                          AND s.cod_tipo_cliente IS NOT NULL) cant_mostrar',
'',
'  FROM dual',
'  union all                ',
'select ''ATENDIDOS'', (select count(*)',
'                   from llamador_ticket a, ca_ticket_atencion  S',
'                   where S.ID_TICKET  = A.ID_TICKET',
'                   and s.fecha  = trunc (sysdate)',
'                   AND s.ESTADO = ''ATENDIDO''',
'                   AND s.cod_tipo_cliente IS NOT NULL), ''blue'',',
'                   ''Cantidad '' ||(select count(*)',
'                   from llamador_ticket a, ca_ticket_atencion  S',
'                   where S.ID_TICKET  = A.ID_TICKET',
'                   and s.fecha  = trunc (sysdate)',
'                   AND s.ESTADO = ''ATENDIDO''',
'                   AND s.cod_tipo_cliente IS NOT NULL)',
'                   from dual',
'                ',
'',
'  union all      ',
' select ''FINALIZADOS '', (select count(*)',
'                 from llamador_ticket a, ca_ticket_atencion  S',
'                 where S.ID_TICKET  = A.ID_TICKET',
'                 and s.fecha  = trunc (sysdate)',
'                 AND s.ESTADO = ''FINALIZADO''',
'                 AND s.cod_tipo_cliente IS NOT NULL), ''green'',',
'                 ''Cantidad '' ||(select count(*)',
'                 from llamador_ticket a, ca_ticket_atencion  S',
'                 where S.ID_TICKET  = A.ID_TICKET',
'                 and s.fecha  = trunc (sysdate)',
'                 AND s.ESTADO = ''FINALIZADO''',
'                 AND s.cod_tipo_cliente IS NOT NULL)',
'                 from dual',
'UNION ALL',
'select ''CANCELADOS '', (select count(*)',
'                 from llamador_ticket a, ca_ticket_atencion  S',
'                 where S.ID_TICKET  = A.ID_TICKET',
'                 and s.fecha  = trunc (sysdate)',
'                 AND s.ESTADO = ''CANCELADO''',
'                 AND s.cod_tipo_cliente IS NOT NULL), ''yellow'',',
'                 ''Cantidad '' ||(select count(*)',
'                 from llamador_ticket a, ca_ticket_atencion  S',
'                 where S.ID_TICKET  = A.ID_TICKET',
'                 and s.fecha  = trunc (sysdate)',
'                 AND s.ESTADO = ''CANCELADO''',
'                 AND s.cod_tipo_cliente IS NOT NULL)',
'                 from dual',
'',
''))
,p_items_value_column_name=>'CANTIDAD'
,p_items_label_column_name=>'CODIGO'
,p_items_short_desc_column_name=>'CANT_MOSTRAR'
,p_custom_column_name=>'CANT_MOSTRAR'
,p_color=>'&SERIES_COLORS.'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LBL_VAL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(152760603983015847)
,p_plug_name=>'Cantidad de Servicios solicitados'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>950
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(152760729786015848)
,p_region_id=>wwv_flow_imp.id(152760603983015847)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
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
,p_show_series_name=>false
,p_show_group_name=>false
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
 p_id=>wwv_flow_imp.id(152760804368015849)
,p_chart_id=>wwv_flow_imp.id(152760729786015848)
,p_seq=>10
,p_name=>'Servicios solicitados'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) CANTIDAD, C.DESCRIPCION,case when  C.DESCRIPCION = ''AGENDAMIENTOS'' then ''gold''',
'                                                          when C.DESCRIPCION = ''PRODUCTOS A REPARAR'' then ''red'' ',
'                                                       when C.DESCRIPCION = ''RETIRO DE PRODUCTOS'' then ''green''',
unistr('                                                       when C.DESCRIPCION = ''GESTI\00D3N NCR'' then ''blue'''),
'                                                       else ''orange''',
'                                                     end colors ',
'  FROM ca_ticket_atencion a, ca_ticket_atencion_det b, ca_tickets_tipo c',
' WHERE a.id_ticket = b.id_ticket',
'   AND a.cod_empresa = ''1''',
'   AND c.cod_ticket = b.cod_tipo_ticket',
'    and A.fecha  = trunc (sysdate)',
'    GROUP BY C.DESCRIPCION',
''))
,p_items_value_column_name=>'CANTIDAD'
,p_items_label_column_name=>'DESCRIPCION'
,p_color=>'&COLORS.'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(152760992226015850)
,p_chart_id=>wwv_flow_imp.id(152760729786015848)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'SERVICIOS'
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
 p_id=>wwv_flow_imp.id(157930118176331801)
,p_chart_id=>wwv_flow_imp.id(152760729786015848)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'CANTIDAD'
,p_title_font_color=>'#9f0505'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'min'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_font_color=>'#f33a3a'
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
 p_id=>wwv_flow_imp.id(157855404505762101)
,p_plug_name=>unistr('Ticket Atendidos del D\00EDa')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(157855511686762102)
,p_region_id=>wwv_flow_imp.id(157855404505762101)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'on'
,p_stack_font_color=>'#292978'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'value-asc'
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
 p_id=>wwv_flow_imp.id(157855620012762103)
,p_chart_id=>wwv_flow_imp.id(157855511686762102)
,p_seq=>10
,p_name=>'Tickets Atendidos'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.cod_usuario, (',
'                        select count(*)',
'                        from ca_ticket_atencion i',
'                        where i.cod_usuario = s.cod_usuario',
'                        and i.fecha  = trunc (sysdate)',
'						and i.estado in(''ATENDIDO'',''FINALIZADO'')						',
'                      ) cantidad_ticket,',
'					   (',
'                        select count(*)',
'                        from ca_ticket_atencion i',
'                        where i.cod_usuario = s.cod_usuario',
'                        and i.fecha  = trunc (sysdate)',
'						and i.estado in(''CANCELADO'')						',
'                      ) cantidad_ticket_II,',
'                      ''Cantidad '' || (',
'                        select count(*)',
'                        from ca_ticket_atencion i',
'                        where i.cod_usuario = s.cod_usuario',
'                        and i.fecha  = trunc (sysdate)',
'                      ) can_total,',
'                      p.nombre',
'       ',
' from llamador_ticket a, ca_ticket_atencion  S,  usuarios u, personas p',
' where S.ID_TICKET  = A.ID_TICKET',
' and s.fecha  = trunc (sysdate)',
' and u.cod_usuario = s.cod_usuario',
' and u.cod_persona = p.cod_persona',
' group by s.cod_usuario, p.nombre'))
,p_items_value_column_name=>'CANTIDAD_TICKET'
,p_items_label_column_name=>'NOMBRE'
,p_items_short_desc_column_name=>'CAN_TOTAL'
,p_color=>'#e81414'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(157855991494762106)
,p_chart_id=>wwv_flow_imp.id(157855511686762102)
,p_axis=>'y2'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
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
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(157855721161762104)
,p_chart_id=>wwv_flow_imp.id(157855511686762102)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'FUNCIONARIO'
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
 p_id=>wwv_flow_imp.id(157855815620762105)
,p_chart_id=>wwv_flow_imp.id(157855511686762102)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'CANTIDAD'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157930286198331802)
,p_plug_name=>'Ticket Ingresado'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>960
,p_plug_new_grid_row=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(157930355816331803)
,p_region_id=>wwv_flow_imp.id(157930286198331802)
,p_chart_type=>'lineWithArea'
,p_title=>'TICKET INGRESADO POR HORA'
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
 p_id=>wwv_flow_imp.id(157930426592331804)
,p_chart_id=>wwv_flow_imp.id(157930355816331803)
,p_seq=>10
,p_name=>'Ticket Ingresado  por Hora'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) cantidad, to_char(s.fecha_alta, ''hh24'')  hora',
'          FROM ca_ticket_atencion s',
'         WHERE s.fecha = trunc(SYSDATE)',
'         AND s.cod_tipo_cliente IS NOT NULL',
'         group by to_char(s.fecha_alta, ''hh24'')',
'         order by hora asc',
'',
''))
,p_items_value_column_name=>'CANTIDAD'
,p_items_label_column_name=>'HORA'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_items_label_font_color=>'#0000ff'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(157930594229331805)
,p_chart_id=>wwv_flow_imp.id(157930355816331803)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'HORA'
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
 p_id=>wwv_flow_imp.id(157930621493331806)
,p_chart_id=>wwv_flow_imp.id(157930355816331803)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'CANTIDAD'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(162610152187555706)
,p_plug_name=>unistr('Promedio de Atenci\00F3n por Funcionario')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>970
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157930757293331807)
,p_plug_name=>unistr('Ticket Atendidos del D\00EDa')
,p_parent_plug_id=>wwv_flow_imp.id(162610152187555706)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleC'
,p_plug_template=>wwv_flow_imp.id(40100032401263654)
,p_plug_display_sequence=>1040
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_usuario,',
'       ''Tiempo atendido por servicio: '' || pro_tiempo_atendido_servicio  pro_tiempo_atendido_servicio,',
'       ''Tiempo de Espera: '' || pro_tiempo_espera pro_tiempo_espera,',
unistr('       ''Tiempo de Atenci\00F3n: '' || pro_tiempo_atencion pro_tiempo_atencion,'),
'       ''Tiempo total: '' || pro_tiempo_total pro_tiempo_total,',
'       nombre',
'  FROM (SELECT cod_usuario,',
'               to_char(trunc(SYSDATE) + AVG(tiempo_atendido_servicio),',
'                       ''hh24:mi:ss'') pro_tiempo_atendido_servicio,',
'               to_char(trunc(SYSDATE) + AVG(tiempo_espera), ''hh24:mi:ss'') pro_tiempo_espera,',
'               to_char(trunc(SYSDATE) + AVG(tiempo_atencion), ''hh24:mi:ss'') pro_tiempo_atencion,',
'               to_char(trunc(SYSDATE) + AVG(tiempo_total), ''hh24:mi:ss'') pro_tiempo_total,',
'               nombre',
'          FROM (SELECT a.nro_ticket,',
'                       a.cod_cliente,',
'                       a.cod_usuario,',
'                       c.descripcion,',
'                       (b.hora_fin - b.hora_inicio) tiempo_atendido_servicio,',
'                       (l.hora_llamada - a.fecha_alta) tiempo_espera,',
'                       (nvl(a.fecha_cierre, SYSDATE) - l.hora_atencion) tiempo_atencion,',
'                       (nvl(a.fecha_cierre, SYSDATE) - a.fecha_alta) tiempo_total,',
'                       p.nombre',
'                  FROM ca_ticket_atencion     a,',
'                       ca_ticket_atencion_det b,',
'                       ca_tickets_tipo        c,',
'                       llamador_ticket        l,',
'                         usuarios u, personas p',
'                 WHERE a.id_ticket = b.id_ticket',
'                   AND a.cod_empresa = ''1''',
'                   AND c.cod_ticket = b.cod_tipo_ticket',
'                   AND a.id_ticket = l.id_ticket',
'                   AND a.fecha = trunc(SYSDATE)',
'                   AND a.estado = ''FINALIZADO''',
'                   and u.cod_usuario = a.cod_usuario',
'                   and u.cod_persona = p.cod_persona',
'                ---- GROUP BY a.cod_usuario, c.descripcion, b.hora_inicio, b.hora_fin,a.cod_cliente',
'                )',
'         GROUP BY cod_usuario, nombre);'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(162610052906555705)
,p_region_id=>wwv_flow_imp.id(157930757293331807)
,p_layout_type=>'GRID'
,p_grid_column_count=>3
,p_title_adv_formatting=>false
,p_title_column_name=>'NOMBRE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div> ',
'    <h6 style="text-align:left;font-size:15px;" class="center" >&PRO_TIEMPO_ATENDIDO_SERVICIO.',
'                                                         <br> &PRO_TIEMPO_ESPERA. ',
'                                                         <br> &PRO_TIEMPO_ATENCION. ',
'                                                         <br> &PRO_TIEMPO_TOTAL.</h6> ',
'</div>'))
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_pk1_column_name=>'COD_USUARIO'
);
wwv_flow_imp.component_end;
end;
/
