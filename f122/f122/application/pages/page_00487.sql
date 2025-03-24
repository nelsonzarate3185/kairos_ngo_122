prompt --application/pages/page_00487
begin
--   Manifest
--     PAGE: 00487
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
 p_id=>487
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Listado para Inventario - STREXINV'
,p_alias=>'LISTADO-PARA-INVENTARIO-STREXINV'
,p_step_title=>'Listado para Inventario - STREXINV'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function doDescarga(p_cod_empresa,p_cod_sucursal_has,p_cod_sucursal_des,p_cod_linea,p_grupo,p_cod_rubro,p_cod_familia,p_ind_reserva,p_cod_proveedor,p_incluye_existencia_cero,p_cod_categoria,p_cod_sub_bloque,p_nombre1,p_nombre2,p_nombre3,p_nombre4,p_v'
||'er_existencia,p_cod_barra,p_cod_lote,p_orden,p_cod_articulo_des,p_cod_articulo_has,p_cod_marca,p_cod_bloque',
' ){ ',
'       /*  var params = []',
'        params.push({ name: ''P_COD_SUCURSAL_HAS'', value: p_cod_sucursal_has})',
'        params.push({ name: ''P_COD_SUCURSAL_DES'', value: p_cod_sucursal_des})',
'        params.push({ name: ''p_cod_empresa'', value: p_cod_empresa})',
'        params.push({ name: ''P_ORDEN'', value: p_orden}) ',
'        params.push({ name: ''P_COD_ARTICULO_DES'', value: p_cod_articulo_des}) ',
'        params.push({ name: ''P_COD_ARTICULO_HAS'', value: p_cod_articulo_has})',
'        params.push({ name: ''P_COD_PROVEEDOR'', value: p_cod_proveedor}) ',
'        params.push({ name: ''P_COD_CATEGORIA'', value: p_cod_categoria}) ',
'        params.push({ name: ''P_COD_RUBRO'', value: p_cod_rubro})',
'        params.push({ name: ''P_COD_LOTE'', value: p_cod_lote})',
'        params.push({ name: ''P_COD_FAMILIA'', value: p_cod_familia}) ',
'        params.push({ name: ''P_COD_LINEA'', value: p_cod_linea}) ',
'        params.push({ name: ''P_COD_MARCA'', value: p_cod_marca}) ',
'        params.push({ name: ''P_COD_BLOQUE'', value: p_cod_bloque}) ',
'        params.push({ name: ''P_COD_SUB_BLOQUE'', value: p_cod_sub_bloque}) ',
'        var params1 = []',
'        createReportUrl(''STEXISINVEN'', params1);',
'',
'*/ ',
'    ',
'    var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/STEXISINVEN.pdf?''',
'              +''P_COD_SUCURSAL_HAS=''+p_cod_sucursal_has',
'              +''&P_COD_LINEA=''+p_cod_linea',
'              +''&P_GRUPO=''+ p_grupo',
'              +''&P_COD_RUBRO='' + p_cod_rubro',
'              +''&P_COD_FAMILIA='' + p_cod_familia',
'              +''&P_7=&P_IND_RESERVA='' + p_ind_reserva',
'              +''&P_COD_PROVEEDOR='' + p_cod_proveedor',
'              +''&P_INCLUYE_EXISTENCIA_CERO=''+ p_incluye_existencia_cero',
'              +''&P_COD_CATEGORIA='' + p_cod_categoria',
'              +''&P_COD_SUB_BLOQUE='' + p_cod_sub_bloque',
'              +''&P_COD_SUCURSAL_DES=''+ p_cod_sucursal_des',
'              +''&P_NOMBRE3=''+ p_nombre3',
'              +''&P_NOMBRE2=''+ p_nombre2',
'              +''&P_NOMBRE1=''+ p_nombre1',
'              +''&P_NOMBRE4=''+ p_nombre4',
'              +''&P_VER_EXISTENCIA=''+ p_ver_existencia',
'              +''&P_COD_BARRA=''+ p_cod_barra',
'              +''&P_COD_LOTE=''+ p_cod_lote',
'              +''&P_COD_EMPRESA='' + p_cod_empresa',
'              +''&P_ORDEN=''+ p_orden',
'              +''&P_COD_ARTICULO_HAS=''+ p_cod_articulo_has',
'              +''&P_COD_MARCA='' + p_cod_marca',
'              +''&P_COD_BLOQUE='' + p_cod_bloque',
'              +''&P_COD_ARTICULO_DES='' + p_cod_articulo_des',
'              +''&j_username=jasperadmin&j_password=jasperadmin'' ;',
'    console.log(''sucursal: '' + p_cod_sucursal_des);',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
' ',
'',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20241102105036'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145092757750671402)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145092914415671404)
,p_plug_name=>'Contenido Principal'
,p_parent_plug_id=>wwv_flow_imp.id(145092757750671402)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145093244363671407)
,p_plug_name=>'Grupo'
,p_parent_plug_id=>wwv_flow_imp.id(145092757750671402)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody:margin-top-sm'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145435852917067901)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'case when :P487_ORDEN=''CL'' THEN',
'E.COD_ARTICULO ',
'WHEN :P487_ORDEN  =''CC''  THEN',
'A.COD_ART_CORTO ',
'WHEN :P487_ORDEN=''DE''                THEN',
'A.DESCRIPCION',
'ELSE A.DESCRIPCION END ORDEN,',
's.descripcion desc_sucursal, e.cod_sucursal, e.cod_articulo, a.descripcion desc_art,',
'      SUM( e.cant_dispon)CANT_DISPON,',
' a.cod_art_corto,',
':P487_NOMBRE_1 integrante_1, ',
':P487_NOMBRE_2 integrante_2, ',
':P487_NOMBRE_3 integrante_3, ',
':P487_NOMBRE_4 integrante_4',
'        ',
'   from st_existencia_art e, st_articulos a, sucursales s, ',
'   st_division_articulos di, st_linea li',
'   where e.cod_empresa  = :p_cod_empresa',
'     and ( ( e.cod_sucursal between :p487_cod_sucursal_des and :p487_cod_sucursal_has )',
'             or ( :p487_cod_sucursal_des is null and :p487_cod_sucursal_has is null ) )',
'     and ( ( ltrim( rtrim( e.cod_articulo ) ) between',
'             ltrim( rtrim( :p487_cod_articulo_des ) ) and',
'             ltrim( rtrim( :p487_cod_articulo_has ) ) ) or',
'             ( :p487_cod_articulo_des is null and :p487_cod_articulo_has is null ) )',
'     and e.cod_empresa  = s.cod_empresa',
'     and e.cod_sucursal = s.cod_sucursal',
'     and e.cod_empresa  = a.cod_empresa',
'     and  e.cod_articulo = a.cod_articulo',
'  and ( :P487_COD_PROVEEDOR_DFLT IS NULL OR a.COD_PROVEEDOR_DFLT = :P487_COD_PROVEEDOR_DFLT )',
'and (a.cod_categoria = :p487_cod_categoria or :p487_cod_categoria is null)',
'     and (:p487_cod_rubro is null or a.cod_rubro = :p487_cod_rubro )',
'         and (:p487_cod_lote is null or e.nro_lote = :p487_cod_lote )',
'     and (:p487_cod_familia is null or a.cod_familia = :p487_cod_familia )',
'     and (:P487_COD_LINEA_DES is null or a.cod_linea = :P487_COD_LINEA_DES )',
'     and (:p487_cod_marca is null or a.cod_marca = :p487_cod_marca )',
'     and  (a.cod_categoria = :p487_cod_categoria or :p487_cod_categoria is null)',
'AND A.COD_RUBRO=''PR''',
'',
'',
'     and a.cod_division=di.cod_division(+)',
'           and a.cod_linea=li.cod_linea(+) ',
'     AND E.CANT_DISPON>0',
'',
'     and (e.cod_articulo  in  ',
'      ((select (blp.cod_articulo)',
'     from st_bloque_productos blp',
'     where blp.cod_empresa=e.cod_empresa',
'     and blp.cod_sucursal=e.cod_sucursal',
'     and blp.cod_articulo=e.cod_articulo',
'     and (blp.cod_sub_bloque=:p487_cod_sub_bloque or :p487_cod_sub_bloque is null)',
'    and (blp.cod_bloque = :p487_cod_bloque or :p487_cod_bloque is null)',
'     ))  )',
'     ',
'     AND ( :p487_cod_bloque IS NOT NULL  OR :p487_cod_sub_bloque IS NOT NULL )',
'     AND :P487_AUX_EJECUTAR_R IS NOT NULL ',
'',
'     ',
'GROUP BY E.COD_ARTICULO , A.DESCRIPCION, A.COD_ARTICULO,',
'A.COD_ART_CORTO , E.COD_SUCURSAL, S.DESCRIPCION',
'',
'UNION ALL',
'select ',
'case when :p487_orden=''CL'' THEN',
'E.COD_ARTICULO ',
'WHEN :P487_ORDEN  =''CC'' THEN',
'A.COD_ART_CORTO ',
'WHEN :P487_ORDEN=''DE''  THEN',
'A.DESCRIPCION',
'ELSE A.DESCRIPCION END ORDEN,',
's.descripcion desc_sucursal, e.cod_sucursal, e.cod_articulo, a.descripcion desc_art,',
'      SUM( e.cant_dispon)CANT_DISPON,',
' a.cod_art_corto,',
':P487_NOMBRE_1 integrante_1, ',
':P487_NOMBRE_2 integrante_2, ',
':P487_NOMBRE_3 integrante_3, ',
':P487_NOMBRE_4 integrante_4',
'            ',
'                     ',
'   from st_existencia_art e, st_articulos a, sucursales s, ',
'   st_division_articulos di, st_linea li',
'   where e.cod_empresa  = :p_cod_empresa',
'     and ( ( e.cod_sucursal between :p487_cod_sucursal_des and :p487_cod_sucursal_has )',
'             or ( :p487_cod_sucursal_des is null and :p487_cod_sucursal_has is null ) )',
'     and ( ( ltrim( rtrim( e.cod_articulo ) ) between',
'             ltrim( rtrim( :p487_cod_articulo_des ) ) and',
'             ltrim( rtrim( :p487_cod_articulo_has ) ) ) or',
'             ( :p487_cod_articulo_des is null and :p487_cod_articulo_has is null ) )',
'     and e.cod_empresa  = s.cod_empresa',
'     and e.cod_sucursal = s.cod_sucursal',
'     and e.cod_empresa  = a.cod_empresa',
'     and  e.cod_articulo = a.cod_articulo',
'and (a.cod_categoria = :p487_cod_categoria or :p487_cod_categoria is null)',
'     and (:p487_cod_rubro is null or a.cod_rubro = :p487_cod_rubro )',
'         and (:p487_cod_lote is null or e.nro_lote = :p487_cod_lote )',
'     and (:p487_cod_familia is null or a.cod_familia = :p487_cod_familia )',
'     and (:p487_cod_linea_des is null or a.cod_linea = :P487_COD_LINEA_DES )',
'     and (:p487_cod_marca is null or a.cod_marca = :p487_cod_marca )',
'     and  (a.cod_categoria = :p487_cod_categoria or :p487_cod_categoria is null)',
'',
'     and a.cod_division=di.cod_division(+)',
'           and a.cod_linea=li.cod_linea(+) ',
'     AND E.CANT_DISPON>0',
'',
'AND A.COD_RUBRO=''RE''',
'',
'',
'     and (e.cod_articulo  in  ',
'      ((select (blp.cod_articulo)',
'     from st_ubic_articulos blp',
'     where blp.cod_empresa=e.cod_empresa',
'     and blp.cod_sucursal=e.cod_sucursal',
'     and blp.cod_articulo=e.cod_articulo',
'     and (blp.cod_sub_bloque=:p487_cod_sub_bloque or :p487_cod_sub_bloque is null)',
'    and (blp.cod_bloque = :p487_cod_bloque or :p487_cod_bloque is null)',
'     ))  )',
'     ',
'     AND ( :p487_cod_bloque IS NOT NULL  OR :p487_cod_sub_bloque IS NOT NULL )',
'     AND :P487_AUX_EJECUTAR_R IS NOT NULL ',
'',
'     ',
'GROUP BY E.COD_ARTICULO , A.DESCRIPCION, A.COD_ARTICULO,',
'A.COD_ART_CORTO , E.COD_SUCURSAL, S.DESCRIPCION',
' ',
'',
'UNION ALL',
'select ',
'case when :p487_orden=''CL'' THEN',
'E.COD_ARTICULO ',
'WHEN :P487_ORDEN  =''CC''  THEN',
'A.COD_ART_CORTO ',
'WHEN :P487_ORDEN=''DE''                THEN',
'A.DESCRIPCION',
'ELSE A.DESCRIPCION END ORDEN,',
's.descripcion desc_sucursal, e.cod_sucursal, e.cod_articulo, a.descripcion desc_art,',
'      SUM( e.cant_dispon)CANT_DISPON,',
' a.cod_art_corto,',
':P487_NOMBRE_1 integrante_1, ',
':P487_NOMBRE_2 integrante_2, ',
':P487_NOMBRE_3 integrante_3, ',
':P487_NOMBRE_4 integrante_4 ',
'                 ',
'   from st_existencia_art e, st_articulos a, sucursales s, ',
'   st_division_articulos di, st_linea li',
'   where e.cod_empresa  = :p_cod_empresa',
'     and ( ( e.cod_sucursal between :p487_cod_sucursal_des and :p487_cod_sucursal_has )',
'             or ( :p487_cod_sucursal_des is null and :p487_cod_sucursal_has is null ) )',
'     and ( ( ltrim( rtrim( e.cod_articulo ) ) between',
'             ltrim( rtrim( :p487_cod_articulo_des ) ) and',
'             ltrim( rtrim( :p487_cod_articulo_has ) ) ) or',
'             ( :p487_cod_articulo_des is null and :p487_cod_articulo_has is null ) )',
'     and e.cod_empresa  = s.cod_empresa',
'     and e.cod_sucursal = s.cod_sucursal',
'     and e.cod_empresa  = a.cod_empresa',
'     and  e.cod_articulo = a.cod_articulo',
'     and ( :P487_COD_PROVEEDOR_DFLT IS NULL OR a.COD_PROVEEDOR_DFLT = :P487_COD_PROVEEDOR_DFLT )',
'     and (a.cod_categoria = :p487_cod_categoria or :p487_cod_categoria is null)',
'     and (:p487_cod_rubro is null or a.cod_rubro = :p487_cod_rubro )',
'     and (:p487_cod_lote is null or e.nro_lote = :p487_cod_lote )',
'     and (:p487_cod_familia is null or a.cod_familia = :p487_cod_familia )',
'     and (:P487_COD_LINEA_DES is null or a.cod_linea = :P487_COD_LINEA_DES )',
'     and (:P487_COD_MARCA is null or a.cod_marca = :P487_COD_MARCA )',
'     and  (a.cod_categoria = :P487_COD_CATEGORIA or :P487_COD_CATEGORIA is null)',
'     and a.cod_division=di.cod_division(+)',
'     and a.cod_linea=li.cod_linea(+) ',
'     AND E.CANT_DISPON>0',
'     AND  :p487_cod_bloque IS  NULL  AND :p487_cod_sub_bloque IS  NULL',
'     AND :P487_AUX_EJECUTAR_R IS NOT NULL ',
'     ',
'GROUP BY E.COD_ARTICULO , A.DESCRIPCION, A.COD_ARTICULO,',
'A.COD_ART_CORTO , E.COD_SUCURSAL, S.DESCRIPCION',
'',
'order by 1'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P487_GRUPO,P487_NOMBRE_1,P487_COD_SUCURSAL_DES,P487_NOMBRE_2,P487_COD_SUCURSAL_HAS,P487_NOMBRE_3,P487_COD_RUBRO,P487_NOMBRE_4,P487_COD_FAMILIA,P487_COD_LINEA_DES,P487_COD_CATEGORIA,P487_COD_MARCA,P487_COD_PROVEEDOR_DFLT,P487_COD_ARTICULO_DES,P487_COD'
||'_ARTICULO_HAS,P487_COD_BLOQUE,P487_COD_SUB_BLOQUE,P487_ORDEN,P487_BARRA,P487_VER_EXISTENCIA,P487_COD_LOTE,P487_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report'
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
 p_id=>wwv_flow_imp.id(145435907074067902)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se ha encontrado un registro.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>145435907074067902
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145436009615067903)
,p_db_column_name=>'ORDEN'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Orden'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145436175316067904)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Descipci\00F3n Sucursal')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145436267901067905)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('C\00F3digo Sucursal')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145436335371067906)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('Codigo Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145436469227067907)
,p_db_column_name=>'DESC_ART'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Descripci\00F3n Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145436513254067908)
,p_db_column_name=>'CANT_DISPON'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cantidad Disponible'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145436688387067909)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(160877175897453801)
,p_db_column_name=>'INTEGRANTE_1'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Integrante 1'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P487_NOMBRE_1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(160877292141453802)
,p_db_column_name=>'INTEGRANTE_2'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Integrante 2'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P487_NOMBRE_2'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(160877369409453803)
,p_db_column_name=>'INTEGRANTE_3'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Integrante 3'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P487_NOMBRE_3'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(160877486206453804)
,p_db_column_name=>'INTEGRANTE_4'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Integrante 4'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P487_NOMBRE_4'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(145452992211984805)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1454530'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'ORDEN:COD_ARTICULO:COD_ART_CORTO:COD_SUCURSAL:DESC_SUCURSAL:DESC_ART:CANT_DISPON:INTEGRANTE_1:INTEGRANTE_2:INTEGRANTE_3:INTEGRANTE_4:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(145093071333671405)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(145092914415671404)
,p_button_name=>'BT_EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-new'
,p_button_cattributes=>'style="margin-top:15px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(145097243083671447)
,p_button_sequence=>310
,p_button_plug_id=>wwv_flow_imp.id(145092757750671402)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash-o'
,p_button_cattributes=>'style="margin-top:15px;"'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145093198481671406)
,p_name=>'P487_VER_EXISTENCIA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(145092914415671404)
,p_prompt=>'Ver Existencia'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145093374683671408)
,p_name=>'P487_GRUPO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(145093244363671407)
,p_prompt=>'Grupo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145093414722671409)
,p_name=>'P487_NOMBRE_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(145093244363671407)
,p_prompt=>unistr('Nombre  N\00B0 1')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145093524563671410)
,p_name=>'P487_NOMBRE_2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(145093244363671407)
,p_prompt=>unistr('Nombre N\00B0 2')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145093692411671411)
,p_name=>'P487_NOMBRE_3'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(145093244363671407)
,p_prompt=>unistr('Nombre N\00B03')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145093771780671412)
,p_name=>'P487_NOMBRE_4'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(145093244363671407)
,p_prompt=>unistr('Nombre N\00B0 4')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145094175368671416)
,p_name=>'P487_COD_USUARIO'
,p_item_sequence=>1010
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145094299852671417)
,p_name=>'P487_COD_EMPRESA'
,p_item_sequence=>1020
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145094329879671418)
,p_name=>'P487_COD_SUCURSAL'
,p_item_sequence=>1030
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145094470242671419)
,p_name=>'P487_NOM_SUCURSAL'
,p_item_sequence=>1060
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145094561717671420)
,p_name=>'P487_COD_MODULO'
,p_item_sequence=>1040
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145094682358671421)
,p_name=>'P487_COD_SUCURSAL_DES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(145092914415671404)
,p_prompt=>'Sucursal Desde'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal|| '' - ''|| descripcion D,',
'       cod_sucursal R',
'from sucursales ',
'where cod_empresa = :P_COD_EMPRESA',
'and estado=''S''',
'order by lpad(cod_sucursal, 5, '' '');'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145094895969671423)
,p_name=>'P487_COD_SUCURSAL_HAS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(145092914415671404)
,p_prompt=>'Sucursal Hasta'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal|| '' - ''|| descripcion D,',
'       cod_sucursal R',
'from sucursales ',
'where cod_empresa = :P_COD_EMPRESA',
'and estado=''S''',
'order by lpad(cod_sucursal, 5, '' '');',
'',
'',
''))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145095019669671425)
,p_name=>'P487_COD_RUBRO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(145092914415671404)
,p_prompt=>' Rubro'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_rubro || '' - '' || descripcion D,',
'       cod_rubro R',
'from st_rubro ',
'where cod_empresa = :P_COD_EMPRESA',
'order by 1;'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145095241352671427)
,p_name=>'P487_COD_FAMILIA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(145092914415671404)
,p_prompt=>'Familia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion || '' - ''|| cod_familia D,',
'       cod_familia R',
'from st_familia',
'WHERE COD_EMPRESA = :P_COD_EMPRESA ',
'order by 1;'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145095401256671429)
,p_name=>'P487_COD_LINEA_DES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(145092914415671404)
,p_prompt=>'Linea'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_linea||'' - ''||descripcion D,',
'       cod_linea R',
'from st_linea ',
'where cod_empresa = :P_COD_EMPRESA;'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145095673737671431)
,p_name=>'P487_COD_CATEGORIA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(145092914415671404)
,p_prompt=>unistr('Categor\00EDa')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_categoria || '' - '' || descripcion D,',
'       cod_categoria R',
'from st_categorias',
'WHERE COD_EMPRESA = :P_COD_EMPRESA'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145095880272671433)
,p_name=>'P487_COD_MARCA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(145092914415671404)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca|| '' - '' ||descripcion D, ',
'       cod_marca R ',
'from st_marcas ',
'--WHERE COD_EMPRESA = :P_COD_EMPRESA',
'order by 1'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145096044126671435)
,p_name=>'P487_COD_PROVEEDOR_DFLT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(145092914415671404)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.cod_proveedor|| '' - '' || ltrim(p.nombre)  D, ',
'       v.cod_proveedor R',
'from personas p, cm_proveedores v ',
'where v.cod_empresa = :P_COD_EMPRESA',
'and v.cod_persona = p.cod_persona ',
'and nvl(estado,''A'') = ''A'' ',
'order by 1'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145096241586671437)
,p_name=>'P487_COD_ARTICULO_DES'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(145092914415671404)
,p_prompt=>unistr('Art\00EDculo  Desde')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo ||'' - ''|| descripcion D,',
'       cod_articulo R',
'from st_articulos ',
'where cod_empresa= :P_COD_EMPRESA',
'and (:p487_cod_rubro is null or cod_rubro = :p487_cod_rubro) ',
'and (:p487_cod_familia is null or cod_familia = :p487_cod_familia) ',
'and (:p487_cod_marca is null or cod_marca = :p487_cod_marca) ',
'order by lpad(cod_articulo, 20, '' '')'))
,p_lov_cascade_parent_items=>'P487_COD_RUBRO,P487_COD_FAMILIA,P487_COD_MARCA'
,p_ajax_items_to_submit=>'P487_COD_RUBRO,P487_COD_FAMILIA,P487_COD_MARCA,P487_COD_ARTICULO_DES'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145096462533671439)
,p_name=>'P487_COD_ARTICULO_HAS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(145092914415671404)
,p_prompt=>unistr('Art\00EDculo Hasta')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo ||'' - ''|| descripcion D,',
'       cod_articulo R',
'from st_articulos ',
'where cod_empresa= :P_COD_EMPRESA',
'and (:p487_cod_rubro is null or cod_rubro = :p487_cod_rubro) ',
'and (:p487_cod_familia is null or cod_familia = :p487_cod_familia) ',
'and (:p487_cod_marca is null or cod_marca = :p487_cod_marca) ',
'order by lpad(cod_articulo, 20, '' '')'))
,p_lov_cascade_parent_items=>'P487_COD_RUBRO,P487_COD_FAMILIA,P487_COD_MARCA'
,p_ajax_items_to_submit=>'P487_COD_RUBRO,P487_COD_FAMILIA,P487_COD_MARCA,P487_COD_ARTICULO_HAS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
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
 p_id=>wwv_flow_imp.id(145096622665671441)
