prompt --application/pages/page_00038
begin
--   Manifest
--     PAGE: 00038
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
 p_id=>38
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Comparativo de ventas anuales por art\00EDculos')
,p_alias=>unistr('COMPARATIVO-DE-VENTAS-ANUALES-POR-ART\00CDCULOS')
,p_step_title=>unistr('Comparativo de ventas anuales por art\00EDculos')
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-table tr td {',
'    background-color: #c6e3f7;',
'    color: #262626;',
'    font-weight: bold;',
'}',
'/*#c6e3f7*/'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20250305105345'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10093185515323938)
,p_plug_name=>'Datos'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10543476247134537)
,p_plug_name=>unistr('Ruta de Navegaci\00F3n')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(40070279985263645)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(40189153869263678)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13926233640693734)
,p_plug_name=>'Comparativo'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10568313111588830)
,p_plug_name=>'Comparativo'
,p_parent_plug_id=>wwv_flow_imp.id(13926233640693734)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C001 NRO,',
'       C002 COD_EMPRESA,',
'       C003 COD_RUBRO,',
'       C004 DESC_RUBRO,',
'       C005 COD_ARTICULO,',
'       C006 COD_ART_CORTO,',
'       C007 ORDEN,',
'       C008 DECIMALES,',
'       C009 DESCRIPCION,',
'       C010 ANHO,',
'       TO_NUMBER(C011)NRO_MES,',
'       C012 MES,',
'       TO_NUMBER(C013) CANTIDAD,',
'     ',
'       C014 COD_MARCA,',
'       C015 MARCA_DESCRIPCION,',
'       C016 COD_CATEGORIA,',
'       C017 COSTO_PROM,',
'       TO_NUMBER(C018)PRECIO_PROMEDIO',
'  FROM apex_collections',
'where collection_name = ''VTRCOMEA''',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Comparativo'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10568440256588831)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>10568440256588831
);
wwv_flow_imp_page.create_worksheet_col_group(
 p_id=>wwv_flow_imp.id(14066947339339629)
,p_name=>'rubros'
,p_display_sequence=>10
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10568675638588833)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10568761662588834)
,p_db_column_name=>'COD_RUBRO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Rubro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10568857840588835)
,p_db_column_name=>'DESC_RUBRO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>' Rubro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10568958679588836)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>50
,p_group_id=>wwv_flow_imp.id(14066947339339629)
,p_column_identifier=>'E'
,p_column_label=>'Articulo'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style=''width:15',
'0px;display:inline-block;''>#COD_ARTICULO#</span>'))
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10569071735588837)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>60
,p_group_id=>wwv_flow_imp.id(14066947339339629)
,p_column_identifier=>'F'
,p_column_label=>'Art. Corto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10569185912588838)
,p_db_column_name=>'ORDEN'
,p_display_order=>70
,p_group_id=>wwv_flow_imp.id(14066947339339629)
,p_column_identifier=>'G'
,p_column_label=>'Orden'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10569344044588840)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>90
,p_group_id=>wwv_flow_imp.id(14066947339339629)
,p_column_identifier=>'I'
,p_column_label=>'Descripcion'
,p_column_html_expression=>'<span style=''width:250px;display:inline-block;''>#DESCRIPCION#</span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10569531580588842)
,p_db_column_name=>'MES'
,p_display_order=>110
,p_group_id=>wwv_flow_imp.id(14066947339339629)
,p_column_identifier=>'K'
,p_column_label=>'Mes'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10569754998588844)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>130
,p_group_id=>wwv_flow_imp.id(14066947339339629)
,p_column_identifier=>'M'
,p_column_label=>'Cod Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10569836761588845)
,p_db_column_name=>'MARCA_DESCRIPCION'
,p_display_order=>140
,p_group_id=>wwv_flow_imp.id(14066947339339629)
,p_column_identifier=>'N'
,p_column_label=>'Marca Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10569985635588846)
,p_db_column_name=>'COD_CATEGORIA'
,p_display_order=>150
,p_group_id=>wwv_flow_imp.id(14066947339339629)
,p_column_identifier=>'O'
,p_column_label=>'Cod Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10570183805588848)
,p_db_column_name=>'PRECIO_PROMEDIO'
,p_display_order=>170
,p_group_id=>wwv_flow_imp.id(14066947339339629)
,p_column_identifier=>'Q'
,p_column_label=>'Precio Promedio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10610239829011605)
,p_db_column_name=>'NRO'
,p_display_order=>240
,p_group_id=>wwv_flow_imp.id(14066947339339629)
,p_column_identifier=>'X'
,p_column_label=>'Nro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10613395852011636)
,p_db_column_name=>'DECIMALES'
,p_display_order=>260
,p_group_id=>wwv_flow_imp.id(14066947339339629)
,p_column_identifier=>'Z'
,p_column_label=>'Decimales'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10613447570011637)
,p_db_column_name=>'COSTO_PROM'
,p_display_order=>270
,p_group_id=>wwv_flow_imp.id(14066947339339629)
,p_column_identifier=>'AA'
,p_column_label=>'Costo Prom'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12548017080870004)
,p_db_column_name=>'ANHO'
,p_display_order=>290
,p_group_id=>wwv_flow_imp.id(14066947339339629)
,p_column_identifier=>'AK'
,p_column_label=>'Anho'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12548146452870005)
,p_db_column_name=>'NRO_MES'
,p_display_order=>300
,p_group_id=>wwv_flow_imp.id(14066947339339629)
,p_column_identifier=>'AL'
,p_column_label=>'Nro Mes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'NRO_MES'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12548391279870007)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>310
,p_group_id=>wwv_flow_imp.id(14066947339339629)
,p_column_identifier=>'AN'
,p_column_label=>'Cantidad'
,p_column_html_expression=>'<b><h5>#CANTIDAD#</h5></b>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10622377729016233)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'106224'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_view_mode=>'REPORT'
,p_report_columns=>'COD_ART_CORTO:DESCRIPCION:MES:CANTIDAD:ANHO:COD_ARTICULO:COD_CATEGORIA:COD_EMPRESA:COD_MARCA:COD_RUBRO:COSTO_PROM:DECIMALES:DESC_RUBRO:MARCA_DESCRIPCION:NRO:NRO_MES:ORDEN:PRECIO_PROMEDIO'
,p_sort_column_1=>'COD_ART_CORTO'
,p_sort_direction_1=>'ASC'
,p_count_distnt_col_on_break=>'COD_ART_CORTO'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(14062571331335623)
,p_report_id=>wwv_flow_imp.id(10622377729016233)
,p_pivot_columns=>'NRO_MES:MES:ANHO'
,p_row_columns=>'DESC_RUBRO:COD_ART_CORTO:COD_ARTICULO'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(14062967121335624)
,p_pivot_id=>wwv_flow_imp.id(14062571331335623)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'CANTIDAD'
,p_db_column_name=>'PFC1'
,p_column_label=>'Cantidad'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'Y'
);
wwv_flow_imp_page.create_worksheet_pivot_sort(
 p_id=>wwv_flow_imp.id(14063771362335625)
,p_pivot_id=>wwv_flow_imp.id(14062571331335623)
,p_sort_seq=>1
,p_sort_column_name=>'DESC_RUBRO'
,p_sort_direction=>'ASC'
);
wwv_flow_imp_page.create_worksheet_pivot_sort(
 p_id=>wwv_flow_imp.id(14063364937335625)
,p_pivot_id=>wwv_flow_imp.id(14062571331335623)
,p_sort_seq=>2
,p_sort_column_name=>'COD_ARTICULO'
,p_sort_direction=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13926383792693735)
,p_plug_name=>'COMPARATIVO2'
,p_parent_plug_id=>wwv_flow_imp.id(13926233640693734)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CONS.NRO,',
'       CONS.COD_EMPRESA,',
'       CONS.COD_RUBRO,',
'       CONS.DESC_RUBRO,',
'       CONS.COD_ARTICULO,',
'       CONS.COD_ART_CORTO,',
'       CONS.DESCRIPCION,',
'',
'       SUM(NVL(CASE WHEN CONS.ANHO = :P38_ANHO_1 THEN ',
'           CASE WHEN NRO_MES = 1 THEN ',
'                     CONS.CANTIDAD',
'            END',
'       END,0))ENERO1,',
'       SUM(NVL(CASE WHEN CONS.ANHO = :P38_ANHO_2 THEN ',
'           CASE WHEN NRO_MES = 1 THEN ',
'                     CONS.CANTIDAD',
'            END     ',
'       END,0))ENERO2,',
'       SUM(NVL(CASE WHEN CONS.ANHO = :P38_ANHO_1 THEN ',
'           CASE WHEN NRO_MES = 2 THEN ',
'                     CONS.CANTIDAD',
'            END         ',
'       END,0))FEBRERO1,',
'       SUM(NVL(CASE WHEN CONS.ANHO = :P38_ANHO_2 THEN ',
'           CASE WHEN NRO_MES = 2 THEN ',
'                     CONS.CANTIDAD',
'           END ',
'       END,0))FEBRERO2,',
'       SUM(NVL(CASE WHEN CONS.ANHO = :P38_ANHO_1 THEN ',
'           CASE WHEN NRO_MES = 3 THEN ',
'                     CONS.CANTIDAD',
'            END',
'       END,0))MARZO1,',
'       SUM(NVL(CASE WHEN CONS.ANHO = :P38_ANHO_2 THEN ',
'           CASE WHEN NRO_MES = 3 THEN ',
'                     CONS.CANTIDAD END',
'       END,0))MARZO2,',
'       SUM(NVL(CASE WHEN CONS.ANHO = :P38_ANHO_1 THEN ',
'           CASE WHEN NRO_MES = 4 THEN ',
'                     CONS.CANTIDAD END',
'       END,0))ABRIL1,',
'       SUM(NVL(CASE WHEN CONS.ANHO = :P38_ANHO_2 THEN ',
'           CASE WHEN NRO_MES = 4 THEN ',
'                     CONS.CANTIDAD END',
'       END,0))ABRIL2,',
'       SUM(NVL(CASE WHEN CONS.ANHO = :P38_ANHO_1 THEN ',
'           CASE WHEN NRO_MES = 5 THEN ',
'                     CONS.CANTIDAD END',
'       END,0))MAYO1,',
'       SUM(NVL(CASE WHEN CONS.ANHO = :P38_ANHO_2 THEN ',
'           CASE WHEN NRO_MES = 5 THEN ',
'                     CONS.CANTIDAD END',
'       END,0))MAYO2,',
'       SUM(NVL(CASE WHEN CONS.ANHO = :P38_ANHO_1 THEN ',
'           CASE WHEN NRO_MES = 6 THEN ',
'                     CONS.CANTIDAD END',
'       END,0))JUNIO1,',
'       SUM(NVL(CASE WHEN CONS.ANHO = :P38_ANHO_2 THEN ',
'           CASE WHEN NRO_MES = 6 THEN ',
'                     CONS.CANTIDAD END',
'       END,0))JUNIO2,',
'       SUM(NVL(CASE WHEN CONS.ANHO = :P38_ANHO_1 THEN ',
'           CASE WHEN NRO_MES = 7 THEN ',
'                     CONS.CANTIDAD END',
'       END,0))JULIO1,',
'       SUM(NVL(CASE WHEN CONS.ANHO = :P38_ANHO_2 THEN ',
'           CASE WHEN NRO_MES = 7 THEN ',
'                     CONS.CANTIDAD END',
'       END,0))JULIO2,',
'       SUM(NVL(CASE WHEN CONS.ANHO = :P38_ANHO_1 THEN ',
'           CASE WHEN NRO_MES = 8 THEN ',
'                     CONS.CANTIDAD END',
'       END,0))AGOSTO1,',
'       SUM(NVL(CASE WHEN CONS.ANHO = :P38_ANHO_2 THEN ',
'           CASE WHEN NRO_MES = 8 THEN ',
'                     CONS.CANTIDAD END',
'       END,0))AGOSTO2,',
'       SUM(NVL(CASE WHEN CONS.ANHO = :P38_ANHO_1 THEN ',
'           CASE WHEN NRO_MES = 9 THEN ',
'                     CONS.CANTIDAD END',
'       END,0))SEPTIEMBRE1,',
'       SUM(NVL(CASE WHEN CONS.ANHO = :P38_ANHO_2 THEN ',
'           CASE WHEN NRO_MES = 9 THEN ',
'                     CONS.CANTIDAD END',
'       END,0))SEPTIEMBRE2,',
'      SUM( NVL(CASE WHEN CONS.ANHO = :P38_ANHO_1 THEN ',
'           CASE WHEN NRO_MES = 10 THEN ',
'                     CONS.CANTIDAD END',
'       END,0))OCTUBRE1,',
'       SUM(NVL(CASE WHEN CONS.ANHO = :P38_ANHO_2 THEN ',
'           CASE WHEN NRO_MES = 10 THEN ',
'                     CONS.CANTIDAD END',
'       END,0))OCTUBRE2,',
'       SUM(NVL(CASE WHEN CONS.ANHO = :P38_ANHO_1 THEN ',
'           CASE WHEN NRO_MES = 11 THEN ',
'                     CONS.CANTIDAD END',
'       END,0))NOVIEMBRE1,',
'       SUM(NVL(CASE WHEN CONS.ANHO = :P38_ANHO_2 THEN ',
'           CASE WHEN NRO_MES = 11 THEN ',
'                     CONS.CANTIDAD END',
'       END,0))NOVIEMBRE2,',
'       SUM(NVL(CASE WHEN CONS.ANHO = :P38_ANHO_1 THEN ',
'           CASE WHEN NRO_MES = 12 THEN ',
'                     CONS.CANTIDAD END',
'       END,0))DICIEMBRE1,',
'       SUM(NVL(CASE WHEN CONS.ANHO = :P38_ANHO_2 THEN ',
'           CASE WHEN NRO_MES = 12 THEN ',
'                     CONS.CANTIDAD END',
'       END,0))DICIEMBRE2',
'  FROM(SELECT C001 NRO,',
'       C002 COD_EMPRESA,',
'       C003 COD_RUBRO,',
'       C004 DESC_RUBRO,',
'       C005 COD_ARTICULO,',
'       C006 COD_ART_CORTO,',
'       C007 ORDEN,',
'       C008 DECIMALES,',
'       C009 DESCRIPCION,',
'       ',
'       C010 ANHO,',
'       TO_NUMBER(C025)NRO_MES,',
'       UPPER(C012) MES,',
'       TO_NUMBER(C013) CANTIDAD,',
'     ',
'       C014 COD_MARCA,',
'       C015 MARCA_DESCRIPCION,',
'       C016 COD_CATEGORIA,',
'       C017 COSTO_PROM,',
'       TO_NUMBER(C018)PRECIO_PROMEDIO',
'  FROM apex_collections',
'where collection_name = ''VTRCOMEA'')CONS',
'GROUP BY CONS.NRO,',
'       CONS.COD_EMPRESA,',
'       CONS.COD_RUBRO,',
'       CONS.DESC_RUBRO,',
'       CONS.COD_ARTICULO,',
'       CONS.COD_ART_CORTO,',
'       CONS.DESCRIPCION',
' UNION  ',
'SELECT NRO,',
'       COD_EMPRESA,',
'       COD_RUBRO,',
'       DESC_RUBRO,',
'       '' '' COD_ARTICULO,',
'       '' '' COD_ART_CORTO,',
'       '' '' DESCRIPCION,',
' ',
'       to_number(:P38_ANHO_1),',
'       to_number(:P38_ANHO_2),',
'       to_number(:P38_ANHO_1),',
'       to_number(:P38_ANHO_2),',
'       to_number(:P38_ANHO_1),',
'       to_number(:P38_ANHO_2),',
'       to_number(:P38_ANHO_1),',
'       to_number(:P38_ANHO_2),',
'       to_number(:P38_ANHO_1),',
'       to_number(:P38_ANHO_2),',
'       to_number(:P38_ANHO_1),',
'       to_number(:P38_ANHO_2),',
'       to_number(:P38_ANHO_1),',
'       to_number(:P38_ANHO_2),',
'       to_number(:P38_ANHO_1),',
'       to_number(:P38_ANHO_2),',
'       to_number(:P38_ANHO_1),',
'       to_number(:P38_ANHO_2),',
'       to_number(:P38_ANHO_1),',
'       to_number(:P38_ANHO_2),',
'       to_number(:P38_ANHO_1),',
'       to_number(:P38_ANHO_2),',
'       to_number(:P38_ANHO_1),',
'       to_number(:P38_ANHO_2)',
'',
'   FROM(SELECT C001 NRO,',
'       C002 COD_EMPRESA,',
'       C003 COD_RUBRO,',
'       C004 DESC_RUBRO,',
'       C005 COD_ARTICULO,',
'       C006 COD_ART_CORTO,',
'       C007 ORDEN,',
'       C008 DECIMALES,',
'       C009 DESCRIPCION,',
'       C010 ANHO,',
'       TO_NUMBER(C011)NRO_MES,',
'       C012 MES,',
'       TO_NUMBER(C013) CANTIDAD,',
'     ',
'       C014 COD_MARCA,',
'       C015 MARCA_DESCRIPCION,',
'       C016 COD_CATEGORIA,',
'       C017 COSTO_PROM,',
'       TO_NUMBER(C018)PRECIO_PROMEDIO',
'  FROM apex_collections',
'where collection_name = ''VTRCOMEA'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P38_NEW'
,p_plug_display_when_cond2=>'12345678'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COMPARATIVO2'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(13926431219693736)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>13926431219693736
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13926566818693737)
,p_db_column_name=>'NRO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nro'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13926612127693738)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13926773847693739)
,p_db_column_name=>'COD_RUBRO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Rubro'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13926857025693740)
,p_db_column_name=>'DESC_RUBRO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Rubro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13926968835693741)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Articulo'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style=''width:150px;display:inline-block;''>#COD_ARTICULO#</span>',
''))
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13927058465693742)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Art. Corto'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style=''width:150px;display:inline-block;''>#COD_ART_CORTO#</span>',
''))
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13927309381693745)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14068143460339641)
,p_db_column_name=>'ENERO1'
,p_display_order=>100
,p_column_identifier=>'AV'
,p_column_label=>'Enero'
,p_column_html_expression=>'<span style=''width:70px;display:inline-block;''><H6>#ENERO1#</H6></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14068246614339642)
,p_db_column_name=>'ENERO2'
,p_display_order=>110
,p_column_identifier=>'AW'
,p_column_label=>'Enero'
,p_column_html_expression=>'<span style=''width:70px;display:inline-block;''><H6>#ENERO2#</H6></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14068303074339643)
,p_db_column_name=>'FEBRERO1'
,p_display_order=>120
,p_column_identifier=>'AX'
,p_column_label=>'Febrero'
,p_column_html_expression=>'<span style=''width:70px;display:inline-block;''><H6>#FEBRERO1#</H6></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14068473278339644)
,p_db_column_name=>'FEBRERO2'
,p_display_order=>130
,p_column_identifier=>'AY'
,p_column_label=>'Febrero'
,p_column_html_expression=>'<span style=''width:70px;display:inline-block;''><H6>#FEBRERO2#</H6></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14068585984339645)
,p_db_column_name=>'MARZO1'
,p_display_order=>140
,p_column_identifier=>'AZ'
,p_column_label=>'Marzo'
,p_column_html_expression=>'<span style=''width:70px;display:inline-block;''><H6>#MARZO1#</H6></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14068685268339646)
,p_db_column_name=>'MARZO2'
,p_display_order=>150
,p_column_identifier=>'BA'
,p_column_label=>'Marzo'
,p_column_html_expression=>'<span style=''width:70px;display:inline-block;''><H6>#MARZO2#</H6></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14068753228339647)
,p_db_column_name=>'ABRIL1'
,p_display_order=>160
,p_column_identifier=>'BB'
,p_column_label=>'Abril'
,p_column_html_expression=>'<span style=''width:70px;display:inline-block;''><H6>#ABRIL1#</H6></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14068838950339648)
,p_db_column_name=>'ABRIL2'
,p_display_order=>170
,p_column_identifier=>'BC'
,p_column_label=>'Abril'
,p_column_html_expression=>'<span style=''width:70px;display:inline-block;''><H6>#ABRIL2#</H6></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14068942331339649)
,p_db_column_name=>'MAYO1'
,p_display_order=>180
,p_column_identifier=>'BD'
,p_column_label=>'Mayo'
,p_column_html_expression=>'<span style=''width:70px;display:inline-block;''><H6>#MAYO1#</H6></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14069038837339650)
,p_db_column_name=>'MAYO2'
,p_display_order=>190
,p_column_identifier=>'BE'
,p_column_label=>'Mayo'
,p_column_html_expression=>'<span style=''width:70px;display:inline-block;''><H6>#MAYO2#</H6></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14498058142935101)
,p_db_column_name=>'JUNIO1'
,p_display_order=>200
,p_column_identifier=>'BF'
,p_column_label=>'Junio'
,p_column_html_expression=>'<span style=''width:70px;display:inline-block;''><H6>#JUNIO1#</H6></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14498110827935102)
,p_db_column_name=>'JUNIO2'
,p_display_order=>210
,p_column_identifier=>'BG'
,p_column_label=>'Junio'
,p_column_html_expression=>'<span style=''width:70px;display:inline-block;''><H6>#JUNIO2#</H6></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14498202805935103)
,p_db_column_name=>'JULIO1'
,p_display_order=>220
,p_column_identifier=>'BH'
,p_column_label=>'Julio'
,p_column_html_expression=>'<span style=''width:70px;display:inline-block;''><H6>#JULIO1#</H6></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14498377747935104)
,p_db_column_name=>'JULIO2'
,p_display_order=>230
,p_column_identifier=>'BI'
,p_column_label=>'Julio'
,p_column_html_expression=>'<span style=''width:70px;display:inline-block;''><H6>#JULIO2#</H6></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14498494590935105)
,p_db_column_name=>'AGOSTO1'
,p_display_order=>240
,p_column_identifier=>'BJ'
,p_column_label=>'Agosto'
,p_column_html_expression=>'<span style=''width:70px;display:inline-block;''><H6>#AGOSTO1#</H6></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14498529569935106)
,p_db_column_name=>'AGOSTO2'
,p_display_order=>250
,p_column_identifier=>'BK'
,p_column_label=>'Agosto'
,p_column_html_expression=>'<span style=''width:70px;display:inline-block;''><H6>#AGOSTO2#</H6></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14498611850935107)
,p_db_column_name=>'SEPTIEMBRE1'
,p_display_order=>260
,p_column_identifier=>'BL'
,p_column_label=>'Septiembre'
,p_column_html_expression=>'<span style=''width:70px;display:inline-block;''><H6>#SEPTIEMBRE1#</H6></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14498777324935108)
,p_db_column_name=>'SEPTIEMBRE2'
,p_display_order=>270
,p_column_identifier=>'BM'
,p_column_label=>'Septiembre'
,p_column_html_expression=>'<span style=''width:70px;display:inline-block;''><H6>#SEPTIEMBRE2#</H6></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14498865708935109)
,p_db_column_name=>'OCTUBRE1'
,p_display_order=>280
,p_column_identifier=>'BN'
,p_column_label=>'Octubre'
,p_column_html_expression=>'<span style=''width:70px;display:inline-block;''><H6>#OCTUBRE1#</H6></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14498911885935110)
,p_db_column_name=>'OCTUBRE2'
,p_display_order=>290
,p_column_identifier=>'BO'
,p_column_label=>'Octubre'
,p_column_html_expression=>'<span style=''width:70px;display:inline-block;''><H6>#OCTUBRE2#</H6></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14499054357935111)
,p_db_column_name=>'NOVIEMBRE1'
,p_display_order=>300
,p_column_identifier=>'BP'
,p_column_label=>'Noviembre'
,p_column_html_expression=>'<span style=''width:70px;display:inline-block;''><H6>#NOVIEMBRE1#</H6></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14499126042935112)
,p_db_column_name=>'NOVIEMBRE2'
,p_display_order=>310
,p_column_identifier=>'BQ'
,p_column_label=>'Noviembre'
,p_column_html_expression=>'<span style=''width:70px;display:inline-block;''><H6>#NOVIEMBRE2#</H6></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14499237450935113)
,p_db_column_name=>'DICIEMBRE1'
,p_display_order=>320
,p_column_identifier=>'BR'
,p_column_label=>'Diciembre'
,p_column_html_expression=>'<span style=''width:70px;display:inline-block;''><H6>#DICIEMBRE1#</H6></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14499355572935114)
,p_db_column_name=>'DICIEMBRE2'
,p_display_order=>330
,p_column_identifier=>'BS'
,p_column_label=>'Diciembre'
,p_column_html_expression=>'<span style=''width:70px;display:inline-block;''><H6>#DICIEMBRE2#</H6></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
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
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14091497418432853)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'140915'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DESC_RUBRO:COD_ART_CORTO:COD_ARTICULO:ENERO1:ENERO2:FEBRERO1:FEBRERO2:MARZO1:MARZO2:ABRIL1:ABRIL2:MAYO1:MAYO2:JUNIO1:JUNIO2:JULIO1:JULIO2:AGOSTO1:AGOSTO2:SEPTIEMBRE1:SEPTIEMBRE2:OCTUBRE1:OCTUBRE2:NOVIEMBRE1:NOVIEMBRE2:DICIEMBRE1:DICIEMBRE2'
,p_sort_column_1=>'COD_ART_CORTO'
,p_sort_direction_1=>'ASC'
,p_break_on=>'COD_RUBRO:DESC_RUBRO'
,p_break_enabled_on=>'COD_RUBRO:DESC_RUBRO'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(14551369858171425)
,p_report_id=>wwv_flow_imp.id(14091497418432853)
,p_name=>'1'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'COD_ART_CORTO'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("COD_ART_CORTO" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>1
,p_row_bg_color=>'#cce5ff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(14549766108171424)
,p_report_id=>wwv_flow_imp.id(14091497418432853)
,p_name=>'10'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ENERO1'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("ENERO1" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#00ded3'
,p_column_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(14551791146171425)
,p_report_id=>wwv_flow_imp.id(14091497418432853)
,p_name=>'20'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'FEBRERO1'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("FEBRERO1" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>20
,p_column_bg_color=>'#00ded3'
,p_column_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(14546512349171421)
,p_report_id=>wwv_flow_imp.id(14091497418432853)
,p_name=>'30'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'MARZO1'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("MARZO1" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>30
,p_column_bg_color=>'#00ded3'
,p_column_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(14546976401171422)
,p_report_id=>wwv_flow_imp.id(14091497418432853)
,p_name=>'40'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ABRIL1'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("ABRIL1" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>40
,p_column_bg_color=>'#00ded3'
,p_column_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(14546118018171421)
,p_report_id=>wwv_flow_imp.id(14091497418432853)
,p_name=>'50'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'MAYO1'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("MAYO1" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>50
,p_column_bg_color=>'#00ded3'
,p_column_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(14552102575171426)
,p_report_id=>wwv_flow_imp.id(14091497418432853)
,p_name=>'60'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'JUNIO1'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("JUNIO1" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>60
,p_column_bg_color=>'#00ded3'
,p_column_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(14547300767171422)
,p_report_id=>wwv_flow_imp.id(14091497418432853)
,p_name=>'70'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'JULIO1'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("JULIO1" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>70
,p_column_bg_color=>'#00ded3'
,p_column_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(14547772459171422)
,p_report_id=>wwv_flow_imp.id(14091497418432853)
,p_name=>'80'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'AGOSTO1'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("AGOSTO1" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>80
,p_column_bg_color=>'#00ded3'
,p_column_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(14548148013171423)
,p_report_id=>wwv_flow_imp.id(14091497418432853)
,p_name=>'90'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SEPTIEMBRE1'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("SEPTIEMBRE1" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>90
,p_column_bg_color=>'#00ded3'
,p_column_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(14548566867171423)
,p_report_id=>wwv_flow_imp.id(14091497418432853)
,p_name=>'100'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'OCTUBRE1'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("OCTUBRE1" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>100
,p_column_bg_color=>'#00ded3'
,p_column_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(14548949677171423)
,p_report_id=>wwv_flow_imp.id(14091497418432853)
,p_name=>'110'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'NOVIEMBRE1'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("NOVIEMBRE1" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>110
,p_column_bg_color=>'#00ded3'
,p_column_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(14549310985171424)
,p_report_id=>wwv_flow_imp.id(14091497418432853)
,p_name=>'120'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DICIEMBRE1'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("DICIEMBRE1" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>120
,p_column_bg_color=>'#00ded3'
,p_column_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(14554500950171427)
,p_report_id=>wwv_flow_imp.id(14091497418432853)
,p_name=>'130'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ENERO2'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("ENERO2" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>130
,p_column_bg_color=>'#398ad1'
,p_column_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(14552976261171426)
,p_report_id=>wwv_flow_imp.id(14091497418432853)
,p_name=>'140'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'FEBRERO2'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("FEBRERO2" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>140
,p_column_bg_color=>'#398ad1'
,p_column_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(14553752273171427)
,p_report_id=>wwv_flow_imp.id(14091497418432853)
,p_name=>'150'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'MARZO2'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("MARZO2" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>150
,p_column_bg_color=>'#398ad1'
,p_column_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(14553374361171427)
,p_report_id=>wwv_flow_imp.id(14091497418432853)
,p_name=>'160'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ABRIL2'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("ABRIL2" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>160
,p_column_bg_color=>'#398ad1'
,p_column_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(14554124734171427)
,p_report_id=>wwv_flow_imp.id(14091497418432853)
,p_name=>'170'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'MAYO2'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("MAYO2" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>170
,p_column_bg_color=>'#398ad1'
,p_column_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(14552563825171426)
,p_report_id=>wwv_flow_imp.id(14091497418432853)
,p_name=>'180'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'JUNIO2'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("JUNIO2" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>180
,p_column_bg_color=>'#398ad1'
,p_column_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(14555756217171429)
,p_report_id=>wwv_flow_imp.id(14091497418432853)
,p_name=>'190'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'JULIO2'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("JULIO2" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>190
,p_column_bg_color=>'#398ad1'
,p_column_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(14550531057171424)
,p_report_id=>wwv_flow_imp.id(14091497418432853)
,p_name=>'200'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'AGOSTO2'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("AGOSTO2" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>200
,p_column_bg_color=>'#398ad1'
,p_column_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(14554933182171428)
,p_report_id=>wwv_flow_imp.id(14091497418432853)
,p_name=>'210'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SEPTIEMBRE2'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("SEPTIEMBRE2" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>210
,p_column_bg_color=>'#398ad1'
,p_column_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(14550128263171424)
,p_report_id=>wwv_flow_imp.id(14091497418432853)
,p_name=>'220'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'OCTUBRE2'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("OCTUBRE2" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>220
,p_column_bg_color=>'#398ad1'
,p_column_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(14555366910171428)
,p_report_id=>wwv_flow_imp.id(14091497418432853)
,p_name=>'230'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'NOVIEMBRE2'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("NOVIEMBRE2" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>230
,p_column_bg_color=>'#398ad1'
,p_column_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(14550901090171425)
,p_report_id=>wwv_flow_imp.id(14091497418432853)
,p_name=>'240'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DICIEMBRE2'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("DICIEMBRE2" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>240
,p_column_bg_color=>'#398ad1'
,p_column_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14499799252935118)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_button_name=>'CANCELAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:38::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10614215834011645)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_button_name=>'EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10093299391323939)
,p_name=>'P38_COD_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_SUCURSAL_COD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_SUCURSAL||''-''||DESCRIPCION d,',
'       COD_SUCURSAL r',
'  FROM SUCURSALES',
'WHERE COD_EMPRESA = :P_COD_EMPRESA'))
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'401'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10093301122323940)
,p_name=>'P38_TIP_COMPROBANTES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_prompt=>'Comprobante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TIPO_COMPROBANTES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TIP_COMPROBANTE||'' - ''||DESCRIPCION D, ',
'       TIP_COMPROBANTE R',
'  FROM TIPOS_COMPROBANTES',
' WHERE COD_EMPRESA = :P_COD_EMPRESA',
'   AND NVL(LIBRO_IVA, ''N'') = ''S''',
' ORDER BY DESCRIPCION',
''))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(10093402924323941)
,p_name=>'P38_COD_VENDEDOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVVENDEDORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT v.cod_vendedor||'' - ''||nvl( v.descripcion, p.nombre ) L, ',
'         v.cod_vendedor V, p.nombre',
'    FROM fv_vendedores v, personas p ',
'   WHERE v.cod_empresa = :p_cod_empresa ',
'     AND v.cod_persona = p.cod_persona ',
'     AND v.estado = ''A'' ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_imp.id(10093704625323944)
,p_name=>'P38_COD_PERSONA_USER'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10093905058323946)
,p_name=>'P38_COD_CLIENTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_cliente||'' - ''||nombre D, ',
'         cod_cliente R',
'    FROM cc_clientes c, personas p',
'   WHERE c.cod_empresa = :P_COD_EMPRESA ',
'     AND c.cod_persona = p.cod_persona ',
'     AND nvl(c.estado,''X'') = ''A'' ',
'ORDER BY nombre;'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10094027967323947)
,p_name=>'P38_ZONA_INI'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_prompt=>'Zona Inicio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ZONA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_zona||'' - ''||descripcion D, ',
'         cod_zona R',
'    FROM zonas_geograficas ',
'ORDER BY 1;'))
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(10094131028323948)
,p_name=>'P38_ZONA_FIN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_prompt=>'Zona Fin'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ZONA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_zona||'' - ''||descripcion D, ',
'         cod_zona R',
'    FROM zonas_geograficas ',
'ORDER BY 1;'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(10094299499323949)
,p_name=>'P38_COD_RUBROS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_prompt=>'Rubros'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_RUBROS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_rubro||'' - ''||descripcion D, ',
'         cod_rubro R',
'    FROM st_rubro ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10094374693323950)
,p_name=>'P38_COD_DIVISION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_prompt=>'Division'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_COD_DIVISION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT COD_DIVISION||''-''||DESC_DIVISION D, COD_DIVISION R',
'    FROM ST_DIVISION_ARTICULOS',
'   WHERE NVL(ESTADO, ''P'') NOT IN (''I'', ''N'')',
'   ORDER BY 1 ASC',
''))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(10565492348588801)
,p_name=>'P38_COD_FAMILIA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_prompt=>'Familia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_FAMILIA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_familia||'' - ''||descripcion D, ',
'       cod_familia R',
'  FROM st_familia',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND ESTADO=''S'';'))
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(10565577064588802)
,p_name=>'P38_COD_CATEGORIA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_prompt=>'Categoria'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CATEGORIAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_categoria||'' - '' ||descripcion D, ',
'         cod_categoria R',
'    FROM st_categorias',
'  ',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND ESTADO IN(''S'',''A'');',
' '))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(10565689371588803)
,p_name=>'P38_COD_LINEAS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_prompt=>'Lineas'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_LINEAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_linea||'' - ''||descripcion D, cod_linea R',
'from st_linea ',
' ',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND ESTADO IN(''S'',''A'') ',
'order by 1'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(10565782890588804)
,p_name=>'P38_COD_PROVEEDOR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROVEEDORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_proveedor||'' - ''||ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D, c.cod_proveedor R,c.cod_persona',
'from cm_proveedores c, personas p',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona ',
'order by 1'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(10565819596588805)
,p_name=>'P38_COD_GRUPO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_prompt=>'Grupo de Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_GRUPOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_GRUPO||''-''||DESCRIPCION D, ',
'       COD_GRUPO R',
'  FROM ST_GRUPOS',
' WHERE COD_EMPRESA = ''1''',
'',
''))
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(10565942033588806)
,p_name=>'P38_COD_GRUPO_ART'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_prompt=>'Grupo de Precio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_GRUPOS_ART'
,p_lov=>'SELECT DESCRIPCION, COD_GRUPO_ART FROM ST_GRUPOS_ART '
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_imp.id(10566029738588807)
,p_name=>'P38_COD_MARCA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MARCAS2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION, COD_MARCA FROM ST_MARCAS',
'WHERE ESTADO=''S''',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10566126289588808)
,p_name=>'P38_ANHO_1'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_prompt=>unistr('A\00F1o 1')
,p_pre_element_text=>unistr('1\00B0 A\00F1o a Comparar :')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10566267398588809)
,p_name=>'P38_FEC_INI_A1'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_prompt=>'Fecha Inicial'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10566323862588810)
,p_name=>'P38_FEC_FIN_A1'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_prompt=>'Fecha Final'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10567038046588817)
,p_name=>'P38_ANHO_2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_prompt=>unistr('A\00F1o 2')
,p_pre_element_text=>unistr('2\00B0 A\00F1o a Comparar :')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10567110924588818)
,p_name=>'P38_FEC_INI_A2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_prompt=>'Fecha Inicial'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10567240782588819)
,p_name=>'P38_FEC_FIN_A2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_prompt=>'Fecha Final'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10613717974011640)
,p_name=>'P38_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10568313111588830)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10613876902011641)
,p_name=>'P3_IND_SINMOV'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_prompt=>'Art. sin movimientos pero con existencia'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10613964882011642)
,p_name=>'P38_IND_EN_TRANSITO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_prompt=>'Art. en transito'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10614073556011643)
,p_name=>'P38_EN_TRANSITO_SIN_MOV'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_prompt=>'Art. en transito sin Ventas'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10614183447011644)
,p_name=>'P38_SI_STOCK'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_prompt=>'Solo Articulos Si Stock'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_grid_column=>10
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
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
 p_id=>wwv_flow_imp.id(14499648240935117)
