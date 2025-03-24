prompt --application/pages/page_00421
begin
--   Manifest
--     PAGE: 00421
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
 p_id=>421
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTRLISTA'
,p_alias=>'VTRLISTA'
,p_step_title=>'VTRLISTA'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var vREPORTE = "prueba";',
'var vREPORTURL = "http://localhost:28080/api/reubicar?origen=C:/Users/hector.segovia/Downloads&destino=C:/Users/hector.segovia/Pictures/reportes/hector/juan&archivo=prueba.pdf";',
'',
'',
'function Jasper_reubicar_directa(reporte, parametros){ ',
'var req = new XMLHttpRequest();',
'req.open(''GET'',',
'         "https://ngosaeca.com.py/reportes/rest_v2/reports/reports/VTIMPFAC_CANON_FED.pdf?P_COD_EMPRESA=1&P_TIP_COMPROBANTE=FCO&P_SER_COMPROBANTE=FE2&P_NRO_COMPROBANTE=16&P_COD_CLIENTE=&P_REIMPRESO=N&P_IMPRIME_CONDICION=S&P_USUARIO=HSEGOVIA&j_usernam'
||'e=jasperadmin&j_password=jasperadmin"',
'         , true);      ',
'    req.withCredentials = false;',
'    req.responseType = "blob";',
'    req.onload = function (event) {',
'        var blob = req.response;',
'        var link=document.createElement(''a'');',
'        link.href=window.URL.createObjectURL(blob);',
'        link.download=vREPORTE+".pdf";',
'        link.click();',
'        sleep(4000);',
'        window.open(vREPORTURL,"_blank");',
'    };',
'    req.send(); ',
'} ',
'',
'',
'function sleep(milliseconds) {',
' var start = new Date().getTime();',
' for (var i = 0; i < 1e7; i++) {',
'  if ((new Date().getTime() - start) > milliseconds) {',
'   break;',
'  }',
' }',
'}',
'',
'',
'',
'',
'function Jasper_descargar_directa(p_url, p_nombre_archivo){ ',
'var spinner = apex.util.showSpinner(); ',
'var req = new XMLHttpRequest();',
'req.open(''GET'',',
'         p_url',
'         , true);      ',
'    req.withCredentials = false;',
'    req.responseType = "blob";',
'    req.onload = function (event) {',
'        var blob = req.response;',
'        var link=document.createElement(''a'');',
'        link.href=window.URL.createObjectURL(blob);',
'        link.download=p_nombre_archivo+".pdf";',
'        link.click();',
'        $("#apex_wait_overlay").remove(); ',
'        $(".u-Processing").remove(); ',
'       sleep(4000);',
'   //     window.open(vREPORTURL,"_blank");',
'    };',
'    req.send(); ',
'',
'} ',
'',
'',
'',
'function jasper_ver_lista(p_url, p_nombre_archivo){ ',
'    ',
'     ',
'    window.open(p_url,"Pagina Child","width=1800,height=1000,scrollbars=NO") ;',
' ',
'};',
'   '))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-Toolbar-toggleButton {',
'    display: none  !important; ',
'} ',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240920162907'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(125157309713724621)
,p_name=>'Reportes'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    seq_id,',
'    c001 NOMBRE',
'  from apex_collections',
' where collection_name = ''TMP_REG_CALL'';'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(125157487329724622)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Seq Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125157505399724623)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>20
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(125158385972724631)
,p_plug_name=>'Detalles'
,p_region_name=>'detalles'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select ',
'    seq_id,',
'    C001  ID_REPORTE,',
'    C002  COD_FAMILIA,',
'    C003  COD_DIVISION,',
'    C004  COD_MARCA,',
'    C005  COD_ARTICULO_INI,',
'    C006  COD_ARTICULO_FIN,',
'    C007  COD_MONEDA,',
'    C008  COD_IMPRESION,',
'    C009  EXCLUIR_DIVISION,',
'    C010  DIV_IN,',
'    C011  DIV,',
'    C012  INCLUIR_IMAGENES,',
'    C013  VER_GUION,',
'    C014  NOMBRE_REPORTE,',
'    C015  COD_CATEGORIA,',
'    C016  LINEA,',
'    C017  RUBRO,',
'    C018  COD_LISTA_PRECIO,',
'    C019  NOMBRE_ARCHIVO,',
'    C020  AGRUPACION,',
'    C021  SENDERO,',
'    C022  IMPRIMIR',
'  from apex_collections',
' where collection_name = ''VT_REPORTES'';',
'														',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Detalles'
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
,p_plug_customized=>'1'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(127588021275873310)
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
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'SEQ_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(127588187378873311)
,p_name=>'RUBRO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RUBRO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Rubro'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_rubro||'' - ''||descripcion descripcion, cod_rubro',
'  FROM st_rubro',
' WHERE cod_empresa = ''1''',
' ORDER BY descripcion'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(127588214014873312)
,p_name=>'LINEA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINEA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(127588319568873313)
,p_name=>'COD_CATEGORIA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_CATEGORIA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('Categor\00EDa')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_categoria||'' - ''||descripcion descripcion, cod_categoria ',
'FROM st_categorias ',
'ORDER BY 1',
''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(127588473453873314)
,p_name=>'COD_FAMILIA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_FAMILIA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Familia'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_familia||'' - ''||descripcion descripcion, cod_familia ',
'FROM st_familia ',
'ORDER BY descripcion',
''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(127588575105873315)
,p_name=>'COD_DIVISION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_DIVISION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('Divisi\00F3n')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_division||'' - ''||desc_division desc_division, cod_division',
'  FROM st_division_articulos',
' WHERE estado NOT IN (''I'', ''N'')',
'   AND cod_division NOT IN (''9'', ''T16'', ''7'', ''T15'')'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(127588635500873316)
,p_name=>'COD_MARCA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_MARCA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Marca'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_marca||'' - ''||descripcion descripcion, cod_marca ',
'FROM st_marcas ',
'ORDER BY descripcion'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(127588752837873317)
,p_name=>'COD_ARTICULO_FIN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_ARTICULO_FIN'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(127588846879873318)
,p_name=>'COD_MONEDA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_MONEDA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(127588918240873319)
,p_name=>'COD_IMPRESION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_IMPRESION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('C\00F3d. Impresi\00F3n')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_lista_precio||'' - ''||descripcion descripcion, cod_lista_precio cod_impresion',
'  FROM vt_listas_precios_cab',
' WHERE cod_empresa = ''1''',
'   AND cod_lista_precio IN',
'       (''1'', ''5'', ''3'', ''13'', ''7'', ''27'', ''9'', ''28'', ''2'', ''4'', ''6'', ''8'')',
'      ',
'   AND cod_moneda = :COD_MONEDA',
' ORDER BY descripcion',
''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'COD_MONEDA'
,p_ajax_items_to_submit=>'COD_MONEDA'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(127589006727873320)
,p_name=>'EXCLUIR_DIVISION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCLUIR_DIVISION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('Excluir Divisi\00F3n')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_division||'' - ''||desc_division desc_division, cod_division',
'from st_division_articulos',
'where estado NOT IN (''I'',''N'')',
'and cod_division NOT  IN (''9'',''T16'',''7'',''T15'')'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(127589148390873321)
,p_name=>'DIV_IN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DIV_IN'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Div In'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_division||'' - ''||desc_division desc_division, cod_division',
'from st_division_articulos',
'where estado NOT IN (''I'',''N'')',
'and cod_division NOT  IN (''9'',''T16'',''7'',''T15'')'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(127589265745873322)
,p_name=>'DIV'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DIV'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Div'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'Y'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_11=>':'
,p_is_required=>false
,p_max_length=>4000
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_division||'' - ''||desc_division desc_division, cod_division',
'from st_division_articulos',
'where estado NOT IN (''I'',''N'')',
'and cod_division NOT  IN (''9'',''T16'',''7'',''T15'')'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(127589353621873323)
,p_name=>'INCLUIR_IMAGENES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCLUIR_IMAGENES'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('Incluir Im\00E1genes')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC2:SI;S,NO;N'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(127589448967873324)
,p_name=>'VER_GUION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VER_GUION'
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
 p_id=>wwv_flow_imp.id(127589544669873325)
