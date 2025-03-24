prompt --application/pages/page_00416
begin
--   Manifest
--     PAGE: 00416
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
 p_id=>416
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'RECONCAT (Modal)'
,p_alias=>'RECONCAT-MODAL'
,p_page_mode=>'MODAL'
,p_step_title=>'RECONCAT (Modal)'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IDR > .t-Region-header {',
'    background-color: #003a85 !important;',
'    color: yellow !important;',
'    border-radius: 10px;',
'    border-color: #003a8586;',
'',
'}',
'',
' ',
'#IDR{',
'    border-radius: 10px;',
'    box-shadow:  1px 3px 3px #003a8574; ',
'}',
'',
'',
'#CT > .t-Region-header {',
'    background-color: #003a85 !important;',
'    color: yellow !important;',
'    border-radius: 10px;',
'    border-color: #003a8586;',
'',
'}',
'',
' ',
'#CT{',
'    border-radius: 10px;',
'    box-shadow:  1px 3px 3px #003a8574; ',
'}',
'',
'',
'#CF > .t-Region-header {',
'    background-color: #003a85 !important;',
'    color: yellow !important;',
'    border-radius: 10px;',
'    border-color: #003a8586;',
'',
'}',
'',
' ',
'#CF{',
'    border-radius: 10px;',
'    box-shadow:  1px 3px 3px #003a8574; ',
'}',
'.a-CardView-items li{',
'    list-style: none;',
'    padding: 0;',
'   ',
'    overflow: hidden;',
'    flex-wrap: wrap;',
'    border-radius: 10px;',
'    transition: 0.4s;',
'    box-shadow:  0px 3px 3px #003a8586; ',
'}',
'',
'',
'',
'.a-CardView-items li:hover {',
'  transform: translateY(-5px) scale(1.005) translateZ(0);',
'  box-shadow: 0 5px 10px #003a8586,',
'    0 5px 10px #003a8586;',
'}',
'',
'',
'/* Selecciona el AVPList por su ID */',
'#CT .t-AVPList-item {',
'    display: flex;',
'    flex-direction: row;',
'    align-items: flex-start;',
unistr('    flex-wrap: nowrap; /* Evitar que las columnas se env\00EDen a una nueva fila */'),
unistr('    width: 100%; /* Asegurar que el contenedor del \00EDtem ocupe todo el ancho */'),
'}',
'',
'/* Ajustar el comportamiento de la primera columna (label) */',
'#CT .t-AVPList-label {',
'    flex: 0 1 auto;',
'    white-space: nowrap;',
'    overflow: visible;',
'    text-overflow: ellipsis;',
unistr('    padding-right: 10px; /* A\00F1adir espacio entre las columnas si es necesario */'),
'}',
'',
'/* Ajustar el comportamiento de la segunda columna (value) */',
'#CT .t-AVPList-value {',
'    flex: 1 1 auto;',
'    white-space: normal;',
'    overflow: visible;',
'    word-wrap: break-word;',
'    min-width: 0; /* Permitir que la columna se reduzca */',
'    padding-left: 10px; /* Espaciado entre columnas si es necesario */',
'}',
'',
'',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20241011145738'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(118955749353105343)
,p_name=>'Informacion de Repuesto'
,p_region_name=>'IDR'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_report_attributes=>'S'
,p_new_grid_row=>false
,p_display_column=>8
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT R.COD_ARTICULO CODIGO_ART,',
'       R.COD_ARTICULO CODIGO_ORIGEN,',
'       R.CATEGORIA,',
'       R.DESCRIPCION,',
'       M.DESCRIPCION DESC_MARCA,',
'       L.DESCRIPCION DESC_LINEA,',
'       F.DESCRIPCION DESC_FAMILIA',
'  FROM RE_CATALOGO_REPUESTO R,',
'       ST_ARTICULOS A,',
'       ST_MARCAS M,',
'       ST_LINEA  L,',
'       ST_FAMILIA F',
' WHERE R.ID_CATALOGO = :P416_ID_CATALOGO',
'   AND A.COD_EMPRESA = :P_COD_EMPRESA',
'   AND R.COD_ARTICULO = A.COD_ARTICULO',
'   AND A.COD_MARCA = M.COD_MARCA(+)',
'   AND A.COD_EMPRESA = L.COD_EMPRESA(+)',
'   AND A.COD_LINEA   = L.COD_LINEA(+)',
'   AND A.COD_EMPRESA = F.COD_EMPRESA(+)',
'   AND A.COD_FAMILIA = F.COD_FAMILIA(+)'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40159146993263670)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(118955891557105344)
,p_query_column_id=>1
,p_column_alias=>'CODIGO_ART'
,p_column_display_sequence=>10
,p_column_heading=>'<b>Codigo Articulo</b>'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#CODIGO_ART#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(118955966846105345)
,p_query_column_id=>2
,p_column_alias=>'CODIGO_ORIGEN'
,p_column_display_sequence=>20
,p_column_heading=>'Codigo Origen'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#CODIGO_ORIGEN#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123956881458528302)
,p_query_column_id=>3
,p_column_alias=>'CATEGORIA'
,p_column_display_sequence=>100
,p_column_heading=>'Categoria'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#CATEGORIA#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123957734471528311)
,p_query_column_id=>4
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>190
,p_column_heading=>'Descripcion'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#DESCRIPCION#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(339224608547927924)
,p_query_column_id=>5
,p_column_alias=>'DESC_MARCA'
,p_column_display_sequence=>200
,p_column_heading=>'Marca'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#DESC_MARCA#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(339224798875927925)
,p_query_column_id=>6
,p_column_alias=>'DESC_LINEA'
,p_column_display_sequence=>210
,p_column_heading=>'Linea'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#DESC_LINEA#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(339224815084927926)
,p_query_column_id=>7
,p_column_alias=>'DESC_FAMILIA'
,p_column_display_sequence=>220
,p_column_heading=>'Familia'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#DESC_FAMILIA#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(339178656477596107)
,p_name=>unistr('Caracter\00EDsticas T\00E9cnicas')
,p_region_name=>'CT'
,p_parent_plug_id=>wwv_flow_imp.id(118955749353105343)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--fixedLabelSmall:t-AVPList--leftAligned'
,p_report_attributes=>'S'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT R.TENSION,',
'       R.POTENCIA,',
'       R.FRECUENCIA,',
'       R.TEMPERATURA_TRABAJO,',
'       R.CARACTERISTICAS,',
'       R.TIPO_REFRIGERANTE,',
'       R.AMPERAJE',
'  FROM RE_CATALOGO_REPUESTO R',
' WHERE R.ID_CATALOGO = :P416_ID_CATALOGO',
'   and r.cod_empresa = :P_COD_EMPRESA'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40159146993263670)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(339179159649596112)
,p_query_column_id=>1
,p_column_alias=>'TENSION'
,p_column_display_sequence=>10
,p_column_heading=>'Tension'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#TENSION#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(339179269957596113)
,p_query_column_id=>2
,p_column_alias=>'POTENCIA'
,p_column_display_sequence=>20
,p_column_heading=>'Potencia'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#POTENCIA#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(339179355531596114)
,p_query_column_id=>3
,p_column_alias=>'FRECUENCIA'
,p_column_display_sequence=>30
,p_column_heading=>'Frecuencia'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#FRECUENCIA#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(339179457404596115)
,p_query_column_id=>4
,p_column_alias=>'TEMPERATURA_TRABAJO'
,p_column_display_sequence=>40
,p_column_heading=>'Temperatura Trabajo'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#TEMPERATURA_TRABAJO#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(339179573023596116)
,p_query_column_id=>5
,p_column_alias=>'CARACTERISTICAS'
,p_column_display_sequence=>50
,p_column_heading=>'Caracteristicas'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#CARACTERISTICAS#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(339179626015596117)
,p_query_column_id=>6
,p_column_alias=>'TIPO_REFRIGERANTE'
,p_column_display_sequence=>60
,p_column_heading=>'Tipo Refrigerante'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#TIPO_REFRIGERANTE#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(339179767551596118)
,p_query_column_id=>7
,p_column_alias=>'AMPERAJE'
,p_column_display_sequence=>70
,p_column_heading=>'Amperaje'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#AMPERAJE#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(339179807085596119)
,p_name=>unistr('Caracter\00EDsticas F\00EDsica')
,p_region_name=>'CF'
,p_parent_plug_id=>wwv_flow_imp.id(118955749353105343)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_report_attributes=>'S'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT R.PESO,',
'       R.MEDIDAS,',
'       R.LARGO,',
'       R.ANCHO,',
'       R.DIAMETRO,',
'       R.COLOR,',
'       R.POSICIONES',
'  FROM RE_CATALOGO_REPUESTO R',
' WHERE R.ID_CATALOGO = :P416_ID_CATALOGO',
'   and r.cod_empresa = :P_COD_EMPRESA'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40159146993263670)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(339180662452596127)
,p_query_column_id=>1
,p_column_alias=>'PESO'
,p_column_display_sequence=>10
,p_column_heading=>'Peso'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#PESO#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(339180730661596128)
,p_query_column_id=>2
,p_column_alias=>'MEDIDAS'
,p_column_display_sequence=>20
,p_column_heading=>'Medidas'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#MEDIDAS#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(339180809147596129)
,p_query_column_id=>3
,p_column_alias=>'LARGO'
,p_column_display_sequence=>30
,p_column_heading=>'Largo'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#LARGO#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(339180957514596130)
,p_query_column_id=>4
,p_column_alias=>'ANCHO'
,p_column_display_sequence=>40
,p_column_heading=>'Ancho'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#ANCHO#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(339181026469596131)
,p_query_column_id=>5
,p_column_alias=>'DIAMETRO'
,p_column_display_sequence=>50
,p_column_heading=>'Diametro'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#DIAMETRO#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(339181152427596132)
,p_query_column_id=>6
,p_column_alias=>'COLOR'
,p_column_display_sequence=>60
,p_column_heading=>'Color'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#COLOR#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(339181222408596133)
,p_query_column_id=>7
,p_column_alias=>'POSICIONES'
,p_column_display_sequence=>70
,p_column_heading=>'Posiciones'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#POSICIONES#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(339182629939596147)
,p_name=>'Consulta de Stock'
,p_region_name=>'CT'
,p_parent_plug_id=>wwv_flow_imp.id(118955749353105343)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.cod_sucursal,',
'       s.descripcion,',
'       a.cant_dispon',
'from ST_EXISTENCIA_ART   a',
'     ,sucursales s,',
'     re_catalogo_repuesto r',
'where A.cod_empresa = :P_COD_EMPRESA',
'and  r.id_catalogo = :P416_ID_CATALOGO',
'and r.cod_articulo = a.cod_articulo',
'and s.cod_empresa  = a.cod_empresa',
'and s.cod_sucursal = a.cod_sucursal ',
'AND NVL(IND_FACTURA,''S'')=''S''',
'and a.cant_dispon<>0',
'order by S.COD_SUCURSAL_CENTRAL ASC, cant_dispon desc,lpad(ltrim(rtrim(cod_sucursal)),5,'' '')'))
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
 p_id=>wwv_flow_imp.id(339182718399596148)