,p_name=>'P487_COD_BLOQUE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(145092914415671404)
,p_prompt=>'Bloque'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_BLOQUE || '' - '' ||DESC_BLOQUE D, COD_BLOQUE R',
'FROM ST_BLOQUES ',
'WHERE COD_EMPRESA=:P_COD_EMPRESA',
'AND COD_SUCURSAL=:P487_COD_SUCURSAL_DES'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccionar --'
,p_lov_cascade_parent_items=>'P487_COD_SUCURSAL_DES'
,p_ajax_items_to_submit=>'P487_COD_EMPRESA,P487_COD_SUCURSAL_DES'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145096878853671443)
,p_name=>'P487_COD_SUB_BLOQUE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(145092914415671404)
,p_prompt=>'Sub-Bloque'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  COD_SUB_BLOQUE ||'' - ''|| DESC_SUB_BLOQUE D,',
'        COD_SUB_BLOQUE R',
'from ST_SUB_BLOQUES',
'where COD_EMPRESA=:P_COD_EMPRESA',
'AND COD_SUCURSAL = :P487_COD_SUCURSAL_DES',
'AND COD_BLOQUE=:P487_COD_BLOQUE;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccionar --'
,p_lov_cascade_parent_items=>'P487_COD_SUCURSAL_DES,P487_COD_BLOQUE,P487_COD_EMPRESA'
,p_ajax_items_to_submit=>'P487_COD_SUCURSAL_DES,P487_COD_BLOQUE,P487_COD_SUB_BLOQUE,P487_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145097009655671445)
,p_name=>'P487_ORDEN'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(145092914415671404)
,p_prompt=>'Orden'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:C\00F3digo Corto;CC,C\00F3digo Largo;CL,Descripci\00F3n;DE')
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccionar --'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145097198870671446)
,p_name=>'P487_BARRA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(145092914415671404)
,p_prompt=>'Barra'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145436805862067911)
,p_name=>'P487_COD_LOTE'
,p_item_sequence=>1070
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145831351858186001)
,p_name=>'P487_AUX_EJECUTAR_R'
,p_item_sequence=>1050
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145097346320671448)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(145097243083671447)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145097590282671450)
,p_event_id=>wwv_flow_imp.id(145097346320671448)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea limpiar los datos seleccionados?')
,p_attribute_03=>'information'
,p_attribute_04=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145097473614671449)
,p_event_id=>wwv_flow_imp.id(145097346320671448)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P487_COD_SUCURSAL_DES,P487_COD_SUCURSAL_HAS,P487_COD_RUBRO,P487_COD_FAMILIA,P487_COD_LINEA_DES,P487_COD_CATEGORIA,P487_COD_MARCA,P487_COD_PROVEEDOR_DFLT,P487_COD_ARTICULO_HAS,P487_COD_BLOQUE,P487_COD_SUB_BLOQUE,P487_ORDEN,P487_BARRA,P487_VER_EXISTENC'
||'IA,P487_GRUPO,P487_NOMBRE_1,P487_NOMBRE_2,P487_NOMBRE_3,P487_NOMBRE_4'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145436914892067912)
,p_name=>'DA_EJECUTAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(145093071333671405)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145437054421067913)
,p_event_id=>wwv_flow_imp.id(145436914892067912)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'        :P487_AUX_EJECUTAR_R := ''S'';',
'    IF :P487_COD_ARTICULO_HAS is not null and :P487_COD_SUCURSAL_DES is not null then',
'     Select nro_lote ',
'     into :P487_COD_LOTE',
'     from st_existencia_art',
'     where cod_empresa = :P_COD_EMPRESA',
'     and (COD_ARTICULO = :P487_COD_ARTICULO_DES or cod_articulo = :P487_COD_ARTICULO_HAS)',
'     and (cod_sucursal = :P487_COD_SUCURSAL_HAS or cod_sucursal = :P487_COD_SUCURSAL_DES)',
'     and rownum =1 ;',
'    ELSE',
'',
'    null;',
'    ',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P487_GRUPO,P487_NOMBRE_1,P487_COD_SUCURSAL_DES,P487_NOMBRE_2,P487_COD_SUCURSAL_HAS,P487_NOMBRE_3,P487_COD_RUBRO,P487_NOMBRE_4,P487_COD_FAMILIA,P487_COD_LINEA_DES,P487_COD_CATEGORIA,P487_COD_MARCA,P487_COD_PROVEEDOR_DFLT,P487_COD_ARTICULO_DES,P487_COD'
||'_ARTICULO_HAS,P487_COD_BLOQUE,P487_COD_SUB_BLOQUE,P487_ORDEN,P487_BARRA,P487_VER_EXISTENCIA,P487_COD_LOTE,P487_COD_SUCURSAL,P487_COD_EMPRESA'
,p_attribute_03=>'P487_COD_LOTE,P487_AUX_EJECUTAR_R'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145437294270067915)
,p_event_id=>wwv_flow_imp.id(145436914892067912)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(145435852917067901)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58709507024050929)
,p_event_id=>wwv_flow_imp.id(145436914892067912)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var codEmpresa = apex.item(''P_COD_EMPRESA'').getValue();',
'var codSucursalHas = apex.item(''P487_COD_SUCURSAL_HAS'').getValue();',
'var codSucursalDes = apex.item(''P487_COD_SUCURSAL_DES'').getValue();',
'var codLineaDes = apex.item(''P487_COD_LINEA_DES'').getValue();',
'var grupo = apex.item(''P487_GRUPO'').getValue();',
'var codRubro = apex.item(''P487_COD_RUBRO'').getValue();',
'var codFamilia = apex.item(''P487_COD_FAMILIA'').getValue();',
'var indReserva = apex.item(''P_IND_RESERVA'').getValue();',
'var iP7 = apex.item(''P_7'').getValue();',
'var codProveedorDflt = apex.item(''P487_COD_PROVEEDOR_DFLT'').getValue();',
'var verExistencia = apex.item(''P487_VER_EXISTENCIA'').getValue();',
'var codCategoria = apex.item(''P487_COD_CATEGORIA'').getValue();',
'var codSubBloque = apex.item(''P487_COD_SUB_BLOQUE'').getValue();',
'var nombre1 = apex.item(''P487_NOMBRE_1'').getValue();',
'var nombre2 = apex.item(''P487_NOMBRE_2'').getValue();',
'var nombre3 = apex.item(''P487_NOMBRE_3'').getValue();',
'var nombre4 = apex.item(''P487_NOMBRE_4'').getValue();',
'var verExistencia = apex.item(''P487_VER_EXISTENCIA'').getValue();',
'var barra = apex.item(''P487_BARRA'').getValue();',
'var codLote = apex.item(''P487_COD_LOTE'').getValue();',
'var orden = apex.item(''P487_ORDEN'').getValue();',
'var codArticuloHas = apex.item(''P487_COD_ARTICULO_HAS'').getValue();',
'var codMarca= apex.item(''P487_COD_MARCA'').getValue();',
'var codBloque = apex.item(''P487_COD_BLOQUE'').getValue();',
'var codArticuloDes = apex.item(''P487_COD_ARTICULO_DES'').getValue();',
'',
'doDescarga( codEmpresa, codSucursalHas, codSucursalDes, codLineaDes, grupo, codRubro, codFamilia, indReserva, codProveedorDflt, verExistencia, codCategoria, codSubBloque, nombre1, nombre2, nombre3, nombre4, verExistencia, barra, codLote, orden, codAr'
||'ticuloDes, codArticuloHas,codMarca, codBloque);'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(145302794733897402)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(145093982182671414)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   --Almacena los valores en variables locales',
'   :P487_Cod_Usuario  := :P_Cod_Usuario;',
'   :P487_Cod_Empresa  := :P_Cod_Empresa;',
'   ',
'   :P487_Cod_Sucursal := :P_Cod_Sucursal;',
'   :P487_Nom_Sucursal := :P_Nom_Sucursal;',
'   :P487_Cod_Modulo   := :P_Cod_Modulo;',
'   :P487_AUX_EJECUTAR_R := null;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
