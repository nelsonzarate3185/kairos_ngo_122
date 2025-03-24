prompt --application/pages/page_00072
begin
--   Manifest
--     PAGE: 00072
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
 p_id=>72
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Ver Pedido'
,p_alias=>'VER-PEDIDO'
,p_page_mode=>'MODAL'
,p_step_title=>'Ver Pedido'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: yellow !important;',
'   border-color: red !important;',
'}'))
,p_page_css_classes=>'CSS_CLASS'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240917164854'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136626969404157986)
,p_plug_name=>'Cabecera'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(136678858903157826)
,p_name=>'Detalle'
,p_region_name=>'detalle'
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'',
'',
'S.COD_ART_CORTO codigo_corto,',
'P.COD_ARTICULO as cod_articulo,',
'S.DESCRIPCION as product_name,',
'        P.PRECIO_UNITARIO as unit_price,',
'        P.CANTIDAD as quantity,',
'        P.PORC_DESCUENTO as porc_descuento,',
'        P.TOTAL_IVA as total_iva,',
'       P.MONTO_TOTAL as monto_total,',
'        NVL(TOTAL_IVA,0)+NVL(MONTO_TOTAL,0) as total, ORDEN',
'  from vt_pedidos_detalle  P, ST_ARTICULOS  S',
'  where P.cod_empresa=:p_cod_empresa',
' and tip_comprobante=''PED''',
' AND SER_COMPROBANTE = :P72_SER_COMPROBANTE',
' AND NRO_COMPROBANTE = :P72_NRO_COMPROBANTE',
' AND S.COD_ARTICULO=P.COD_ARTICULO',
' AND S.COD_EMPRESA=P.COD_EMPRESA',
' order by ORDEN asc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P72_NRO_COMPROBANTE,P72_SER_COMPROBANTE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Totales'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13135091052562731)
,p_query_column_id=>1
,p_column_alias=>'CODIGO_CORTO'
,p_column_display_sequence=>1
,p_column_heading=>'Codigo Corto'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13135453645562731)
,p_query_column_id=>2
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>2
,p_column_heading=>'Cod Articulo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13135894130562731)
,p_query_column_id=>3
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Descripcion'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13136280388562731)
,p_query_column_id=>4
,p_column_alias=>'UNIT_PRICE'
,p_column_display_sequence=>4
,p_column_heading=>'Precion Unitario'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13136617097562731)
,p_query_column_id=>5
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>5
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13137010139562732)
,p_query_column_id=>6
,p_column_alias=>'PORC_DESCUENTO'
,p_column_display_sequence=>6
,p_column_heading=>'% Descuento'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13137486809562732)
,p_query_column_id=>7
,p_column_alias=>'TOTAL_IVA'
,p_column_display_sequence=>7
,p_column_heading=>'Total Iva'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13137802225562732)
,p_query_column_id=>8
,p_column_alias=>'MONTO_TOTAL'
,p_column_display_sequence=>8
,p_column_heading=>'Monto Total'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13138207008562732)
,p_query_column_id=>9
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>9
,p_column_heading=>'Total'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13138642358562732)
,p_query_column_id=>10
,p_column_alias=>'ORDEN'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(13148046492562736)
,p_branch_name=>'IR_PAGINA_13'
,p_branch_action=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP,13:P13_COD_CLIENTE,P13_COD_CONDICION_VENTA,P13_COD_LISTA_PRECIO,P13_COD_MONEDA:&P28_COD_CLIENTE.,&P28_COD_CONDICION_VENTA.,&P28_COD_LISTA_PRECIO.,&P28_COD_MONEDA.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(37521393206373869)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13124797738562725)
,p_name=>'P72_ID_PEDIDO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136626969404157986)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
':P72_USUARIO||TO_CHAR(SYSDATE,''DDMMYYYYHHMMSS'') ID',
'FROM DUAL'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13125136973562726)
,p_name=>'P72_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(136626969404157986)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13125535601562726)
,p_name=>'P72_SER_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(136626969404157986)
,p_item_default=>'W'
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13125981973562727)
,p_name=>'P72_NRO_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(136626969404157986)
,p_item_default=>'178459'
,p_prompt=>'Numero de Pedido'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13126384244562727)
,p_name=>'P72_FEC_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(136626969404157986)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13126719552562727)
,p_name=>'P72_COD_CLIENTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(136626969404157986)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>15
,p_tag_attributes=>'style="width:60px"'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13127160662562727)
,p_name=>'P72_NOM_CLIENTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(136626969404157986)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre'
,p_source=>'NOM_CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-user-check'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13127565273562727)
,p_name=>'P72_COD_DIRECCION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(136626969404157986)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13127943426562727)
,p_name=>'P72_DIR_CLIENTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(136626969404157986)
,p_prompt=>'Dir Cliente'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-map-o'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13128372457562727)
,p_name=>'P72_TEL_CLIENTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(136626969404157986)
,p_prompt=>'Telefono'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-phone'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13128702326562728)
,p_name=>'P72_RUC'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(136626969404157986)
,p_prompt=>'RUC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-address-card-o'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13129171860562728)
,p_name=>'P72_COD_SUCURSAL_DIST'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(136626969404157986)
,p_prompt=>'Sucursal Cliente'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre, P.cod_SUCURSAL',
'',
'	from cc_clientes        c, BS_SUCURSAL_CLIENTE  p',
'	where c.cod_empresa=''1''',
'	and c.cod_cliente=:P72_cod_cliente',
'	and c.cod_persona=p.cod_persona'))
,p_tag_attributes=>'style="min-width:150px;"'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-home'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13129556517562728)
,p_name=>'P72_LUGAR_ENTREGA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(136626969404157986)
,p_prompt=>'Lugar Entrega'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-map-marker'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13129972103562728)
,p_name=>'P72_TELEFONO_DIST'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(136626969404157986)
,p_prompt=>'Telefono Dist'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-credit-card-terminal'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13130354923562728)
,p_name=>'P72_NRO_ORDEN_COMPRA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(136626969404157986)
,p_prompt=>'Nro OC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_colspan=>3
,p_grid_column=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13130733829562728)
,p_name=>'P72_COD_VENDEDOR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(136626969404157986)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_VENDEDORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  F.COD_VENDEDOR||'' - ''||P.NOMBRE nombre,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=:P_COD_EMPRESA',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-user-headset'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13131117848562729)
,p_name=>'P72_COD_CONDICION_VENTA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(136626969404157986)
,p_prompt=>'Condicion de Venta'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_PLAZOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION||'' (''||COD_CONDICION_VENTA||'')'' d, COD_CONDICION_VENTA FROM CC_CONDICIONES_VENTAS',
'WHERE COD_EMPRESA=''1''',
'AND ESTADO=''A''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-calendar-pointer'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13131592377562729)
,p_name=>'P72_COD_LISTA_PRECIO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(136626969404157986)
,p_prompt=>'Lista Precio'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_LISTA_PRECIOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION||''(''||COD_LISTA_PRECIO||'')'' D, COD_LISTA_PRECIO from VT_LISTAS_PRECIOS_CAB',
'WHERE COD_EMPRESA=:p_cod_empresa',
'AND ESTADO=''A''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-industry'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13131913610562729)
,p_name=>'P72_COD_MONEDA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(136626969404157986)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_MONEDAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion as d,',
'       cod_moneda r',
'  from monedas',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-money'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13132360904562729)
,p_name=>'P72_TIP_CAMBIO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(136626969404157986)
,p_prompt=>'Tip Cambio'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-dollar'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13132722734562729)
,p_name=>'P72_TIP_CAMBIO_COMPRA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(136626969404157986)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13133128575562729)
,p_name=>'P72_TIPO_ENTREGA'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(136626969404157986)
,p_prompt=>'Tipo Entrega'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''CAPITAL'' NOMBRE, ''CA''',
'FROM DUAL',
'UNION ALL',
'SELECT ''INTERIOR'' NOMBRE, ''IN''',
'FROM DUAL',
'UNION ALL',
'SELECT ''CLIENTE RETIRA'' NOMBRE, ''CR''',
'FROM DUAL',
'UNION ALL',
'SELECT ''ARREGLO ADMINISTRATIVO'' NOMBRE, ''AD''',
'FROM DUAL'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Tipo de Entrega-'
,p_cHeight=>1
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-package'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13133501737562730)
,p_name=>'P72_COD_FLETE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(136626969404157986)
,p_prompt=>'Flete'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select descripcion,cod_flete',
'	 ',
'	  from  vt_fletes',
'	  where cod_empresa = ''1''',
'          ',
'	   and ACTIVO=''S'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Flete-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-truck'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13133951439562730)
,p_name=>'P72_COMENTARIO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(136626969404157986)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>150
,p_cMaxlength=>150
,p_grid_column=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-clipboard-edit'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13134347062562730)
,p_name=>'P72_COD_ARTICULO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(136626969404157986)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13139022471562732)
,p_name=>'P72_DELETE_PROMO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136678858903157826)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13139493440562733)
,p_name=>'P72_DELETE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(136678858903157826)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13139809028562733)
,p_name=>'P72_CANTIDAD_DETALLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(136678858903157826)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13141013713562734)
,p_name=>'CARGA_VALORES'
,p_event_sequence=>20
,p_bind_type=>'live'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13141568259562734)
,p_event_id=>wwv_flow_imp.id(13141013713562734)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'vusuario varchar2(600):= user;',
'begin',
'',
'select N.COD_CLIENTE, NOM_CLIENTE, FEC_COMPROBANTE, N.COD_DIRECCION, DIR_CLIENTE, TEL_CLIENTE, RUC, COD_SUCURSAL_DIST, LUGAR_ENTREGA,  N.COD_VENDEDOR, N.COD_CONDICION_VENTA,N.COD_LISTA_PRECIO, COD_MONEDA,TIP_CAMBIO,TIP_CAMBIO_COMPRA, TIPO_ENTREGA, CO'
||'D_FLETE, N.COMENTARIO,  suc.nombre, suc.direccion, telef_contacto,nro_orden_compra',
'INTO :P72_COD_CLIENTE, :P72_NOM_CLIENTE, :P72_FEC_COMPROBANTE, :P72_COD_DIRECCION, :P72_DIR_CLIENTE, :P72_TEL_CLIENTE, :P72_RUC, :P72_COD_SUCURSAL_DIST, :P72_LUGAR_ENTREGA, :P72_COD_VENDEDOR, :P72_COD_CONDICION_VENTA,:P72_COD_LISTA_PRECIO, :P72_COD_M'
||'ONEDA,:P72_TIP_CAMBIO,:P72_TIP_CAMBIO_COMPRA, :P72_TIPO_ENTREGA, :P72_COD_FLETE, :P72_COMENTARIO,:P72_COD_SUCURSAL_DIST,:p72_lugar_entrega, :P72_telefono_dist,',
':P72_NRO_ORDEN_COMPRA',
'from vt_pedidos_cabecera  n, BS_SUCURSAL_CLIENTE  SUC, cc_clientes  c',
'',
'where n.cod_empresa=:p_cod_empresa',
'and n.tip_comprobante=''PED''',
'AND N.SER_COMPROBANTE=:P72_SER_COMPROBANTE',
'AND N.NRO_COMPROBANTE=:P72_NRO_COMPROBANTE',
'and n.cod_empresa=c.cod_empresa',
'and n.cod_cliente=c.cod_cliente',
'AND SUC.COD_PERSONA(+)=C.COD_PERSONA',
'AND SUC.COD_SUCURSAL=nvl(n.COD_SUCURSAL_DIST,''1'');',
' ',
'',
'end;'))
,p_attribute_02=>'P72_SER_COMPROBANTE,P72_NRO_COMPROBANTE,P72_COD_CLIENTE'
,p_attribute_03=>'P72_FEC_COMPROBANTE,P72_NOM_CLIENTE,P72_COD_CLIENTE,P72_COD_SUCURSAL_DIST,P72_COD_VENDEDOR,P72_LUGAR_ENTREGA,P72_COD_CONDICION_VENTA,P72_COD_LISTA_PRECIO,P72_TIPO_ENTREGA,P72_COD_FLETE,P72_COMENTARIO,P72_NRO_ORDEN_COMPRA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13141948058562734)
,p_name=>'datos_cliente'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P72_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13142483329562734)
,p_event_id=>wwv_flow_imp.id(13141948058562734)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'begin select	     ',
'				     d.cod_direccion cod_dir, ',
'				     d.detalle||''-''||ci.descripcion dir_cliente, ',
'				     t.codigo_area||'' ''||t.num_telefono,',
'				     i.numero, COD_VENDEDOR, COD_CONDICION_VENTA, COD_LISTA_PRECIO',
'                                     INTO',
'                                     :P72_COD_DIRECCION,',
'                                     :P72_DIR_CLIENTE,:P72_TEL_CLIENTE,',
'                                     :P72_RUC,',
':P72_COD_VENDEDOR,',
':P72_COD_CONDICION_VENTA, :P72_COD_LISTA_PRECIO',
'				from cc_clientes  c, personas  p, cc_causales  b,',
'				     direc_personas  d, ',
'				     telef_personas  t, ',
'				     ident_personas  i, ',
'				     CIUDADES  CI',
'			 where c.cod_empresa = ''1''',
'			   and c.cod_cliente = :P72_cod_cliente',
'			   and c.cod_persona = p.cod_persona',
'			   and c.cod_causal  = b.cod_causal(+)',
'			   and c.cod_persona = d.cod_persona(+)',
'			   and nvl(d.por_defecto(+),''N'') = ''S''',
'			   and c.cod_persona             = t.cod_persona(+)',
'			   and nvl(t.por_defecto(+),''N'') = ''S''',
'			   and c.cod_persona           = i.cod_persona(+)',
'			   and nvl(i.cod_ident(+),''X'') = ''RUC''',
'			   AND CI.COD_PAIS (+)     = D.COD_PAIS',
'			   AND CI.COD_PROVINCIA (+)= D.COD_PROVINCIA',
'			   AND CI.COD_CIUDAD (+)   = D.COD_CIUDAD',
'			   and rownum = 1;',
'                           END;',
'                           BEGIN',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PEDIDOS_CABECERA'');',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PEDIDOS_DETALLE'');',
'END;',
'                           end;'))
,p_attribute_02=>'P72_COD_CLIENTE'
,p_attribute_03=>'P72_DIR_CLIENTE,P72_TEL_CLIENTE,P72_RUC,P72_COD_VENDEDOR,:P72_COD_CONDICION_VENTA, :P72_COD_LISTA_PRECIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13142863708562734)
,p_name=>'datos_plazo'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P72_COD_CONDICION_VENTA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13143371709562734)
,p_event_id=>wwv_flow_imp.id(13142863708562734)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'		BEGIN',
'			  select c.COD_LISTA_PRECIO, ',
'			  			 lp.cod_moneda',
'			    into :P72_COD_LISTA_PRECIO,  ',
'			    		 :P72_cod_moneda',
'			    from cc_condiciones_ventas c,  ',
'			    		 vt_listas_precios_cab lp',
'			   where c.cod_empresa = ''1''',
'			     and c.estado      = ''A''',
'					',
'			     and c.cod_condicion_venta = :P72_cod_condicion_venta',
'			     and lp.cod_empresa        = c.cod_empresa',
'			     and lp.cod_lista_precio   = c.cod_lista_precio;',
'		',
'		EXCEPTION',
'				',
'				when others then',
'						 NULL;',
'		END;'))
,p_attribute_02=>'P72_COD_CONDICION_VENTA'
,p_attribute_03=>'P72_COD_LISTA_PRECIO,P72_COD_MONEDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13143782887562735)
,p_name=>'tipo_cambio'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P72_COD_MONEDA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13144213078562735)
,p_event_id=>wwv_flow_imp.id(13143782887562735)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  select  tipo_cambio_dia,  tipo_cambio_compra',
'    into :P72_tip_cambio, :P72_tip_cambio_compra',
'    from monedas',
'   where cod_moneda = :P72_cod_moneda;',
'   ',
'EXCEPTION',
'  when others then',
'  ',
'  NULL;',
'  END;'))
,p_attribute_02=>'P72_COD_MONEDA'
,p_attribute_03=>'P72_TIP_CAMBIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13144679503562735)
,p_name=>'refresh_detalle'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P72_COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13145148531562735)
,p_event_id=>wwv_flow_imp.id(13144679503562735)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136678858903157826)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13145507121562735)
,p_name=>'DELETE_DETALLE'
,p_event_sequence=>80
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-note'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13146074739562735)
,p_event_id=>wwv_flow_imp.id(13145507121562735)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de borrar la linea'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13146577504562736)
,p_event_id=>wwv_flow_imp.id(13145507121562735)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P72_DELETE_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13147031330562736)
,p_event_id=>wwv_flow_imp.id(13145507121562735)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF TO_NUMBER(:P72_DELETE_ID)<>0 THEN',
'Begin',
'',
'    apex_collection.delete_members( ',
'        p_collection_name => ''VT_PEDIDOS_DETALLE'',',
'        p_attr_number     => 12,',
'        p_attr_value      => :P72_DELETE_ID );',
'        exception when others then null;',
'    ',
'End;',
'END IF;',
'BEGIN',
'    APEX_COLLECTION.DELETE_MEMBER(',
'        p_collection_name => ''VT_PEDIDOS_DETALLE'',',
'        p_seq => TO_NUMBER(:P72_DELETE_ID));',
'            END;',
'',
'',
'',
'end;'))
,p_attribute_02=>'P72_DELETE_ID,P72_DELETE_PROMO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13147532796562736)
,p_event_id=>wwv_flow_imp.id(13145507121562735)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13140268997562733)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13140630091562733)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR_PAGINA'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'12'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
null;
wwv_flow_imp.component_end;
end;
/
