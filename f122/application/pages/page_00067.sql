prompt --application/pages/page_00067
begin
--   Manifest
--     PAGE: 00067
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
 p_id=>67
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Lista de Precios'
,p_alias=>'LISTA-DE-PRECIOS'
,p_step_title=>'Lista de Precios'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250210095223'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12524076345514402)
,p_plug_name=>'Lista de Precios'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53900520423185294)
,p_plug_name=>'Lista'
,p_parent_plug_id=>wwv_flow_imp.id(12524076345514402)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CASE',
'         WHEN TIPO = ''CMB'' THEN',
'          f_codigo_combo(COD_ART_CORTO, ''CORTO'')',
'         ELSE',
'          COD_ART_CORTO',
'       END COD_ART_CORTO,',
'       CASE',
'         WHEN TIPO = ''CMB'' THEN',
'          f_codigo_combo(CODIGO_ARTICULO, ''LARGO'')',
'         ELSE',
'          CODIGO_ARTICULO',
'       END CODIGO_ARTICULO,',
'      DESCRIPCION DESC_ARTICULO,',
'       ',
'       MARCA,',
'       DESC_DIVISION,',
' a.desc_linea      DESC_CATEGORIA,',
'       CASE',
'         WHEN TIPO = ''CMB'' THEN',
'          ',
'          ',
'          ROUND(f_PRECIO_combo(CODIGO_ARTICULO  ,',
'                                          :P67_COD_LISTA_PRECIOS       ), NVL(( Select   M.DECIMALES',
'       ',
'      from monedas m, vt_listas_precios_cab c',
'     where c.cod_empresa=''1'' ',
'      and c.cod_moneda=m.cod_moneda',
'and      c.cod_lista_precio=:P67_COD_LISTA_PRECIOS),0))',
'          ',
'          ',
'         ELSE',
'          round(PRECIO_web( ',
'            ',
'          a.codigo_articulo',
'        , case',
'         when a.cod_division = ''2'' then',
'          :P67_COD_LISTA_PRECIOS',
'         when a.cod_division = ''9'' then',
'          :P67_COD_LISTA_PRECIOS',
'         else',
'          :P67_COD_LISTA_PRECIOS',
'       end,',
'       ',
'       0),',
'        NVL(( Select   M.DECIMALES',
'       ',
'      from monedas m, vt_listas_precios_cab c',
'     where c.cod_empresa=''1'' ',
'      and c.cod_moneda=m.cod_moneda',
'and      c.cod_lista_precio=:P67_COD_LISTA_PRECIOS),0)',
'       ) END precio,',
'       ',
'    CASE WHEN TIPO = ''CMB'' THEN',
'          f_codigo_combo(COD_ART_CORTO, ''EAN'')',
'         ELSE',
'          COD_EAN',
'       END COD_EAN',
'  from v_productos_lista_precio a',
' where :P_COD_EMPRESA=''1''',
' AND (a.COD_marca = :p67_marca or :p67_marca is null)',
'   and (a.cod_division = :p67_cod_division or :p67_cod_division is null)',
' /*  and (a.cod_categoria = :p67_cod_categoria or :p67_cod_categoria is null)*/',
'   and (a.cod_familia = :p67_cod_familia or :p67_cod_familia is null)',
'   and (a.cod_division = :p67_cod_division or :p67_cod_division is null)',
'   AND (A.codigo_articulo = :p67_COD_ARTICULO OR :p67_COD_ARTICULO IS NULL)',
'   AND (A.COD_ART_CORTO = :p67_COD_art_corto OR :p67_COD_art_corto IS NULL)',
'   ',
' and :P67_COD_LISTA_PRECIOS IS NOT NULL',
' and :P67_COD_LISTA_PRECIOS not in (''OFERTAS'')',
'and CASE',
'         WHEN TIPO = ''CMB'' THEN',
'          ',
'          ',
'          ROUND(f_PRECIO_combo(CODIGO_ARTICULO  ,',
'                                          :P67_COD_LISTA_PRECIOS       ), NVL(( Select   M.DECIMALES',
'       ',
'      from monedas m, vt_listas_precios_cab c',
'     where c.cod_empresa=''1'' ',
'      and c.cod_moneda=m.cod_moneda',
'and      c.cod_lista_precio=:P67_COD_LISTA_PRECIOS),0))',
'          ',
'          ',
'         ELSE',
'          round(PRECIO_web( ',
'            ',
'          a.codigo_articulo',
'        , case',
'         when a.cod_division = ''2'' then',
'          :P67_COD_LISTA_PRECIOS',
'         when a.cod_division = ''9'' then',
'          :P67_COD_LISTA_PRECIOS',
'         else',
'          :P67_COD_LISTA_PRECIOS',
'       end,',
'       ',
'       0),',
'        NVL(( Select   M.DECIMALES',
'       ',
'      from monedas m, vt_listas_precios_cab c',
'     where c.cod_empresa=''1'' ',
'      and c.cod_moneda=m.cod_moneda',
'and      c.cod_lista_precio=:P67_COD_LISTA_PRECIOS),0)',
'       ) END>0        ',
'',
'',
'UNION ALL  ',
'select CASE',
'         WHEN TIPO = ''CMB'' THEN',
'          f_codigo_combo(COD_ART_CORTO, ''CORTO'')',
'         ELSE',
'          COD_ART_CORTO',
'       END COD_ART_CORTO,',
'       CASE',
'         WHEN TIPO = ''CMB'' THEN',
'          f_codigo_combo(CODIGO_ARTICULO, ''LARGO'')',
'         ELSE',
'          CODIGO_ARTICULO',
'       END CODIGO_ARTICULO,',
'      DESCRIPCION DESC_ARTICULO,',
'       ',
'       MARCA,',
'       DESC_DIVISION,',
' a.desc_linea      DESC_CATEGORIA,',
'       CASE',
'         WHEN TIPO = ''CMB'' THEN',
'          ',
'          ',
'          ROUND(f_precio_combo_empresa(:P_COD_EMPRESA,CODIGO_ARTICULO  ,',
'                                          :P67_COD_LISTA_PRECIOS       ), NVL(( Select   M.DECIMALES',
'       ',
'      from monedas m, vt_listas_precios_cab c',
'     where c.cod_empresa=:P_COD_EMPRESA ',
'      and c.cod_moneda=m.cod_moneda',
'and      c.cod_lista_precio=:P67_COD_LISTA_PRECIOS),0))',
'          ',
'          ',
'         ELSE',
'          round(precio_web_empresa( :P_COD_EMPRESA,',
'            ',
'          a.codigo_articulo',
'        , case',
'         when a.cod_division = ''2'' then',
'          :P67_COD_LISTA_PRECIOS',
'         when a.cod_division = ''9'' then',
'          :P67_COD_LISTA_PRECIOS',
'         else',
'          :P67_COD_LISTA_PRECIOS',
'       end,',
'       ',
'       0),',
'        NVL(( Select   M.DECIMALES',
'       ',
'      from monedas m, vt_listas_precios_cab c',
'     where c.cod_empresa=:P_COD_EMPRESA ',
'      and c.cod_moneda=m.cod_moneda',
'and      c.cod_lista_precio=:P67_COD_LISTA_PRECIOS),0)',
'       ) END precio,',
'       ',
'    CASE WHEN TIPO = ''CMB'' THEN',
'          f_codigo_combo(COD_ART_CORTO, ''EAN'')',
'         ELSE',
'          COD_EAN',
'       END COD_EAN',
'  from v_productos_lista_precio_BH a',
' where  :P_COD_EMPRESA=''18''',
' AND  (a.COD_marca = :p67_marca or :p67_marca is null)',
'   and (a.cod_division = :p67_cod_division or :p67_cod_division is null)',
' /*  and (a.cod_categoria = :p67_cod_categoria or :p67_cod_categoria is null)*/',
'   and (a.cod_familia = :p67_cod_familia or :p67_cod_familia is null)',
'   and (a.cod_division = :p67_cod_division or :p67_cod_division is null)',
'   AND (A.codigo_articulo = :p67_COD_ARTICULO OR :p67_COD_ARTICULO IS NULL)',
'   AND (A.COD_ART_CORTO = :p67_COD_art_corto OR :p67_COD_art_corto IS NULL)',
'   and :P67_COD_LISTA_PRECIOS not in (''OFERTAS'')',
' and :P67_COD_LISTA_PRECIOS IS NOT NULL',
'and CASE',
'         WHEN TIPO = ''CMB'' THEN ',
'          ROUND(f_precio_combo_empresa(:P_COD_EMPRESA,CODIGO_ARTICULO  ,',
'                                          :P67_COD_LISTA_PRECIOS       ), NVL(( Select   M.DECIMALES',
'       ',
'      from monedas m, vt_listas_precios_cab c',
'     where c.cod_empresa=:P_COD_EMPRESA',
'      and c.cod_moneda=m.cod_moneda',
'and      c.cod_lista_precio=:P67_COD_LISTA_PRECIOS),0))',
'          ',
'          ',
'         ELSE',
'          round(precio_web_EMPRESA( :P_COD_EMPRESA,',
'            ',
'          a.codigo_articulo',
'        , case',
'         when a.cod_division = ''2'' then',
'          :P67_COD_LISTA_PRECIOS',
'         when a.cod_division = ''9'' then',
'          :P67_COD_LISTA_PRECIOS',
'         else',
'          :P67_COD_LISTA_PRECIOS',
'       end,',
'       ',
'       0),',
'        NVL(( Select   M.DECIMALES',
'       ',
'      from monedas m, vt_listas_precios_cab c',
'     where c.cod_empresa=:P_COD_EMPRESA',
'      and c.cod_moneda=m.cod_moneda',
'and      c.cod_lista_precio=:P67_COD_LISTA_PRECIOS),0)',
'       ) END>0       ',
'',
'union all  ',
'select CASE',
'         WHEN TIPO = ''CMB'' THEN',
'          f_codigo_combo(COD_ART_CORTO, ''CORTO'')',
'         ELSE',
'          COD_ART_CORTO',
'       END COD_ART_CORTO,',
'       CASE',
'         WHEN TIPO = ''CMB'' THEN',
'          f_codigo_combo(CODIGO_ARTICULO, ''LARGO'')',
'         ELSE',
'          CODIGO_ARTICULO',
'       END CODIGO_ARTICULO,',
'      DESCRIPCION DESC_ARTICULO,',
'       ',
'       MARCA,',
'       DESC_DIVISION,',
' a.desc_linea      DESC_CATEGORIA,',
'       CASE',
'         WHEN TIPO = ''CMB'' THEN',
'          ',
'          ',
'          ROUND(f_PRECIO_combo(CODIGO_ARTICULO  ,',
'                                          :P67_COD_LISTA_PRECIOS       ), NVL(( Select   M.DECIMALES',
'       ',
'      from monedas m, vt_listas_precios_cab c',
'     where c.cod_empresa=''1'' ',
'      and c.cod_moneda=m.cod_moneda',
'and      c.cod_lista_precio=:P67_COD_LISTA_PRECIOS),  NVL((select OFERTA.DESCUENTO',
'from VT_OFERTAS_feria oferta',
'where oferta.cod_empresa=''1''',
'and oferta.cod_articulo=A.codigo_articulo',
'and oferta.fec_alta>=to_date(''01/08/2019'',''DD/MM/YYYY'')),',
'CASE WHEN COD_MARCA in(''OM'') THEN 10 ELSE',
'30',
'END',
'',
')))',
'          ',
'          ',
'         ELSE',
'          round(PRECIO_web( ',
'            ',
'          a.codigo_articulo',
'        , ''1'',',
'       ',
'       NVL((select OFERTA.DESCUENTO',
'from VT_OFERTAS_feria oferta',
'where oferta.cod_empresa=''1''',
'and oferta.cod_articulo=A.codigo_articulo',
'and oferta.fec_alta>=to_date(''01/08/2019'',''DD/MM/YYYY'')),',
'CASE WHEN COD_MARCA in(''OM'') THEN 10 ELSE',
'30',
'END',
'',
')',
'       ',
'       ),',
'        NVL(( Select   M.DECIMALES',
'       ',
'      from monedas m, vt_listas_precios_cab c',
'     where c.cod_empresa=''1'' ',
'      and c.cod_moneda=m.cod_moneda',
'and      c.cod_lista_precio=:P67_COD_LISTA_PRECIOS),0)',
'       ) END precio,',
'       ',
'    CASE WHEN TIPO = ''CMB'' THEN',
'          f_codigo_combo(COD_ART_CORTO, ''EAN'')',
'         ELSE',
'          COD_EAN',
'       END COD_EAN',
'  from V_PRODUCTOS_FERIA_105_1  a',
' where :P_COD_EMPRESA=''1''',
' AND (a.COD_marca = :p67_marca or :p67_marca is null)',
'   and (a.cod_division = :p67_cod_division or :p67_cod_division is null)',
' /*  and (a.cod_categoria = :p67_cod_categoria or :p67_cod_categoria is null)*/',
'   and (a.cod_familia = :p67_cod_familia or :p67_cod_familia is null)',
'   and (a.cod_division = :p67_cod_division or :p67_cod_division is null)',
'   AND (A.codigo_articulo = :p67_COD_ARTICULO OR :p67_COD_ARTICULO IS NULL)',
'   AND (A.COD_ART_CORTO = :p67_COD_art_corto OR :p67_COD_art_corto IS NULL)',
'   ',
' and :P67_COD_LISTA_PRECIOS IS NOT NULL',
' and :P67_COD_LISTA_PRECIOS   in (''OFERTAS'')',
'and CASE',
'         WHEN TIPO = ''CMB'' THEN',
'          ',
'          ',
'          ROUND(f_PRECIO_combo(CODIGO_ARTICULO  ,',
'                                          :P67_COD_LISTA_PRECIOS       ), NVL(( Select   M.DECIMALES',
'       ',
'      from monedas m, vt_listas_precios_cab c',
'     where c.cod_empresa=''1'' ',
'      and c.cod_moneda=m.cod_moneda',
'and      c.cod_lista_precio=:P67_COD_LISTA_PRECIOS),0))',
'          ',
'          ',
'         ELSE',
'          round(PRECIO_web( ',
'            ',
'          a.codigo_articulo',
'        , case',
'         when a.cod_division = ''2'' then',
'          :P67_COD_LISTA_PRECIOS',
'         when a.cod_division = ''9'' then',
'          :P67_COD_LISTA_PRECIOS',
'         else',
'          :P67_COD_LISTA_PRECIOS',
'       end,',
'       ',
'       0),',
'        NVL(( Select   M.DECIMALES',
'       ',
'      from monedas m, vt_listas_precios_cab c',
'     where c.cod_empresa=''1'' ',
'      and c.cod_moneda=m.cod_moneda',
'and      c.cod_lista_precio=:P67_COD_LISTA_PRECIOS),0)',
'       ) END>0        ',
'',
'',
' ORDER BY 3'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P67_COD_LISTA_PRECIOS,P67_COD_DIVISION,P67_MARCA,P67_COD_FAMILIA,P67_COD_ART_CORTO,P67_COD_ARTICULO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(53900544037185294)
,p_name=>'Lista de Precios'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_csv_output_separator=>';'
,p_owner=>'INV'
,p_internal_uid=>53900544037185294
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13030342925426337)
,p_db_column_name=>'DESC_DIVISION'
,p_display_order=>10
,p_column_identifier=>'E'
,p_column_label=>'Desc Division'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13031587069426338)
,p_db_column_name=>'COD_EAN'
,p_display_order=>20
,p_column_identifier=>'H'
,p_column_label=>'Cod Ean'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13029994447426337)
,p_db_column_name=>'MARCA'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13030799778426337)
,p_db_column_name=>'DESC_CATEGORIA'
,p_display_order=>40
,p_column_identifier=>'F'
,p_column_label=>'Desc Categoria'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13028745347426336)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>50
,p_column_identifier=>'A'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13029188915426337)
,p_db_column_name=>'CODIGO_ARTICULO'
,p_display_order=>60
,p_column_identifier=>'B'
,p_column_label=>'Codigo Articulo'
,p_column_link=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:RP,:P68_COD_ARTICULO:#CODIGO_ARTICULO#'
,p_column_linktext=>'#CODIGO_ARTICULO#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13029550340426337)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>70
,p_column_identifier=>'C'
,p_column_label=>'Desc Articulo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13031192497426337)
,p_db_column_name=>'PRECIO'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Precio'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(53907319781177186)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'296632'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DESC_DIVISION:COD_EAN:MARCA:DESC_CATEGORIA:COD_ART_CORTO:CODIGO_ARTICULO:DESC_ARTICULO:PRECIO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13025645048426335)
,p_button_sequence=>80
,p_button_name=>'search'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'Y'
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13026079145426335)
,p_name=>'P67_COD_LISTA_PRECIOS'
,p_item_sequence=>20
,p_prompt=>'Lista Precios'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION||''(''||COD_LISTA_PRECIO||'')'' D, COD_LISTA_PRECIO from VT_LISTAS_PRECIOS_CAB',
'WHERE COD_EMPRESA=:p_cod_empresa',
'AND ESTADO=''A''',
'union all  ',
'select ''OFERTAS (OFERTAS)'', ''OFERTAS'' from dual',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
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
 p_id=>wwv_flow_imp.id(13026433918426335)
