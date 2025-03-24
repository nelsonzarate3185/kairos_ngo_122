prompt --application/pages/page_00039
begin
--   Manifest
--     PAGE: 00039
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
 p_id=>39
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTPRESUP - Presupuesto de Ventas'
,p_alias=>'PRESUPUESTO-DE-VENTAS'
,p_step_title=>'Presupuesto de Ventas'
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
,p_last_upd_yyyymmddhh24miss=>'20240917164757'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(125185983653253889)
,p_plug_name=>'Presupuesto de Ventas'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(125237873152253729)
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
'seq_id,',
'c001 ser_pedido, c002 nro_pedido,',
'(select cod_art_corto from st_articulos p where cod_empresa=''1'' and cod_articulo = c003) as codigo_corto,',
'c003 as cod_articulo,',
'(select descripcion from st_articulos p where cod_empresa=''1'' and cod_articulo = c003) as product_name,',
'        to_number(c005) as unit_price,',
'        to_number(c004) as quantity,',
'        to_number(c006) as porc_descuento,',
'        to_number(c007) as total_iva,',
'       to_number(c008) as monto_total,',
'        to_number(c009) as total,',
'       C010 AS ID_PEDIDO, (c012) as id_promo, null as remove',
'  from apex_collections',
' where collection_name = ''VT_PRESUPUESTO_DETALLE''',
' order by 1 asc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P39_COD_ARTICULO'
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
 p_id=>wwv_flow_imp.id(12270170304963379)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Or.'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12270560944963380)
,p_query_column_id=>2
,p_column_alias=>'SER_PEDIDO'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12270953980963380)
,p_query_column_id=>3
,p_column_alias=>'NRO_PEDIDO'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12271348722963380)
,p_query_column_id=>4
,p_column_alias=>'CODIGO_CORTO'
,p_column_display_sequence=>3
,p_column_heading=>'Codigo Corto'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12271725807963381)
,p_query_column_id=>5
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>5
,p_column_heading=>'Cod Articulo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12272183890963381)
,p_query_column_id=>6
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'Descripcion'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12272543410963381)
,p_query_column_id=>7
,p_column_alias=>'UNIT_PRICE'
,p_column_display_sequence=>7
,p_column_heading=>'Precion Unitario'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12272901638963381)
,p_query_column_id=>8
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>8
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12273337226963381)
,p_query_column_id=>9
,p_column_alias=>'PORC_DESCUENTO'
,p_column_display_sequence=>9
,p_column_heading=>'% Descuento'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12273778997963381)
,p_query_column_id=>10
,p_column_alias=>'TOTAL_IVA'
,p_column_display_sequence=>10
,p_column_heading=>'Total Iva'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12274162740963382)
,p_query_column_id=>11
,p_column_alias=>'MONTO_TOTAL'
,p_column_display_sequence=>11
,p_column_heading=>'Monto Total'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12274535227963382)
,p_query_column_id=>12
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>12
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
 p_id=>wwv_flow_imp.id(12274909030963382)
,p_query_column_id=>13
,p_column_alias=>'ID_PEDIDO'
,p_column_display_sequence=>13
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12275303060963382)
,p_query_column_id=>14
,p_column_alias=>'ID_PROMO'
,p_column_display_sequence=>14
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12275769346963382)
,p_query_column_id=>15
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>15
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-note" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#SEQ_ID#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12255858235963372)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_button_name=>'crea_clientes'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_image_alt=>'Crea Clientes'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12256237140963373)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_button_name=>'Crear_Pedido'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Pedido'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-cart-arrow-up'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12256660837963373)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-remove'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12257048996963373)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_button_name=>'NUEVO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
,p_button_position=>'CLOSE'
,p_icon_css_classes=>'fa-gear'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12257480661963373)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_button_name=>'Imprimir'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:195:&SESSION.::&DEBUG.:RP,195::'
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12257822857963373)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_button_name=>'Actualizar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Actualizaciones'
,p_button_position=>'EDIT'
,p_button_condition=>'P39_NRO_COMPROBANTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-edit'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12276196639963382)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(125237873152253729)
,p_button_name=>'Add_item'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Articulo'
,p_button_position=>'EDIT'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12258234804963373)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Presupuesto'
,p_button_position=>'EDIT'
,p_button_condition=>'P39_NRO_COMPROBANTE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12297146322963397)
,p_branch_name=>'carga_collections'
,p_branch_action=>'BEGIN'||wwv_flow.LF||
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''PRESUPUESTO_VENTAS'');'||wwv_flow.LF||
'APEX_COLLECTION.ADD_MEMBER(p_collection_name=>''PRESUPUESTO_VENTAS'',                             '||wwv_flow.LF||
'                                p_c001           =>''PED'','||wwv_flow.LF||
'                                p_c002           =>:P44_SER_COMPROBANTE,'||wwv_flow.LF||
'                           p_c003 =>:P44_NRO_COMPROBANTE'||wwv_flow.LF||
'                               );'||wwv_flow.LF||
'COMMIT;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'END;'||wwv_flow.LF||
''
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'PLSQL'
,p_branch_when_button_id=>wwv_flow_imp.id(12257480661963373)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12296784274963396)
,p_branch_name=>'VER_REPORTE'
,p_branch_action=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.:RP,46::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(12257480661963373)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12297569114963397)
,p_branch_name=>'ir_a_la_pagina45'
,p_branch_action=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:RP,43:P43_SER_PEDIDO,P43_NRO_PEDIDO,P43_COD_CLIENTE,P43_COD_CONDICION_VENTA,P43_COD_LISTA_PRECIO,P43_COD_MONEDA:&P39_SER_COMPROBANTE.,&P39_NRO_COMPROBANTE.,&P39_COD_CLIENTE.,&P39_COD_CONDICION_VENTA.,&P39_COD_LISTA_PRECIO.,&P39_COD_MONEDA.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(12276196639963382)
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12258680737963374)
,p_name=>'P39_ID_PEDIDO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
':P39_USUARIO||TO_CHAR(SYSDATE,''DDMMYYYYHHMMSS'') ID',
'FROM DUAL'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12259000435963374)
,p_name=>'P39_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12259444054963375)
,p_name=>'P39_SER_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12259873785963375)
,p_name=>'P39_NRO_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_prompt=>'Numero de Presupuesto'
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
 p_id=>wwv_flow_imp.id(12260275782963375)
,p_name=>'P39_FEC_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
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
 p_id=>wwv_flow_imp.id(12260626235963375)