,p_name=>'P38_IND_GARANTIA'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:En Garantia;S,Sin Garantia;N'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Todos'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17827944003747711)
,p_name=>'P38_EJECUTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10093185515323938)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10566466100588811)
,p_name=>'DA_Cambiar_Fec_Ini_A1'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_FEC_INI_A1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10566509017588812)
,p_event_id=>wwv_flow_imp.id(10566466100588811)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_FEC_INI_A1'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF :P38_FEC_INI_A1 IS NOT NULL THEN ',
'  RETURN FUNCDB_TRAER_FECHA(:P38_FEC_INI_A1);',
'END IF; ',
'end ;'))
,p_attribute_07=>'P38_FEC_INI_A1'
,p_attribute_08=>'N'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10567799478588824)
,p_name=>'DA_Cambiar_Fec_Fin_A1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_FEC_FIN_A1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10567803040588825)
,p_event_id=>wwv_flow_imp.id(10567799478588824)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_FEC_FIN_A1'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF :P38_FEC_FIN_A1 IS NOT NULL THEN ',
'  RETURN FUNCDB_TRAER_FECHA(:P38_FEC_FIN_A1);',
'END IF; ',
'end ;'))
,p_attribute_07=>'P38_FEC_FIN_A1'
,p_attribute_08=>'N'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10567914620588826)
,p_name=>'DA_Cambiar_Fec_Fin_A2'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_FEC_FIN_A2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10568065507588827)
,p_event_id=>wwv_flow_imp.id(10567914620588826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_FEC_FIN_A2'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF :P38_FEC_FIN_A2 IS NOT NULL THEN ',
'  RETURN FUNCDB_TRAER_FECHA(:P38_FEC_FIN_A2);',
'END IF; ',
'end ;'))
,p_attribute_07=>'P38_FEC_FIN_A2'
,p_attribute_08=>'N'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10567570994588822)
,p_name=>'DA_Cambiar_Fec_Ini_A2'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_FEC_INI_A2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10567681640588823)
,p_event_id=>wwv_flow_imp.id(10567570994588822)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_FEC_INI_A2'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF :P38_FEC_INI_A2 IS NOT NULL THEN ',
'  RETURN FUNCDB_TRAER_FECHA(:P38_FEC_INI_A2);',
'END IF; ',
'end ;'))
,p_attribute_07=>'P38_FEC_INI_A2'
,p_attribute_08=>'N'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10566603114588813)
,p_name=>'DA_Cambiar_Anho_1'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_ANHO_1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10566726099588814)
,p_event_id=>wwv_flow_imp.id(10566603114588813)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'  :P38_FEC_INI_A1 := to_date(''01/01/''||:P38_ANHO_1,''dd/mm/yyyy'');',
'',
'',
'  :P38_FEC_FIN_A1 := to_date(''31/12/''||:P38_ANHO_1,''dd/mm/yyyy'');',
''))
,p_attribute_02=>'P38_ANHO_1'
,p_attribute_03=>'P38_FEC_INI_A1,P38_FEC_FIN_A1'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10567351062588820)
,p_name=>'DA_Cambiar_Anho_2'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_ANHO_2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10567465599588821)
,p_event_id=>wwv_flow_imp.id(10567351062588820)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  :P38_FEC_INI_A2 := to_date(''01/01/''||:P38_ANHO_2,''dd/mm/yyyy'');',
'',
'',
'  :P38_FEC_FIN_A2 := to_date(''31/12/''||:P38_ANHO_2,''dd/mm/yyyy'');',
''))
,p_attribute_02=>'P38_ANHO_2'
,p_attribute_03=>'P38_FEC_INI_A2,P38_FEC_FIN_A2'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17827793767747709)
,p_name=>'Clic Ejecutar'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10614215834011645)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17828079394747712)
,p_event_id=>wwv_flow_imp.id(17827793767747709)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P38_EJECUTA := ''S'';'
,p_attribute_03=>'P38_EJECUTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17827823668747710)
,p_event_id=>wwv_flow_imp.id(17827793767747709)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'EJECUTAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10613634650011639)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARGAR COLLECTIONS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P38_EJECUTA = ''S'' then ',
'VTRCOMEA.PROCBD_CARGA_COLLECTION(:P_COD_EMPRESA,',
'                                 :P38_FEC_INI_A1,',
'                                 :P38_FEC_FIN_A1,',
'                                 :P38_FEC_INI_A2,',
'                                 :P38_FEC_FIN_A2,',
'                                 :P38_COD_SUCURSAL,',
'                                 :P38_COD_VENDEDOR,',
'                                 NULL,',
'                                 :P38_TIP_COMPROBANTES,',
'                                 :P38_COD_RUBROS,',
'                                 :P38_COD_FAMILIA,',
'                                 :P38_COD_CATEGORIA,',
'                                 :P38_COD_LINEAS,',
'                                 :P38_COD_GRUPO_ART,',
'                                 :P38_COD_GRUPO,',
'                                 :P38_COD_PROVEEDOR,',
'                                 :P38_COD_MARCA,',
'                                 :P38_COD_DIVISION,',
'                                 :P38_ZONA_INI,',
'                                 :P38_ZONA_FIN,',
'                                 :P38_COD_CLIENTE,',
'                              ',
'                                 :P38_ANHO_1,',
'                                 :P38_ANHO_2,',
'                                 :P38_EN_TRANSITO_SIN_MOV,',
'                                 :P38_SI_STOCK,',
'                                 :P3_IND_SINMOV,',
'                                 :P38_IND_EN_TRANSITO,',
'                                 :P38_IND_GARANTIA,',
'                                 :P38_NEW);',
'end if;',
':P38_EJECUTA := ''N'';'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