,p_query_column_id=>1
,p_column_alias=>'COD_SUCURSAL'
,p_column_display_sequence=>10
,p_column_heading=>'Cod Sucursal'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#COD_SUCURSAL#</b>'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(339182867449596149)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>20
,p_column_heading=>'Descripcion'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#DESCRIPCION#</b>'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(339222364847927901)
,p_query_column_id=>3
,p_column_alias=>'CANT_DISPON'
,p_column_display_sequence=>40
,p_column_heading=>'Cant Dispon'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#CANT_DISPON#</b>'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(339223347849927911)
,p_name=>'Precio'
,p_region_name=>'CT'
,p_parent_plug_id=>wwv_flow_imp.id(118955749353105343)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_report_attributes=>'S'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ind_no_descuento,',
'       a.precio_base,',
'       round((a.precio_base * 10)/100) + a.precio_base precio_iva,',
'       a.cod_iva,',
'       ''Guaranies'' Moneda',
'from st_articulos   a,',
'     re_catalogo_repuesto r',
'where A.cod_empresa = :P_COD_EMPRESA',
'and  r.id_catalogo = :P416_ID_CATALOGO',
'and r.cod_articulo = a.cod_articulo',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40159146993263670)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(339224128566927919)
,p_query_column_id=>1
,p_column_alias=>'IND_NO_DESCUENTO'
,p_column_display_sequence=>10
,p_column_heading=>'Descuento'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#IND_NO_DESCUENTO#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(339224247339927920)
,p_query_column_id=>2
,p_column_alias=>'PRECIO_BASE'
,p_column_display_sequence=>20
,p_column_heading=>'Precio Base'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_html_expression=>'<b>#PRECIO_BASE#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(339224362686927921)
,p_query_column_id=>3
,p_column_alias=>'PRECIO_IVA'
,p_column_display_sequence=>30
,p_column_heading=>'Precio+Iva'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_html_expression=>'<b>#PRECIO_IVA#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(339224436214927922)
,p_query_column_id=>4
,p_column_alias=>'COD_IVA'
,p_column_display_sequence=>40
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(339224573335927923)
,p_query_column_id=>5
,p_column_alias=>'MONEDA'
,p_column_display_sequence=>50
,p_column_heading=>'Moneda'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#MONEDA#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(137164611305888217)
,p_plug_name=>'Imagenes'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40100032401263654)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT I.ID_CATALOGO,',
'        I.IMAGE,',
'        D.ID_IMAGEN,',
'        D.NRO_IMG,',
'        D.IMAGEN_BLOB',
'  from RE_CATALAGO_IMAGES I,',
'       V_IMAGEN_APEX_DIR D ',
' WHERE  I.ID_CATALOGO =:P416_ID_CATALOGO',
'   AND I.ID_IMAGEN = D.ID_IMAGEN',
'   AND I.NRO_IMAGEN = D.NRO_IMG',
' ORDER BY I.IND_PRINCIPAL DESC,I.ID_IMAGEN,I.NRO_IMAGEN'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_no_data_found=>'No se han cargado imagenes'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(137164759490888218)
,p_region_id=>wwv_flow_imp.id(137164611305888217)
,p_layout_type=>'GRID'
,p_grid_column_count=>2
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'IMAGEN_BLOB'
,p_media_display_position=>'BODY'
,p_media_sizing=>'COVER'
,p_pk1_column_name=>'ID_IMAGEN'
,p_pk2_column_name=>'NRO_IMG'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(351160637110149911)
,p_card_id=>wwv_flow_imp.id(137164759490888218)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:761:&SESSION.::&DEBUG.::P761_ID_CATALOGO,P761_IMAGE:&ID_CATALOGO.,&IMAGE.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(137165052939888221)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(118955749353105343)
,p_button_name=>'AGREGAR_IMAGEN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Imagen'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:466:&SESSION.::&DEBUG.::P466_COD_MODULO,P466_OPERACION,P466_ID_IMAGEN,P466_COD_ARTICULO:RE,CATALOGO,&P416_ID_IMAGEN.,&P416_COD_ARTICULO.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(345352805661477346)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(118955749353105343)
,p_button_name=>'ELIMINAR_IMAGEN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar imagenes'
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137164886643888219)
,p_name=>'P416_ID_CATALOGO'
,p_item_sequence=>40
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137165171397888222)
,p_name=>'P416_ID_IMAGEN'
,p_item_sequence=>50
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(339226824385927946)
,p_name=>'P416_COD_ARTICULO'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(345351417838477332)
,p_name=>'P416_CANTIDAD_IMG'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(345351585875477333)
,p_name=>'da_datos_img'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(137165052939888221)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(345351614412477334)
,p_event_id=>wwv_flow_imp.id(345351585875477333)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' BEGIN',
' SELECT count(*) cantidad_imagenes',
'  into :P416_CANTIDAD_IMG',
'  from RE_CATALAGO_IMAGES I,',
'       V_IMAGEN_APEX_DIR D ',
' WHERE I.ID_CATALOGO =:P416_ID_CATALOGO',
'   AND I.ID_IMAGEN = D.ID_IMAGEN',
'   AND I.NRO_IMAGEN = D.NRO_IMG',
' ORDER BY I.IND_PRINCIPAL DESC,I.ID_IMAGEN,I.NRO_IMAGEN;',
' exception',
'   when others then',
'   :P416_CANTIDAD_IMG := ''0'';',
'end;'))
,p_attribute_02=>'P416_ID_CATALOGO'
,p_attribute_03=>'P416_CANTIDAD_IMG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(137165446475888225)
,p_name=>'After Dialog Close'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(137165052939888221)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(345351748744477335)
,p_event_id=>wwv_flow_imp.id(137165446475888225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(137165052939888221)
,p_client_condition_type=>'GREATER_THAN'
,p_client_condition_element=>'P416_CANTIDAD_IMG'
,p_client_condition_expression=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137165550596888226)
,p_event_id=>wwv_flow_imp.id(137165446475888225)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(137164611305888217)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(345352912438477347)
,p_name=>'DA_ELIMINA_IMG'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(345352805661477346)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(345353031842477348)
,p_event_id=>wwv_flow_imp.id(345352912438477347)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_nro_eliminar varchar(10);',
'    begin ',
'       SELECT I.ID_IMAGEN',
'        into v_nro_eliminar',
'          from RE_CATALAGO_IMAGES I,',
'               V_IMAGEN_APEX_DIR D ',
'         WHERE I.ID_CATALOGO =:P416_ID_CATALOGO',
'           AND I.ID_IMAGEN = D.ID_IMAGEN',
'           AND I.NRO_IMAGEN = D.NRO_IMG',
'           and rownum = ''1'';',
'    ',
'    if v_nro_eliminar is not null then',
'',
'    delete IMAGEN_APEX C ',
'    WHERE C.ID = V_NRO_ELIMINAR;',
'',
'     delete RE_CATALAGO_IMAGES C ',
'    WHERE C.ID_IMAGEN = V_NRO_ELIMINAR;',
'    --:P416_NRO_CATALOGO := v_nro_eliminar;',
'',
'   end if;',
'  exception',
'   WHEN NO_DATA_FOUND THEN',
'        NULL;',
'END;'))
,p_attribute_02=>'P416_ID_CATALOGO'
,p_attribute_03=>'P416_ID_CATALOGO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(345353264619477350)
,p_event_id=>wwv_flow_imp.id(345352912438477347)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(137164611305888217)
);
wwv_flow_imp.component_end;
end;
/
