prompt --application/pages/page_00335
begin
--   Manifest
--     PAGE: 00335
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
 p_id=>335
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CCDESCTC'
,p_alias=>'CCDESCTC'
,p_step_title=>'CCDESCTC'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20230113164930'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(164801545243389444)
,p_plug_name=>'DESCUENTO TIPO CLIENTE'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(164801669040389445)
,p_plug_name=>'DESCUENTO TIPO CLIENTES'
,p_parent_plug_id=>wwv_flow_imp.id(164801545243389444)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    rowid id,',
'    COD_EMPRESA,',
'    TIP_CLIENTE ,',
'    COD_CONDICION_VENTA,',
'    COD_DIVISION,',
'    COD_MARCA,',
'    PORC_DESCUENTO,',
'    PORC_RECARGO,',
'    NULL EDITAR,',
'    NULL ELIMINAR',
'',
'FROM CC_DESCUENTO_TIPO_CLIENTE',
'where cod_empresa = :P335_COD_EMPRESA',
'order by rowid desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P335_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'TIPO CLIENTES'
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
 p_id=>wwv_flow_imp.id(167268051540133916)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>167268051540133916
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(83704329380744318)
,p_db_column_name=>'EDITAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P335_SEQ_ID_EDITAR'',''#ID#'');'
,p_column_linktext=>' <span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(83704715739744318)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P335_SEQ_ID_ELIMINAR'',''#ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(83623390932059706)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(83623483136059707)
,p_db_column_name=>'TIP_CLIENTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Tip Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(6218105840515898)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(83623579101059708)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(83766401002969103)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(83623650903059709)
,p_db_column_name=>'COD_DIVISION'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Division'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(83766982439989794)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(83623790887059710)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cod Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(83623855915059711)
,p_db_column_name=>'PORC_DESCUENTO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Porc Descuento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(83623992022059712)
,p_db_column_name=>'PORC_RECARGO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Porc Recargo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(83624297636059715)
,p_db_column_name=>'ID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Id'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(167283250740292461)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'835819'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:TIP_CLIENTE:COD_DIVISION:COD_CONDICION_VENTA:PORC_DESCUENTO:PORC_RECARGO:ELIMINAR:'
,p_sort_column_1=>'COD_TIP_CLIENTE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(164801745808389446)
,p_plug_name=>'AGREGAR/EDITAR'
,p_parent_plug_id=>wwv_flow_imp.id(164801545243389444)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(164801935770389447)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(83706141332744321)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(164801745808389446)
,p_button_name=>'BT_ACEPTAR_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(83706570832744321)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(164801745808389446)
,p_button_name=>'BT_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(83706968281744322)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(164801745808389446)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(83705471023744320)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(164801669040389445)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83623247524059705)
,p_name=>'P335_COD_CONDICION_VENTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(164801745808389446)
,p_prompt=>unistr('Condici\00F3n de Venta')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CONDICION_CCDESCTC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cv.descripcion, ',
'cv.cod_condicion_venta, ',
'cv.cod_lista_precio,',
' lp.descripcion lista_precio',
'  from cc_condiciones_ventas ',
'  cv, vt_listas_precios_cab lp, cc_tipo_documentacion td ',
'  where cv.cod_empresa = :P_COD_EMPRESA',
'  and cv.estado = ''A'' ',
'  and cv.cod_lista_precio = lp.cod_lista_precio(+) ',
'and lp.cod_empresa = :P_COD_EMPRESA',
'and cv.tip_documento = td.cod_tip_doc(+)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccionar -'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83707307951744322)
,p_name=>'P335_TIP_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(164801745808389446)
,p_prompt=>'Tipo Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_tip_cliente ',
'from cc_tipo_cliente ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccionar -'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83707704600744323)
,p_name=>'P335_COD_DIVISION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(164801745808389446)
,p_prompt=>'Division'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DIVISION_CCDESCTC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_division D, cod_division R',
'    from st_division_articulos',
' where  nvl(estado,''P'') NOT IN (''I'',''N'') order by 1 asc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccionar -'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83708553458744323)
,p_name=>'P335_PORC_DESCUENTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(164801745808389446)
,p_prompt=>'Dto. %'
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
 p_id=>wwv_flow_imp.id(83708986651744324)
,p_name=>'P335_PORC_RECARGO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(164801745808389446)
,p_prompt=>'Rec. %'
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
 p_id=>wwv_flow_imp.id(83709610431744324)
