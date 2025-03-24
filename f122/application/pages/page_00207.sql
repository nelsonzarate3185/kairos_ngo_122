prompt --application/pages/page_00207
begin
--   Manifest
--     PAGE: 00207
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
 p_id=>207
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Comisiones Supervisores'
,p_alias=>'COMISIONES-SUPERVISORES'
,p_page_mode=>'MODAL'
,p_step_title=>'Comisiones Supervisores'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20221116164912'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(151551646860275215)
,p_name=>'Comisiones'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'tipo,  COD_SUP , SUPERV , COD_VENDEDOR , DESC_VENDEDOR , VENTA,  COSTO,  MARGEN , COMISION , NUM_PERIODO ,ORDEN',
'from',
'V_COMISION_SUPERVISOR ',
'WHERE NUM_PERIODO=:P207_PERIODO',
'AND COD_SUP=:P207_COD_VENDEDOR',
'UNION ALL',
'',
' select ',
'  ''SUELDO BASE'' tipo,v.cod_vendedor  COD_SUP ,p.nombre SUPERV , null  COD_VENDEDOR , ',
'  null DESC_VENDEDOR , 0 VENTA, 0 COSTO,0  MARGEN ,',
'  sueldo_base COMISION , 0 NUM_PERIODO ,3 ORDEN',
'	from fv_vendedores v,',
'	     rh_empleados e, personas p',
'	where v.cod_empresa= ''1''',
'	and   v.cod_vendedor= :P207_COD_VENDEDOR',
'	and   v.cod_persona=e.cod_persona',
'	and   v.cod_empresa=e.cod_empresa',
'  and p.cod_persona=e.cod_persona',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P207_COD_VENDEDOR,P207_PERIODO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43943293184264276)
,p_query_column_id=>1
,p_column_alias=>'TIPO'
,p_column_display_sequence=>1
,p_column_heading=>'Tipo'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43943668463264276)
,p_query_column_id=>2
,p_column_alias=>'COD_SUP'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43944002980264277)
,p_query_column_id=>3
,p_column_alias=>'SUPERV'
,p_column_display_sequence=>3
,p_column_heading=>'Superv'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43944427277264277)
,p_query_column_id=>4
,p_column_alias=>'COD_VENDEDOR'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43944871055264277)
,p_query_column_id=>5
,p_column_alias=>'DESC_VENDEDOR'
,p_column_display_sequence=>5
,p_column_heading=>'Desc Vendedor'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43945291908264277)
,p_query_column_id=>6
,p_column_alias=>'VENTA'
,p_column_display_sequence=>6
,p_column_heading=>'Venta'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43945649340264277)
,p_query_column_id=>7
,p_column_alias=>'COSTO'
,p_column_display_sequence=>7
,p_column_heading=>'Costo'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43946074879264277)
,p_query_column_id=>8
,p_column_alias=>'MARGEN'
,p_column_display_sequence=>8
,p_column_heading=>'Margen'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43946478869264278)
,p_query_column_id=>9
,p_column_alias=>'COMISION'
,p_column_display_sequence=>9
,p_column_heading=>'Comision'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43946881715264278)
,p_query_column_id=>10
,p_column_alias=>'NUM_PERIODO'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43947228381264278)
,p_query_column_id=>11
,p_column_alias=>'ORDEN'
,p_column_display_sequence=>11
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43947645440264278)
,p_name=>'P207_COD_VENDEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(151551646860275215)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43948056999264278)
,p_name=>'P207_PERIODO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(151551646860275215)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/
