prompt --application/pages/page_00069
begin
--   Manifest
--     PAGE: 00069
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
 p_id=>69
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Resumen Ventas'
,p_alias=>'RESUMEN-VENTAS'
,p_step_title=>'Resumen Ventas'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20241021093634'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38190948021756538)
,p_plug_name=>'Filtro'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_menu_id=>wwv_flow_imp.id(40070279985263645)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(40189153869263678)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50564818448560089)
,p_plug_name=>'Ventas Semanal'
,p_region_template_options=>'#DEFAULT#:t-Region--textContent:t-Region--scrollBody:t-Form--labelsAbove'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_column=>5
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(14710009035218717)
,p_region_id=>wwv_flow_imp.id(50564818448560089)
,p_chart_type=>'donut'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
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
,p_pie_other_threshold=>.05
,p_pie_selection_effect=>'explode'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(14710502124218718)
,p_chart_id=>wwv_flow_imp.id(14710009035218717)
,p_seq=>10
,p_name=>'Ventas Semanales'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Semana ''||ROWNUM sEMANA,SEMANA_ANIO, importe',
'from',
'(SELECT  to_number(X.SEMANA) SEMANA_ANIO, sum(X.IMPORTE)importe',
'FROM (select to_char(c.fec_factura,''WW'')SEMANA, sum(monto)Importe',
'from V_VENTAS c ',
'WHERE (COD_VENDEDOR= :P69_VENDEDOR OR :P69_VENDEDOR IS NULL)',
'and (COD_SUPERVISOR= :P69_COD_SUPERVISOR OR :P69_COD_SUPERVISOR IS NULL)',
'AND (FEC_FACTURA BETWEEN :P69_FECHA_INICIO AND :P69_FECHA_FIN)',
'and c.cod_empresa=:p_cod_empresa',
'group by to_char(c.fec_factura,''WW'')',
'',
'UNION ALL',
'SELECT  to_char(T.FECHA,''WW'')SEMANA, 0 Importe',
'FROM D_TIEMPO T',
'WHERE T.FECHA BETWEEN :P69_FECHA_INICIO AND :P69_FECHA_FIN',
'group by to_char(T.FECHA,''WW'')',
'ORDER BY 1',
')x',
'group by semana',
'order by 1)'))
,p_ajax_items_to_submit=>'P69_VENDEDOR,P69_FECHA_INICIO,P69_FECHA_FIN,P69_COD_SUPERVISOR'
,p_items_value_column_name=>'IMPORTE'
,p_items_label_column_name=>'SEMANA'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'ALL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50565310547560094)
,p_plug_name=>'Objetivos'
,p_region_template_options=>'#DEFAULT#:t-Region--textContent:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_column=>1
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P69_VENDEDOR'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(14711854162218719)
,p_region_id=>wwv_flow_imp.id(50565310547560094)
,p_chart_type=>'dial'
,p_width=>'250'
,p_height=>'250'
,p_animation_on_display=>'zoom'
,p_animation_on_data_change=>'slideToLeft'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'percent'
,p_value_position=>'auto'
,p_value_format_type=>'percent'
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
,p_no_data_found_message=>'Sin Datos'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>.9
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>0
,p_gauge_angle_extent=>360
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(14712349706218720)
,p_chart_id=>wwv_flow_imp.id(14711854162218719)
,p_seq=>10
,p_name=>'Marcas'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select monto , NVL((select SUM(ROUND(mt.monto))',
'from fv_metas_vend mt, FV_VENDEDORES FV',
'where mt.cod_empresa=:P_COD_EMPRESA',
'and (mt.cod_vendedor =  :P69_VENDEDOR OR :P69_VENDEDOR IS NULL)',
'and mt.fec_inicio =:P69_FECHA_INICIO',
'AND MT.FEC_FIN = :P69_FECHA_FIN',
'AND MT.COD_EMPRESA=FV.COD_EMPRESA',
'AND MT.COD_VENDEDOR=FV.COD_VENDEDOR',
'AND (FV.COD_SUPERVISOR= :P69_COD_SUPERVISOR OR :P69_COD_SUPERVISOR IS NULL)',
'),0)META, to_char(monto,''999G999G999G999G990'')MONTO_GS_CHART',
'from (select  sum(monto)monto',
'',
'',
'from V_VENTAS v',
'WHERE (COD_VENDEDOR= :P69_VENDEDOR OR :P69_VENDEDOR IS NULL)',
'and v.cod_empresa=:p_cod_empresa',
'AND (FEC_FACTURA BETWEEN :P69_FECHA_INICIO AND :P69_FECHA_FIN)',
'      AND (COD_SUPERVISOR= :P69_COD_SUPERVISOR OR :P69_COD_SUPERVISOR IS NULL)',
' ',
')'))
,p_ajax_items_to_submit=>'P69_VENDEDOR,P69_FECHA_INICIO,P69_FECHA_FIN,P69_COD_SUPERVISOR'
,p_items_value_column_name=>'MONTO'
,p_items_max_value=>'META'
,p_items_label_column_name=>'MONTO_GS_CHART'
,p_color=>'#0DD642'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_gauge_plot_area_color=>'#2409F0'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(50771274257490753)
,p_name=>'Ventas Periodo Comision'
,p_template=>wwv_flow_imp.id(40123385688263660)
,p_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_column=>2
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  fec_factura fecha,sum(monto)monto',
'from V_VENTAS v',
'WHERE (COD_VENDEDOR= :P69_VENDEDOR OR :P69_VENDEDOR IS NULL)',
'AND (FEC_FACTURA BETWEEN :P69_FECHA_INICIO AND :P69_FECHA_FIN)',
'AND (COD_SUPERVISOR= :P69_COD_SUPERVISOR OR :P69_COD_SUPERVISOR IS NULL)',
'and cod_empresa=:p_cod_empresa',
'group by fec_factura',
'order by 1 asc '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P69_VENDEDOR,P69_FECHA_INICIO,P69_FECHA_FIN,P69_COD_SUPERVISOR'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>31
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14715282567218722)
,p_query_column_id=>1
,p_column_alias=>'FECHA'
,p_column_display_sequence=>1
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14715643336218722)
,p_query_column_id=>2
,p_column_alias=>'MONTO'
,p_column_display_sequence=>2
,p_column_heading=>'Monto'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_link=>'f?p=&APP_ID.:245:&SESSION.::&DEBUG.:RP,245:P245_COD_VENDEDOR,P245_FECHA_DESDE,P245_FECHA_HASTA:&P69_VENDEDOR.,#FECHA#,#FECHA#'
,p_column_linktext=>'#MONTO#'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50773598644490776)
,p_plug_name=>'Pedidos'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--textContent:t-Region--scrollBody'
,p_region_attributes=>'data-grid="col_1"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select label, to_char(value,''999G999G999G990'') value, url from (',
'    with data as (',
'        select nvl(sum(decode(c.ESTADO,''PENDIENTE'',importe,0)),0) pendiente,',
'            nvl(sum(decode(estado,''CERRADO'',importe,0)),0) CERRADO,',
'           nvl(sum(decode(estado,''FACTURADO'',importe,0)),0) FACTURADO,',
'           nvl(sum(decode(estado,''ANULADO'',importe,0)),0) ANULADO',
'        from V_PEDIDOS_PRODUCTOS  c ',
'WHERE (COD_VENDEDOR= :P69_VENDEDOR OR :P69_VENDEDOR IS NULL)',
'and c.cod_empresa=:p_cod_empresa',
'AND   (COD_SUPERVISOR= :P69_COD_SUPERVISOR OR :P69_COD_SUPERVISOR IS NULL)',
'           -- AND (FEC_FACTURA BETWEEN :P69_FECHA_INICIO AND :P69_FECHA_FIN)',
'    )',
'    select 1 display_order, ''Pedidos Pendientes'' label, data.pendiente value,',
'        ''f?p=''||:APP_ID||'':253:''||:APP_SESSION||'':::253,RIR,RP''',
'            ||'',CIR:IR_ESTADO''||case when :P69_VENDEDOR IS NOT NULL THEN',
'            '',IR_COD_VENDEDOR'' else null END||'':PENDIENTE''||case when :P69_VENDEDOR IS NOT NULL THEN',
'            '',''||:P69_VENDEDOR else null END url',
'    from data',
'    union all',
'    select 2 display_order, ''Pedidos Anulados'' label, data.ANULADO value,',
'        ''f?p=''||:APP_ID||'':253:''||:APP_SESSION||'':::253,RIR,RP''',
'            ||'',CIR:IR_ESTADO''||case when :P69_VENDEDOR IS NOT NULL THEN',
'            '',IR_COD_VENDEDOR'' else null END||'':ANULADO''||case when :P69_VENDEDOR IS NOT NULL THEN',
'            '',''||:P69_VENDEDOR else null END url',
'    from data',
'    union all',
'    select 3 display_order, ''Pedidos Cerrados'' label, data.CERRADO value,',
'        ''f?p=''||:APP_ID||'':253:''||:APP_SESSION||'':::253,RIR,RP''',
'            ||'',CIR:IR_ESTADO''||case when :P69_VENDEDOR IS NOT NULL THEN',
'            '',IR_COD_VENDEDOR'' else null END||'':CERRADO''||case when :P69_VENDEDOR IS NOT NULL THEN',
'            '',''||:P69_VENDEDOR else null END url',
'    from data',
'    union all',
'    select 4 display_order, ''Pedidos Facturados'' label, data.FACTURADO value,',
'        ''f?p=''||:APP_ID||'':253:''||:APP_SESSION||'':::253,RIR,RP''',
'            ||'',CIR:IR_ESTADO''||case when :P69_VENDEDOR IS NOT NULL THEN',
'            '',IR_COD_VENDEDOR'' else null END||'':FACTURADO''||case when :P69_VENDEDOR IS NOT NULL THEN',
'            '',''||:P69_VENDEDOR else null END url',
'    from data',
') order by display_order'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_ajax_items_to_submit=>'P69_VENDEDOR,P69_COD_SUPERVISOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'&URL.'
,p_attribute_05=>'2'
,p_attribute_07=>'BOX'
,p_attribute_08=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(197420285386516270)
,p_plug_name=>'Objetivos Mes Cerrado'
,p_region_template_options=>'#DEFAULT#:t-Region--textContent:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P69_VENDEDOR'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(14720101479218725)
,p_region_id=>wwv_flow_imp.id(197420285386516270)
,p_chart_type=>'dial'
,p_width=>'250'
,p_height=>'250'
,p_animation_on_display=>'zoom'
,p_animation_on_data_change=>'slideToLeft'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'percent'
,p_value_position=>'auto'
,p_value_format_type=>'percent'
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
,p_no_data_found_message=>'Sin Datos'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>.9
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>0
,p_gauge_angle_extent=>360
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(14720665556218725)
,p_chart_id=>wwv_flow_imp.id(14720101479218725)
,p_seq=>10
,p_name=>'Marcas'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(monto,0) monto , NVL((select SUM(ROUND(mt.proyeccion))',
'from FV_PROYECCIONES_UN  mt, FV_VENDEDORES FV',
'where mt.cod_empresa=''1''',
'and (mt.cod_vendedor =  :P69_VENDEDOR OR :P69_VENDEDOR IS NULL)',
' ',
'',
'AND LAST_DAY(TO_DATE(''01/''||MT.MES||''/''||MT.ANhO,''DD/MM/YYYY''))=LAST_DAY(:P69_FECHA_FIN)',
'AND MT.COD_EMPRESA=FV.COD_EMPRESA',
'AND MT.COD_VENDEDOR=FV.COD_VENDEDOR',
'AND (FV.COD_SUPERVISOR= :P69_COD_SUPERVISOR OR :P69_COD_SUPERVISOR IS NULL)',
'),0)META, to_char(nvl(monto,0),''999G999G999G999G990'')MONTO_GS_CHART',
'from (select  sum(monto)monto',
'',
'',
'from V_VENTAS c',
'WHERE (COD_VENDEDOR= :P69_VENDEDOR OR :P69_VENDEDOR IS NULL)',
'and c.cod_empresa=:p_cod_empresa',
'--AND (FEC_FACTURA BETWEEN :P69_FECHA_INICIO AND :P69_FECHA_FIN)',
'AND (FEC_FACTURA BETWEEN last_day(add_months(:P69_FECHA_FIN,-1))+1 AND last_day(:P69_FECHA_FIN))',
'',
'      AND (COD_SUPERVISOR= :P69_COD_SUPERVISOR OR :P69_COD_SUPERVISOR IS NULL)',
' ',
')'))
,p_ajax_items_to_submit=>'P69_VENDEDOR,P69_FECHA_INICIO,P69_FECHA_FIN,P69_COD_SUPERVISOR'
,p_items_value_column_name=>'MONTO'
,p_items_max_value=>'META'
,p_items_label_column_name=>'MONTO_GS_CHART'
,p_color=>'#0DD642'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_gauge_plot_area_color=>'#2409F0'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(197421362433516281)
,p_name=>'Ventas Mes Cerrado'
,p_template=>wwv_flow_imp.id(40123385688263660)
,p_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  fec_factura fecha,sum(monto)monto',
'from V_VENTAS',
'WHERE (COD_VENDEDOR= :P69_VENDEDOR OR :P69_VENDEDOR IS NULL)',
'AND (FEC_FACTURA BETWEEN last_day(add_months(:P69_FECHA_FIN,-1))+1 AND last_day(:P69_FECHA_FIN))',
'AND (COD_SUPERVISOR= :P69_COD_SUPERVISOR OR :P69_COD_SUPERVISOR IS NULL)',
'and cod_empresa=:p_cod_empresa',
'group by fec_factura',
'order by 1 asc '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P69_VENDEDOR,P69_FECHA_INICIO,P69_FECHA_FIN,P69_COD_SUPERVISOR'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>31
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14722726271218726)
,p_query_column_id=>1
,p_column_alias=>'FECHA'
,p_column_display_sequence=>10
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14723156233218726)
,p_query_column_id=>2
,p_column_alias=>'MONTO'
,p_column_display_sequence=>20
,p_column_heading=>'Monto'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_link=>'f?p=&APP_ID.:245:&SESSION.::&DEBUG.:RP,245:P245_COD_VENDEDOR,P245_FECHA_DESDE,P245_FECHA_HASTA:&P69_VENDEDOR.,#FECHA#,#FECHA#'
,p_column_linktext=>'#MONTO#'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14712922371218720)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(50565310547560094)
,p_button_name=>'VerSupervisor'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Comision Supervisor'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14711109173218719)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(50564818448560089)
,p_button_name=>'DETALLE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ir'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:20:P20_COD_VENDEDOR,P20_FECHA_DESDE,P20_FECHA_HASTA:&P69_VENDEDOR.,&P69_FECHA_INICIO.,&P69_FECHA_FIN.'
,p_icon_css_classes=>'fa-angle-double-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14713345822218720)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(50565310547560094)
,p_button_name=>'vercomision'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ver Comisiones'
,p_button_position=>'EDIT'
,p_icon_css_classes=>'fa-usd'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14717024209218723)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38190948021756538)
,p_button_name=>'Pedido'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Pedido'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:233:&SESSION.::&DEBUG.:RP,233::'
,p_icon_css_classes=>'fa-send-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14716663733218723)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38190948021756538)
,p_button_name=>'Refrescar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refrescar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14742214695218736)
,p_branch_name=>'IF_DETALLE_VENTAS'
,p_branch_action=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP,20:P20_COD_VENDEDOR,P20_FECHA_DESDE,P20_FECHA_HASTA:&P9_VENDEDOR.,&P9_FECHA_INICIO.,&P9_FECHA_FIN.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(14711109173218719)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14742672000218736)
,p_branch_name=>'ir_comisiones'
,p_branch_action=>'f?p=&APP_ID.:205:&SESSION.::&DEBUG.:RP,205:P205_COD_VENDEDOR,P205_PERIODO:&P69_VENDEDOR.,&P69_PERIODO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(14713345822218720)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14743084276218737)
,p_branch_name=>'ir_supervisor'
,p_branch_action=>'f?p=&APP_ID.:207:&SESSION.::&DEBUG.:RP,207:P207_COD_VENDEDOR,P207_PERIODO:&P69_COD_SUPERVISOR.,&P69_PERIODO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(14712922371218720)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14713762208218720)
,p_name=>'P69_META'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(50565310547560094)
,p_prompt=>'Meta'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14714196607218721)
,p_name=>'P69_COMISION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(50565310547560094)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14714581255218721)
,p_name=>'P69_PERIODO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(50565310547560094)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14717451824218723)
,p_name=>'P69_VER_OTROS_VENDEDORES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(38190948021756538)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14717871729218723)
,p_name=>'P69_USUARIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(38190948021756538)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14718264685218724)
,p_name=>'P69_VENDEDOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(38190948021756538)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  P.NOMBRE ||''(''||F.COD_VENDEDOR||'')'' NOMBRE,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=:P_COD_EMPRESA',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'and (F.COD_VENDEDOR = :P_COD_VENDEDOR )',
'union all',
'SELECT  P.NOMBRE ||''(''||F.COD_VENDEDOR||'')'' NOMBRE,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=:P_COD_EMPRESA',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'and F.cod_persona in( select f1.cod_persona from fv_vendedores f1 where f1.cod_empresa=f.cod_empresa and f1.cod_vendedor= :P_COD_VENDEDOR )',
'and (F.COD_VENDEDOR <> :P_COD_VENDEDOR )',
'',
'UNION ALL',
'SELECT  P.NOMBRE ||''(''||F.COD_VENDEDOR||'')'' NOMBRE,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=:P_COD_EMPRESA',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
' AND nvl(BUSCA_PERMISO(''1'',''APEX'',:P_COD_USUARIO,''VER_OTROS_VENDEDORES''),''N'') = ''S'' ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-user-check'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14718622737218724)
,p_name=>'P69_COD_SUPERVISOR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(38190948021756538)
,p_prompt=>'Supervisor'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_SUPERVISORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  P.NOMBRE,Fc.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P, fv_vendedores fc',
'WHERE F.COD_EMPRESA=:p_cod_empresa',
'and f.cod_empresa=fc.cod_empresa',
'and f.cod_supervisor=fc.cod_vendedor',
'AND Fc.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'group by  P.NOMBRE,Fc.COD_VENDEDOR'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14719057411218724)
,p_name=>'P69_FECHA_INICIO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(38190948021756538)
,p_prompt=>'Inicio'
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
 p_id=>wwv_flow_imp.id(14719460639218724)