,p_name=>'P39_COD_CLIENTE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre|| '' ''|| codigo_area|| '' ''|| num_telefono || '' ''||numero||'' ''||cod_cliente nombre, cod_cliente',
'from cc_clientes c, personas p, telef_personas pt, ident_personas pi ',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona',
'and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'and nvl(c.estado,''X'') = ''A'' ',
'order by nombre'))
,p_cSize=>10
,p_cMaxlength=>15
,p_tag_attributes=>'style="width:60px"'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12261005529963375)
,p_name=>'P39_NOM_CLIENTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre'
,p_source=>'NOM_CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-user-check'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12261479237963375)
,p_name=>'P39_COD_DIRECCION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12261896234963376)
,p_name=>'P39_DIR_CLIENTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_prompt=>'Dir Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-map-o'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12262278303963376)
,p_name=>'P39_TEL_CLIENTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_prompt=>'Telefono'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-phone'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12262670880963376)
,p_name=>'P39_RUC'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_prompt=>'RUC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-address-card-o'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12263096695963376)
,p_name=>'P39_COD_SUCURSAL_DIST'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_prompt=>'Sucursal Cliente'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre, P.cod_SUCURSAL',
'',
'	from cc_clientes         c, BS_SUCURSAL_CLIENTE p',
'	where c.cod_empresa=''1''',
'	and c.cod_cliente=:P39_cod_cliente',
'	and c.cod_persona=p.cod_persona'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P39_COD_CLIENTE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_attributes=>'style="min-width:150px;"'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-home'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12263405916963376)
,p_name=>'P39_LUGAR_ENTREGA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_prompt=>'Lugar Entrega'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-map-marker'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12263838072963376)
,p_name=>'P39_TELEFONO_DIST'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
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
 p_id=>wwv_flow_imp.id(12264206172963377)
,p_name=>'P39_COD_VENDEDOR'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
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
 p_id=>wwv_flow_imp.id(12264600453963377)
,p_name=>'P39_COD_CONDICION_VENTA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
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
 p_id=>wwv_flow_imp.id(12265069220963377)
,p_name=>'P39_COD_LISTA_PRECIO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_prompt=>'Lista Precio'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_LISTA_PRECIOS1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION||''(''||COD_LISTA_PRECIO||'')'' D, COD_LISTA_PRECIO from VT_LISTAS_PRECIOS_CAB',
'WHERE COD_EMPRESA=''1''',
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
 p_id=>wwv_flow_imp.id(12265444365963377)
,p_name=>'P39_COD_MONEDA'
,p_is_required=>true
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_MONEDAS1'
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
 p_id=>wwv_flow_imp.id(12265857410963377)
,p_name=>'P39_TIP_CAMBIO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
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
 p_id=>wwv_flow_imp.id(12266225302963377)
,p_name=>'P39_TIP_CAMBIO_COMPRA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12266630475963378)
,p_name=>'P39_TIPO_ENTREGA'
,p_is_required=>true
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
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
 p_id=>wwv_flow_imp.id(12267049719963378)
,p_name=>'P39_COD_FLETE'
,p_is_required=>true
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_prompt=>'Flete'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select descripcion,cod_flete',
'	 ',
'	  from  vt_fletes ',
'	  where cod_empresa = ''1''',
'          AND TIPO_ENTREGA=:p39_TIPO_ENTREGA',
'	   and ACTIVO=''S'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Flete-'
,p_lov_cascade_parent_items=>'P39_TIPO_ENTREGA'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(12267457537963378)
,p_name=>'P39_FEC_VENCIMIENTO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_prompt=>'Fec Vencimiento'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12267856779963378)
,p_name=>'P39_GARANTIA'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_prompt=>'Garantia'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ''12 MESES'' descripcion, ''12 MESES'' codigo from dual union all',
'select  ''6 MESES'' descripcion, ''6 MESES'' codigo from dual union all',
'select  ''1 MESES'' descripcion, ''1 MESES'' codigo from dual union all',
'select  ''SIN GARANTIA'' descripcion, ''SIN GARANTIA'' codigo from dual '))
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
 p_id=>wwv_flow_imp.id(12268262649963378)
,p_name=>'P39_COMENTARIO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>150
,p_cMaxlength=>150
,p_grid_column=>1
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
 p_id=>wwv_flow_imp.id(12268648213963378)
