prompt --application/pages/page_00073
begin
--   Manifest
--     PAGE: 00073
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
 p_id=>73
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Promociones'
,p_alias=>'PROMOCIONES'
,p_step_title=>'Promociones'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250102144253'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85790137605604344)
,p_plug_name=>'Promociones'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cat.descripcion categoria,',
'       ma.descripcion marca,',
'       s.cod_art_corto cod_principal,',
'       s.descripcion desc_prncipal,',
'       p.cantidad_minima_compra cantidad_minima_compra,',
'       p.DESCUENTO_PRODUCTO descuento,',
'       s2.cod_art_corto cod_promo,',
'       s2.descripcion desc_promo,',
'       p.cantidad_regalo,',
'       p.DESCUENTO_PROMO,',
'       p.NOMBRE_PROMO,',
'       FECHA_INICIO,',
'       FECHA_FIN,',
'       p.NRO_PROMO,',
'       (select sum(e.CANT_DISPON)',
'          from v_stock_apex e',
'         where e.COD_ARTICULO = s2.cod_articulo',
'         and e.cod_empresa=s2.cod_empresa) stock_promo,',
'        ',
'       (select nvl(SUM(DD.CANTIDAD), 0) cantidad_vendida',
'          from vt_comprobantes_cabecera cc,',
'               vt_comprobantes_detalle  dd,',
'               vt_pedidos_detalle       dp',
'         where cc.cod_empresa = s.cod_empresa',
'           and cc.cod_empresa = dd.cod_empresa',
'           and cc.tip_comprobante = dd.tip_comprobante',
'           and cc.ser_comprobante = dd.ser_comprobante',
'           and cc.nro_comprobante = dd.nro_comprobante',
'           and cc.cod_empresa = dp.cod_empresa',
'           and cc.tip_comprobante_ref = dP.tip_comprobante',
'           and cc.ser_comprobante_ref = dP.ser_comprobante',
'           and cc.nro_comprobante_ref = dP.nro_comprobante',
'           and dd.cod_articulo = dp.cod_articulo',
'           AND DD.ORDEN_DETALLE_PEDIDO = DP.ORDEN',
'           AND dp.nro_promo_asignada = p.NRO_PROMO',
'           and p.COD_ARTICULO = dd.cod_articulo',
'           and nvl(cc.estado, ''P'') <> ''A'') CANTIDAD_PROMO_VENDIDA',
'  from v_promociones_apex p,',
'       st_articulos       s,',
'       st_articulos       s2,',
'       st_marcas          ma,',
'       st_categorias      cat',
' where p.cod_articulo = s.cod_articulo',
'   and s.cod_empresa = :P_COD_EMPRESA',
'   and p.cod_articulo_promo = s2.cod_articulo(+)',
'   and s2.cod_empresa(+) = p.cod_empresa_promo',
'   and s.cod_marca = ma.cod_marca',
'   and s.cod_empresa = cat.cod_empresa',
'   and s.cod_categoria = cat.cod_categoria',
'   and (s.cod_marca = :P73_MARCA OR :P73_MARCA IS NULL)',
'   and (s.cod_CATEGORIA = :P73_CATEGORIA OR :P73_CATEGORIA IS NULL)',
'   and (s.cod_ART_CORTO = :P73_COD_ART_CORTO OR :P73_COD_ART_CORTO IS NULL)',
'   and (s.cod_aRTICULO = :P73_COD_ARTICULO OR :P73_COD_aRTICULO IS NULL)',
'',
'UNION ALL',
'select cat.descripcion categoria,',
'       ma.descripcion marca,',
'       s.cod_art_corto cod_principal,',
'       s.descripcion desc_prncipal,',
'       p.cantidad_minima_compra cantidad_minima_compra,',
'       p.DESCUENTO_PRODUCTO descuento,',
'       s2.cod_art_corto cod_promo,',
'       s2.descripcion desc_promo,',
'       p.cantidad_regalo,',
'       p.DESCUENTO_PROMO,',
'       p.NOMBRE_PROMO,',
'       FECHA_INICIO,',
'       FECHA_FIN,',
'       p.NRO_PROMO,',
'       (select sum(e.CANT_DISPON)',
'          from v_stock_apex e',
'         where e.COD_ARTICULO = s2.cod_articulo',
'         and e.cod_empresa=s2.cod_empresa) stock_promo,',
'        ',
'       (select nvl(SUM(DD.CANTIDAD), 0) cantidad_vendida',
'          from vt_comprobantes_cabecera cc,',
'               vt_comprobantes_detalle  dd,',
'               vt_pedidos_detalle       dp',
'         where cc.cod_empresa = s.cod_empresa',
'           and cc.cod_empresa = dd.cod_empresa',
'           and cc.tip_comprobante = dd.tip_comprobante',
'           and cc.ser_comprobante = dd.ser_comprobante',
'           and cc.nro_comprobante = dd.nro_comprobante',
'           and cc.cod_empresa = dp.cod_empresa',
'           and cc.tip_comprobante_ref = dP.tip_comprobante',
'           and cc.ser_comprobante_ref = dP.ser_comprobante',
'           and cc.nro_comprobante_ref = dP.nro_comprobante',
'           and dd.cod_articulo = dp.cod_articulo',
'           AND DD.ORDEN_DETALLE_PEDIDO = DP.ORDEN',
'           AND dp.nro_promo_asignada = p.NRO_PROMO',
'           and p.COD_ARTICULO = dd.cod_articulo',
'           and nvl(cc.estado, ''P'') <> ''A'')',
'  from v_promociones_descuento_apex p,',
'       st_articulos                 s,',
'       st_articulos                 s2,',
'       st_marcas                    ma,',
'       st_categorias                cat',
' where p.cod_articulo = s.cod_articulo',
'   and s.cod_empresa = :p_cod_empresa',
' and p.cod_articulo_promo  = s2.cod_articulo(+)',
'   and s2.cod_empresa(+) = p.cod_empresa_promo',
'   and s.cod_marca = ma.cod_marca',
'   and s.cod_empresa = cat.cod_empresa',
'      ',
'   and s.cod_categoria = cat.cod_categoria',
'   and (s.cod_marca = :P73_MARCA OR :P73_MARCA IS NULL)',
'   and (s.cod_ART_CORTO = :P73_COD_ART_CORTO OR :P73_COD_ART_CORTO IS NULL)',
'   and (s.cod_aRTICULO = :P73_COD_ARTICULO OR :P73_COD_aRTICULO IS NULL)',
'   and (s.cod_CATEGORIA = :P73_CATEGORIA OR :P73_CATEGORIA IS NULL)',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P73_MARCA,P73_CATEGORIA,P73_COD_ART_CORTO,P73_COD_ARTICULO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(85790259167604344)
,p_name=>'Promociones'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>85790259167604344
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13160944216594567)
,p_db_column_name=>'CANTIDAD_MINIMA_COMPRA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Cantidad Minima Compra'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13161378247594568)
,p_db_column_name=>'CANTIDAD_REGALO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Cantidad Regalo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13161747832594568)
,p_db_column_name=>'DESCUENTO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Descuento'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13157791701594565)
,p_db_column_name=>'COD_PRINCIPAL'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'Cod Principal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13158135358594566)
,p_db_column_name=>'DESC_PRNCIPAL'
,p_display_order=>30
,p_column_identifier=>'L'
,p_column_label=>'Desc Prncipal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13158556587594566)
,p_db_column_name=>'COD_PROMO'
,p_display_order=>40
,p_column_identifier=>'M'
,p_column_label=>'Cod Promo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13158996304594566)
,p_db_column_name=>'DESC_PROMO'
,p_display_order=>50
,p_column_identifier=>'N'
,p_column_label=>'Desc Promo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13159354892594567)
,p_db_column_name=>'DESCUENTO_PROMO'
,p_display_order=>60
,p_column_identifier=>'O'
,p_column_label=>'Descuento Promo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13159774510594567)
,p_db_column_name=>'NOMBRE_PROMO'
,p_display_order=>70
,p_column_identifier=>'P'
,p_column_label=>'Nombre Promo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13160101139594567)
,p_db_column_name=>'MARCA'
,p_display_order=>80
,p_column_identifier=>'Q'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13160537776594567)
,p_db_column_name=>'CATEGORIA'
,p_display_order=>90
,p_column_identifier=>'R'
,p_column_label=>'Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13162166373594568)
,p_db_column_name=>'FECHA_INICIO'
,p_display_order=>100
,p_column_identifier=>'S'
,p_column_label=>'Fecha Inicio'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13162547612594568)
,p_db_column_name=>'FECHA_FIN'
,p_display_order=>110
,p_column_identifier=>'T'
,p_column_label=>'Fecha Fin'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(138649881719528733)
,p_db_column_name=>'NRO_PROMO'
,p_display_order=>120
,p_column_identifier=>'U'
,p_column_label=>'Nro Promo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(138649987926528734)
,p_db_column_name=>'STOCK_PROMO'
,p_display_order=>130
,p_column_identifier=>'V'
,p_column_label=>'Stock Promo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(138650028951528735)
,p_db_column_name=>'CANTIDAD_PROMO_VENDIDA'
,p_display_order=>140
,p_column_identifier=>'W'
,p_column_label=>'Cantidad Promo Vendida'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(85794656788603178)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'614185'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_PROMO:NOMBRE_PROMO:COD_PRINCIPAL:DESC_PRNCIPAL:CANTIDAD_MINIMA_COMPRA:DESCUENTO:COD_PROMO:DESC_PROMO:CANTIDAD_REGALO:STOCK_PROMO:DESCUENTO_PROMO:CANTIDAD_PROMO_VENDIDA:MARCA:CATEGORIA:FECHA_INICIO:FECHA_FIN:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(86449324072197999)
,p_plug_name=>'Filtros'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13163583581594569)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(86449324072197999)
,p_button_name=>'Buscar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13163900368594569)
,p_name=>'P73_MARCA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(86449324072197999)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_MARCAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca||'' - ''||descripcion D, cod_marca R',
'from st_marcas',
'order by descripcion;'))
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
 p_id=>wwv_flow_imp.id(13164341812594570)
,p_name=>'P73_CATEGORIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(86449324072197999)
,p_prompt=>'Categoria'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_CATEGORIAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_categoria||'' - '' ||descripcion D, ',
'         cod_categoria R',
'    FROM st_categorias',
'  ',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND ESTADO IN(''S'',''A'');',
' '))
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
 p_id=>wwv_flow_imp.id(13164777906594570)
,p_name=>'P73_COD_ART_CORTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(86449324072197999)
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
 p_id=>wwv_flow_imp.id(13165159909594570)
,p_name=>'P73_COD_ARTICULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(86449324072197999)
,p_prompt=>'Cod Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion||'' ''||cod_Articulo||'' ''||cod_art_corto descripcion, cod_articulo',
'from st_articulos ',
'where cod_empresa=:p_cod_empresa',
'and cod_rubro=''PR''',
'and cod_art_corto is not null'))
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
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13165512475594570)
,p_name=>'go'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13163583581594569)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13166072557594570)
,p_event_id=>wwv_flow_imp.id(13165512475594570)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(85790137605604344)
);
wwv_flow_imp.component_end;
end;
/