,p_name=>'P69_FECHA_FIN'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(38190948021756538)
,p_prompt=>'Fecha Fin'
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
 p_id=>wwv_flow_imp.id(14721290411218725)
,p_name=>'P69_META_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(197420285386516270)
,p_prompt=>'Meta'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14721683285218725)
,p_name=>'P69_COMISION_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(197420285386516270)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14722063660218726)
,p_name=>'P69_PERIODO_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(197420285386516270)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14726282923218729)
,p_name=>'REFRESH_SEMANAL'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P69_VENDEDOR,P69_FECHA_FIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14726770461218729)
,p_event_id=>wwv_flow_imp.id(14726282923218729)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50564818448560089)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14727121260218729)
,p_name=>'REFRESH_PEDIDOS'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P69_VENDEDOR,P69_FECHA_FIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14727678668218730)
,p_event_id=>wwv_flow_imp.id(14727121260218729)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50773598644490776)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14728066763218730)
,p_name=>'REFRESH_CLIENTES'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P69_VENDEDOR,P69_FECHA_FIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14728599978218730)
,p_event_id=>wwv_flow_imp.id(14728066763218730)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50771274257490753)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14729028206218730)
,p_event_id=>wwv_flow_imp.id(14728066763218730)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(197421362433516281)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14729413660218730)
,p_name=>'REFRESH_MARCAS'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P69_VENDEDOR,P69_FECHA_FIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14729923603218730)
,p_event_id=>wwv_flow_imp.id(14729413660218730)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50565310547560094)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14730381922218731)
,p_name=>'truncate_collection'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14717024209218723)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14730890492218731)
,p_event_id=>wwv_flow_imp.id(14730381922218731)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PEDIDOS_CABECERA'');',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PEDIDOS_DETALLE'');',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14731218121218731)
,p_name=>'CARGA_INICIAL'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14731741020218732)
,p_event_id=>wwv_flow_imp.id(14731218121218731)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'BEGIN',
'  select MAX(FEC_INICIAL), MAX(FEC_FINAL) , MAX(NUM_PERIODO)',
'   INTO :P69_FECHA_INICIO,:P69_FECHA_FIN, :P69_PERIODO',
'   from FV_PERIODOS_COMISION a',
'where a.cod_empresa=''1'';',
' ',
'EXCEPTION',
'WHEN OTHERS THEN',
'    :P69_FECHA_INICIO:=LAST_DAY(ADD_MONTHS(SYSDATE,-1))+1;',
'    :P69_FECHA_FIN:=TRUNC(SYSDATE);',
'  END;',
'  ',
'    :P69_VENDEDOR := :P_COD_VENDEDOR; ',
'  ',
' ',
'   ',
'  ',
'  END;'))
,p_attribute_02=>'P69_USUARIO'
,p_attribute_03=>'P69_FECHA_INICIO,P69_FECHA_FIN,P69_VENDEDOR,P69_PERIODO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
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
 p_id=>wwv_flow_imp.id(14732253914218732)