,p_name=>'P39_COD_ARTICULO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12269054112963379)
,p_name=>'P39_PEDIDO'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_prompt=>'Pedido'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12269464061963379)
,p_name=>'P39_ANULAR'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(125185983653253889)
,p_item_default=>'P'
,p_prompt=>'Anular'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'A'
,p_attribute_03=>'SI'
,p_attribute_04=>'P'
,p_attribute_05=>'NO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12276502901963383)
,p_name=>'P39_DELETE_PROMO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(125237873152253729)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12276943550963383)
,p_name=>'P39_DELETE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(125237873152253729)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12277394111963383)
,p_name=>'P39_CANTIDAD_DETALLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(125237873152253729)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12277872152963389)
,p_validation_name=>'validar_codigo_cliente'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''S''',
'from cc_clientes  a',
'where a.cod_empresa=''1''',
'and a.cod_cliente=:P39_COD_CLIENTE'))
,p_validation_type=>'EXISTS'
,p_error_message=>'No se encuentra el codigo de cliente'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(12260626235963375)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12278267311963389)
,p_validation_name=>'validar_sucursal_dist'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	select  p.cod_sucursal',
'	',
'	from cc_clientes  c, BS_SUCURSAL_CLIENTE  p',
'	where c.cod_empresa=''1''',
'	and c.cod_cliente=:P39_cod_cliente',
'	and c.cod_persona=p.cod_persona',
'	and p.cod_sucursal=:P39_cod_sucursal_dist',
'AND ROWNUM=1'))
,p_validation_type=>'EXISTS'
,p_error_message=>'Es Obligatorio la sucursal'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(12263096695963376)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
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
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12278646537963389)
,p_validation_name=>'New'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select descripcion,cod_flete	 ',
'	  from  vt_fletes ',
'	  where cod_empresa = ''1''        ',
'	   and ACTIVO=''S''',
'AND COD_FLETE=:P39_COD_FLETE'))
,p_validation_type=>'EXISTS'
,p_error_message=>'Es obligatorio cargar el flete'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(12267049719963378)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12295750674963396)
,p_name=>'nombre'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P39_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12296299508963396)
,p_event_id=>wwv_flow_imp.id(12295750674963396)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P39_NOM_CLIENTE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre',
'from cc_clientes  c, personas p, telef_personas  pt, ident_personas  pi ',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona',
'and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'and nvl(c.estado,''X'') = ''A'' ',
'and c.cod_cliente=:P39_COD_CLIENTE',
'AND ROWNUM=1',
'order by nombre'))
,p_attribute_07=>'P39_COD_CLIENTE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12281347339963390)
,p_name=>'datos_cliente'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P39_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12281841489963391)
,p_event_id=>wwv_flow_imp.id(12281347339963390)
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
'                                     :P39_COD_DIRECCION,',
'                                     :P39_DIR_CLIENTE,:P39_TEL_CLIENTE,',
'                                     :P39_RUC,',
':P39_COD_VENDEDOR,',
':P39_COD_CONDICION_VENTA, :P39_COD_LISTA_PRECIO',
'				from cc_clientes  c, personas  p, cc_causales  b,',
'				     direc_personas  d, ',
'				     telef_personas  t, ',
'				     ident_personas  i, ',
'				     CIUDADES  CI',
'			 where c.cod_empresa = ''1''',
'			   and c.cod_cliente = :P39_cod_cliente',
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
'			   and rownum = 1',
'                           ;',
'                           exception when others then null;',
'                           END;',
'                          ',
'                 IF  apex_collection.collection_exists(p_collection_name => ''VT_PRESUPUESTO_DETALLE'') then',
'NULL;',
'ELSE',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PRESUPUESTO_DETALLE'');',
'     apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PRESUPUESTO_CABECERA'');',
'END IF;',
'',
'                           end;'))
,p_attribute_02=>'P39_COD_CLIENTE,P39_COD_ARTICULO'
,p_attribute_03=>'P39_DIR_CLIENTE,P39_TEL_CLIENTE,P39_RUC,P39_COD_VENDEDOR,:P39_COD_CONDICION_VENTA, :P39_COD_LISTA_PRECIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12282233909963391)
,p_name=>'datos_sucursales'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P39_COD_SUCURSAL_DIST'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12282787044963391)
,p_event_id=>wwv_flow_imp.id(12282233909963391)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'	select  p.direccion, p.telefono',
'	 into  :P39_lugar_entrega, :P39_telefono_dist',
'	from cc_clientes  c, BS_SUCURSAL_CLIENTE p',
'	where c.cod_empresa=''1''',
'	and c.cod_cliente=:P39_cod_cliente',
'	and c.cod_persona=p.cod_persona',
'	and p.cod_sucursal=:P39_cod_sucursal_dist',
'	;',
'exception',
'	when others then ',
'	',
'	 NULL;',
'end;'))
,p_attribute_02=>'P39_COD_SUCURSAL_DIST'
,p_attribute_03=>'P39_LUGAR_ENTREGA,P39_TELEFONO_DIST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12283186329963391)
,p_name=>'datos_plazo'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P39_COD_CONDICION_VENTA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12283677605963392)
,p_event_id=>wwv_flow_imp.id(12283186329963391)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'		BEGIN',
'			  select c.COD_LISTA_PRECIO, ',
'			  			 lp.cod_moneda',
'			    into :P39_COD_LISTA_PRECIO,  ',
'			    		 :P39_cod_moneda',
'			    from cc_condiciones_ventas c,  ',
'			    		 vt_listas_precios_cab lp',
'			   where c.cod_empresa = ''1''',
'			     and c.estado      = ''A''',
'					',
'			     and c.cod_condicion_venta = :P39_cod_condicion_venta',
'			     and lp.cod_empresa        = c.cod_empresa',
'			     and lp.cod_lista_precio   = c.cod_lista_precio;',
'		',
'		EXCEPTION',
'				',
'				when others then',
'						 NULL;',
'		END;'))
,p_attribute_02=>'P39_COD_CONDICION_VENTA'
,p_attribute_03=>'P39_COD_LISTA_PRECIO,P39_COD_MONEDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12284047884963392)
,p_name=>'tipo_cambio'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P39_COD_MONEDA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12284508070963392)
,p_event_id=>wwv_flow_imp.id(12284047884963392)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  select  tipo_cambio_dia,  tipo_cambio_compra',
'    into :P39_tip_cambio, :P39_tip_cambio_compra',
'    from monedas',
'   where cod_moneda = :P39_cod_moneda;',
'   ',
'EXCEPTION',
'  when others then',
'  ',
'  NULL;',
'  END;'))
,p_attribute_02=>'P39_COD_MONEDA'
,p_attribute_03=>'P39_TIP_CAMBIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12284901051963392)
,p_name=>'refresh_detalle'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P39_COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12285412835963392)
,p_event_id=>wwv_flow_imp.id(12284901051963392)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(125237873152253729)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12285887123963392)
,p_name=>'DELETE_DETALLE'
,p_event_sequence=>80
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-note'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12286365337963393)
,p_event_id=>wwv_flow_imp.id(12285887123963392)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de borrar la linea'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12286828792963393)
,p_event_id=>wwv_flow_imp.id(12285887123963392)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P39_DELETE_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12287381142963393)
,p_event_id=>wwv_flow_imp.id(12285887123963392)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF TO_NUMBER(:P39_DELETE_ID)<>0 THEN',
'Begin',
'',
'    apex_collection.delete_members( ',
'        p_collection_name => ''VT_PRESUPUESTO_DETALLE'',',
'        p_attr_number     => 12,',
'        p_attr_value      => :P39_DELETE_ID );',
'        exception when others then null;',
'    ',
'End;',
'END IF;',
'BEGIN',
'    APEX_COLLECTION.DELETE_MEMBER(',
'        p_collection_name => ''VT_PRESUPUESTO_DETALLE'',',
'        p_seq => TO_NUMBER(:P39_DELETE_ID));',
'            END;',
'',
'',
'',
'end;'))
,p_attribute_02=>'P39_DELETE_ID,P39_DELETE_PROMO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12287826783963393)
,p_event_id=>wwv_flow_imp.id(12285887123963392)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12288237720963393)
,p_name=>'expandir_region'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12288723557963393)
,p_event_id=>wwv_flow_imp.id(12288237720963393)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P39_CANTIDAD_DETALLE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*) ',
'from apex_collections',
' where collection_name = ''VT_PRESUPUESTO_DETALLE'''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12289269566963394)
,p_event_id=>wwv_flow_imp.id(12288237720963393)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(125185983653253889)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var numEntries = $v("P39_CANTIDAD_DETALLE"),',
'    npedido = $v("P39_NRO_COMPROBANTE")',
'',
'   , $region = $(this.affectedElements[0]);',
'  ',
' if (numEntries >0 && $region.hasClass(''is-expanded'') && npedido !== ''undefined'' ) {',
'      $region.find("button.t-Button--hideShow").eq(0).click();',
'  }',
'  ',
' if (numEntries <1  && $region.hasClass(''is-collapsed'') ) {',
'      $region.find("button.t-Button--hideShow").eq(0).click();',
'  }',
'//expanded',
'//collapsed'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12289605067963394)
,p_name=>'crea_cliente'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12290135372963394)
,p_event_id=>wwv_flow_imp.id(12289605067963394)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_MODAL PAGE LOOKUP BUTTON'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(12255858235963372)
,p_attribute_01=>'P39_COD_CLIENTE'
,p_attribute_02=>'92'
,p_attribute_03=>'P39_COD_CLIENTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12290525343963394)
,p_name=>'OCULTAR'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P39_PEDIDO'
,p_condition_element=>'P39_PEDIDO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12291034682963394)
,p_event_id=>wwv_flow_imp.id(12290525343963394)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(12256237140963373)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12291515465963394)
,p_event_id=>wwv_flow_imp.id(12290525343963394)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(12257822857963373)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12292073084963395)
,p_event_id=>wwv_flow_imp.id(12290525343963394)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(12256237140963373)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12292549122963395)
,p_event_id=>wwv_flow_imp.id(12290525343963394)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P39_ANULAR'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12293019929963395)
,p_event_id=>wwv_flow_imp.id(12290525343963394)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(12276196639963382)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12293453089963395)
,p_name=>'ocultar_sin_nro_presupuesto'
,p_event_sequence=>130
,p_condition_element=>'P39_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12293946224963395)
,p_event_id=>wwv_flow_imp.id(12293453089963395)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(12256237140963373)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12294415560963395)
,p_event_id=>wwv_flow_imp.id(12293453089963395)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P39_ANULAR'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12294860334963396)
,p_name=>'CARGA_VALORES'
,p_event_sequence=>160
,p_condition_element=>'P39_COD_ARTICULO'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12295309785963396)
,p_event_id=>wwv_flow_imp.id(12294860334963396)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P39_NRO_COMPROBANTE IS NOT NULL AND :P39_COD_ARTICULO IS NULL THEN ',
'IF   :P39_COD_ARTICULO IS NULL THEN',
'     apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PRESUPUESTO_CABECERA'');',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PRESUPUESTO_DETALLE'');',
'    END IF;',
'    ',
'    ',
'    apex_application.g_print_success_message := ''<span style="color:red">Error en la insercion del articulo.</span>'';  ',
'    ',
'declare',
'vusuario varchar2(600):= user;',
'    l_order_id    number;',
'    l_order_id_det    number;',
'begin',
'begin',
'select N.COD_CLIENTE, NOM_CLIENTE, FEC_COMPROBANTE, N.COD_DIRECCION, DIR_CLIENTE, TEL_CLIENTE, RUC, nvl(COD_SUCURSAL_DIST,''1''), LUGAR_ENTREGA,',
'N.COD_VENDEDOR, N.COD_CONDICION_VENTA,N.COD_LISTA_PRECIO, COD_MONEDA,TIP_CAMBIO,TIP_CAMBIO_COMPRA, TIPO_ENTREGA, COD_FLETE, N.COMENTARIO,',
'suc.nombre, suc.direccion, telef_contacto, fec_vencimiento, garantia, N.COMENTARIO,',
'(select a.pedido from v_presupuesto_ventas  a where a.ser_comprobante=n.ser_comprobante and a.nro_comprobante=n.nro_comprobante)pedido',
'INTO  :P39_COD_CLIENTE, :P39_NOM_CLIENTE, :P39_FEC_COMPROBANTE, :P39_COD_DIRECCION, :P39_DIR_CLIENTE, :P39_TEL_CLIENTE, :P39_RUC, ',
':P39_COD_SUCURSAL_DIST, :P39_LUGAR_ENTREGA, :P39_COD_VENDEDOR, :P39_COD_CONDICION_VENTA,:P39_COD_LISTA_PRECIO, :P39_COD_MONEDA,:P39_TIP_CAMBIO,',
':P39_TIP_CAMBIO_COMPRA, :P39_TIPO_ENTREGA, :P39_COD_FLETE, :P39_COMENTARIO,:P39_COD_SUCURSAL_DIST,:p39_lugar_entrega, :P39_telefono_dist,',
':P39_FEC_VENCIMIENTO, :P39_GARANTIA, :P39_COMENTARIO,:P39_PEDIDO',
'from vt_presupuesto_cabecera  n, BS_SUCURSAL_CLIENTE  SUC, cc_clientes  c',
'where n.cod_empresa=''1''',
'and n.tip_comprobante=''PED''',
'AND N.SER_COMPROBANTE=:P39_SER_COMPROBANTE',
'AND N.NRO_COMPROBANTE=:P39_NRO_COMPROBANTE',
'and n.cod_empresa=c.cod_empresa',
'and n.cod_cliente=c.cod_cliente',
'AND SUC.COD_PERSONA(+)=C.COD_PERSONA',
'AND SUC.COD_SUCURSAL=nvl(n.COD_SUCURSAL_DIST,''1'');',
'end;',
' ',
'   declare cursor ccAB IS',
'select COD_ARTICULO, CANTIDAD, X.PRECIO_UNITARIO, X.PORC_DESCUENTO, X.TOTAL_IVA, X.MONTO_TOTAL,',
'X.MONTO_TOTAL + X.TOTAL_IVA TOTAL, X.PORC_RECARGO,X.DESCUENTO, X.RECARGO, X.COD_IVA, X.PORC_IVA',
'from vt_presupuesto_detalle  X',
'where X.cod_empresa=''1''',
'and tip_comprobanTe=''PED''',
'and ser_comprobante=:P39_SER_COMPROBANTE',
'AND NRO_COMPROBANTE = :P39_NRO_COMPROBANTE;',
'BEGIN ',
'FOR X IN CCAB LOOP',
'     apex_collection.add_member(',
'            p_collection_name => ''VT_PRESUPUESTO_DETALLE'',',
'            p_c001            => :P39_SER_COMPROBANTE, ',
'            p_c002            => :P39_NRO_COMPROBANTE, ',
'            p_c003            => X.COD_ARTICULO,',
'            p_c004            => X.CANTIDAD,',
'            p_c005            => X.PRECIO_UNITARIO,',
'            p_c006            => X.PORC_DESCUENTO,',
'            p_c007            => X.TOTAL_IVA,',
'            p_c008            => X.MONTO_TOTAL,',
'            p_c009            => X.TOTAL,',
'            p_c010            => :P39_NRO_COMPROBANTE,',
'            p_c011            => NULL,',
'            p_c012            => 0,',
'                p_c013            => null,',
'                p_c014            => X.PORC_RECARGO ,',
'                p_c015            => X.DESCUENTO ,',
'                p_c016            => X.RECARGO ,',
'                p_c017            => X.COD_IVA ,',
'                p_c019            => X.PORC_IVA )  ;',
'   ',
'END LOOP;',
'END;',
'',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''PRESUPUESTO_VENTAS'');',
'APEX_COLLECTION.ADD_MEMBER(p_collection_name=>''PRESUPUESTO_VENTAS'', p_c001=>''PED'',  p_c002=>:P39_SER_COMPROBANTE,  p_c003=>:P39_NRO_COMPROBANTE);               ',
'',
'IF :P39_COD_ARTICULO IS NULL THEN',
':P39_COD_ARTICULO :=:P39_NRO_COMPROBANTE;',
'END IF;',
'end;',
'ELSE',
'',
'begin',
'--:P39_SER_COMPROBANTE:=''P'';',
':P39_FEC_COMPROBANTE:=SYSDATE;',
'',
'EXCEPTION WHEN OTHERS THEN NULL;',
'end;',
'END IF;'))
,p_attribute_02=>'P39_SER_COMPROBANTE,P39_NRO_COMPROBANTE'
,p_attribute_03=>'P39_FEC_COMPROBANTE,P39_COD_CLIENTE,P39_NOM_CLIENTE,P39_COD_DIRECCION,P39_DIR_CLIENTE,P39_TEL_CLIENTE,P39_RUC,P39_COD_SUCURSAL_DIST,P39_COD_VENDEDOR,P39_COD_CONDICION_VENTA,P39_COD_LISTA_PRECIO,P39_COD_MONEDA,P39_COD_FLETE,P39_FEC_VENCIMIENTO,P39_GAR'
||'ANTIA,P39_COMENTARIO,P39_PEDIDO,P39_COD_ARTICULO,P39_TIPO_ENTREGA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12278913906963389)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12256660837963373)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12280502574963390)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'actualizar_presupuesto'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P39_NRO_COMPROBANTE IS NOT  NULL THEN',
'BEGIN',
'',
'',
'DECLARE ',
'VNRO_PEDIDO NUMBER;',
'VMONTO_TOTAL NUMBER:=0;',
'VTOTAL_IVA  NUMBER:=0;',
'VMONTO_TOTAL_EX NUMBER:=0;',
'VNOMBRE VARCHAR2(500);',
'BEGIN',
'  ',
' ',
'         ',
' BEGIN',
' DELETE VT_PRESUPUESTO_DETALLE ',
' WHERE COD_EMPRESA=''1''',
' AND TIP_COMPROBANTE=''PED''',
' AND SER_COMPROBANTE=:P39_SER_COMPROBANTE',
' AND NRO_COMPROBANTE=:P39_NRO_COMPROBANTE;',
' ',
' END;         ',
'         ',
'         declare cursor ccab is',
'         select ',
'seq_id,',
'c001 ser_pedido, c002 nro_pedido,',
'(select cod_art_corto from st_articulos  p where cod_empresa=''1'' and cod_articulo = c003) as codigo_corto,',
'',
'        to_number(c005) as precio_unitario,',
'        to_number(c004) as cantidad,',
'        to_number(c006) as porc_descuento,',
'        to_number(c007) as total_iva,',
'       to_number(c008) as monto_total,',
'        to_number(c009) as total,',
'       C010 AS ID_PEDIDO, TO_NUMBER(c012) as id_promo, c011 articulo_par,',
'c013 nro_promo, C014 PORC_RECARgO, c003 cod_Articulo, c015 descuento, c016 recargo, c017 cod_iva, c018 porc_iva',
'  from apex_collections',
' where collection_name = ''VT_PRESUPUESTO_DETALLE''',
' order by 1 asc;',
' begin',
' for x in ccab loop',
'  INSERT INTO  VT_PRESUPUESTO_DETALLE ',
'       ( COD_EMPRESA  ,TIP_COMPROBANTE , SER_COMPROBANTE , NRO_COMPROBANTE , COD_ARTICULO , CANTIDAD  ,',
'         CANTIDAD_FACTURADA , PRECIO_UNITARIO , MONTO_TOTAL , TOTAL_IVA , PRECIO_LISTA , DESCUENTO ,',
'         PRECIO_REAL , PORC_DESCUENTO , COSTO_PROMEDIO_REF , COSTO_PROMEDIO , COSTO_CON  , COD_UNIDAD_MEDIDA ,',
'         CANTIDAD_UB , PORC_RECARGO , RECARGO , COD_ARTICULO_REL_BON  , PORC_IVA , ORDEN , COD_IVA,nro_promo,',
'         COD_ART_CORTO, articulo_par )',
'       values',
'      ( ''1'' , ''PED'' , :P39_SER_COMPROBANTE , :P39_NRO_COMPROBANTE ,  x.COD_ARTICULO , x.CANTIDAD , 0 , x.PRECIO_UNITARIO ,',
'        x.MONTO_TOTAL , x.TOTAL_IVA , x.precio_unitario  ,  x.DESCUENTO  , x.precio_unitario , x.PORC_DESCUENTO ,  0 ,',
'        0 , 0  , null , x.cantidad , x.PORC_RECARGO , x.RECARGO , null ,',
'        x.PORC_IVA , x.seq_id , x.COD_IVA, x.nro_promo,X.codigo_corto,x.articulo_par  )      ;',
'VMONTO_TOTAL:=NVL(vMONTO_TOTAL,0)+X.MONTO_TOTAL;',
'VTOTAL_IVA:=NVL(VTOTAL_IVA,0)+ X.TOTAL_IVA;',
'IF VTOTAL_IVA=0 THEN',
'VMONTO_TOTAL_EX:= VMONTO_TOTAL_EX+ X.MONTO_TOTAL;',
'END IF;',
'COMMIT;',
' end loop;',
' ',
' BEGIN',
' UPDATE VT_PRESUPUESTO_CABECERA ',
' SET TOT_COMPROBANTE=VMONTO_TOTAL+VTOTAL_IVA,',
' TOT_GRAVADAS=VMONTO_TOTAL,',
' TOT_EXENTAS= VMONTO_TOTAL_EX, ',
' cod_cliente =:P39_COD_CLIENTE,',
' COD_CONDICION_VENTA = :P39_COD_CONDICION_VENTA,',
' COD_LISTA_PRECIO = :P39_COD_LISTA_PRECIO,',
' COMENTARIO= :P39_COMENTARIO,',
' COD_VENDEDOR = :P39_COD_VENDEDOR,',
' ESTADO = NVL(:P39_ESTADO,''P''),',
' COD_SUCURSAL_DIST = :P39_COD_SUCURSAL_DIST,',
' NOM_CLIENTE = :P39_NOM_CLIENTE',
' WHERE COD_EMPRESA=''1''',
' AND TIP_COMPROBANTE=''PED''',
' AND SER_COMPROBANTE=:P39_SER_COMPROBANTE',
' AND NRO_COMPROBANTE=:P39_NRO_COMPROBANTE;',
' ',
' END;',
' end;',
'         ',
'  end;',
'',
'',
'END;',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12257822857963373)
,p_process_success_message=>'Pedido Actualizado'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12280927900963390)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'crear_pedido'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P39_NRO_COMPROBANTE IS not  NULL THEN',
'BEGIN',
'',
'',
'DECLARE ',
'VNRO_PEDIDO NUMBER;',
'VMONTO_TOTAL NUMBER:=0;',
'VTOTAL_IVA  NUMBER:=0;',
'VMONTO_TOTAL_EX NUMBER:=0;',
'VNOMBRE VARCHAR2(500);',
'BEGIN',
' begin',
'    select max(nro_comprobante) + 1',
'      into vnro_pedido',
'      from VT_pedidos_cabecera a',
'     where cod_empresa = ''1''',
'       and a.tip_comprobante = ''PED''',
'       and a.ser_comprobante = ''P'';',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      VNRO_PEDIDO := 1;',
'  end;',
'  BEGIN',
'  SELECT P.NOMBRE INTO VNOMBRE',
'  FROM CC_CLIENTES  C, PERSONAS  P',
'  WHERE C.COD_EMPRESA=''1''',
'  AND C.COD_CLIENTE=:P39_COD_CLIENTE',
'  AND C.COD_PERSONA=P.COD_PERSONA;',
'  EXCEPTION',
'  WHEN OTHERS THEN ',
'   NULL;',
'  END;',
'  IF vnro_pedido IS NULL THEN ',
'  vnro_pedido:=''1'';',
'  END IF;',
'  begin',
'  INSERT INTO  VT_PEDIDOS_CABECERA  (cod_empresa , TIP_COMPROBANTE ,',
'        SER_COMPROBANTE, NRO_COMPROBANTE,COD_SUCURSAL,FEC_COMPROBANTE ,',
'        COD_CLIENTE ,COD_VENDEDOR ,COD_CONDICION_VENTA ,COD_LISTA_PRECIO ,DESCUENTO ,COD_MONEDA,',
'        TIP_CAMBIO, TOT_GRAVADAS , TOT_EXENTAS , TOT_IVA , ESTADO , FEC_ESTADO , COD_USUARIO  ,',
'        FEC_ALTA , NRO_AUTORIZACION , CAMBIO_MONEDA_PRECIO , TIP_CAMBIO_COMPRA  ,',
'        TOT_DESCUENTO_DET , TIP_COMPROBANTE_REF , TEL_CLIENTE , RUC , PROCESADO, NRO_COMPROBANTE_REF ,',
'        NOM_CLIENTE , NOMBRE_CAB , GRU_COMPROBANTE , FEC_NACIMIENTO , DIR_CLIENTE , DIAS ,',
'        DESCUENTO_DET, COMENTARIO , COLUMNA , COD_SECTOR , CAMBIO_DOLAR ,COD_DIRECCION   ,',
'        TIP_COMPROBANTE_PET , SER_COMPROBANTE_PET , NRO_COMPROBANTE_PET , NRO_INSCRIPCION_AD ,',
'        IND_EXENTO_AD , COD_USUARIO_AUTORIZACION , FECHA_AUTORIZACION  , AUTORIZADO , TOT_COMPROBANTE,RECARGO ,cod_flete,',
'        COD_SUCURSAL_DIST, LUGAR_ENTREGA,tipo_entrega)',
'   VALUES',
'        (''1'' , ''PED'', ''P'', vnro_pedido,',
'         ''01'' ,TRUNC(SYSDATE) , :P39_COD_CLIENTE ,:P39_COD_VENDEDOR ,:P39_COD_CONDICION_VENTA ,',
'         :P39_COD_LISTA_PRECIO , 0 , :P39_COD_MONEDA , :P39_TIP_CAMBIO , 0, 0 ,',
'         0 , ''P'' , TRUNC(SYSDATE) , :P39_USUARIO , TRUNC(SYSDATE) , NULL , 1 ,',
'         1   , NULL , NULL , :P39_TEL_CLIENTE,',
'         :P39_RUC  ,''S'' , NULL , NVL(:P39_NOM_CLIENTE,VNOMBRE) ,NVL( :P39_NOM_CLIENTE,VNOMBRE) , NULL , NULL ,',
'         :P39_DIR_CLIENTE , NULL  ,0  , :P39_COMENTARIO, NULL , NULL , 1 , ''0'' ,',
'         NULL , NULL, NULL , NULL , NULL , NULL ,',
'         NULL , NULL , NULL, NULL, :P39_cod_flete,',
'         :P39_COD_SUCURSAL_DIST,',
'         :P39_LUGAR_ENTREGA,:P39_tipo_entrega ',
'        );',
'         COMMIT;',
'         :P39_PEDIDO :=''P-''||vnro_pedido;',
'         ',
'         ',
'         ',
'         ',
'         declare cursor ccab is',
'         select ',
'seq_id,',
'c001 ser_pedido, c002 nro_pedido,',
'(select cod_art_corto from st_articulos  p where cod_empresa=''1'' and cod_articulo = c003) as codigo_corto,',
'',
'        to_number(c005) as precio_unitario,',
'        to_number(c004) as cantidad,',
'        to_number(c006) as porc_descuento,',
'        to_number(c007) as total_iva,',
'       to_number(c008) as monto_total,',
'        to_number(c009) as total,',
'       C010 AS ID_PEDIDO, TO_NUMBER(c012) as id_promo, c011 articulo_par,',
'c013 nro_promo, C014 PORC_RECARgO, c003 cod_Articulo, c015 descuento, c016 recargo, c017 cod_iva, c018 porc_iva',
'  from apex_collections',
' where collection_name = ''VT_PRESUPUESTO_DETALLE''',
' order by 1 asc;',
' begin',
' for x in ccab loop',
'  INSERT INTO  VT_PEDIDOS_DETALLE ',
'       ( COD_EMPRESA  ,TIP_COMPROBANTE , SER_COMPROBANTE , NRO_COMPROBANTE , COD_ARTICULO , CANTIDAD  ,',
'         CANTIDAD_FACTURADA , PRECIO_UNITARIO , MONTO_TOTAL , TOTAL_IVA , PRECIO_LISTA , DESCUENTO ,',
'         PRECIO_REAL , PORC_DESCUENTO , COSTO_PROMEDIO_REF , COSTO_PROMEDIO , COSTO_CON  , COD_UNIDAD_MEDIDA ,',
'         CANTIDAD_UB , PORC_RECARGO , RECARGO , COD_ARTICULO_REL_BON  , PORC_IVA , ORDEN , COD_IVA,nro_promo,',
'         COD_ART_CORTO, articulo_par )',
'       values',
'      ( ''1'' , ''PED'' , ''P'' , VNRO_PEDIDO ,  x.COD_ARTICULO , x.CANTIDAD , 0 , x.PRECIO_UNITARIO ,',
'        x.MONTO_TOTAL , x.TOTAL_IVA , x.precio_unitario  ,  x.DESCUENTO  , x.precio_unitario , x.PORC_DESCUENTO ,  0 ,',
'        0 , 0  , null , x.cantidad , x.PORC_RECARGO , x.RECARGO , null ,',
'        x.PORC_IVA , x.seq_id , x.COD_IVA, x.nro_promo,X.codigo_corto,x.articulo_par  )      ;',
'VMONTO_TOTAL:=NVL(vMONTO_TOTAL,0)+X.MONTO_TOTAL;',
'VTOTAL_IVA:=NVL(VTOTAL_IVA,0)+ X.TOTAL_IVA;',
'IF VTOTAL_IVA=0 THEN',
'VMONTO_TOTAL_EX:= VMONTO_TOTAL_EX+ X.MONTO_TOTAL;',
'END IF;',
'COMMIT;',
' end loop;',
' ',
' BEGIN',
' UPDATE VT_PEDIDOS_CABECERA ',
' SET TOT_COMPROBANTE=VMONTO_TOTAL+VTOTAL_IVA,',
' TOT_GRAVADAS=VMONTO_TOTAL,',
' TOT_EXENTAS= VMONTO_TOTAL_EX',
' WHERE COD_EMPRESA=''1''',
' AND TIP_COMPROBANTE=''PED''',
' AND SER_COMPROBANTE=''P''',
' AND NRO_COMPROBANTE=VNRO_PEDIDO;',
' ',
' END;',
' end;',
'         ',
'  end;',
'',
'',
'END;',
'',
'END;',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error en la Generacion del Pedido'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12256237140963373)
,p_process_success_message=>'Pedido Generado'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12279355496963389)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GUARDAR_PEDIDO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P39_NRO_COMPROBANTE IS  NULL THEN',
':P39_SER_COMPROBANTE:=''P'';',
'BEGIN',
'',
'',
'DECLARE ',
'VNRO_PEDIDO NUMBER;',
'VMONTO_TOTAL NUMBER:=0;',
'VTOTAL_IVA  NUMBER:=0;',
'VMONTO_TOTAL_EX NUMBER:=0;',
'VNOMBRE VARCHAR2(500);',
'',
'vCAMBIO_MONEDA_PRECIO  NUMBER:=1;',
'BEGIN',
' begin',
'    select max(nro_comprobante) + 1',
'      into vnro_pedido',
'      from VT_PRESUPUESTO_CABECERA  a',
'     where cod_empresa = ''1''',
'       and a.tip_comprobante = ''PED''',
'       and a.ser_comprobante = :P39_SER_COMPROBANTE;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      VNRO_PEDIDO := 1;',
'  end;',
'  BEGIN',
'  SELECT P.NOMBRE INTO VNOMBRE',
'  FROM CC_CLIENTES  C, PERSONAS  P',
'  WHERE C.COD_EMPRESA=''1''',
'  AND C.COD_CLIENTE=:P39_COD_CLIENTE',
'  AND C.COD_PERSONA=P.COD_PERSONA;',
'  EXCEPTION',
'  WHEN OTHERS THEN ',
'   NULL;',
'  END;',
'  IF vnro_pedido IS NULL THEN ',
'  vnro_pedido:=''1'';',
'  END IF;',
'	 BEGIN',
'  Select  m.tipo_cambio_credito',
'    into vCAMBIO_MONEDA_PRECIO',
'    from monedas m, parametros_generales p',
'   where p.cod_modulo = ''ST''',
'     and p.parametro = ''COD_MONEDA_PREC''',
'     and p.valor = m.cod_moneda;',
'EXCEPTION',
'  when others then',
'    vCAMBIO_MONEDA_PRECIO:= 1 ;',
'END; ',
'  begin',
'  INSERT INTO  VT_PRESUPUESTO_CABECERA  (cod_empresa , TIP_COMPROBANTE ,',
'        SER_COMPROBANTE, NRO_COMPROBANTE,COD_SUCURSAL,FEC_COMPROBANTE ,',
'        COD_CLIENTE ,COD_VENDEDOR ,COD_CONDICION_VENTA ,COD_LISTA_PRECIO ,DESCUENTO ,COD_MONEDA,',
'        TIP_CAMBIO, TOT_GRAVADAS , TOT_EXENTAS , TOT_IVA , ESTADO , FEC_ESTADO , COD_USUARIO  ,',
'        FEC_ALTA , NRO_AUTORIZACION , CAMBIO_MONEDA_PRECIO , TIP_CAMBIO_COMPRA  ,',
'        TOT_DESCUENTO_DET , TIP_COMPROBANTE_REF , TEL_CLIENTE , RUC , PROCESADO, NRO_COMPROBANTE_REF ,',
'        NOM_CLIENTE , NOMBRE_CAB , GRU_COMPROBANTE , FEC_NACIMIENTO , DIR_CLIENTE , DIAS ,',
'        DESCUENTO_DET, COMENTARIO , COLUMNA , COD_SECTOR , CAMBIO_DOLAR ,COD_DIRECCION   ,',
'        TIP_COMPROBANTE_PET , SER_COMPROBANTE_PET , NRO_COMPROBANTE_PET , NRO_INSCRIPCION_AD ,',
'        IND_EXENTO_AD , COD_USUARIO_AUTORIZACION , FECHA_AUTORIZACION  , AUTORIZADO , TOT_COMPROBANTE,RECARGO ,cod_flete,',
'        COD_SUCURSAL_DIST, LUGAR_ENTREGA,tipo_entrega, fec_vencimiento,garantia, validez)',
'   VALUES',
'        (''1'' , ''PED'', ''P'', vnro_pedido,',
'         ''01'' ,TRUNC(SYSDATE) , :P39_COD_CLIENTE ,:P39_COD_VENDEDOR ,:P39_COD_CONDICION_VENTA ,',
'         :P39_COD_LISTA_PRECIO , 0 , :P39_COD_MONEDA , :P39_TIP_CAMBIO , 0, 0 ,',
'         0 , ''P'' , TRUNC(SYSDATE) , :P39_USUARIO , TRUNC(SYSDATE) , NULL , vCAMBIO_MONEDA_PRECIO ,',
'         1   , NULL , NULL , :P39_TEL_CLIENTE,',
'         :P39_RUC  ,''S'' , NULL , NVL(:P39_NOM_CLIENTE,VNOMBRE) ,NVL( :P39_NOM_CLIENTE,VNOMBRE) , NULL , NULL ,',
'         :P39_DIR_CLIENTE , NULL  ,0  , :P39_COMENTARIO, NULL , NULL , 1 , ''0'' ,',
'         NULL , NULL, NULL , NULL , NULL , NULL ,',
'         NULL , NULL , NULL, NULL, :P39_cod_flete,',
'         :P39_COD_SUCURSAL_DIST,',
'         :P39_LUGAR_ENTREGA,:P39_tipo_entrega,',
'        :P39_FEC_VENCIMIENTO,:P39_GARANTIA, ROUND(to_number(TO_DATE(:P39_FEC_VENCIMIENTO)-SYSDATE))',
'        );',
'         COMMIT;',
'         :P39_NRO_COMPROBANTE:=vnro_pedido;',
'         ',
'   BEGIN',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''PRESUPUESTO_VENTAS'');',
'APEX_COLLECTION.ADD_MEMBER(p_collection_name=>''PRESUPUESTO_VENTAS'',                             ',
'                                p_c001           =>''PED'',',
'                                p_c002           =>''P'',',
'                           p_c003 =>vnro_pedido',
'                               );',
'COMMIT;',
'',
'',
'END;',
'      ',
'         ',
'         ',
'         declare cursor ccab is',
'         select ',
'seq_id,',
'c001 ser_pedido, c002 nro_pedido,',
'(select cod_art_corto from st_articulos p where cod_empresa=''1'' and cod_articulo = c003) as codigo_corto,',
'',
'        to_number(c005) as precio_unitario,',
'        to_number(c004) as cantidad,',
'        to_number(c006) as porc_descuento,',
'        to_number(c007) as total_iva,',
'       to_number(c008) as monto_total,',
'        to_number(c009) as total,',
'       C010 AS ID_PEDIDO, TO_NUMBER(c012) as id_promo, c011 articulo_par,',
'c013 nro_promo, C014 PORC_RECARgO, c003 cod_Articulo, c015 descuento, c016 recargo, c017 cod_iva, c018 porc_iva',
'  from apex_collections',
' where collection_name = ''VT_PRESUPUESTO_DETALLE''',
' order by 1 asc;',
' begin',
' for x in ccab loop',
'  INSERT INTO  VT_PRESUPUESTO_DETALLE ',
'       ( COD_EMPRESA  ,TIP_COMPROBANTE , SER_COMPROBANTE , NRO_COMPROBANTE , COD_ARTICULO , CANTIDAD  ,',
'         CANTIDAD_FACTURADA , PRECIO_UNITARIO , MONTO_TOTAL , TOTAL_IVA , PRECIO_LISTA , DESCUENTO ,',
'         PRECIO_REAL , PORC_DESCUENTO , COSTO_PROMEDIO_REF , COSTO_PROMEDIO , COSTO_CON  , COD_UNIDAD_MEDIDA ,',
'         CANTIDAD_UB , PORC_RECARGO , RECARGO , COD_ARTICULO_REL_BON  , PORC_IVA , ORDEN , COD_IVA,nro_promo,',
'         COD_ART_CORTO, articulo_par )',
'       values',
'      ( ''1'' , ''PED'' , ''P'' , VNRO_PEDIDO ,  x.COD_ARTICULO , x.CANTIDAD , 0 , x.PRECIO_UNITARIO ,',
'        x.MONTO_TOTAL , x.TOTAL_IVA , x.precio_unitario  ,  x.DESCUENTO  , x.precio_unitario , x.PORC_DESCUENTO ,  0 ,',
'        0 , 0  , null , x.cantidad , x.PORC_RECARGO , x.RECARGO , null ,',
'        x.PORC_IVA , x.seq_id , x.COD_IVA, x.nro_promo,X.codigo_corto,x.articulo_par  )      ;',
'VMONTO_TOTAL:=NVL(vMONTO_TOTAL,0)+X.MONTO_TOTAL;',
'VTOTAL_IVA:=NVL(VTOTAL_IVA,0)+ X.TOTAL_IVA;',
'IF VTOTAL_IVA=0 THEN',
'VMONTO_TOTAL_EX:= VMONTO_TOTAL_EX+ X.MONTO_TOTAL;',
'END IF;',
'COMMIT;',
' end loop;',
' ',
' BEGIN',
' UPDATE VT_PRESUPUESTO_CABECERA ',
' SET TOT_COMPROBANTE=VMONTO_TOTAL+VTOTAL_IVA,',
' TOT_GRAVADAS=VMONTO_TOTAL,',
' TOT_EXENTAS= VMONTO_TOTAL_EX',
' WHERE COD_EMPRESA=''1''',
' AND TIP_COMPROBANTE=''PED''',
' AND SER_COMPROBANTE=''P''',
' AND NRO_COMPROBANTE=VNRO_PEDIDO;',
' ',
' END;',
' end;',
'         ',
'  end;',
'',
'',
'END;',
'',
'END;',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12258234804963373)
,p_process_success_message=>'Presupuesto Generado'
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
 p_id=>wwv_flow_imp.id(12279797441963390)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NUEVO_PEDIDO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'NULL;',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PRESUPUESTO_CABECERA'');',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PRESUPUESTO_DETALLE'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12257048996963373)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12280184823963390)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR_PAGINA'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'44'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12257048996963373)
);
wwv_flow_imp.component_end;
end;
/
