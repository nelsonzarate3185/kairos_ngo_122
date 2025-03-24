prompt --application/pages/page_00821
begin
--   Manifest
--     PAGE: 00821
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
 p_id=>821
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'casos_imagenes'
,p_alias=>'CASOS-IMAGENES'
,p_page_mode=>'MODAL'
,p_step_title=>'casos_imagenes'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20250218164416'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(469021142331310144)
,p_name=>'Adjuntos'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select f.id_caso,',
'       f.id_derivaciones,',
'       f.nombre_archivo,',
'       f.url_archivo,',
'       f.mime_type,',
'       f.imagen,',
'       NULL VER_IMAGEN,',
'       f.rowid,',
'	 CASE ',
'    WHEN mime_type LIKE ''image/%'' THEN ''<a href="https://api.ngosaeca.com.py/imagenes/NGO/EXPERIENCIA_CLIENTE/DERIVACIONES/'' || nombre_archivo || ''" target="_blank">Ver Imagen</a>''',
'    WHEN mime_type LIKE ''application/pdf'' THEN ''<a href="https://api.ngosaeca.com.py/imagenes/NGO/EXPERIENCIA_CLIENTE/DERIVACIONES/'' || nombre_archivo || ''" target="_blank">Ver PDF</a>''',
'    ELSE ''Formato no soportado''',
'END AS VER_ARCHIVO',
'from inv.CC_DERIVACIONES_FILES f',
'where f.id_caso = :P821_ID_CASO',
'and f.id_derivaciones = :P821_ID_DERIVACION'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P821_ID_CASO,P821_ID_DERIVACION'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No se encontraron archivos que mostrar'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(469021510779310145)
,p_query_column_id=>1
,p_column_alias=>'ID_CASO'
,p_column_display_sequence=>1
,p_column_heading=>'Id Caso'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(469021932868310146)
,p_query_column_id=>2
,p_column_alias=>'ID_DERIVACIONES'
,p_column_display_sequence=>2
,p_column_heading=>'Id Derivaciones'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(469022375312310146)
,p_query_column_id=>3
,p_column_alias=>'NOMBRE_ARCHIVO'
,p_column_display_sequence=>3
,p_column_heading=>'Nombre Archivo'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(259356160394445522)
,p_query_column_id=>4
,p_column_alias=>'URL_ARCHIVO'
,p_column_display_sequence=>15
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(469022752923310146)
,p_query_column_id=>5
,p_column_alias=>'MIME_TYPE'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(469023103445310146)
,p_query_column_id=>6
,p_column_alias=>'IMAGEN'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(259356276735445523)
,p_query_column_id=>7
,p_column_alias=>'VER_IMAGEN'
,p_column_display_sequence=>25
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(259356367537445524)
,p_query_column_id=>8
,p_column_alias=>'ROWID'
,p_column_display_sequence=>35
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(461658637926369743)
,p_query_column_id=>9
,p_column_alias=>'VER_ARCHIVO'
,p_column_display_sequence=>45
,p_column_heading=>'Ver Archivo'
,p_use_as_row_header=>'N'
,p_column_format=>'PCT_GRAPH:::'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(259355988511445520)
,p_name=>'P821_ID_CASO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(469021142331310144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(259356003062445521)
,p_name=>'P821_ID_DERIVACION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(469021142331310144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