,p_event_id=>wwv_flow_imp.id(14731218121218731)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50564818448560089)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14732726114218732)
,p_event_id=>wwv_flow_imp.id(14731218121218731)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50773598644490776)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14733229097218732)
,p_event_id=>wwv_flow_imp.id(14731218121218731)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50565310547560094)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14733733456218732)
,p_event_id=>wwv_flow_imp.id(14731218121218731)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50771274257490753)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14734223292218733)
,p_event_id=>wwv_flow_imp.id(14731218121218731)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(197421362433516281)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14734651353218733)
,p_name=>'set_meta'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P69_VENDEDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14735182635218733)
,p_event_id=>wwv_flow_imp.id(14734651353218733)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P69_META'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(SUM(mt.monto),''999G999G999G999G999G999G990'')monto',
'from fv_metas_vend mt, FV_VENDEDORES FV',
'where mt.cod_empresa=''1''',
'AND MT.COD_EMPRESA=FV.COD_EMPRESA',
'AND MT.COD_VENDEDOR=FV.COD_VENDEDOR',
'and (mt.cod_vendedor =  :P69_VENDEDOR OR :P69_VENDEDOR IS NULL)',
'AND (FV.COD_SUPERVISOR= :P69_COD_SUPERVISOR OR :P69_COD_SUPERVISOR IS NULL)',
'and mt.fec_inicio =:P69_FECHA_INICIO',
'AND MT.FEC_FIN = :P69_FECHA_FIN'))
,p_attribute_07=>'P69_VENDEDOR,P69_FECHA_INICIO,P69_FECHA_FIN,P69_COD_SUPERVISOR'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14735661566218733)
,p_event_id=>wwv_flow_imp.id(14734651353218733)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P69_META_1'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
' ',
'select to_char(SUM(mt.proyeccion),''999G999G999G999G999G999G990'')monto',
' ',
'from FV_PROYECCIONES_UN  mt, FV_VENDEDORES FV',
'where mt.cod_empresa=''1''',
'AND MT.COD_EMPRESA=FV.COD_EMPRESA',
'AND MT.COD_VENDEDOR=FV.COD_VENDEDOR',
'and (mt.cod_vendedor =  :P69_VENDEDOR OR :P69_VENDEDOR IS NULL)',
'AND (FV.COD_SUPERVISOR= :P69_COD_SUPERVISOR OR :P69_COD_SUPERVISOR IS NULL)',
'AND LAST_DAY(TO_DATE(''01/''||MT.MES||''/''||MT.ANhO,''DD/MM/YYYY''))=LAST_DAY(:P69_FECHA_FIN); '))
,p_attribute_07=>'P69_VENDEDOR,P69_FECHA_INICIO,P69_FECHA_FIN,P69_COD_SUPERVISOR'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14736035266218734)
,p_name=>'refrescar'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14716663733218723)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14736564710218734)
,p_event_id=>wwv_flow_imp.id(14736035266218734)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50565310547560094)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14737065939218734)
,p_event_id=>wwv_flow_imp.id(14736035266218734)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'select to_char(SUM(mt.monto),''999G999G999G999G999G999G990'')monto',
'INTO :P69_META',
'from fv_metas_vend mt, FV_VENDEDORES FV',
'where mt.cod_empresa=''1''',
'AND MT.COD_EMPRESA=FV.COD_EMPRESA',
'AND MT.COD_VENDEDOR=FV.COD_VENDEDOR',
'and (mt.cod_vendedor =  :P69_VENDEDOR OR :P69_VENDEDOR IS NULL)',
'AND (FV.COD_SUPERVISOR= :P69_COD_SUPERVISOR OR :P69_COD_SUPERVISOR IS NULL)',
'and mt.fec_inicio =:P69_FECHA_INICIO',
'AND MT.FEC_FIN = :P69_FECHA_FIN;',
'EXCEPTION',
'WHEN OTHERS THEN ',
':P69_META:=0;',
'END;',
'',
'',
'BEGIN ',
'select to_char(SUM(mt.proyeccion),''999G999G999G999G999G999G990'')monto',
'INTO :P69_META_1',
'from FV_PROYECCIONES_UN  mt, FV_VENDEDORES FV',
'where mt.cod_empresa=''1''',
'AND MT.COD_EMPRESA=FV.COD_EMPRESA',
'AND MT.COD_VENDEDOR=FV.COD_VENDEDOR',
'and (mt.cod_vendedor =  :P69_VENDEDOR OR :P69_VENDEDOR IS NULL)',
'AND (FV.COD_SUPERVISOR= :P69_COD_SUPERVISOR OR :P69_COD_SUPERVISOR IS NULL)',
'AND LAST_DAY(TO_DATE(''01/''||MT.MES||''/''||MT.ANhO,''DD/MM/YYYY''))=LAST_DAY(:P69_FECHA_FIN);',
'EXCEPTION',
'WHEN OTHERS THEN ',
':P69_META_1:=0;',
'END;'))
,p_attribute_02=>'P69_VENDEDOR,P69_COD_SUPERVISOR'
,p_attribute_03=>'P69_META,P69_META_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14737532461218734)
,p_event_id=>wwv_flow_imp.id(14736035266218734)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50564818448560089)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14738033907218734)
,p_event_id=>wwv_flow_imp.id(14736035266218734)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50771274257490753)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14738518189218735)
,p_event_id=>wwv_flow_imp.id(14736035266218734)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(197421362433516281)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14739053269218735)
,p_event_id=>wwv_flow_imp.id(14736035266218734)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50773598644490776)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14739591864218735)
,p_event_id=>wwv_flow_imp.id(14736035266218734)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(197420285386516270)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14740041290218735)
,p_event_id=>wwv_flow_imp.id(14736035266218734)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(197421362433516281)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14740482515218735)
,p_name=>'SET_COMISION'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14716663733218723)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14740884768218736)
,p_name=>'SET_PERIODO'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P69_FECHA_FIN,P69_FECHA_INICIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14741342212218736)
,p_event_id=>wwv_flow_imp.id(14740884768218736)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  select  MAX(NUM_PERIODO)',
'   INTO  :P69_PERIODO',
'   from FV_PERIODOS_COMISION a',
'where a.cod_empresa=''1''',
'AND FEC_INICIAL>=:P69_FECHA_INICIO',
'AND FEC_FINAL<=:P69_FECHA_FIN;',
' ',
'EXCEPTION',
'WHEN OTHERS THEN',
'    NULL;',
'  END;'))
,p_attribute_02=>'P69_FECHA_INICIO,P69_FECHA_FIN'
,p_attribute_03=>'P69_PERIODO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14741708984218736)
,p_name=>'refresh_comision'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P69_VENDEDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp.component_end;
end;
/