,p_name=>'P67_COD_DIVISION'
,p_item_sequence=>30
,p_prompt=>'Division'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_DIVISION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESC_DIVISION, COD_DIVISION FROM ST_DIVISION_ARTICULOS',
'WHERE ESTADO=''A''',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Todos'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13026809230426335)
,p_name=>'P67_MARCA'
,p_item_sequence=>40
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_MARCAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca||'' - ''||descripcion D, cod_marca R',
'from st_marcas',
'order by descripcion;'))
,p_lov_display_null=>'YES'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13027259528426335)
,p_name=>'P67_COD_FAMILIA'
,p_item_sequence=>50
,p_prompt=>'Familia'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_FAMILIAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION, COD_FAMILIA FROM ST_FAMILIA',
'WHERE ESTADO=''S''',
'and cod_empresa=:p_cod_empresa',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13027603438426336)
,p_name=>'P67_COD_ART_CORTO'
,p_item_sequence=>60
,p_prompt=>'Cod Art Corto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13028079792426336)
,p_name=>'P67_COD_ARTICULO'
,p_item_sequence=>70
,p_prompt=>'Cod Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.descripcion||'' ''||cod_Articulo||'' ''||s.cod_art_corto descripcion, cod_articulo',
'from st_articulos s, v_productos_lista_precio v',
'where cod_empresa=:p_cod_empresa',
'and cod_rubro=''PR''',
'and s.cod_articulo=v.codigo_articulo',
'and s.cod_art_corto is not null'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13034658275426340)
,p_name=>'refrescar_lista'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P67_COD_LISTA_PRECIOS,P67_COD_DIVISION,P67_MARCA,P67_COD_FAMILIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13035122706426340)
,p_event_id=>wwv_flow_imp.id(13034658275426340)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53900520423185294)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13035586441426340)
,p_name=>'buscar'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13025645048426335)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13036039884426340)
,p_event_id=>wwv_flow_imp.id(13035586441426340)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53900520423185294)
);
wwv_flow_imp.component_end;
end;
/