,p_name=>'P335_DERECHOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(164801935770389447)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83710023295744324)
,p_name=>'P335_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(164801935770389447)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83710488518744324)
,p_name=>'P335_NOM_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(164801935770389447)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83710830378744325)
,p_name=>'P335_COD_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(164801935770389447)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83711257320744325)
,p_name=>'P335_NOM_FORMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(164801935770389447)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83711661332744325)
,p_name=>'P335_COD_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(164801935770389447)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83712088624744325)
,p_name=>'P335_NOM_EMPRESA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(164801935770389447)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83712445722744325)
,p_name=>'P335_COD_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(164801935770389447)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83712894592744325)
,p_name=>'P335_NOM_SUCURSAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(164801935770389447)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83713299019744325)
,p_name=>'P335_COD_USUARIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(164801935770389447)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83713697155744326)
,p_name=>'P335_COD_IDIOMA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(164801935770389447)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83714085595744326)
,p_name=>'P335_COD_SISMENU'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(164801935770389447)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83714494193744326)
,p_name=>'P335_SEQ_ID_EDITAR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(164801935770389447)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83714805768744326)
,p_name=>'P335_SEQ_ID_ELIMINAR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(164801935770389447)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83715237679744326)
,p_name=>'P335_AUX_MSJ_CONTROL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(164801935770389447)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83716400575744330)
,p_name=>'DA_CREAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(83705471023744320)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83718494096744332)
,p_event_id=>wwv_flow_imp.id(83716400575744330)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P335_TIP_CLIENTE,P335_COD_CONDICION_VENTA,P335_COD_DIVISION,P335_PORC_DESCUENTO,P335_PORC_RECARGO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83716962505744331)
,p_event_id=>wwv_flow_imp.id(83716400575744330)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(83706141332744321)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83717465279744331)
,p_event_id=>wwv_flow_imp.id(83716400575744330)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(83706570832744321)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83717988155744332)
,p_event_id=>wwv_flow_imp.id(83716400575744330)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(164801745808389446)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83624561904059718)
,p_event_id=>wwv_flow_imp.id(83716400575744330)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    :P335_PORC_DESCUENTO := 0;',
'end;'))
,p_attribute_03=>'P335_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83725037266744335)
,p_name=>'BT_GUARDAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(83706141332744321)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83725568116744335)
,p_event_id=>wwv_flow_imp.id(83725037266744335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P335_AUX_MSJ_CONTROL := null;',
'IF :P335_TIP_CLIENTE IS NULL THEN',
'    :P335_AUX_MSJ_CONTROL := ''Ingrese el Tipo de Cliente'';',
'    else',
'    BEGIN',
'     CCDESCTC.pr_crear (         ',
'        PI_COD_EMPRESA => :P335_COD_EMPRESA,',
'        PI_TIP_CLIENTE => :P335_TIP_CLIENTE,',
'        PI_COD_CONDICION_VENTA => :P335_COD_CONDICION_VENTA,',
'        PI_COD_DIVISION  => :P335_COD_DIVISION,',
'        PI_COD_MARCA  => NULL,',
'        PI_PORC_DESCUENTO=> :P335_PORC_DESCUENTO,',
'        PI_PORC_RECARGO => :P335_PORC_RECARGO);',
' EXCEPTION',
'    ',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'',
'    END;',
' ',
' ',
'    ',
' ',
' end if;'))
,p_attribute_02=>'P335_COD_EMPRESA,P335_TIP_CLIENTE,P335_COD_CONDICION_VENTA,P335_COD_DIVISION,P335_PORC_DESCUENTO,P335_PORC_RECARGO'
,p_attribute_03=>'P335_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83624158273059714)
,p_event_id=>wwv_flow_imp.id(83725037266744335)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P335_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P335_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83726581134744336)
,p_event_id=>wwv_flow_imp.id(83725037266744335)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(164801669040389445)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P335_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83727081020744336)
,p_event_id=>wwv_flow_imp.id(83725037266744335)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(164801745808389446)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P335_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83726057221744335)
,p_event_id=>wwv_flow_imp.id(83725037266744335)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'nuevo registro creado exitosamente'
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P335_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83719332721744333)
,p_name=>'DA_ABRIR_EDITAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P335_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83720817295744333)
,p_event_id=>wwv_flow_imp.id(83719332721744333)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_EMPRESA,',
'    TIP_CLIENTE ,',
'    COD_CONDICION_VENTA,',
'    COD_DIVISION,     ',
'    PORC_DESCUENTO,',
'    PORC_RECARGO',
'INTO',
'    :P335_COD_EMPRESA,',
'    :P335_TIP_CLIENTE,',
'    :P335_COD_CONDICION_VENTA,',
'    :P335_COD_DIVISION,',
'    :P335_PORC_DESCUENTO,',
'    :P335_PORC_RECARGO',
'from CC_DESCUENTO_TIPO_CLIENTE',
'WHERE  rowid = :P335_SEQ_ID_EDITAR;'))
,p_attribute_02=>'P335_SEQ_ID_EDITAR'
,p_attribute_03=>'P335_COD_EMPRESA,P335_TIP_CLIENTE,P335_COD_CONDICION_VENTA,P335_COD_DIVISION,P335_PORC_DESCUENTO,P335_PORC_RECARGO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83721355529744334)
,p_event_id=>wwv_flow_imp.id(83719332721744333)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(83706570832744321)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83720361799744333)
,p_event_id=>wwv_flow_imp.id(83719332721744333)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(83706141332744321)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83719844404744333)
,p_event_id=>wwv_flow_imp.id(83719332721744333)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(164801745808389446)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83722678281744334)
,p_name=>'DA_GUARDAR_EDITAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(83706570832744321)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83624323406059716)
,p_event_id=>wwv_flow_imp.id(83722678281744334)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P335_AUX_MSJ_CONTROL := null;',
'IF :P335_TIP_CLIENTE IS NULL THEN',
'    :P335_AUX_MSJ_CONTROL := ''Ingrese el Tipo de Cliente'';',
'    else',
'    BEGIN',
'     CCDESCTC.pr_modificar (',
'    PI_SEQ_ID_EDITAR => :P335_SEQ_ID_EDITAR,',
'    PI_COD_EMPRESA => :P335_COD_EMPRESA,',
'    PI_TIP_CLIENTE => :P335_TIP_CLIENTE,',
'    PI_COD_CONDICION_VENTA => :P335_COD_CONDICION_VENTA,',
'    PI_COD_DIVISION  => :P335_COD_DIVISION,    ',
'    PI_PORC_DESCUENTO => :P335_PORC_DESCUENTO,',
'    PI_PORC_RECARGO => :P335_PORC_RECARGO);',
' EXCEPTION',
'    ',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'',
'    END;',
' ',
' ',
'    ',
' ',
' end if;'))
,p_attribute_02=>'P335_COD_EMPRESA,P335_TIP_CLIENTE,P335_COD_CONDICION_VENTA,P335_COD_DIVISION,P335_PORC_DESCUENTO,P335_PORC_RECARGO,P335_SEQ_ID_EDITAR'
,p_attribute_03=>'P335_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83624460008059717)
,p_event_id=>wwv_flow_imp.id(83722678281744334)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P335_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P335_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83723685127744335)
,p_event_id=>wwv_flow_imp.id(83722678281744334)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(164801669040389445)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P335_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83724109679744335)
,p_event_id=>wwv_flow_imp.id(83722678281744334)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(164801745808389446)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P335_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83724603971744335)
,p_event_id=>wwv_flow_imp.id(83722678281744334)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'registro editado exitosamente'
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P335_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83721712626744334)
,p_name=>'DA_ES_NUMERO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P335_PORC_DESCUENTO,P335_PORC_RECARGO'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83722214545744334)
,p_event_id=>wwv_flow_imp.id(83721712626744334)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83727498449744336)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P335_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83727993281744336)
,p_event_id=>wwv_flow_imp.id(83727498449744336)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro que desea eliminar?')
,p_attribute_02=>'ELIMINAR'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83728403241744336)
,p_event_id=>wwv_flow_imp.id(83727498449744336)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    CCDESCTC.pr_eliminar (',
'    PI_SEQ_ID_ELIMINAR => :P335_SEQ_ID_ELIMINAR   );',
'end;'))
,p_attribute_02=>'P335_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83728966856744337)
,p_event_id=>wwv_flow_imp.id(83727498449744336)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(164801669040389445)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(83716038167744330)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(83715608117744329)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   :P335_COD_USUARIO := nvl(:P_COD_USUARIO, user);',
'   :P335_COD_EMPRESA := nvl(:P_COD_EMPRESA,''1'');',
'   :P335_NOM_EMPRESA := nvl(:P_NOM_EMPRESA, null);',
'   :P335_COD_SUCURSAL := nvl(:P_COD_SUCURSAL,null);',
'   :P335_NOM_SUCURSAL := nvl(:P_NOM_SUCURSAL, NULL);',
'   :P335_COD_MODULO := nvl(:P_COD_MODULO, ''CC'');',
'    :P335_AUX_MSJ_CONTROL := NULL;',
' '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