,p_name=>'SENDERO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SENDERO'
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
 p_id=>wwv_flow_imp.id(127589850677873328)
,p_name=>'ID_REPORTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_REPORTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Id Reporte'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(127589935537873329)
,p_name=>'COD_ARTICULO_INI'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_ARTICULO_INI'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(127590030821873330)
,p_name=>'NOMBRE_REPORTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOMBRE_REPORTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nombre Reporte'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(127590188026873331)
,p_name=>'COD_LISTA_PRECIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_LISTA_PRECIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Lista de Precio'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_is_required=>false
,p_max_length=>4000
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  l.cod_lista_precio||'' - ''|| l.descripcion descri, l.cod_lista_precio',
'  FROM vt_listas_precios_cab l, monedas m',
' WHERE l.cod_empresa = ''1''',
'   AND l.cod_moneda = m.cod_moneda',
'   AND l.estado = ''A'''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(127590296058873332)
,p_name=>'NOMBRE_ARCHIVO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOMBRE_ARCHIVO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nombre Archivo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(127590365302873333)
,p_name=>'AGRUPACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AGRUPACION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Agrupacion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(127590523533873335)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(127590630289873336)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(128549714189042330)
,p_name=>'IMPRIMIR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IMPRIMIR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Imprimir'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>250
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'IMPRIMIR'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(127587989570873309)
,p_internal_uid=>127587989570873309
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>true
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>900
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(127605584842866500)
,p_interactive_grid_id=>wwv_flow_imp.id(127587989570873309)
,p_static_id=>'1276056'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(127605796188866499)
,p_report_id=>wwv_flow_imp.id(127605584842866500)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127606203311866496)
,p_view_id=>wwv_flow_imp.id(127605796188866499)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(127588021275873310)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127607107285866491)
,p_view_id=>wwv_flow_imp.id(127605796188866499)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(127588187378873311)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>197
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127608094336866489)
,p_view_id=>wwv_flow_imp.id(127605796188866499)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(127588214014873312)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>194
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127608923518866487)
,p_view_id=>wwv_flow_imp.id(127605796188866499)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(127588319568873313)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>207
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127609844311866486)
,p_view_id=>wwv_flow_imp.id(127605796188866499)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(127588473453873314)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>209
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127610725856866484)
,p_view_id=>wwv_flow_imp.id(127605796188866499)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(127588575105873315)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>190
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127611624632866483)
,p_view_id=>wwv_flow_imp.id(127605796188866499)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(127588635500873316)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>191
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127612566934866481)
,p_view_id=>wwv_flow_imp.id(127605796188866499)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(127588752837873317)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>197
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127613498202866479)
,p_view_id=>wwv_flow_imp.id(127605796188866499)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(127588846879873318)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>180
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127614322480866478)
,p_view_id=>wwv_flow_imp.id(127605796188866499)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(127588918240873319)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>180
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127615221450866476)
,p_view_id=>wwv_flow_imp.id(127605796188866499)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(127589006727873320)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>194
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127616199946866475)
,p_view_id=>wwv_flow_imp.id(127605796188866499)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(127589148390873321)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127617087205866473)
,p_view_id=>wwv_flow_imp.id(127605796188866499)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(127589265745873322)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>347
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127617985611866471)
,p_view_id=>wwv_flow_imp.id(127605796188866499)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(127589353621873323)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127618841586866470)
,p_view_id=>wwv_flow_imp.id(127605796188866499)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(127589448967873324)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127619792602866468)
,p_view_id=>wwv_flow_imp.id(127605796188866499)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(127589544669873325)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>208
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
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127870978935148040)
,p_view_id=>wwv_flow_imp.id(127605796188866499)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(127589850677873328)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127871853787148037)
,p_view_id=>wwv_flow_imp.id(127605796188866499)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(127589935537873329)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>203
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127872707091148035)
,p_view_id=>wwv_flow_imp.id(127605796188866499)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(127590030821873330)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>187
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127873691515148032)
,p_view_id=>wwv_flow_imp.id(127605796188866499)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(127590188026873331)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>237
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127874544342148030)
,p_view_id=>wwv_flow_imp.id(127605796188866499)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(127590296058873332)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>223
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127875439419148028)
,p_view_id=>wwv_flow_imp.id(127605796188866499)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(127590365302873333)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>96
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(128127867173052986)
,p_view_id=>wwv_flow_imp.id(127605796188866499)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(127590523533873335)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(129693373375537395)
,p_view_id=>wwv_flow_imp.id(127605796188866499)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(128549714189042330)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>77
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(125157895738724626)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(125157309713724621)
,p_button_name=>'Nuevo'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Nuevo'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(125157981421724627)
,p_name=>'Nuevo'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(125157895738724626)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125158042868724628)
,p_event_id=>wwv_flow_imp.id(125157981421724627)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'Jasper_reubicar_directa(''1'',2);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127589657747873326)
,p_name=>unistr('Carga colecci\00F3n')
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127589763715873327)
,p_event_id=>wwv_flow_imp.id(127589657747873326)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    CURSOR cur_reportes IS ',
'        select ID_REPORTE,',
'                COD_FAMILIA,',
'                COD_DIVISION,',
'                COD_MARCA,',
'                COD_ARTICULO_INI,',
'                COD_ARTICULO_FIN,',
'                COD_MONEDA,',
'                COD_IMPRESION,',
'                EXCLUIR_DIVISION,',
'                DIV_IN,',
'                DIV,',
'                INCLUIR_IMAGENES,',
'                VER_GUION,',
'                NOMBRE_REPORTE,',
'                COD_CATEGORIA,',
'                LINEA,',
'                RUBRO,',
'                COD_LISTA_PRECIO,',
'                NOMBRE_ARCHIVO,',
'                AGRUPACION,',
'                bs_busca_parametro( ''VT'', ''RUTA_LISTA'')  SENDERO',
'                from inv.informes_lista_precio',
'                WHERE COD_EMPRESA=:P_COD_EMPRESA;',
'BEGIN ',
'    apex_collection.create_or_truncate_collection(p_collection_name => ''VT_REPORTES''); ',
'     FOR a IN cur_reportes LOOP  ',
'        apex_collection.add_member(p_collection_name => ''VT_REPORTES'',',
'                                   p_c001            => a.ID_REPORTE,',
'                                   p_c002            => a.COD_FAMILIA,',
'                                   p_c003            => a.COD_DIVISION,',
'                                   p_c004            => a.COD_MARCA,',
'                                   p_c005            => a.COD_ARTICULO_INI,',
'                                   p_c006            => a.COD_ARTICULO_FIN,',
'                                   p_c007            => a.COD_MONEDA,',
'                                   p_c008            => a.COD_IMPRESION,',
'                                   p_c009            => a.EXCLUIR_DIVISION,',
'                                   p_c010            => a.DIV_IN,',
'                                   p_c011            => a.DIV,',
'                                   p_c012            => a.INCLUIR_IMAGENES,',
'                                   p_c013            => a.VER_GUION,',
'                                   p_c014            => a.NOMBRE_REPORTE,',
'                                   p_c015            => a.COD_CATEGORIA,',
'                                   p_c016            => a.LINEA,',
'                                   p_c017            => a.RUBRO,',
'                                   p_c018            => a.COD_LISTA_PRECIO,',
'                                   p_c019            => a.NOMBRE_ARCHIVO,',
'                                   p_c020            => a.AGRUPACION,',
'                                   p_c021            => a.SENDERO,',
'                                   p_c022            => ''N'');',
'',
'     END  LOOP;',
'END;',
'',
'',
'										'))
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127590408856873334)
,p_event_id=>wwv_flow_imp.id(127589657747873326)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(125158385972724631)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128549968375042332)
,p_event_id=>wwv_flow_imp.id(127589657747873326)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("detalles").widget().interactiveGrid( "getActions" ).set("edit", true); '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(128550222625042335)
,p_name=>unistr('Agrega Bot\00F3n')
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128550372277042336)
,p_event_id=>wwv_flow_imp.id(128550222625042335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.INTERACTIVE_GRID_ADD_BUTTON'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(125158385972724631)
,p_attribute_01=>'toolbar-actions4'
,p_attribute_02=>'first'
,p_attribute_05=>'Imprimir'
,p_attribute_06=>'fa-print'
,p_attribute_09=>'execute-javascript-code'
,p_attribute_11=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    apex.server.process(',
'    ''PARAMETROS_REPORTES'', ',
'        { x01: 0}, ',
'        {',
'        success: function (pData) { ',
'            if (pData.p_contador > 0) {',
'               for (let i = 1; i <= pData.p_contador; i++) {',
'                    apex.server.process(',
'                        ''OBTENER_URL_REPORTE'', ',
'                            { x01: i}, ',
'                            {',
'                            success: function (pData) { ',
'                                Jasper_descargar_directa(pData.p_url, pData.p_nombre_reporte);',
'                            }, ',
'                        });',
'                }',
'            } else {',
'                null;',
'            }',
'         }, ',
'    });',
'',
'    '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(175480820660656546)
,p_name=>unistr('Agrega Bot\00F3n_1')
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(175480971101656547)
,p_event_id=>wwv_flow_imp.id(175480820660656546)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.INTERACTIVE_GRID_ADD_BUTTON'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(125158385972724631)
,p_attribute_01=>'toolbar-actions4'
,p_attribute_02=>'first'
,p_attribute_05=>'Ver Lista'
,p_attribute_06=>'fa-print'
,p_attribute_09=>'execute-javascript-code'
,p_attribute_11=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    apex.server.process(',
'    ''PARAMETROS_REPORTES'', ',
'        { x01: 0}, ',
'        {',
'        success: function (pData) { ',
'            if (pData.p_contador > 0) {',
'               for (let i = 1; i <= pData.p_contador; i++) {',
'                    apex.server.process(',
'                        ''OBTENER_URL_REPORTE'', ',
'                            { x01: i}, ',
'                            {',
'                            success: function (pData) { ',
'                                jasper_ver_lista(pData.p_url, pData.p_nombre_reporte);',
'                            }, ',
'                        });',
'                }',
'            } else {',
'                null;',
'            }',
'         }, ',
'    });',
'',
'    '))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(127590849538873338)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(125158385972724631)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('GUARDA COLECCI\00D3N')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    ',
'BEGIN ',
'    CASE :APEX$ROW_STATUS ',
'        WHEN ''C'' THEN ',
'            apex_collection.add_member(p_collection_name => ''VT_REPORTES'',',
'                                       p_c001            => :ID_REPORTE,',
'                                       p_c002            => :COD_FAMILIA,',
'                                       p_c003            => :COD_DIVISION,',
'                                       p_c004            => :COD_MARCA,',
'                                       p_c005            => :COD_ARTICULO_INI,',
'                                       p_c006            => :COD_ARTICULO_FIN,',
'                                       p_c007            => :COD_MONEDA,',
'                                       p_c008            => :COD_IMPRESION,',
'                                       p_c009            => :EXCLUIR_DIVISION,',
'                                       p_c010            => :DIV_IN,',
'                                       p_c011            => :DIV,',
'                                       p_c012            => :INCLUIR_IMAGENES,',
'                                       p_c013            => :VER_GUION,',
'                                       p_c014            => :NOMBRE_REPORTE,',
'                                       p_c015            => :COD_CATEGORIA,',
'                                       p_c016            => :LINEA,',
'                                       p_c017            => :RUBRO,',
'                                       p_c018            => :COD_LISTA_PRECIO,',
'                                       p_c019            => :NOMBRE_ARCHIVO,',
'                                       p_c020            => :AGRUPACION,',
'                                       p_c021            => :SENDERO,',
'                                       p_c022            => :IMPRIMIR',
'                                       );',
'        WHEN ''U'' THEN ',
'                apex_collection.update_member(p_collection_name => ''VT_REPORTES'',',
'                                       p_seq             => :SEQ_ID,',
'                                       p_c001            => :ID_REPORTE,',
'                                       p_c002            => :COD_FAMILIA,',
'                                       p_c003            => :COD_DIVISION,',
'                                       p_c004            => :COD_MARCA,',
'                                       p_c005            => :COD_ARTICULO_INI,',
'                                       p_c006            => :COD_ARTICULO_FIN,',
'                                       p_c007            => :COD_MONEDA,',
'                                       p_c008            => :COD_IMPRESION,',
'                                       p_c009            => :EXCLUIR_DIVISION,',
'                                       p_c010            => :DIV_IN,',
'                                       p_c011            => :DIV,',
'                                       p_c012            => :INCLUIR_IMAGENES,',
'                                       p_c013            => :VER_GUION,',
'                                       p_c014            => :NOMBRE_REPORTE,',
'                                       p_c015            => :COD_CATEGORIA,',
'                                       p_c016            => :LINEA,',
'                                       p_c017            => :RUBRO,',
'                                       p_c018            => :COD_LISTA_PRECIO,',
'                                       p_c019            => :NOMBRE_ARCHIVO,',
'                                       p_c020            => :AGRUPACION,',
'                                       p_c021            => :SENDERO,',
'                                       p_c022            => :IMPRIMIR',
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
' '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(125158471176724632)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Crea coleccion'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_REPORTES''); ',
'apex_collection.create_or_truncate_collection(p_collection_name => ''REPORT_URL''); '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(127591138268873341)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PARAMETROS_REPORTES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_seq_id  NUMBER := 0;',
'    v_url_reporte VARCHAR2(3000) := ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/'';',
'    v_user_jasper  VARCHAR2(200)  := ''&j_username=jasperadmin&j_password=jasperadmin'';',
'    v_contador number;',
'     cursor cur_detalle is  ',
'                    select  C001  ID_REPORTE,',
'                C002  COD_FAMILIA,',
'                C003  COD_DIVISION,',
'                C004  COD_MARCA,',
'                C005  COD_ARTICULO_INI,',
'                C006  COD_ARTICULO_FIN,',
'                C007  COD_MONEDA,',
'                C008  COD_IMPRESION,',
'                C009  EXCLUIR_DIVISION,',
'                C010  DIV_IN,',
'                C011  DIV,',
'                C012  INCLUIR_IMAGENES,',
'                C013  VER_GUION,',
'                C014  NOMBRE_REPORTE,',
'                C015  COD_CATEGORIA,',
'                C016  LINEA,',
'                C017  RUBRO,',
'                C018  COD_LISTA_PRECIO,',
'                C019  NOMBRE_ARCHIVO,',
'                C020  AGRUPACION,',
'                C021  SENDERO,',
'                C022    IMPRIMIR',
'          from apex_collections',
'         where collection_name = ''VT_REPORTES''',
'         and c022 = ''S'';',
'BEGIN',
'   apex_collection.create_or_truncate_collection(p_collection_name => ''REPORT_URL''); ',
'   FOR A IN cur_detalle LOOP',
'            apex_collection.add_member(p_collection_name => ''REPORT_URL'',',
'                                         p_c001            => v_url_reporte||',
'                                                               A.nombre_reporte||''.pdf?''||',
'                                                              ''P_COD_MARCA='' ||',
'                                                              A.COD_MARCA ||',
'                                                              ''&P_COD_DIVISION='' ||',
'                                                              A.COD_DIVISION ||',
'                                                              ''&P_COD_CATEGORIA='' ||',
'                                                              A.COD_CATEGORIA ||',
'                                                              ''&P_COD_FAMILIA='' ||',
'                                                              A.COD_FAMILIA ||',
'                                                              ''&P_COD_ARTICULO_INI='' ||',
'                                                              A.COD_ARTICULO_INI ||',
'                                                              ''&P_DIV_IN='' ||',
'                                                              A.DIV_IN ||',
'                                                              ''&P_COD_LISTA_PRECIO='' ||',
'                                                              A.COD_LISTA_PRECIO ||',
'                                                              ''&P_COD_DIVISION_EXC='' ||',
'                                                              A.EXCLUIR_DIVISION ||',
'                                                              ''&P_VER_GUION_N='' ||',
'                                                              A.VER_GUION ||',
'                                                               ''&P_AGRUPACION='' ||',
'                                                              A.AGRUPACION ||',
'                                                              ''&P_SIN_IMAGENES='' ||',
'                                                              A.INCLUIR_IMAGENES||',
'                                                              v_user_jasper,',
'                                         p_c002            => A.nombre_archivo,',
'                                         p_c003            => A.nombre_archivo,',
'                                         p_c004            => TRIM(A.SENDERO));',
'   END LOOP;',
'',
'   BEGIN ',
'        SELECT COUNT(*)',
'        INTO v_contador ',
'         from apex_collections',
'         where collection_name = ''REPORT_URL'';',
'         exception ',
'            when others then ',
'                v_contador  := 0;',
'   END;',
'  apex_json.open_object;',
'  apex_json.write(''success'', TRUE);',
'  apex_json.write(''p_contador'', v_contador);',
'  apex_json.close_object;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    apex_json.open_object;',
'    apex_json.write(''success'', FALSE);',
'    apex_json.write(''p_contador'', 0);',
'    apex_json.close_object;',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(127591551237873345)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'OBTENER_URL_REPORTE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_url VARCHAR2(4000);',
'    v_nombre_reporte VARCHAR2(3000);',
'    v_seq_id  number;',
'',
' BEGIN ',
'    v_seq_id := apex_application.g_x01;',
'     BEGIN ',
'        SELECT C001, C002',
'        INTO v_url, v_nombre_reporte',
'         from apex_collections',
'         where collection_name = ''REPORT_URL''',
'         AND SEQ_ID = v_seq_id;',
'         exception ',
'            when others then ',
'                v_url  := null;',
'                v_nombre_reporte :=  null;',
'   END;',
'  apex_json.open_object;',
'  apex_json.write(''success'', TRUE);',
'  apex_json.write(''p_url'', v_url);',
'  apex_json.write(''p_nombre_reporte'', v_nombre_reporte);',
'  apex_json.close_object;',
'  EXCEPTION',
'  WHEN OTHERS THEN',
'    apex_json.open_object;',
'    apex_json.write(''success'', FALSE);',
'    apex_json.write(''p_url'', v_url);',
'    apex_json.write(''p_nombre_reporte'', v_nombre_reporte);',
'    apex_json.close_object;',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
