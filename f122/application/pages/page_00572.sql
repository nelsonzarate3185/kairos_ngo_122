prompt --application/pages/page_00572
begin
--   Manifest
--     PAGE: 00572
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
 p_id=>572
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Inventario Actual'
,p_alias=>'INVENTARIO-ACTUAL'
,p_step_title=>'Inventario Actual'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function setRefresh() {',
'  apex.region("reporte").refresh();',
'  ',
'  setTimeout(function() {',
'    setRefresh();  ',
'  }, 2000);',
'  ',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#t_Body_content',
'{background: #000000}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250111094036'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(181628887421034628)
,p_plug_name=>'Filtro'
,p_region_name=>'filtro'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(181629396971034633)
,p_plug_name=>'Avance Seleccion'
,p_region_name=>'grafico'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_display_column=>1
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(181629453038034634)
,p_region_id=>wwv_flow_imp.id(181629396971034633)
,p_chart_type=>'dial'
,p_width=>'300'
,p_height=>'380'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'slideToLeft'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'percent'
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
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_no_data_found_message=>'.'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>90
,p_gauge_angle_extent=>360
,p_show_gauge_value=>true
,p_automatic_refresh_interval=>60
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(181629582431034635)
,p_chart_id=>wwv_flow_imp.id(181629453038034634)
,p_seq=>10
,p_name=>'Nuevo'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'sum(SKU_CONTADO) SKU_CONTADO,',
'sum( SKU_A_CONTAR) SKU_A_CONTAR,',
'sum( INVENTARIO)INVENTARIO,',
'sum(  CANTIDAD_CONTEO )CANTIDAD_CONTEO,',
'sum( CANT_SIS)CANT_SIS,',
'sum(  CANTIDAD_DE_INVENTARIO)CANTIDAD_DE_INVENTARIO',
'',
'from (SELECT  ',
'       NVL(SUM(SKU_CONTADO), 0) SKU_CONTADO,',
'       NVL(SUM(SKU_A_CONTAR), 0) SKU_A_CONTAR,',
'       SUM(INVENTARIO) INVENTARIO,',
'       NVL(SUM(cantidad_conteo), 0) cantidad_conteo,',
'       NVL(SUM(cant_sis), 0) cant_sis,',
'       sum(cantidad_de_inventario) cantidad_de_inventario,''INVENTARIO''  TIPO',
'  FROM SUCURSAL_ZONA S,',
'       (SELECT c.cod_sucursal,',
'               COUNT(DISTINCT(M.COD_ARTICULO)) SKU_CONTADO,',
'               COUNT(DISTINCT(D.COD_ARTICULO)) SKU_A_CONTAR,',
'               SUM(D.CANTIDAD) INVENTARIO,',
'               SUM(DECODE(NVL(M.CANTIDAD, 0), 0, 0, M.CANTIDAD)) cantidad_conteo,',
'               SUM(D.CANTIDAD) cant_sis,',
'               COUNT(distinct(c.nro_comprobante)) cantidad_de_inventario, ''INVENTARIO''         TIPO',
'          FROM ST_GENERACION_INVENTARIO_DET D,',
'               SM_INVENTARIO_DET            M,',
'               st_generacion_inventario     c',
'         WHERE D.COD_EMPRESA = ''1''',
'           AND M.COD_ARTICULO(+) = D.COD_ARTICULO',
'           AND M.INVENTORY_AREA(+) = D.NRO_COMPROBANTE',
'           and c.cod_empresa = d.cod_empresa',
'           AND c.FECHA_CIERRE IS NULL',
'              AND NVL(c.INVENTARIOOT, ''N'') != ''S''',
'              and (c.nro_comprobante = :P572_NRO_INVENTARIO OR',
'       :P572_NRO_INVENTARIO IS NULL)',
'           and (c.cod_sucursal=:P572_SUCURSAL OR :P572_SUCURSAL IS NULL)',
'           and (c.nro_comprobante= :P572_NRO_INVENTARIO OR :P572_NRO_INVENTARIO IS NULL)',
'           and (trunc(c.fec_comprobante) BETWEEN :P572_FECHA_INI AND :P572_FECHA_FIN)',
'           and c.nro_comprobante > 400',
'           and c.tip_comprobante = d.tip_comprobante',
'           and c.ser_comprobante = d.ser_comprobante',
'           and c.nro_comprobante = d.nro_comprobante',
'         GROUP BY c.cod_sucursal) AA',
' WHERE AA.cod_sucursal(+) = s.cod_sucursal',
'     AND (S.ZONA_SUC=:p572_centro_distribucion or :p572_centro_distribucion is null )',
' ',
'Having NVL(SUM(SKU_A_CONTAR), 0) > 0',
'UNION ALL',
'SELECT  ',
'       NVL(SUM(CONT), 0) CONT,',
'       NVL(SUM(A_CONT), 0) A_CONT,',
'              SUM(INVENTARIO) INVENTARIO,',
'       NVL(SUM(cant_inv), 0) cant_inv,',
'       NVL(SUM(cant_sis), 0) cant_sis,',
'       COUNT(g.nro_comprobante) nroinv,''INVENTARIO_OT'' TIPO',
'  FROM SUCURSAL_ZONA S,',
'       ST_GENERACION_INVENTARIO G,',
'       (SELECT D.TIP_COMPROBANTE,',
'               D.SER_COMPROBANTE,',
'               D.NRO_COMPROBANTE,',
'               COUNT(DISTINCT M.COD_ARTICULO) CONT,',
'               COUNT(DISTINCT D.NRO_OT) A_CONT,',
'               1 INVENTARIO,',
'               SUM(DECODE(NVL(M.CANTIDAD, 0), 0, 0, M.CANTIDAD)) cant_inv,',
'               SUM(D.CANTIDAD) cant_sis, ''INVENTARIO_OT'' TIPO',
'        ',
'          FROM ST_GENERACION_INVENTARIO_DET D, SM_INVENTARIO_DET M',
'         WHERE D.COD_EMPRESA = ''1''',
'          -- AND M.cod_articulo(+) = to_char(D.Nro_Ot)',
'          AND d.ser_ot || d.nro_ot = m.COD_ARTICULO(+)',
'              ',
'           AND M.INVENTORY_AREA(+) = D.NRO_COMPROBANTE',
'         GROUP BY D.TIP_COMPROBANTE, D.SER_COMPROBANTE, D.NRO_COMPROBANTE) AA',
' WHERE G.COD_SUCURSAL(+) = S.COD_SUCURSAL',
'   AND G.COD_EMPRESA = ''1''',
'   AND G.FECHA_CIERRE IS NULL',
'   AND NVL(G.INVENTARIOOT, ''N'') = ''S''',
'       and (G.cod_sucursal=:P572_SUCURSAL OR :P572_SUCURSAL IS NULL)',
'           and (G.nro_comprobante= :P572_NRO_INVENTARIO OR :P572_NRO_INVENTARIO IS NULL)',
'           ',
'           AND (S.ZONA_SUC=:p572_centro_distribucion or :p572_centro_distribucion is null )',
'                      and (trunc(G.fec_comprobante) BETWEEN :P572_FECHA_INI AND :P572_FECHA_FIN)',
'   AND AA.TIP_COMPROBANTE(+) = G.TIP_COMPROBANTE',
'   AND AA.SER_COMPROBANTE(+) = G.SER_COMPROBANTE',
'   AND AA.NRO_COMPROBANTE(+) = G.NRO_COMPROBANTE',
'',
' ',
')',
'',
''))
,p_ajax_items_to_submit=>'P572_CENTRO_DISTRIBUCION,P572_SUCURSAL,P572_FECHA_INI,P572_FECHA_FIN,P572_NRO_INVENTARIO'
,p_items_value_column_name=>'SKU_CONTADO'
,p_items_max_value=>'SKU_A_CONTAR'
,p_color=>'#e10b21'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_gauge_plot_area_color=>'#1abc0b'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(182732856586014915)
,p_plug_name=>'Inventario Actual'
,p_region_name=>'reporte'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_column=>4
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A.USUARIO,',
'       A.FECHA_CARGA fecha_carga,',
'       A.COD_ARTICULO,',
'       A.CANTIDAD,',
'       a.inventory_id,',
'       a.zona',
'',
'  from SM_INVENTARIO_DET A, st_generacion_inventario c, SUCURSAL_ZONA S',
' WHERE (c.cod_sucursal = :P572_SUCURSAL OR :P572_SUCURSAL IS NULL)',
'   and (a.INVENTORY_AREA = :P572_NRO_INVENTARIO OR',
'       :P572_NRO_INVENTARIO IS NULL)',
'   and (trunc(c.fec_comprobante) BETWEEN :P572_FECHA_INI AND :P572_FECHA_FIN)',
'   AND a.INVENTORY_AREA = c.NRO_COMPROBANTE',
'   and c.cod_sucursal = s.cod_sucursal',
'   AND (S.ZONA_SUC = :p572_centro_distribucion or',
'       :p572_centro_distribucion is null)',
'   and a.cod_articulo is not null',
' ORDER BY FECHA_CARGA desc',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P572_CENTRO_DISTRIBUCION,P572_SUCURSAL,P572_FECHA_INI,P572_FECHA_FIN,P572_NRO_INVENTARIO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Inventario Actual'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(182732959404014915)
,p_name=>'Inventario Actual'
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ning\00FAn dato.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>182732959404014915
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182733303997014914)
,p_db_column_name=>'USUARIO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182734135123014913)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182734599169014912)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(181628625890034626)
,p_db_column_name=>'INVENTORY_ID'
,p_display_order=>14
,p_column_identifier=>'E'
,p_column_label=>'Inventario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(181630165669034641)
,p_db_column_name=>'ZONA'
,p_display_order=>34
,p_column_identifier=>'G'
,p_column_label=>'Zona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(183046396231013024)
,p_db_column_name=>'FECHA_CARGA'
,p_display_order=>44
,p_column_identifier=>'H'
,p_column_label=>'Fecha Carga'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(182734912900014637)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1827350'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'FECHA_CARGA:COD_ARTICULO:CANTIDAD:ZONA:USUARIO:INVENTORY_ID:'
,p_sort_column_1=>'FECHA_CARGA'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(183044583714013006)
,p_plug_name=>'Informe Por Centro de Distribucion'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(183044692843013007)
,p_plug_name=>'Artigas'
,p_parent_plug_id=>wwv_flow_imp.id(183044583714013006)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(183044794625013008)
,p_region_id=>wwv_flow_imp.id(183044692843013007)
,p_chart_type=>'dial'
,p_width=>'90'
,p_height=>'100'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
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
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.9
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>90
,p_gauge_angle_extent=>360
,p_show_gauge_value=>true
,p_automatic_refresh_interval=>200
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(183044843828013009)
,p_chart_id=>wwv_flow_imp.id(183044794625013008)
,p_seq=>10
,p_name=>'Artigas'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT S.ZONA_SUC,',
'       NVL(SUM(SKU_CONTADO), 0) SKU_CONTADO,',
'       NVL(SUM(SKU_A_CONTAR), 0) SKU_A_CONTAR,',
'       SUM(INVENTARIO) INVENTARIO,',
'       NVL(SUM(cantidad_conteo), 0) cantidad_conteo,',
'       NVL(SUM(cant_sis), 0) cant_sis,',
'       sum(cantidad_de_inventario) cantidad_de_inventario,''INVENTARIO''  TIPO',
'  FROM SUCURSAL_ZONA S,',
'       (SELECT c.cod_sucursal,',
'               COUNT(DISTINCT(M.COD_ARTICULO)) SKU_CONTADO,',
'               COUNT(DISTINCT(D.COD_ARTICULO)) SKU_A_CONTAR,',
'               SUM(D.CANTIDAD) INVENTARIO,',
'               SUM(DECODE(NVL(M.CANTIDAD, 0), 0, 0, M.CANTIDAD)) cantidad_conteo,',
'               SUM(D.CANTIDAD) cant_sis,',
'               COUNT(distinct(c.nro_comprobante)) cantidad_de_inventario, ''INVENTARIO''         TIPO',
'          FROM ST_GENERACION_INVENTARIO_DET D,',
'               SM_INVENTARIO_DET            M,',
'               st_generacion_inventario     c',
'         WHERE D.COD_EMPRESA = ''1''',
'           AND M.COD_ARTICULO(+) = D.COD_ARTICULO',
'           AND M.INVENTORY_AREA(+) = D.NRO_COMPROBANTE',
'           and c.cod_empresa = d.cod_empresa',
'           AND c.FECHA_CIERRE IS NULL',
'            ',
'           ',
'          ',
'           and (c.fec_comprobante BETWEEN :P572_FECHA_INI AND :P572_FECHA_FIN)',
'           and c.nro_comprobante > 400',
'           and c.tip_comprobante = d.tip_comprobante',
'           and c.ser_comprobante = d.ser_comprobante',
'           and c.nro_comprobante = d.nro_comprobante',
'         GROUP BY c.cod_sucursal',
'         UNION ALL',
'                 ',
'       SELECT ''01'', 1,1,1,1,1,1,''INVENTARIO'' from dual) AA',
' WHERE AA.cod_sucursal(+) = s.cod_sucursal',
'     AND (S.ZONA_SUC=:p572_centro_distribucion or :p572_centro_distribucion is null )',
'     AND s.zona_suc=''ARTIGAS''',
' group by S.ZONA_SUC, TIPO',
'Having NVL(SUM(SKU_A_CONTAR), 0) > 0',
' ',
' order by 1',
' --having NVL(SUM(A_CONT), 0) > 0',
''))
,p_ajax_items_to_submit=>'P572_CENTRO_DISTRIBUCION,P572_SUCURSAL,P572_FECHA_INI,P572_FECHA_FIN,P572_NRO_INVENTARIO'
,p_items_value_column_name=>'SKU_CONTADO'
,p_items_max_value=>'SKU_A_CONTAR'
,p_color=>'#1a3ad9'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(183045109287013012)
,p_plug_name=>'San Lorenzo'
,p_parent_plug_id=>wwv_flow_imp.id(183044583714013006)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(183045282243013013)
,p_region_id=>wwv_flow_imp.id(183045109287013012)
,p_chart_type=>'dial'
,p_width=>'90'
,p_height=>'100'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
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
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.9
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>90
,p_gauge_angle_extent=>360
,p_show_gauge_value=>true
,p_automatic_refresh_interval=>200
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(183045398132013014)
,p_chart_id=>wwv_flow_imp.id(183045282243013013)
,p_seq=>10
,p_name=>'San Lorenzo'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT S.ZONA_SUC,',
'       NVL(SUM(SKU_CONTADO), 0) SKU_CONTADO,',
'       NVL(SUM(SKU_A_CONTAR), 0) SKU_A_CONTAR,',
'       SUM(INVENTARIO) INVENTARIO,',
'       NVL(SUM(cantidad_conteo), 0) cantidad_conteo,',
'       NVL(SUM(cant_sis), 0) cant_sis,',
'       sum(cantidad_de_inventario) cantidad_de_inventario,''INVENTARIO''  TIPO',
'  FROM SUCURSAL_ZONA S,',
'       (SELECT c.cod_sucursal,',
'               COUNT(DISTINCT(M.COD_ARTICULO)) SKU_CONTADO,',
'               COUNT(DISTINCT(D.COD_ARTICULO)) SKU_A_CONTAR,',
'               SUM(D.CANTIDAD) INVENTARIO,',
'               SUM(DECODE(NVL(M.CANTIDAD, 0), 0, 0, M.CANTIDAD)) cantidad_conteo,',
'               SUM(D.CANTIDAD) cant_sis,',
'               COUNT(distinct(c.nro_comprobante)) cantidad_de_inventario, ''INVENTARIO''         TIPO',
'          FROM ST_GENERACION_INVENTARIO_DET D,',
'               SM_INVENTARIO_DET            M,',
'               st_generacion_inventario     c',
'         WHERE D.COD_EMPRESA = ''1''',
'           AND M.COD_ARTICULO(+) = D.COD_ARTICULO',
'           AND M.INVENTORY_AREA(+) = D.NRO_COMPROBANTE',
'           and c.cod_empresa = d.cod_empresa',
'           AND c.FECHA_CIERRE IS NULL',
'          ',
'                    ',
'           and (c.fec_comprobante BETWEEN :P572_FECHA_INI AND :P572_FECHA_FIN)',
'           and c.nro_comprobante > 400',
'           and c.tip_comprobante = d.tip_comprobante',
'           and c.ser_comprobante = d.ser_comprobante',
'           and c.nro_comprobante = d.nro_comprobante',
'         GROUP BY c.cod_sucursal',
'         UNION ALL          ',
'       SELECT ''190'', 1,1,1,1,1,1,''INVENTARIO'' from dual) AA',
' WHERE AA.cod_sucursal(+) = s.cod_sucursal',
'     AND (S.ZONA_SUC=:p572_centro_distribucion or :p572_centro_distribucion is null )',
'     AND s.zona_suc=''SAN LORENZO''',
' group by S.ZONA_SUC, TIPO',
'Having NVL(SUM(SKU_A_CONTAR), 0) > 0',
' ',
' order by 1',
' --having NVL(SUM(A_CONT), 0) > 0',
''))
,p_ajax_items_to_submit=>'P572_CENTRO_DISTRIBUCION,P572_SUCURSAL,P572_FECHA_INI,P572_FECHA_FIN,P572_NRO_INVENTARIO'
,p_items_value_column_name=>'SKU_CONTADO'
,p_items_max_value=>'SKU_A_CONTAR'
,p_color=>'#edbd45'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(183045441551013015)
,p_plug_name=>'Oviedo'
,p_parent_plug_id=>wwv_flow_imp.id(183044583714013006)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(183045595341013016)
,p_region_id=>wwv_flow_imp.id(183045441551013015)
,p_chart_type=>'dial'
,p_width=>'90'
,p_height=>'100'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
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
,p_no_data_found_message=>'Sin Informacion'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.9
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>90
,p_gauge_angle_extent=>360
,p_show_gauge_value=>true
,p_automatic_refresh_interval=>200
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(183045678905013017)
,p_chart_id=>wwv_flow_imp.id(183045595341013016)
,p_seq=>10
,p_name=>'Oviedo'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT S.ZONA_SUC,',
'       NVL(SUM(SKU_CONTADO), 0) SKU_CONTADO,',
'       NVL(SUM(SKU_A_CONTAR), 0) SKU_A_CONTAR,',
'       SUM(INVENTARIO) INVENTARIO,',
'       NVL(SUM(cantidad_conteo), 0) cantidad_conteo,',
'       NVL(SUM(cant_sis), 0) cant_sis,',
'       sum(cantidad_de_inventario) cantidad_de_inventario,''INVENTARIO''  TIPO',
'  FROM SUCURSAL_ZONA S,',
'       (SELECT c.cod_sucursal,',
'               COUNT(DISTINCT(M.COD_ARTICULO)) SKU_CONTADO,',
'               COUNT(DISTINCT(D.COD_ARTICULO)) SKU_A_CONTAR,',
'               SUM(D.CANTIDAD) INVENTARIO,',
'               SUM(DECODE(NVL(M.CANTIDAD, 0), 0, 0, M.CANTIDAD)) cantidad_conteo,',
'               SUM(D.CANTIDAD) cant_sis,',
'               COUNT(distinct(c.nro_comprobante)) cantidad_de_inventario, ''INVENTARIO''         TIPO',
'          FROM ST_GENERACION_INVENTARIO_DET D,',
'               SM_INVENTARIO_DET            M,',
'               st_generacion_inventario     c',
'         WHERE D.COD_EMPRESA = ''1''',
'           AND M.COD_ARTICULO(+) = D.COD_ARTICULO',
'           AND M.INVENTORY_AREA(+) = D.NRO_COMPROBANTE',
'           and c.cod_empresa = d.cod_empresa',
'           AND c.FECHA_CIERRE IS NULL',
'          ',
'           and (c.fec_comprobante BETWEEN :P572_FECHA_INI AND :P572_FECHA_FIN)',
'           and c.nro_comprobante > 400',
'           and c.tip_comprobante = d.tip_comprobante',
'           and c.ser_comprobante = d.ser_comprobante',
'           and c.nro_comprobante = d.nro_comprobante',
'         GROUP BY c.cod_sucursal',
'         UNION ALL ',
'       SELECT ''275'', 1,1,1,1,1,1,''INVENTARIO'' from dual) AA',
' WHERE AA.cod_sucursal(+) = s.cod_sucursal',
'     AND (S.ZONA_SUC=:p572_centro_distribucion or :p572_centro_distribucion is null )',
'     AND s.zona_suc=''OVIEDO''',
' group by S.ZONA_SUC, TIPO',
'Having NVL(SUM(SKU_A_CONTAR), 0) > 0',
' ',
' order by 1',
' --having NVL(SUM(A_CONT), 0) > 0',
''))
,p_ajax_items_to_submit=>'P572_CENTRO_DISTRIBUCION,P572_SUCURSAL,P572_FECHA_INI,P572_FECHA_FIN,P572_NRO_INVENTARIO'
,p_items_value_column_name=>'SKU_CONTADO'
,p_items_max_value=>'SKU_A_CONTAR'
,p_color=>'#fb3e7a'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(183045771057013018)
,p_plug_name=>'CDE'
,p_parent_plug_id=>wwv_flow_imp.id(183044583714013006)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(183045845981013019)
,p_region_id=>wwv_flow_imp.id(183045771057013018)
,p_chart_type=>'dial'
,p_width=>'90'
,p_height=>'100'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
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
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.9
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>90
,p_gauge_angle_extent=>360
,p_show_gauge_value=>true
,p_automatic_refresh_interval=>200
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(183045957788013020)
,p_chart_id=>wwv_flow_imp.id(183045845981013019)
,p_seq=>10
,p_name=>'CDE'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT S.ZONA_SUC,',
'       NVL(SUM(SKU_CONTADO), 0) SKU_CONTADO,',
'       NVL(SUM(SKU_A_CONTAR), 0) SKU_A_CONTAR,',
'       SUM(INVENTARIO) INVENTARIO,',
'       NVL(SUM(cantidad_conteo), 0) cantidad_conteo,',
'       NVL(SUM(cant_sis), 0) cant_sis,',
'       sum(cantidad_de_inventario) cantidad_de_inventario,''INVENTARIO''  TIPO',
'  FROM SUCURSAL_ZONA S,',
'       (SELECT c.cod_sucursal,',
'               COUNT(DISTINCT(M.COD_ARTICULO)) SKU_CONTADO,',
'               COUNT(DISTINCT(D.COD_ARTICULO)) SKU_A_CONTAR,',
'               SUM(D.CANTIDAD) INVENTARIO,',
'               SUM(DECODE(NVL(M.CANTIDAD, 0), 0, 0, M.CANTIDAD)) cantidad_conteo,',
'               SUM(D.CANTIDAD) cant_sis,',
'               COUNT(distinct(c.nro_comprobante)) cantidad_de_inventario, ''INVENTARIO''         TIPO',
'          FROM ST_GENERACION_INVENTARIO_DET D,',
'               SM_INVENTARIO_DET            M,',
'               st_generacion_inventario     c',
'         WHERE D.COD_EMPRESA = ''1''',
'           AND M.COD_ARTICULO(+) = D.COD_ARTICULO',
'           AND M.INVENTORY_AREA(+) = D.NRO_COMPROBANTE',
'           and c.cod_empresa = d.cod_empresa',
'           AND c.FECHA_CIERRE IS NULL     ',
'           and (c.fec_comprobante BETWEEN :P572_FECHA_INI AND :P572_FECHA_FIN)',
'           and c.nro_comprobante > 400',
'           and c.tip_comprobante = d.tip_comprobante',
'           and c.ser_comprobante = d.ser_comprobante',
'           and c.nro_comprobante = d.nro_comprobante',
'         GROUP BY c.cod_sucursal',
'         UNION ALL ',
'       SELECT ''262'', 1,1,1,1,1,1,''INVENTARIO'' from dual) AA',
' WHERE AA.cod_sucursal(+) = s.cod_sucursal',
'     AND (S.ZONA_SUC=:p572_centro_distribucion or :p572_centro_distribucion is null )',
'     AND s.zona_suc=''CDE''',
' group by S.ZONA_SUC, TIPO',
'Having NVL(SUM(SKU_A_CONTAR), 0) > 0',
' ',
' order by 1',
' --having NVL(SUM(A_CONT), 0) > 0',
''))
,p_ajax_items_to_submit=>'P572_CENTRO_DISTRIBUCION,P572_SUCURSAL,P572_FECHA_INI,P572_FECHA_FIN,P572_NRO_INVENTARIO'
,p_items_value_column_name=>'SKU_CONTADO'
,p_items_max_value=>'SKU_A_CONTAR'
,p_color=>'#05d40c'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(181630507408034645)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(181628887421034628)
,p_button_name=>'aCTUALIZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181628953106034629)
,p_name=>'P572_CENTRO_DISTRIBUCION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(181628887421034628)
,p_prompt=>'Centro de Distribucion'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:ARTIGAS;ARTIGAS,SAN LORENZO;SAN LORENZO,OVIEDO;OVIEDO,CDE;CDE,CONCEPCION;CONCEPCION,TODOS'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181629034599034630)
,p_name=>'P572_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(181628887421034628)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT S.COD_SUCURSAL||'' - ''||S.DESCRIPCION D, S.COD_SUCURSAL C FROM SUCURSAL_ZONA Z, SUCURSALES S',
'WHERE S.COD_EMPRESA=''1''',
'AND Z.COD_SUCURSAL=S.COD_SUCURSAL',
'AND (Z.ZONA_SUC =:P572_CENTRO_DISTRIBUCION OR :P572_CENTRO_DISTRIBUCION IS NULL)',
'ORDER BY DESCRIPCION '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
,p_lov_cascade_parent_items=>'P572_CENTRO_DISTRIBUCION'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181630311833034643)
,p_name=>'P572_FECHA_INI'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(181628887421034628)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Inicial'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(181630418664034644)
,p_name=>'P572_FECHA_FIN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(181628887421034628)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Fin'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
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
 p_id=>wwv_flow_imp.id(181630951885034649)
,p_name=>'P572_NRO_INVENTARIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(181628887421034628)
,p_prompt=>'Nro Inventario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(181630649602034646)
,p_name=>'DA_ACTUALIZAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(181630507408034645)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181630730635034647)
,p_event_id=>wwv_flow_imp.id(181630649602034646)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(181629396971034633)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(183046442361013025)
,p_event_id=>wwv_flow_imp.id(181630649602034646)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(183044692843013007)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(183046577618013026)
,p_event_id=>wwv_flow_imp.id(181630649602034646)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(183045771057013018)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(183046672790013027)
,p_event_id=>wwv_flow_imp.id(181630649602034646)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(183045441551013015)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(183046749562013028)
,p_event_id=>wwv_flow_imp.id(181630649602034646)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(183045109287013012)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181630838523034648)
,p_event_id=>wwv_flow_imp.id(181630649602034646)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(182732856586014915)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(183046043377013021)
,p_name=>'actualiza'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(183046170252013022)
,p_event_id=>wwv_flow_imp.id(183046043377013021)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setRefresh();'
);
wwv_flow_imp.component_end;
end;
/
